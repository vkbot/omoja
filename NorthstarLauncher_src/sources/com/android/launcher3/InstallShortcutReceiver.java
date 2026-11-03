package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.Preconditions;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* JADX INFO: loaded from: classes.dex */
public class InstallShortcutReceiver extends BroadcastReceiver {
    private static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final String APPS_PENDING_INSTALL = "apps_to_install";
    private static final String APP_SHORTCUT_TYPE_KEY = "isAppShortcut";
    private static final String APP_WIDGET_TYPE_KEY = "isAppWidget";
    private static final boolean DBG = false;
    private static final String DEEPSHORTCUT_TYPE_KEY = "isDeepShortcut";
    public static final int FLAG_ACTIVITY_PAUSED = 1;
    public static final int FLAG_DRAG_AND_DROP = 4;
    public static final int FLAG_LOADER_RUNNING = 2;
    private static final String ICON_KEY = "icon";
    private static final String ICON_RESOURCE_NAME_KEY = "iconResource";
    private static final String ICON_RESOURCE_PACKAGE_NAME_KEY = "iconResourcePackage";
    private static final String LAUNCH_INTENT_KEY = "intent.launch";
    private static final String NAME_KEY = "name";
    public static final int NEW_SHORTCUT_BOUNCE_DURATION = 450;
    public static final int NEW_SHORTCUT_STAGGER_DELAY = 85;
    private static final String TAG = "InstallShortcutReceiver";
    private static final String USER_HANDLE_KEY = "userHandle";
    private static int sInstallQueueDisabledFlags;

    /* JADX INFO: Access modifiers changed from: private */
    public static void addToQueue(Context context, PendingInstallShortcutInfo info) {
        String strEncodeToString = info.encodeToString();
        SharedPreferences prefs = Utilities.getPrefs(context);
        Set<String> stringSet = prefs.getStringSet(APPS_PENDING_INSTALL, null);
        HashSet hashSet = stringSet != null ? new HashSet(stringSet) : new HashSet(1);
        hashSet.add(strEncodeToString);
        prefs.edit().putStringSet(APPS_PENDING_INSTALL, hashSet).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void flushQueueInBackground(Context context) {
        if (Launcher.ACTIVITY_TRACKER.getCreatedActivity() == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        SharedPreferences prefs = Utilities.getPrefs(context);
        Set<String> stringSet = prefs.getStringSet(APPS_PENDING_INSTALL, null);
        if (stringSet == null) {
            return;
        }
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            PendingInstallShortcutInfo pendingInstallShortcutInfoDecode = decode(it.next(), context);
            if (pendingInstallShortcutInfoDecode != null) {
                String intentPackage = getIntentPackage(pendingInstallShortcutInfoDecode.launchIntent);
                if (TextUtils.isEmpty(intentPackage) || launcherApps.isPackageEnabled(intentPackage, pendingInstallShortcutInfoDecode.user) || pendingInstallShortcutInfoDecode.isActivity) {
                    arrayList.add(pendingInstallShortcutInfoDecode.getItemInfo());
                }
            }
        }
        prefs.edit().remove(APPS_PENDING_INSTALL).apply();
        if (arrayList.isEmpty()) {
            return;
        }
        LauncherAppState.getInstance(context).getModel().addAndBindAddedWorkspaceItems(arrayList);
    }

    public static void removeFromInstallQueue(Context context, HashSet<String> packageNames, UserHandle user) {
        if (packageNames.isEmpty()) {
            return;
        }
        Preconditions.assertWorkerThread();
        SharedPreferences prefs = Utilities.getPrefs(context);
        Set<String> stringSet = prefs.getStringSet(APPS_PENDING_INSTALL, null);
        if (stringSet == null || stringSet.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet(stringSet);
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                Decoder decoder = new Decoder(it.next(), context);
                if (packageNames.contains(getIntentPackage(decoder.launcherIntent)) && user.equals(decoder.user)) {
                    it.remove();
                }
            } catch (URISyntaxException | JSONException e) {
                Log.d(TAG, "Exception reading shortcut to add: " + e);
                it.remove();
            }
        }
        prefs.edit().putStringSet(APPS_PENDING_INSTALL, hashSet).apply();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent data) {
        PendingInstallShortcutInfo pendingInstallShortcutInfoCreatePendingInfo;
        if (ACTION_INSTALL_SHORTCUT.equals(data.getAction()) && (pendingInstallShortcutInfoCreatePendingInfo = createPendingInfo(context, data)) != null) {
            if (!pendingInstallShortcutInfoCreatePendingInfo.isLauncherActivity() && !new PackageManagerHelper(context).hasPermissionForActivity(pendingInstallShortcutInfoCreatePendingInfo.launchIntent, null)) {
                Log.e(TAG, "Ignoring malicious intent " + pendingInstallShortcutInfoCreatePendingInfo.launchIntent.toUri(0));
            } else {
                queuePendingShortcutInfo(pendingInstallShortcutInfoCreatePendingInfo, context);
            }
        }
    }

