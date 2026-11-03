package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherFiles;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.icons.cache.CachingLogic;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class IconCache extends BaseIconCache {
    private static final String TAG = "Launcher.IconCache";
    private final CachingLogic<ComponentWithLabel> mComponentWithLabelCachingLogic;
    private final IconProvider mIconProvider;
    private final InstantAppResolver mInstantAppResolver;
    private final Predicate<ItemInfoWithIcon> mIsUsingFallbackOrNonDefaultIconCheck;
    private final CachingLogic<LauncherActivityInfo> mLauncherActivityInfoCachingLogic;
    private final LauncherApps mLauncherApps;
    private int mPendingIconRequestCount;
    private final CachingLogic<ShortcutInfo> mShortcutCachingLogic;
    private final UserCache mUserManager;

    public interface ItemInfoUpdateReceiver {
        void reapplyItemInfo(ItemInfoWithIcon info);
    }

    static /* synthetic */ ShortcutInfo lambda$getDeepShortcutTitleAndIcon$4(ShortcutInfo shortcutInfo) {
        return shortcutInfo;
    }

    static /* synthetic */ ShortcutInfo lambda$getShortcutIcon$3(ShortcutInfo shortcutInfo) {
        return shortcutInfo;
    }

    static /* synthetic */ LauncherActivityInfo lambda$getTitleAndIcon$2(LauncherActivityInfo launcherActivityInfo) {
        return launcherActivityInfo;
    }

    static /* synthetic */ ComponentWithLabel lambda$getTitleNoCache$6(ComponentWithLabel componentWithLabel) {
        return componentWithLabel;
    }

    static /* synthetic */ LauncherActivityInfo lambda$updateTitleAndIcon$1() {
        return null;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-icons-IconCache, reason: not valid java name */
    /* synthetic */ boolean m105lambda$new$0$comandroidlauncher3iconsIconCache(ItemInfoWithIcon itemInfoWithIcon) {
        return itemInfoWithIcon.bitmap != null && (itemInfoWithIcon.bitmap.isNullOrLowRes() || !isDefaultIcon(itemInfoWithIcon.bitmap, itemInfoWithIcon.user));
    }

    public IconCache(Context context, InvariantDeviceProfile idp) {
        this(context, idp, LauncherFiles.APP_ICONS_DB);
    }

    public IconCache(Context context, InvariantDeviceProfile idp, String dbFileName) {
        super(context, dbFileName, Executors.MODEL_EXECUTOR.getLooper(), idp.fillResIconDpi, idp.iconBitmapSize, true);
        this.mIsUsingFallbackOrNonDefaultIconCheck = new Predicate() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m105lambda$new$0$comandroidlauncher3iconsIconCache((ItemInfoWithIcon) obj);
            }
        };
        this.mPendingIconRequestCount = 0;
        this.mComponentWithLabelCachingLogic = new ComponentWithLabel.ComponentCachingLogic(context, false);
        this.mLauncherActivityInfoCachingLogic = LauncherActivityCachingLogic.newInstance(context);
        this.mShortcutCachingLogic = new ShortcutCachingLogic();
        this.mLauncherApps = (LauncherApps) this.mContext.getSystemService(LauncherApps.class);
        this.mUserManager = UserCache.INSTANCE.m166x39265fe7(this.mContext);
        this.mInstantAppResolver = InstantAppResolver.newInstance(this.mContext);
        this.mIconProvider = new IconProvider(context);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    protected long getSerialNumberForUser(UserHandle user) {
        return this.mUserManager.getSerialNumberForUser(user);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    protected boolean isInstantApp(ApplicationInfo info) {
        return this.mInstantAppResolver.isInstantApp(info);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    protected BaseIconFactory getIconFactory() {
        return LauncherIcons.obtain(this.mContext);
    }

    public synchronized void updateIconsForPkg(String packageName, UserHandle user) {
        removeIconsForPkg(packageName, user);
        try {
            PackageInfo packageInfo = this.mPackageManager.getPackageInfo(packageName, 8192);
            long serialNumberForUser = this.mUserManager.getSerialNumberForUser(user);
            Iterator<LauncherActivityInfo> it = this.mLauncherApps.getActivityList(packageName, user).iterator();
            while (it.hasNext()) {
                addIconToDBAndMemCache(it.next(), this.mLauncherActivityInfoCachingLogic, packageInfo, serialNumberForUser, false);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(TAG, "Package not found", e);
        }
    }

    public IconLoadRequest updateIconInBackground(final ItemInfoUpdateReceiver caller, final ItemInfoWithIcon info) {
        Preconditions.assertUIThread();
        if (this.mPendingIconRequestCount <= 0) {
            Executors.MODEL_EXECUTOR.setThreadPriority(-2);
        }
        this.mPendingIconRequestCount++;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.mWorkerHandler, new Runnable() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onIconRequestEnd();
            }
        }, info, caller);
        Utilities.postAsyncCallback(this.mWorkerHandler, anonymousClass1);
        return anonymousClass1;
    }

    /* JADX INFO: renamed from: com.android.launcher3.icons.IconCache$1, reason: invalid class name */
    class AnonymousClass1 extends IconLoadRequest {
        final /* synthetic */ ItemInfoUpdateReceiver val$caller;
        final /* synthetic */ ItemInfoWithIcon val$info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Handler handler, Runnable endRunnable, final ItemInfoWithIcon val$info, final ItemInfoUpdateReceiver val$caller) {
            super(handler, endRunnable);
            this.val$info = val$info;
            this.val$caller = val$caller;
        }

        @Override // java.lang.Runnable
        public void run() {
            ItemInfoWithIcon itemInfoWithIcon = this.val$info;
            if ((itemInfoWithIcon instanceof AppInfo) || (itemInfoWithIcon instanceof WorkspaceItemInfo)) {
                IconCache.this.getTitleAndIcon(itemInfoWithIcon, false);
            } else if (itemInfoWithIcon instanceof PackageItemInfo) {
                IconCache.this.getTitleAndIconForApp((PackageItemInfo) itemInfoWithIcon, false);
            }
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            final ItemInfoUpdateReceiver itemInfoUpdateReceiver = this.val$caller;
            final ItemInfoWithIcon itemInfoWithIcon2 = this.val$info;
            looperExecutor.execute(new Runnable() { // from class: com.android.launcher3.icons.IconCache$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m106lambda$run$0$comandroidlauncher3iconsIconCache$1(itemInfoUpdateReceiver, itemInfoWithIcon2);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$run$0$com-android-launcher3-icons-IconCache$1, reason: not valid java name */
        /* synthetic */ void m106lambda$run$0$comandroidlauncher3iconsIconCache$1(ItemInfoUpdateReceiver itemInfoUpdateReceiver, ItemInfoWithIcon itemInfoWithIcon) {
            itemInfoUpdateReceiver.reapplyItemInfo(itemInfoWithIcon);
            onEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIconRequestEnd() {
        int i = this.mPendingIconRequestCount - 1;
        this.mPendingIconRequestCount = i;
        if (i <= 0) {
            Executors.MODEL_EXECUTOR.setThreadPriority(10);
        }
    }

    public synchronized void updateTitleAndIcon(AppInfo application) {
        BaseIconCache.CacheEntry cacheEntryCacheLocked = cacheLocked(application.componentName, application.user, new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                return IconCache.lambda$updateTitleAndIcon$1();
            }
        }, this.mLauncherActivityInfoCachingLogic, false, application.usingLowResIcon());
        if (cacheEntryCacheLocked.bitmap != null && !isDefaultIcon(cacheEntryCacheLocked.bitmap, application.user)) {
            applyCacheEntry(cacheEntryCacheLocked, application);
        }
    }

    public synchronized void getTitleAndIcon(ItemInfoWithIcon info, final LauncherActivityInfo activityInfo, boolean useLowResIcon) {
        getTitleAndIcon(info, new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda3
            @Override // java.util.function.Supplier
            public final Object get() {
                return IconCache.lambda$getTitleAndIcon$2(activityInfo);
            }
        }, false, useLowResIcon);
    }

    public void getShortcutIcon(ItemInfoWithIcon info, ShortcutInfo si) {
        getShortcutIcon(info, si, true, this.mIsUsingFallbackOrNonDefaultIconCheck);
    }

    public void getUnbadgedShortcutIcon(ItemInfoWithIcon info, ShortcutInfo si) {
        getShortcutIcon(info, si, false, this.mIsUsingFallbackOrNonDefaultIconCheck);
    }

    public <T extends ItemInfoWithIcon> void getShortcutIcon(T info, ShortcutInfo si, Predicate<T> fallbackIconCheck) {
        getShortcutIcon(info, si, true, fallbackIconCheck);
    }

    private synchronized <T extends ItemInfoWithIcon> void getShortcutIcon(T info, final ShortcutInfo si, boolean useBadged, Predicate<T> fallbackIconCheck) {
        BitmapInfo bitmapInfoLoadIcon;
        if (FeatureFlags.ENABLE_DEEP_SHORTCUT_ICON_CACHE.get()) {
            bitmapInfoLoadIcon = cacheLocked(ShortcutKey.fromInfo(si).componentName, si.getUserHandle(), new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return IconCache.lambda$getShortcutIcon$3(si);
                }
            }, this.mShortcutCachingLogic, false, false).bitmap;
        } else {
            bitmapInfoLoadIcon = this.mShortcutCachingLogic.loadIcon(this.mContext, si);
        }
        if (bitmapInfoLoadIcon.isNullOrLowRes()) {
            bitmapInfoLoadIcon = getDefaultIcon(si.getUserHandle());
        }
        if (isDefaultIcon(bitmapInfoLoadIcon, si.getUserHandle()) && fallbackIconCheck.test(info)) {
            return;
        }
        info.bitmap = bitmapInfoLoadIcon;
        if (useBadged) {
            BitmapInfo shortcutInfoBadge = getShortcutInfoBadge(si);
            LauncherIcons launcherIconsObtain = LauncherIcons.obtain(this.mContext);
            try {
                info.bitmap = launcherIconsObtain.badgeBitmap(info.bitmap.icon, shortcutInfoBadge);
                if (launcherIconsObtain != null) {
                    launcherIconsObtain.close();
                }
            } catch (Throwable th) {
                if (launcherIconsObtain != null) {
                    try {
                        launcherIconsObtain.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    public BitmapInfo getShortcutInfoBadge(ShortcutInfo shortcutInfo) {
        ComponentName activity = shortcutInfo.getActivity();
        if (activity != null) {
            AppInfo appInfo = new AppInfo();
            appInfo.user = shortcutInfo.getUserHandle();
            appInfo.componentName = activity;
            appInfo.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(activity);
            getTitleAndIcon(appInfo, false);
            return appInfo.bitmap;
        }
        PackageItemInfo packageItemInfo = new PackageItemInfo(shortcutInfo.getPackage());
        getTitleAndIconForApp(packageItemInfo, false);
        return packageItemInfo.bitmap;
    }

    public synchronized BaseIconCache.CacheEntry getDeepShortcutTitleAndIcon(final ShortcutInfo info) {
        return cacheLocked(ShortcutKey.fromInfo(info).componentName, info.getUserHandle(), new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda7
            @Override // java.util.function.Supplier
            public final Object get() {
                return IconCache.lambda$getDeepShortcutTitleAndIcon$4(info);
            }
        }, this.mShortcutCachingLogic, false, false);
    }

    public synchronized void getTitleAndIcon(final ItemInfoWithIcon info, boolean useLowResIcon) {
        if (info.getTargetComponent() == null) {
            info.bitmap = getDefaultIcon(info.user);
            info.title = "";
            info.contentDescription = "";
        } else {
            final Intent intent = info.getIntent();
            getTitleAndIcon(info, new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return this.f$0.m104lambda$getTitleAndIcon$5$comandroidlauncher3iconsIconCache(intent, info);
                }
            }, true, useLowResIcon);
        }
    }

    /* JADX INFO: renamed from: lambda$getTitleAndIcon$5$com-android-launcher3-icons-IconCache, reason: not valid java name */
    /* synthetic */ LauncherActivityInfo m104lambda$getTitleAndIcon$5$comandroidlauncher3iconsIconCache(Intent intent, ItemInfoWithIcon itemInfoWithIcon) {
        return this.mLauncherApps.resolveActivity(intent, itemInfoWithIcon.user);
    }

    public synchronized String getTitleNoCache(final ComponentWithLabel info) {
        return Utilities.trim(cacheLocked(info.getComponent(), info.getUser(), new Supplier() { // from class: com.android.launcher3.icons.IconCache$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return IconCache.lambda$getTitleNoCache$6(info);
            }
        }, this.mComponentWithLabelCachingLogic, false, true).title);
    }

    private synchronized void getTitleAndIcon(ItemInfoWithIcon infoInOut, Supplier<LauncherActivityInfo> activityInfoProvider, boolean usePkgIcon, boolean useLowResIcon) {
        applyCacheEntry(cacheLocked(infoInOut.getTargetComponent(), infoInOut.user, activityInfoProvider, this.mLauncherActivityInfoCachingLogic, usePkgIcon, useLowResIcon), infoInOut);
    }

    public synchronized void getTitleAndIconForApp(PackageItemInfo infoInOut, boolean useLowResIcon) {
        applyCacheEntry(getEntryForPackageLocked(infoInOut.packageName, infoInOut.user, useLowResIcon), infoInOut);
    }

    protected void applyCacheEntry(BaseIconCache.CacheEntry entry, ItemInfoWithIcon info) {
        info.title = Utilities.trim(entry.title);
        info.contentDescription = entry.contentDescription;
        info.bitmap = entry.bitmap == null ? getDefaultIcon(info.user) : entry.bitmap;
    }

    public Drawable getFullResIcon(LauncherActivityInfo info) {
        return this.mIconProvider.getIcon(info, this.mIconDpi);
    }

    public void updateSessionCache(PackageUserKey key, PackageInstaller.SessionInfo info) {
        cachePackageInstallInfo(key.mPackageName, key.mUser, info.getAppIcon(), info.getAppLabel());
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    protected String getIconSystemState(String packageName) {
        return this.mIconProvider.getSystemStateForPackage(this.mSystemState, packageName) + ",flags_asi:" + FeatureFlags.APP_SEARCH_IMPROVEMENTS.get();
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    protected boolean getEntryFromDB(ComponentKey cacheKey, BaseIconCache.CacheEntry entry, boolean lowRes) {
        if (this.mIconProvider.isClockIcon(cacheKey)) {
            return false;
        }
        return super.getEntryFromDB(cacheKey, entry, lowRes);
    }

    public static abstract class IconLoadRequest extends HandlerRunnable {
        IconLoadRequest(Handler handler, Runnable endRunnable) {
            super(handler, endRunnable);
        }
    }
}
