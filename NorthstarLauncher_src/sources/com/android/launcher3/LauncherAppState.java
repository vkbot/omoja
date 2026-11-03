package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.Handler;
import android.util.Log;
import com.android.launcher3.config.CheryAppFilter;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import java.util.Objects;
import java.util.function.Consumer;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppState {
    public static final String ACTION_FORCE_ROLOAD = "force-reload-launcher";
    public static final String ACTION_GLOBAL_SWIPE_FROM_BOTTOM = "global_swipe_from_bottom";
    public static final String ACTION_TAP_DOCKER_HOME = "com.android.launcher3.action.TAP_DOCKER_HOME";
    public static final MainThreadInitializedObject<LauncherAppState> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda6
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new LauncherAppState(context);
        }
    });
    private static final String TAG = "LauncherAppState";
    private final Context mContext;
    private final IconCache mIconCache;
    private final InvariantDeviceProfile mInvariantDeviceProfile;
    private final LauncherModel mModel;
    private SimpleBroadcastReceiver mModelChangeReceiver;
    private SecureSettingsObserver mNotificationDotsObserver;
    private final WidgetPreviewLoader mWidgetCache;
    private SimpleBroadcastReceiver mWorkspaceStateChangeReceiver;

    public Context getContext() {
        return this.mContext;
    }

    public IconCache getIconCache() {
        return this.mIconCache;
    }

    public InvariantDeviceProfile getInvariantDeviceProfile() {
        return this.mInvariantDeviceProfile;
    }

    public LauncherModel getModel() {
        return this.mModel;
    }

    public WidgetPreviewLoader getWidgetCache() {
        return this.mWidgetCache;
    }

    public static LauncherAppState getInstance(final Context context) {
        return INSTANCE.m166x39265fe7(context);
    }

    public static LauncherAppState getInstanceNoCreate() {
        return INSTANCE.getNoCreate();
    }

    public LauncherAppState(final Context context) {
        this(context, LauncherFiles.APP_ICONS_DB);
        ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).registerCallback(this.mModel);
        final LauncherModel launcherModel = this.mModel;
        Objects.requireNonNull(launcherModel);
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                launcherModel.onBroadcastIntent((Intent) obj);
            }
        });
        this.mModelChangeReceiver = simpleBroadcastReceiver;
        simpleBroadcastReceiver.register(this.mContext, "android.intent.action.LOCALE_CHANGED", ACTION_FORCE_ROLOAD);
        CustomWidgetManager customWidgetManagerM166x39265fe7 = CustomWidgetManager.INSTANCE.m166x39265fe7(this.mContext);
        final LauncherModel launcherModel2 = this.mModel;
        Objects.requireNonNull(launcherModel2);
        customWidgetManagerM166x39265fe7.setWidgetRefreshCallback(new Consumer() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                launcherModel2.refreshAndBindWidgetsAndShortcuts((PackageUserKey) obj);
            }
        });
        this.mInvariantDeviceProfile.addOnChangeListener(new InvariantDeviceProfile.OnIDPChangeListener() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda2
            @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
            public final void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile) {
                this.f$0.onIdpChanged(i, invariantDeviceProfile);
            }
        });
        new Handler().post(new Runnable() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m37lambda$new$0$comandroidlauncher3LauncherAppState(context);
            }
        });
        if (this.mContext.getResources().getBoolean(R.bool.notification_dots_enabled)) {
            SecureSettingsObserver secureSettingsObserverNewNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(this.mContext, new SecureSettingsObserver.OnChangeListener() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda4
                @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
                public final void onSettingsChanged(boolean z) {
                    this.f$0.onNotificationSettingsChanged(z);
                }
            });
            this.mNotificationDotsObserver = secureSettingsObserverNewNotificationSettingsObserver;
            secureSettingsObserverNewNotificationSettingsObserver.register();
            this.mNotificationDotsObserver.dispatchOnChange();
        } else {
            this.mNotificationDotsObserver = null;
        }
        SimpleBroadcastReceiver simpleBroadcastReceiver2 = new SimpleBroadcastReceiver(new Consumer() { // from class: com.android.launcher3.LauncherAppState$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.onBroadcastIntent((Intent) obj);
            }
        });
        this.mWorkspaceStateChangeReceiver = simpleBroadcastReceiver2;
        simpleBroadcastReceiver2.register(this.mContext, ACTION_GLOBAL_SWIPE_FROM_BOTTOM);
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-LauncherAppState, reason: not valid java name */
    /* synthetic */ void m37lambda$new$0$comandroidlauncher3LauncherAppState(Context context) {
        this.mInvariantDeviceProfile.verifyConfigChangedInBackground(context);
    }

    public LauncherAppState(Context context, String iconCacheFileName) {
        Log.v(Launcher.TAG, "LauncherAppState initiated");
        Preconditions.assertUIThread();
        this.mContext = context;
        InvariantDeviceProfile invariantDeviceProfileM166x39265fe7 = InvariantDeviceProfile.INSTANCE.m166x39265fe7(context);
        this.mInvariantDeviceProfile = invariantDeviceProfileM166x39265fe7;
        MLog.d(TAG, "mInvariantDeviceProfile = " + invariantDeviceProfileM166x39265fe7);
        IconCache iconCache = new IconCache(context, invariantDeviceProfileM166x39265fe7, iconCacheFileName);
        this.mIconCache = iconCache;
        this.mWidgetCache = new WidgetPreviewLoader(context, iconCache);
        this.mModel = new LauncherModel(this, iconCache, new CheryAppFilter());
    }

    protected void onNotificationSettingsChanged(boolean areNotificationDotsEnabled) {
        if (areNotificationDotsEnabled) {
            NotificationListener.requestRebind(new ComponentName(this.mContext, (Class<?>) NotificationListener.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIdpChanged(int changeFlags, InvariantDeviceProfile idp) {
        if (changeFlags == 0) {
            return;
        }
        if ((changeFlags & 2) != 0) {
            LauncherIcons.clearPool();
            this.mIconCache.updateIconParams(idp.fillResIconDpi, idp.iconBitmapSize);
            this.mWidgetCache.refresh();
        }
        this.mModel.forceReload();
    }

    public void onTerminate() {
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.mModelChangeReceiver;
        if (simpleBroadcastReceiver != null) {
            this.mContext.unregisterReceiver(simpleBroadcastReceiver);
        }
        ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).unregisterCallback(this.mModel);
        CustomWidgetManager.INSTANCE.m166x39265fe7(this.mContext).setWidgetRefreshCallback(null);
        SecureSettingsObserver secureSettingsObserver = this.mNotificationDotsObserver;
        if (secureSettingsObserver != null) {
            secureSettingsObserver.unregister();
        }
    }

    public static InvariantDeviceProfile getIDP(Context context) {
        return InvariantDeviceProfile.INSTANCE.m166x39265fe7(context);
    }

    public void onBroadcastIntent(Intent intent) {
        Log.d(TAG, "onReceive intent=" + intent);
        if (ACTION_GLOBAL_SWIPE_FROM_BOTTOM.equals(intent.getAction())) {
            for (BgDataModel.Callbacks callbacks : this.mModel.getCallbacks()) {
                if (callbacks instanceof Launcher) {
                    Launcher launcher = (Launcher) callbacks;
                    boolean zHasWindowFocus = launcher.hasWindowFocus();
                    boolean zIsInWorkspaceHideState = launcher.getStateManager().isInWorkspaceHideState();
                    MLog.d(TAG, "onBroadcastIntent: launcher hasWindowFocus=" + zHasWindowFocus + ", inWorkspaceHideState=" + zIsInWorkspaceHideState);
                    if (zHasWindowFocus && zIsInWorkspaceHideState && !SystemUiController.DockDialog.isDockDialogShown(launcher)) {
                        launcher.getStateManager().goToState(LauncherState.NORMAL, true);
                    }
                }
            }
        }
    }
}