    private static boolean isValidExtraType(Intent intent, String key, Class type) {
        Parcelable parcelableExtra = intent.getParcelableExtra(key);
        return parcelableExtra == null || type.isInstance(parcelableExtra);
    }

    private static PendingInstallShortcutInfo createPendingInfo(Context context, Intent data) {
        if (isValidExtraType(data, "android.intent.extra.shortcut.INTENT", Intent.class) && isValidExtraType(data, "android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.class) && isValidExtraType(data, "android.intent.extra.shortcut.ICON", Bitmap.class)) {
            PendingInstallShortcutInfo pendingInstallShortcutInfo = new PendingInstallShortcutInfo(data, Process.myUserHandle(), context);
            if (pendingInstallShortcutInfo.launchIntent != null && pendingInstallShortcutInfo.label != null) {
                return convertToLauncherActivityIfPossible(pendingInstallShortcutInfo);
            }
        }
        return null;
    }

    public static WorkspaceItemInfo fromShortcutIntent(Context context, Intent data) {
        PendingInstallShortcutInfo pendingInstallShortcutInfoCreatePendingInfo = createPendingInfo(context, data);
        if (pendingInstallShortcutInfoCreatePendingInfo == null) {
            return null;
        }
        return (WorkspaceItemInfo) pendingInstallShortcutInfoCreatePendingInfo.getItemInfo().first;
    }

    public static void queueShortcut(ShortcutInfo info, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(info, context), context);
    }

    public static void queueWidget(AppWidgetProviderInfo info, int widgetId, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(info, widgetId, context), context);
    }

    public static void queueApplication(Intent data, UserHandle user, Context context) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(data, context, user), context);
    }

    public static HashSet<ShortcutKey> getPendingShortcuts(Context context) {
        HashSet<ShortcutKey> hashSet = new HashSet<>();
        Set<String> stringSet = Utilities.getPrefs(context).getStringSet(APPS_PENDING_INSTALL, null);
        if (stringSet != null && !stringSet.isEmpty()) {
            Iterator<String> it = stringSet.iterator();
            while (it.hasNext()) {
                try {
                    Decoder decoder = new Decoder(it.next(), context);
                    if (decoder.optBoolean(DEEPSHORTCUT_TYPE_KEY)) {
                        hashSet.add(ShortcutKey.fromIntent(decoder.launcherIntent, decoder.user));
                    }
                } catch (URISyntaxException | JSONException e) {
                    Log.d(TAG, "Exception reading shortcut to add: " + e);
                }
            }
        }
        return hashSet;
    }

    private static void queuePendingShortcutInfo(final PendingInstallShortcutInfo info, final Context context) {
        Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.InstallShortcutReceiver$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                InstallShortcutReceiver.addToQueue(context, info);
            }
        });
        flushInstallQueue(context);
    }

    public static synchronized void enableInstallQueue(int flag) {
        sInstallQueueDisabledFlags = flag | sInstallQueueDisabledFlags;
    }

    public static synchronized void disableAndFlushInstallQueue(int flag, Context context) {
        sInstallQueueDisabledFlags = (~flag) & sInstallQueueDisabledFlags;
        flushInstallQueue(context);
    }

    static synchronized void flushInstallQueue(final Context context) {
        if (sInstallQueueDisabledFlags != 0) {
            return;
        }
        Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.InstallShortcutReceiver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstallShortcutReceiver.flushQueueInBackground(context);
            }
        });
    }

    static CharSequence ensureValidName(Context context, Intent intent, CharSequence name) {
        if (name != null) {
            return name;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getActivityInfo(intent.getComponent(), 0).loadLabel(packageManager);
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class PendingInstallShortcutInfo {
        final Intent data;
        final boolean isActivity;
        final String label;
        final Intent launchIntent;
        final Context mContext;
        final AppWidgetProviderInfo providerInfo;
        final ShortcutInfo shortcutInfo;
        final UserHandle user;

        public boolean isLauncherActivity() {
            return this.isActivity;
        }

        public PendingInstallShortcutInfo(Intent data, UserHandle user, Context context) {
            this.isActivity = false;
            this.shortcutInfo = null;
            this.providerInfo = null;
            this.data = data;
            this.user = user;
            this.mContext = context;
            this.launchIntent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            this.label = data.getStringExtra("android.intent.extra.shortcut.NAME");
        }

        public PendingInstallShortcutInfo(LauncherActivityInfo info, Context context) {
            this.isActivity = true;
            this.shortcutInfo = null;
            this.providerInfo = null;
            String packageName = info.getComponentName().getPackageName();
            Intent intent = new Intent();
            this.data = intent;
            intent.putExtra("android.intent.extra.shortcut.INTENT", new Intent().setComponent(new ComponentName(packageName, "")).setPackage(packageName));
            intent.putExtra("android.intent.extra.shortcut.NAME", info.getLabel());
            this.user = info.getUser();
            this.mContext = context;
            this.launchIntent = AppInfo.makeLaunchIntent(info);
            this.label = info.getLabel().toString();
        }

        public PendingInstallShortcutInfo(Intent data, Context context, UserHandle user) {
            this.isActivity = true;
            this.shortcutInfo = null;
            this.providerInfo = null;
            this.data = data;
            this.user = user;
            this.mContext = context;
            this.launchIntent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
            this.label = data.getStringExtra("android.intent.extra.shortcut.NAME");
        }

        public PendingInstallShortcutInfo(ShortcutInfo info, Context context) {
            this.isActivity = false;
            this.shortcutInfo = info;
            this.providerInfo = null;
            this.data = null;
            this.mContext = context;
            this.user = info.getUserHandle();
            this.launchIntent = ShortcutKey.makeIntent(info);
            this.label = info.getShortLabel().toString();
        }

        public PendingInstallShortcutInfo(AppWidgetProviderInfo info, int widgetId, Context context) {
            this.isActivity = false;
            this.shortcutInfo = null;
            this.providerInfo = info;
            this.data = null;
            this.mContext = context;
            this.user = info.getProfile();
            this.launchIntent = new Intent().setComponent(info.provider).putExtra(LauncherSettings.Favorites.APPWIDGET_ID, widgetId);
            this.label = info.label;
        }

        public String encodeToString() {
            byte[] bArrFlattenBitmap;
            try {
                if (this.shortcutInfo != null) {
                    return new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key(InstallShortcutReceiver.DEEPSHORTCUT_TYPE_KEY).value(true).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(this.user)).endObject().toString();
                }
                if (this.providerInfo != null) {
                    return new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key(InstallShortcutReceiver.APP_WIDGET_TYPE_KEY).value(true).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(this.user)).endObject().toString();
                }
                if (this.launchIntent.getAction() == null) {
                    this.launchIntent.setAction("android.intent.action.VIEW");
                } else if (this.launchIntent.getAction().equals("android.intent.action.MAIN") && this.launchIntent.getCategories() != null && this.launchIntent.getCategories().contains("android.intent.category.LAUNCHER")) {
                    this.launchIntent.addFlags(270532608);
                }
                String string = InstallShortcutReceiver.ensureValidName(this.mContext, this.launchIntent, this.label).toString();
                Intent intent = this.data;
                Bitmap bitmap = intent == null ? null : (Bitmap) intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
                Intent intent2 = this.data;
                Intent.ShortcutIconResource shortcutIconResource = intent2 == null ? null : (Intent.ShortcutIconResource) intent2.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
                JSONStringer jSONStringerValue = new JSONStringer().object().key(InstallShortcutReceiver.LAUNCH_INTENT_KEY).value(this.launchIntent.toUri(0)).key("name").value(string).key(InstallShortcutReceiver.USER_HANDLE_KEY).value(UserCache.INSTANCE.m166x39265fe7(this.mContext).getSerialNumberForUser(this.user)).key(InstallShortcutReceiver.APP_SHORTCUT_TYPE_KEY).value(this.isActivity);
                if (bitmap != null && (bArrFlattenBitmap = GraphicsUtils.flattenBitmap(bitmap)) != null) {
                    jSONStringerValue = jSONStringerValue.key("icon").value(Base64.encodeToString(bArrFlattenBitmap, 0, bArrFlattenBitmap.length, 0));
                }
                if (shortcutIconResource != null) {
                    jSONStringerValue = jSONStringerValue.key("iconResource").value(shortcutIconResource.resourceName).key(InstallShortcutReceiver.ICON_RESOURCE_PACKAGE_NAME_KEY).value(shortcutIconResource.packageName);
                }
                return jSONStringerValue.endObject().toString();
            } catch (JSONException e) {
                Log.d(InstallShortcutReceiver.TAG, "Exception when adding shortcut: " + e);
                return null;
            }
        }

        public Pair<ItemInfo, Object> getItemInfo() {
            if (this.isActivity) {
                WorkspaceItemInfo workspaceItemInfoCreateWorkspaceItemInfo = InstallShortcutReceiver.createWorkspaceItemInfo(this.data, this.user, LauncherAppState.getInstance(this.mContext));
                workspaceItemInfoCreateWorkspaceItemInfo.itemType = 0;
                workspaceItemInfoCreateWorkspaceItemInfo.status |= 2;
                return Pair.create(workspaceItemInfoCreateWorkspaceItemInfo, null);
            }
            if (this.shortcutInfo != null) {
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this.shortcutInfo, this.mContext);
                LauncherAppState.getInstance(this.mContext).getIconCache().getShortcutIcon(workspaceItemInfo, this.shortcutInfo);
                return Pair.create(workspaceItemInfo, this.shortcutInfo);
            }
            AppWidgetProviderInfo appWidgetProviderInfo = this.providerInfo;
            if (appWidgetProviderInfo != null) {
                LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfoFromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
                LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(this.launchIntent.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, 0), launcherAppWidgetProviderInfoFromProviderInfo.provider);
                InvariantDeviceProfile idp = LauncherAppState.getIDP(this.mContext);
                launcherAppWidgetInfo.minSpanX = launcherAppWidgetProviderInfoFromProviderInfo.minSpanX;
                launcherAppWidgetInfo.minSpanY = launcherAppWidgetProviderInfoFromProviderInfo.minSpanY;
                launcherAppWidgetInfo.spanX = Math.min(launcherAppWidgetProviderInfoFromProviderInfo.spanX, idp.numColumns);
                launcherAppWidgetInfo.spanY = Math.min(launcherAppWidgetProviderInfoFromProviderInfo.spanY, idp.numRows);
                return Pair.create(launcherAppWidgetInfo, this.providerInfo);
            }
            return Pair.create(InstallShortcutReceiver.createWorkspaceItemInfo(this.data, this.user, LauncherAppState.getInstance(this.mContext)), null);
        }
    }

    private static String getIntentPackage(Intent intent) {
        return intent.getComponent() == null ? intent.getPackage() : intent.getComponent().getPackageName();
    }

    private static PendingInstallShortcutInfo decode(String encoded, Context context) {
        try {
            Decoder decoder = new Decoder(encoded, context);
            if (decoder.optBoolean(APP_SHORTCUT_TYPE_KEY)) {
                LauncherActivityInfo launcherActivityInfoResolveActivity = ((LauncherApps) context.getSystemService(LauncherApps.class)).resolveActivity(decoder.launcherIntent, decoder.user);
                if (launcherActivityInfoResolveActivity != null) {
                    return new PendingInstallShortcutInfo(launcherActivityInfoResolveActivity, context);
                }
            } else {
                if (decoder.optBoolean(DEEPSHORTCUT_TYPE_KEY)) {
                    ShortcutRequest.QueryResult queryResultQuery = ShortcutKey.fromIntent(decoder.launcherIntent, decoder.user).buildRequest(context).query(11);
                    if (queryResultQuery.isEmpty()) {
                        return null;
                    }
                    return new PendingInstallShortcutInfo(queryResultQuery.get(0), context);
                }
                if (decoder.optBoolean(APP_WIDGET_TYPE_KEY)) {
                    int intExtra = decoder.launcherIntent.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, 0);
                    AppWidgetProviderInfo appWidgetInfo = AppWidgetManager.getInstance(context).getAppWidgetInfo(intExtra);
                    if (appWidgetInfo != null && appWidgetInfo.provider.equals(decoder.launcherIntent.getComponent()) && appWidgetInfo.getProfile().equals(decoder.user)) {
                        return new PendingInstallShortcutInfo(appWidgetInfo, intExtra, context);
                    }
                    return null;
                }
            }
            Intent intent = new Intent();
            intent.putExtra("android.intent.extra.shortcut.INTENT", decoder.launcherIntent);
            intent.putExtra("android.intent.extra.shortcut.NAME", decoder.getString("name"));
            String strOptString = decoder.optString("icon");
            String strOptString2 = decoder.optString("iconResource");
            String strOptString3 = decoder.optString(ICON_RESOURCE_PACKAGE_NAME_KEY);
            if (strOptString != null && !strOptString.isEmpty()) {
                byte[] bArrDecode = Base64.decode(strOptString, 0);
                intent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            } else if (strOptString2 != null && !strOptString2.isEmpty()) {
                Intent.ShortcutIconResource shortcutIconResource = new Intent.ShortcutIconResource();
                shortcutIconResource.resourceName = strOptString2;
                shortcutIconResource.packageName = strOptString3;
                intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", shortcutIconResource);
            }
            if (decoder.optBoolean(APP_SHORTCUT_TYPE_KEY)) {
                return new PendingInstallShortcutInfo(intent, context, decoder.user);
            }
            return new PendingInstallShortcutInfo(intent, decoder.user, context);
        } catch (URISyntaxException | JSONException e) {
            Log.d(TAG, "Exception reading shortcut to add: " + e);
            return null;
        }
    }

    private static class Decoder extends JSONObject {
        public final Intent launcherIntent;
        public final UserHandle user;

        private Decoder(String encoded, Context context) throws JSONException, URISyntaxException {
            UserHandle userHandleMyUserHandle;
            super(encoded);
            this.launcherIntent = Intent.parseUri(getString(InstallShortcutReceiver.LAUNCH_INTENT_KEY), 0);
            if (has(InstallShortcutReceiver.USER_HANDLE_KEY)) {
                userHandleMyUserHandle = UserCache.INSTANCE.m166x39265fe7(context).getUserForSerialNumber(getLong(InstallShortcutReceiver.USER_HANDLE_KEY));
            } else {
                userHandleMyUserHandle = Process.myUserHandle();
            }
            this.user = userHandleMyUserHandle;
            if (userHandleMyUserHandle == null) {
                throw new JSONException("Invalid user");
            }
        }
    }

    private static PendingInstallShortcutInfo convertToLauncherActivityIfPossible(PendingInstallShortcutInfo original) {
        LauncherActivityInfo launcherActivityInfoResolveActivity;
        return (original.isLauncherActivity() || !PackageManagerHelper.isLauncherAppTarget(original.launchIntent) || (launcherActivityInfoResolveActivity = ((LauncherApps) original.mContext.getSystemService(LauncherApps.class)).resolveActivity(original.launchIntent, original.user)) == null) ? original : new PendingInstallShortcutInfo(launcherActivityInfoResolveActivity, original.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WorkspaceItemInfo createWorkspaceItemInfo(Intent data, UserHandle user, LauncherAppState app) {
        BitmapInfo bitmapInfoCreateIconBitmap = null;
        if (data == null) {
            Log.e(TAG, "Can't construct WorkspaceItemInfo with null data");
            return null;
        }
        Intent intent = (Intent) data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = data.getStringExtra("android.intent.extra.shortcut.NAME");
        Parcelable parcelableExtra = data.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent == null) {
            Log.e(TAG, "Can't construct WorkspaceItemInfo with null intent");
            return null;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.user = user;
        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(app.getContext());
        if (parcelableExtra instanceof Bitmap) {
            bitmapInfoCreateIconBitmap = launcherIconsObtain.createIconBitmap((Bitmap) parcelableExtra);
        } else {
            Parcelable parcelableExtra2 = data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 instanceof Intent.ShortcutIconResource) {
                workspaceItemInfo.iconResource = (Intent.ShortcutIconResource) parcelableExtra2;
                bitmapInfoCreateIconBitmap = launcherIconsObtain.createIconBitmap(workspaceItemInfo.iconResource);
            }
        }
        launcherIconsObtain.recycle();
        if (bitmapInfoCreateIconBitmap == null) {
            bitmapInfoCreateIconBitmap = app.getIconCache().getDefaultIcon(workspaceItemInfo.user);
        }
        workspaceItemInfo.bitmap = bitmapInfoCreateIconBitmap;
        workspaceItemInfo.title = Utilities.trim(stringExtra);
        workspaceItemInfo.contentDescription = app.getContext().getPackageManager().getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        workspaceItemInfo.intent = intent;
        return workspaceItemInfo;
    }
}
