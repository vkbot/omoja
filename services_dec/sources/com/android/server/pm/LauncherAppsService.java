package com.android.server.pm;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityOptions;
import android.app.AppGlobals;
import android.app.IApplicationThread;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.LocusId;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ILauncherApps;
import android.content.pm.IOnAppsChangedListener;
import android.content.pm.IPackageInstallerCallback;
import android.content.pm.IPackageManager;
import android.content.pm.IShortcutChangeCallback;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutQueryWrapper;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.content.PackageMonitor;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppsService extends SystemService {
    private final LauncherAppsImpl mLauncherAppsImpl;

    public LauncherAppsService(Context context) {
        super(context);
        this.mLauncherAppsImpl = new LauncherAppsImpl(context);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("launcherapps", this.mLauncherAppsImpl);
    }

    static class BroadcastCookie {
        public final int callingPid;
        public final int callingUid;
        public final String packageName;
        public final UserHandle user;

        BroadcastCookie(UserHandle userHandle, String packageName, int callingPid, int callingUid) {
            this.user = userHandle;
            this.packageName = packageName;
            this.callingUid = callingUid;
            this.callingPid = callingPid;
        }
    }

    static class LauncherAppsImpl extends ILauncherApps.Stub {
        private static final boolean DEBUG = false;
        private static final String TAG = "LauncherAppsService";
        private final ActivityManagerInternal mActivityManagerInternal;
        private final ActivityTaskManagerInternal mActivityTaskManagerInternal;
        private final Handler mCallbackHandler;
        private final Context mContext;
        private final DevicePolicyManager mDpm;
        private PackageInstallerService mPackageInstallerService;
        private final ShortcutChangeHandler mShortcutChangeHandler;
        private final ShortcutServiceInternal mShortcutServiceInternal;
        private final UserManager mUm;
        private final UsageStatsManagerInternal mUsageStatsManagerInternal;
        private final UserManagerInternal mUserManagerInternal;
        private final PackageCallbackList<IOnAppsChangedListener> mListeners = new PackageCallbackList<>();
        private final MyPackageMonitor mPackageMonitor = new MyPackageMonitor();
        private final IPackageManager mIPM = AppGlobals.getPackageManager();

        public LauncherAppsImpl(Context context) {
            this.mContext = context;
            this.mUm = (UserManager) this.mContext.getSystemService("user");
            UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            Objects.requireNonNull(userManagerInternal);
            this.mUserManagerInternal = userManagerInternal;
            UsageStatsManagerInternal usageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
            Objects.requireNonNull(usageStatsManagerInternal);
            this.mUsageStatsManagerInternal = usageStatsManagerInternal;
            ActivityManagerInternal activityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
            Objects.requireNonNull(activityManagerInternal);
            this.mActivityManagerInternal = activityManagerInternal;
            ActivityTaskManagerInternal activityTaskManagerInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
            Objects.requireNonNull(activityTaskManagerInternal);
            this.mActivityTaskManagerInternal = activityTaskManagerInternal;
            ShortcutServiceInternal shortcutServiceInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
            Objects.requireNonNull(shortcutServiceInternal);
            ShortcutServiceInternal shortcutServiceInternal2 = shortcutServiceInternal;
            this.mShortcutServiceInternal = shortcutServiceInternal2;
            shortcutServiceInternal2.addListener(this.mPackageMonitor);
            ShortcutChangeHandler shortcutChangeHandler = new ShortcutChangeHandler(this.mUserManagerInternal);
            this.mShortcutChangeHandler = shortcutChangeHandler;
            this.mShortcutServiceInternal.addShortcutChangeCallback(shortcutChangeHandler);
            this.mCallbackHandler = BackgroundThread.getHandler();
            this.mDpm = (DevicePolicyManager) this.mContext.getSystemService("device_policy");
        }

        int injectBinderCallingUid() {
            return getCallingUid();
        }

        int injectBinderCallingPid() {
            return getCallingPid();
        }

        final int injectCallingUserId() {
            return UserHandle.getUserId(injectBinderCallingUid());
        }

        long injectClearCallingIdentity() {
            return Binder.clearCallingIdentity();
        }

        void injectRestoreCallingIdentity(long token) {
            Binder.restoreCallingIdentity(token);
        }

        private int getCallingUserId() {
            return UserHandle.getUserId(injectBinderCallingUid());
        }

        public void addOnAppsChangedListener(String callingPackage, IOnAppsChangedListener listener) throws RemoteException {
            verifyCallingPackage(callingPackage);
            synchronized (this.mListeners) {
                if (this.mListeners.getRegisteredCallbackCount() == 0) {
                    startWatchingPackageBroadcasts();
                }
                this.mListeners.unregister(listener);
                this.mListeners.register(listener, new BroadcastCookie(UserHandle.of(getCallingUserId()), callingPackage, injectBinderCallingPid(), injectBinderCallingUid()));
            }
        }

        public void removeOnAppsChangedListener(IOnAppsChangedListener listener) throws RemoteException {
            synchronized (this.mListeners) {
                this.mListeners.unregister(listener);
                if (this.mListeners.getRegisteredCallbackCount() == 0) {
                    stopWatchingPackageBroadcasts();
                }
            }
        }

        public void registerPackageInstallerCallback(String callingPackage, IPackageInstallerCallback callback) {
            verifyCallingPackage(callingPackage);
            final UserHandle callingIdUserHandle = new UserHandle(getCallingUserId());
            getPackageInstallerService().registerCallback(callback, new IntPredicate() { // from class: com.android.server.pm.-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    return this.f$0.lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(callingIdUserHandle, i);
                }
            });
        }

        public /* synthetic */ boolean lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(UserHandle callingIdUserHandle, int eventUserId) {
            return isEnabledProfileOf(callingIdUserHandle, new UserHandle(eventUserId), "shouldReceiveEvent");
        }

        public ParceledListSlice<PackageInstaller.SessionInfo> getAllSessions(String callingPackage) {
            verifyCallingPackage(callingPackage);
            List<PackageInstaller.SessionInfo> sessionInfos = new ArrayList<>();
            int[] userIds = this.mUm.getEnabledProfileIds(getCallingUserId());
            long token = Binder.clearCallingIdentity();
            try {
                for (int userId : userIds) {
                    sessionInfos.addAll(getPackageInstallerService().getAllSessions(userId).getList());
                }
                Binder.restoreCallingIdentity(token);
                return new ParceledListSlice<>(sessionInfos);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        private PackageInstallerService getPackageInstallerService() {
            if (this.mPackageInstallerService == null) {
                this.mPackageInstallerService = ((PackageManagerService) ServiceManager.getService(Settings.ATTR_PACKAGE)).getPackageInstaller();
            }
            return this.mPackageInstallerService;
        }

        private void startWatchingPackageBroadcasts() {
            this.mPackageMonitor.register(this.mContext, UserHandle.ALL, true, this.mCallbackHandler);
        }

        private void stopWatchingPackageBroadcasts() {
            this.mPackageMonitor.unregister();
        }

        void checkCallbackCount() {
            synchronized (this.mListeners) {
                if (this.mListeners.getRegisteredCallbackCount() == 0) {
                    stopWatchingPackageBroadcasts();
                }
            }
        }

        private boolean canAccessProfile(int targetUserId, String message) {
            int callingUserId = injectCallingUserId();
            if (targetUserId == callingUserId || injectHasInteractAcrossUsersFullPermission(injectBinderCallingPid(), injectBinderCallingUid())) {
                return true;
            }
            long ident = injectClearCallingIdentity();
            try {
                UserInfo callingUserInfo = this.mUm.getUserInfo(callingUserId);
                if (callingUserInfo != null && callingUserInfo.isProfile()) {
                    Slog.w(TAG, message + " for another profile " + targetUserId + " from " + callingUserId + " not allowed");
                    return false;
                }
                return this.mUserManagerInternal.isProfileAccessible(injectCallingUserId(), targetUserId, message, true);
            } finally {
                injectRestoreCallingIdentity(ident);
            }
        }

        void verifyCallingPackage(String callingPackage) {
            int packageUid = -1;
            try {
                packageUid = AppGlobals.getPackageManager().getPackageUid(callingPackage, 794624, UserHandle.getUserId(getCallingUid()));
            } catch (RemoteException e) {
            }
            if (packageUid < 0) {
                Log.e(TAG, "Package not found: " + callingPackage);
            }
            if (packageUid != injectBinderCallingUid()) {
                throw new SecurityException("Calling package name mismatch");
            }
        }

        private ResolveInfo getHiddenAppActivityInfo(String packageName, int callingUid, UserHandle user) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(packageName, PackageManager.APP_DETAILS_ACTIVITY_CLASS_NAME));
            PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            List<ResolveInfo> apps = pmInt.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, callingUid, user.getIdentifier());
            if (apps.size() > 0) {
                return apps.get(0);
            }
            return null;
        }

        public boolean shouldHideFromSuggestions(String packageName, UserHandle user) {
            if (!canAccessProfile(user.getIdentifier(), "cannot get shouldHideFromSuggestions")) {
                return false;
            }
            PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            int flags = pmi.getDistractingPackageRestrictions(packageName, user.getIdentifier());
            return (flags & 1) != 0;
        }

        public ParceledListSlice<ResolveInfo> getLauncherActivities(String callingPackage, String packageName, UserHandle user) throws RemoteException {
            ResolveInfo info;
            ParceledListSlice<ResolveInfo> launcherActivities = queryActivitiesForUser(callingPackage, new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setPackage(packageName), user);
            if (android.provider.Settings.Global.getInt(this.mContext.getContentResolver(), "show_hidden_icon_apps_enabled", 1) == 0) {
                return launcherActivities;
            }
            if (launcherActivities == null) {
                return null;
            }
            int callingUid = injectBinderCallingUid();
            long ident = injectClearCallingIdentity();
            try {
                if (this.mUm.getUserInfo(user.getIdentifier()).isManagedProfile()) {
                    injectRestoreCallingIdentity(ident);
                    return launcherActivities;
                }
                if (this.mDpm.getDeviceOwnerComponentOnAnyUser() != null) {
                    injectRestoreCallingIdentity(ident);
                    return launcherActivities;
                }
                ArrayList<ResolveInfo> result = new ArrayList<>(launcherActivities.getList());
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                if (packageName != null) {
                    if (result.size() > 0) {
                        injectRestoreCallingIdentity(ident);
                        return launcherActivities;
                    }
                    ApplicationInfo appInfo = pmInt.getApplicationInfo(packageName, 0, callingUid, user.getIdentifier());
                    if (shouldShowSyntheticActivity(user, appInfo) && (info = getHiddenAppActivityInfo(packageName, callingUid, user)) != null) {
                        result.add(info);
                    }
                    ParceledListSlice<ResolveInfo> parceledListSlice = new ParceledListSlice<>(result);
                    injectRestoreCallingIdentity(ident);
                    return parceledListSlice;
                }
                HashSet<String> visiblePackages = new HashSet<>();
                Iterator<ResolveInfo> it = result.iterator();
                while (it.hasNext()) {
                    visiblePackages.add(it.next().activityInfo.packageName);
                }
                List<ApplicationInfo> installedPackages = pmInt.getInstalledApplications(0, user.getIdentifier(), callingUid);
                for (ApplicationInfo applicationInfo : installedPackages) {
                    if (!visiblePackages.contains(applicationInfo.packageName)) {
                        if (shouldShowSyntheticActivity(user, applicationInfo)) {
                            ResolveInfo info2 = getHiddenAppActivityInfo(applicationInfo.packageName, callingUid, user);
                            if (info2 != null) {
                                result.add(info2);
                            }
                        }
                    }
                }
                ParceledListSlice<ResolveInfo> parceledListSlice2 = new ParceledListSlice<>(result);
                injectRestoreCallingIdentity(ident);
                return parceledListSlice2;
            } catch (Throwable th) {
                injectRestoreCallingIdentity(ident);
                throw th;
            }
        }

        private boolean shouldShowSyntheticActivity(UserHandle user, ApplicationInfo appInfo) {
            if (appInfo == null || appInfo.isSystemApp() || appInfo.isUpdatedSystemApp() || isManagedProfileAdmin(user, appInfo.packageName)) {
                return false;
            }
            PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            AndroidPackage pkg = pmInt.getPackage(appInfo.packageName);
            return pkg != null && requestsPermissions(pkg) && hasDefaultEnableLauncherActivity(appInfo.packageName);
        }

        private boolean requestsPermissions(AndroidPackage pkg) {
            return !ArrayUtils.isEmpty(pkg.getRequestedPermissions());
        }

        private boolean hasDefaultEnableLauncherActivity(String packageName) {
            PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            Intent matchIntent = new Intent("android.intent.action.MAIN");
            matchIntent.addCategory("android.intent.category.LAUNCHER");
            matchIntent.setPackage(packageName);
            List<ResolveInfo> infoList = pmInt.queryIntentActivities(matchIntent, matchIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 512, Binder.getCallingUid(), getCallingUserId());
            int size = infoList.size();
            for (int i = 0; i < size; i++) {
                if (infoList.get(i).activityInfo.enabled) {
                    return true;
                }
            }
            return false;
        }

        private boolean isManagedProfileAdmin(UserHandle user, String packageName) {
            ComponentName componentName;
            List<UserInfo> userInfoList = this.mUm.getProfiles(user.getIdentifier());
            for (int i = 0; i < userInfoList.size(); i++) {
                UserInfo userInfo = userInfoList.get(i);
                if (userInfo.isManagedProfile() && (componentName = this.mDpm.getProfileOwnerAsUser(userInfo.getUserHandle())) != null && componentName.getPackageName().equals(packageName)) {
                    return true;
                }
            }
            return false;
        }

        public ActivityInfo resolveActivity(String callingPackage, ComponentName component, UserHandle user) throws RemoteException {
            if (!canAccessProfile(user.getIdentifier(), "Cannot resolve activity")) {
                return null;
            }
            int callingUid = injectBinderCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                return pmInt.getActivityInfo(component, 786432, callingUid, user.getIdentifier());
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public ParceledListSlice getShortcutConfigActivities(String callingPackage, String packageName, UserHandle user) throws RemoteException {
            return queryActivitiesForUser(callingPackage, new Intent("android.intent.action.CREATE_SHORTCUT").setPackage(packageName), user);
        }

        private ParceledListSlice<ResolveInfo> queryActivitiesForUser(String callingPackage, Intent intent, UserHandle user) {
            if (!canAccessProfile(user.getIdentifier(), "Cannot retrieve activities")) {
                return null;
            }
            int callingUid = injectBinderCallingUid();
            long ident = injectClearCallingIdentity();
            try {
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                List<ResolveInfo> apps = pmInt.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, callingUid, user.getIdentifier());
                return new ParceledListSlice<>(apps);
            } finally {
                injectRestoreCallingIdentity(ident);
            }
        }

        public IntentSender getShortcutConfigActivityIntent(String callingPackage, ComponentName component, UserHandle user) throws RemoteException {
            ensureShortcutPermission(callingPackage);
            IntentSender intentSender = null;
            if (!canAccessProfile(user.getIdentifier(), "Cannot check package")) {
                return null;
            }
            Objects.requireNonNull(component);
            Intent intent = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(component);
            long identity = Binder.clearCallingIdentity();
            try {
                PendingIntent pi = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 1409286144, null, user);
                if (pi != null) {
                    intentSender = pi.getIntentSender();
                }
                return intentSender;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public boolean isPackageEnabled(String callingPackage, String packageName, UserHandle user) throws RemoteException {
            boolean z = false;
            if (!canAccessProfile(user.getIdentifier(), "Cannot check package")) {
                return false;
            }
            int callingUid = injectBinderCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                PackageInfo info = pmInt.getPackageInfo(packageName, 786432, callingUid, user.getIdentifier());
                if (info != null && info.applicationInfo.enabled) {
                    z = true;
                }
                return z;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public Bundle getSuspendedPackageLauncherExtras(String packageName, UserHandle user) {
            if (!canAccessProfile(user.getIdentifier(), "Cannot get launcher extras")) {
                return null;
            }
            PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            return pmi.getSuspendedPackageLauncherExtras(packageName, user.getIdentifier());
        }

        public ApplicationInfo getApplicationInfo(String callingPackage, String packageName, int flags, UserHandle user) throws RemoteException {
            if (!canAccessProfile(user.getIdentifier(), "Cannot check package")) {
                return null;
            }
            int callingUid = injectBinderCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                ApplicationInfo info = pmInt.getApplicationInfo(packageName, flags, callingUid, user.getIdentifier());
                return info;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public LauncherApps.AppUsageLimit getAppUsageLimit(String callingPackage, String packageName, UserHandle user) {
            verifyCallingPackage(callingPackage);
            if (!canAccessProfile(user.getIdentifier(), "Cannot access usage limit")) {
                return null;
            }
            if (!this.mActivityTaskManagerInternal.isCallerRecents(Binder.getCallingUid())) {
                throw new SecurityException("Caller is not the recents app");
            }
            UsageStatsManagerInternal.AppUsageLimitData data = this.mUsageStatsManagerInternal.getAppUsageLimit(packageName, user);
            if (data == null) {
                return null;
            }
            return new LauncherApps.AppUsageLimit(data.getTotalUsageLimit(), data.getUsageRemaining());
        }

        private void ensureShortcutPermission(String callingPackage) {
            verifyCallingPackage(callingPackage);
            if (!this.mShortcutServiceInternal.hasShortcutHostPermission(getCallingUserId(), callingPackage, injectBinderCallingPid(), injectBinderCallingUid())) {
                throw new SecurityException("Caller can't access shortcut information");
            }
        }

        private void ensureStrictAccessShortcutsPermission(String callingPackage) {
            verifyCallingPackage(callingPackage);
            if (!injectHasAccessShortcutsPermission(injectBinderCallingPid(), injectBinderCallingUid())) {
                throw new SecurityException("Caller can't access shortcut information");
            }
        }

        boolean injectHasAccessShortcutsPermission(int callingPid, int callingUid) {
            return this.mContext.checkPermission("android.permission.ACCESS_SHORTCUTS", callingPid, callingUid) == 0;
        }

        boolean injectHasInteractAcrossUsersFullPermission(int callingPid, int callingUid) {
            return this.mContext.checkPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingPid, callingUid) == 0;
        }

        public ParceledListSlice getShortcuts(String callingPackage, ShortcutQueryWrapper query, UserHandle targetUser) {
            ensureShortcutPermission(callingPackage);
            if (!canAccessProfile(targetUser.getIdentifier(), "Cannot get shortcuts")) {
                return new ParceledListSlice(Collections.EMPTY_LIST);
            }
            long changedSince = query.getChangedSince();
            String packageName = query.getPackage();
            List<String> shortcutIds = query.getShortcutIds();
            List<LocusId> locusIds = query.getLocusIds();
            ComponentName componentName = query.getActivity();
            int flags = query.getQueryFlags();
            if (shortcutIds != null && packageName == null) {
                throw new IllegalArgumentException("To query by shortcut ID, package name must also be set");
            }
            if (locusIds != null && packageName == null) {
                throw new IllegalArgumentException("To query by locus ID, package name must also be set");
            }
            return new ParceledListSlice(this.mShortcutServiceInternal.getShortcuts(getCallingUserId(), callingPackage, changedSince, packageName, shortcutIds, locusIds, componentName, flags, targetUser.getIdentifier(), injectBinderCallingPid(), injectBinderCallingUid()));
        }

        public void registerShortcutChangeCallback(String callingPackage, ShortcutQueryWrapper query, IShortcutChangeCallback callback) {
            ensureShortcutPermission(callingPackage);
            if (query.getShortcutIds() != null && query.getPackage() == null) {
                throw new IllegalArgumentException("To query by shortcut ID, package name must also be set");
            }
            if (query.getLocusIds() != null && query.getPackage() == null) {
                throw new IllegalArgumentException("To query by locus ID, package name must also be set");
            }
            UserHandle user = UserHandle.of(injectCallingUserId());
            if (injectHasInteractAcrossUsersFullPermission(injectBinderCallingPid(), injectBinderCallingUid())) {
                user = null;
            }
            this.mShortcutChangeHandler.addShortcutChangeCallback(callback, query, user);
        }

        public void unregisterShortcutChangeCallback(String callingPackage, IShortcutChangeCallback callback) {
            ensureShortcutPermission(callingPackage);
            this.mShortcutChangeHandler.removeShortcutChangeCallback(callback);
        }

        public void pinShortcuts(String callingPackage, String packageName, List<String> ids, UserHandle targetUser) {
            ensureShortcutPermission(callingPackage);
            if (!canAccessProfile(targetUser.getIdentifier(), "Cannot pin shortcuts")) {
                return;
            }
            this.mShortcutServiceInternal.pinShortcuts(getCallingUserId(), callingPackage, packageName, ids, targetUser.getIdentifier());
        }

        public void cacheShortcuts(String callingPackage, String packageName, List<String> ids, UserHandle targetUser, int cacheFlags) {
            ensureStrictAccessShortcutsPermission(callingPackage);
            if (!canAccessProfile(targetUser.getIdentifier(), "Cannot cache shortcuts")) {
                return;
            }
            this.mShortcutServiceInternal.cacheShortcuts(getCallingUserId(), callingPackage, packageName, ids, targetUser.getIdentifier(), toShortcutsCacheFlags(cacheFlags));
        }

        public void uncacheShortcuts(String callingPackage, String packageName, List<String> ids, UserHandle targetUser, int cacheFlags) {
            ensureStrictAccessShortcutsPermission(callingPackage);
            if (!canAccessProfile(targetUser.getIdentifier(), "Cannot uncache shortcuts")) {
                return;
            }
            this.mShortcutServiceInternal.uncacheShortcuts(getCallingUserId(), callingPackage, packageName, ids, targetUser.getIdentifier(), toShortcutsCacheFlags(cacheFlags));
        }

        public int getShortcutIconResId(String callingPackage, String packageName, String id, int targetUserId) {
            ensureShortcutPermission(callingPackage);
            if (!canAccessProfile(targetUserId, "Cannot access shortcuts")) {
                return 0;
            }
            return this.mShortcutServiceInternal.getShortcutIconResId(getCallingUserId(), callingPackage, packageName, id, targetUserId);
        }

        public ParcelFileDescriptor getShortcutIconFd(String callingPackage, String packageName, String id, int targetUserId) {
            ensureShortcutPermission(callingPackage);
            if (!canAccessProfile(targetUserId, "Cannot access shortcuts")) {
                return null;
            }
            return this.mShortcutServiceInternal.getShortcutIconFd(getCallingUserId(), callingPackage, packageName, id, targetUserId);
        }

        public String getShortcutIconUri(String callingPackage, String packageName, String shortcutId, int userId) {
            ensureShortcutPermission(callingPackage);
            if (!canAccessProfile(userId, "Cannot access shortcuts")) {
                return null;
            }
            return this.mShortcutServiceInternal.getShortcutIconUri(getCallingUserId(), callingPackage, packageName, shortcutId, userId);
        }

        public boolean hasShortcutHostPermission(String callingPackage) {
            verifyCallingPackage(callingPackage);
            return this.mShortcutServiceInternal.hasShortcutHostPermission(getCallingUserId(), callingPackage, injectBinderCallingPid(), injectBinderCallingUid());
        }

        public boolean startShortcut(String callingPackage, String packageName, String featureId, String shortcutId, Rect sourceBounds, Bundle startActivityOptions, int targetUserId) {
            verifyCallingPackage(callingPackage);
            if (!canAccessProfile(targetUserId, "Cannot start activity")) {
                return false;
            }
            if (!this.mShortcutServiceInternal.isPinnedByCaller(getCallingUserId(), callingPackage, packageName, shortcutId, targetUserId)) {
                ensureShortcutPermission(callingPackage);
            }
            Intent[] intents = this.mShortcutServiceInternal.createShortcutIntents(getCallingUserId(), callingPackage, packageName, shortcutId, targetUserId, injectBinderCallingPid(), injectBinderCallingUid());
            if (intents == null || intents.length == 0) {
                return false;
            }
            ActivityOptions options = ActivityOptions.fromBundle(startActivityOptions);
            if (options != null && options.isApplyActivityFlagsForBubbles()) {
                intents[0].addFlags(524288);
                intents[0].addFlags(AudioFormat.OPUS);
            }
            intents[0].addFlags(AudioFormat.EVRC);
            intents[0].setSourceBounds(sourceBounds);
            return startShortcutIntentsAsPublisher(intents, packageName, featureId, startActivityOptions, targetUserId);
        }

        private boolean startShortcutIntentsAsPublisher(Intent[] intents, String publisherPackage, String publishedFeatureId, Bundle startActivityOptions, int userId) {
            try {
                int code = this.mActivityTaskManagerInternal.startActivitiesAsPackage(publisherPackage, publishedFeatureId, userId, intents, startActivityOptions);
                if (ActivityManager.isStartResultSuccessful(code)) {
                    return true;
                }
                Log.e(TAG, "Couldn't start activity, code=" + code);
                return false;
            } catch (SecurityException e) {
                return false;
            }
        }

        public boolean isActivityEnabled(String callingPackage, ComponentName component, UserHandle user) throws RemoteException {
            boolean z = false;
            if (!canAccessProfile(user.getIdentifier(), "Cannot check component")) {
                return false;
            }
            int callingUid = injectBinderCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                int state = this.mIPM.getComponentEnabledSetting(component, user.getIdentifier());
                if (state == 1) {
                    return true;
                }
                if (state == 2 || state == 3 || state == 4) {
                    return false;
                }
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                ActivityInfo info = pmInt.getActivityInfo(component, 786432, callingUid, user.getIdentifier());
                if (info != null && info.isEnabled()) {
                    z = true;
                }
                return z;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void startSessionDetailsActivityAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, PackageInstaller.SessionInfo sessionInfo, Rect sourceBounds, Bundle opts, UserHandle userHandle) throws RemoteException {
            int userId = userHandle.getIdentifier();
            if (!canAccessProfile(userId, "Cannot start details activity")) {
                return;
            }
            Intent i = new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", sessionInfo.appPackageName).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(callingPackage).build());
            i.setSourceBounds(sourceBounds);
            this.mActivityTaskManagerInternal.startActivityAsUser(caller, callingPackage, callingFeatureId, i, null, AudioFormat.EVRC, opts, userId);
        }

        public void startActivityAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, ComponentName component, Rect sourceBounds, Bundle opts, UserHandle user) throws Throwable {
            boolean canLaunch;
            if (!canAccessProfile(user.getIdentifier(), "Cannot start activity")) {
                return;
            }
            Intent launchIntent = new Intent("android.intent.action.MAIN");
            launchIntent.addCategory("android.intent.category.LAUNCHER");
            launchIntent.setSourceBounds(sourceBounds);
            launchIntent.addFlags(270532608);
            launchIntent.setPackage(component.getPackageName());
            int callingUid = injectBinderCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PackageManagerInternal pmInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                List<ResolveInfo> apps = pmInt.queryIntentActivities(launchIntent, launchIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, callingUid, user.getIdentifier());
                int size = apps.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        canLaunch = false;
                        break;
                    }
                    ActivityInfo activityInfo = apps.get(i).activityInfo;
                    if (!activityInfo.packageName.equals(component.getPackageName()) || !activityInfo.name.equals(component.getClassName())) {
                        i++;
                    } else {
                        if (!activityInfo.exported) {
                            throw new SecurityException("Cannot launch non-exported components " + component);
                        }
                        launchIntent.setPackage(null);
                        launchIntent.setComponent(component);
                        canLaunch = true;
                        break;
                    }
                }
                if (!canLaunch) {
                    try {
                        throw new SecurityException("Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER " + component);
                    } catch (Throwable th) {
                        th = th;
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                }
                Binder.restoreCallingIdentity(ident);
                this.mActivityTaskManagerInternal.startActivityAsUser(caller, callingPackage, callingFeatureId, launchIntent, null, AudioFormat.EVRC, opts, user.getIdentifier());
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public void showAppDetailsAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, ComponentName component, Rect sourceBounds, Bundle opts, UserHandle user) throws Throwable {
            if (!canAccessProfile(user.getIdentifier(), "Cannot show app details")) {
                return;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                String packageName = component.getPackageName();
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts(Settings.ATTR_PACKAGE, packageName, null));
                intent.setFlags(268468224);
                try {
                    intent.setSourceBounds(sourceBounds);
                    Binder.restoreCallingIdentity(ident);
                    this.mActivityTaskManagerInternal.startActivityAsUser(caller, callingPackage, callingFeatureId, intent, null, AudioFormat.EVRC, opts, user.getIdentifier());
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isEnabledProfileOf(UserHandle listeningUser, UserHandle user, String debugMsg) {
            return this.mUserManagerInternal.isProfileAccessible(listeningUser.getIdentifier(), user.getIdentifier(), debugMsg, false);
        }

        private int toShortcutsCacheFlags(int cacheFlags) {
            int ret = 0;
            if (cacheFlags == 0) {
                ret = 16384;
            } else if (cacheFlags == 1) {
                ret = 1073741824;
            }
            Preconditions.checkArgumentPositive(ret, "Invalid cache owner");
            return ret;
        }

        void postToPackageMonitorHandler(Runnable r) {
            this.mCallbackHandler.post(r);
        }

        public static class ShortcutChangeHandler implements LauncherApps.ShortcutChangeCallback {
            private final RemoteCallbackList<IShortcutChangeCallback> mCallbacks = new RemoteCallbackList<>();
            private final UserManagerInternal mUserManagerInternal;

            ShortcutChangeHandler(UserManagerInternal userManager) {
                this.mUserManagerInternal = userManager;
            }

            public synchronized void addShortcutChangeCallback(IShortcutChangeCallback callback, ShortcutQueryWrapper query, UserHandle user) {
                this.mCallbacks.unregister(callback);
                this.mCallbacks.register(callback, new Pair(query, user));
            }

            public synchronized void removeShortcutChangeCallback(IShortcutChangeCallback callback) {
                this.mCallbacks.unregister(callback);
            }

            public void onShortcutsAddedOrUpdated(String packageName, List<ShortcutInfo> shortcuts, UserHandle user) {
                onShortcutEvent(packageName, shortcuts, user, false);
            }

            public void onShortcutsRemoved(String packageName, List<ShortcutInfo> shortcuts, UserHandle user) {
                onShortcutEvent(packageName, shortcuts, user, true);
            }

            private void onShortcutEvent(String packageName, List<ShortcutInfo> shortcuts, UserHandle user, boolean shortcutsRemoved) {
                int count = this.mCallbacks.beginBroadcast();
                for (int i = 0; i < count; i++) {
                    IShortcutChangeCallback callback = this.mCallbacks.getBroadcastItem(i);
                    Pair<ShortcutQueryWrapper, UserHandle> cookie = (Pair) this.mCallbacks.getBroadcastCookie(i);
                    UserHandle callbackUser = (UserHandle) cookie.second;
                    if (callbackUser == null || hasUserAccess(callbackUser, user)) {
                        List<ShortcutInfo> matchedList = filterShortcutsByQuery(packageName, shortcuts, (ShortcutQueryWrapper) cookie.first, shortcutsRemoved);
                        if (!CollectionUtils.isEmpty(matchedList)) {
                            if (shortcutsRemoved) {
                                try {
                                    callback.onShortcutsRemoved(packageName, matchedList, user);
                                } catch (RemoteException e) {
                                }
                            } else {
                                callback.onShortcutsAddedOrUpdated(packageName, matchedList, user);
                            }
                        }
                    }
                }
                this.mCallbacks.finishBroadcast();
            }

            public static List<ShortcutInfo> filterShortcutsByQuery(String packageName, List<ShortcutInfo> shortcuts, ShortcutQueryWrapper query, boolean shortcutsRemoved) {
                int flags;
                long changedSince = query.getChangedSince();
                String queryPackage = query.getPackage();
                List<String> shortcutIds = query.getShortcutIds();
                List<LocusId> locusIds = query.getLocusIds();
                ComponentName activity = query.getActivity();
                int flags2 = query.getQueryFlags();
                if (queryPackage != null && !queryPackage.equals(packageName)) {
                    return null;
                }
                List<ShortcutInfo> matches = new ArrayList<>();
                boolean matchDynamic = (flags2 & 1) != 0;
                boolean matchPinned = (flags2 & 2) != 0;
                boolean matchManifest = (flags2 & 8) != 0;
                boolean matchCached = (flags2 & 16) != 0;
                int shortcutFlags = (matchDynamic ? 1 : 0) | (matchPinned ? 2 : 0) | (matchManifest ? 32 : 0) | (matchCached ? 1073758208 : 0);
                int i = 0;
                while (i < shortcuts.size()) {
                    String queryPackage2 = queryPackage;
                    ShortcutInfo si = shortcuts.get(i);
                    if (activity != null) {
                        flags = flags2;
                        if (!activity.equals(si.getActivity())) {
                        }
                        i++;
                        flags2 = flags;
                        queryPackage = queryPackage2;
                    } else {
                        flags = flags2;
                    }
                    if ((changedSince == 0 || changedSince <= si.getLastChangedTimestamp()) && ((shortcutIds == null || shortcutIds.contains(si.getId())) && ((locusIds == null || locusIds.contains(si.getLocusId())) && (shortcutsRemoved || (si.getFlags() & shortcutFlags) != 0)))) {
                        matches.add(si);
                    }
                    i++;
                    flags2 = flags;
                    queryPackage = queryPackage2;
                }
                return matches;
            }

            private boolean hasUserAccess(UserHandle callbackUser, UserHandle shortcutUser) {
                int callbackUserId = callbackUser.getIdentifier();
                int shortcutUserId = shortcutUser.getIdentifier();
                if (shortcutUser == callbackUser) {
                    return true;
                }
                return this.mUserManagerInternal.isProfileAccessible(callbackUserId, shortcutUserId, null, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        class MyPackageMonitor extends PackageMonitor implements ShortcutServiceInternal.ShortcutChangeListener {
            private MyPackageMonitor() {
            }

            public void onPackageAdded(String packageName, int uid) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackageAdded")) {
                            try {
                                listener.onPackageAdded(user, packageName);
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackageAdded(packageName, uid);
            }

            public void onPackageRemoved(String packageName, int uid) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackageRemoved")) {
                            try {
                                listener.onPackageRemoved(user, packageName);
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackageRemoved(packageName, uid);
            }

            public void onPackageModified(String packageName) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackageModified")) {
                            try {
                                listener.onPackageChanged(user, packageName);
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackageModified(packageName);
            }

            public void onPackagesAvailable(String[] packages) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackagesAvailable")) {
                            try {
                                listener.onPackagesAvailable(user, packages, isReplacing());
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackagesAvailable(packages);
            }

            public void onPackagesUnavailable(String[] packages) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackagesUnavailable")) {
                            try {
                                listener.onPackagesUnavailable(user, packages, isReplacing());
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackagesUnavailable(packages);
            }

            public void onPackagesSuspended(String[] packages) {
                UserHandle user = new UserHandle(getChangingUserId());
                PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                ArrayList<Pair<String, Bundle>> packagesWithExtras = new ArrayList<>();
                ArrayList<String> packagesWithoutExtras = new ArrayList<>();
                for (String pkg : packages) {
                    Bundle launcherExtras = pmi.getSuspendedPackageLauncherExtras(pkg, user.getIdentifier());
                    if (launcherExtras != null) {
                        packagesWithExtras.add(new Pair<>(pkg, launcherExtras));
                    } else {
                        packagesWithoutExtras.add(pkg);
                    }
                }
                String[] packagesNullExtras = (String[]) packagesWithoutExtras.toArray(new String[packagesWithoutExtras.size()]);
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackagesSuspended")) {
                            try {
                                listener.onPackagesSuspended(user, packagesNullExtras, (Bundle) null);
                                for (int idx = 0; idx < packagesWithExtras.size(); idx++) {
                                    Pair<String, Bundle> packageExtraPair = packagesWithExtras.get(idx);
                                    listener.onPackagesSuspended(user, new String[]{(String) packageExtraPair.first}, (Bundle) packageExtraPair.second);
                                }
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
            }

            public void onPackagesUnsuspended(String[] packages) {
                UserHandle user = new UserHandle(getChangingUserId());
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                for (int i = 0; i < n; i++) {
                    try {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onPackagesUnsuspended")) {
                            try {
                                listener.onPackagesUnsuspended(user, packages);
                            } catch (RemoteException re) {
                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                            }
                        }
                    } catch (Throwable th) {
                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                        throw th;
                    }
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
                super.onPackagesUnsuspended(packages);
            }

            public void onShortcutChanged(final String packageName, final int userId) {
                LauncherAppsImpl.this.postToPackageMonitorHandler(new Runnable() { // from class: com.android.server.pm.-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f$0.lambda$onShortcutChanged$0$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor(packageName, userId);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: onShortcutChangedInner, reason: merged with bridge method [inline-methods] */
            public void lambda$onShortcutChanged$0$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor(String packageName, int userId) throws Throwable {
                int n = LauncherAppsImpl.this.mListeners.beginBroadcast();
                try {
                    UserHandle user = UserHandle.of(userId);
                    for (int i = 0; i < n; i++) {
                        IOnAppsChangedListener listener = (IOnAppsChangedListener) LauncherAppsImpl.this.mListeners.getBroadcastItem(i);
                        BroadcastCookie cookie = (BroadcastCookie) LauncherAppsImpl.this.mListeners.getBroadcastCookie(i);
                        if (LauncherAppsImpl.this.isEnabledProfileOf(cookie.user, user, "onShortcutChanged")) {
                            int launcherUserId = cookie.user.getIdentifier();
                            if (LauncherAppsImpl.this.mShortcutServiceInternal.hasShortcutHostPermission(launcherUserId, cookie.packageName, cookie.callingPid, cookie.callingUid)) {
                                List<ShortcutInfo> list = LauncherAppsImpl.this.mShortcutServiceInternal.getShortcuts(launcherUserId, cookie.packageName, 0L, packageName, (List) null, (List) null, (ComponentName) null, 1055, userId, cookie.callingPid, cookie.callingUid);
                                try {
                                    try {
                                        try {
                                            try {
                                                listener.onShortcutChanged(user, packageName, new ParceledListSlice(list));
                                            } catch (RemoteException e) {
                                                re = e;
                                                Slog.d(LauncherAppsImpl.TAG, "Callback failed ", re);
                                            }
                                        } catch (RuntimeException e2) {
                                            e = e2;
                                            Log.w(LauncherAppsImpl.TAG, e.getMessage(), e);
                                            LauncherAppsImpl.this.mListeners.finishBroadcast();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        LauncherAppsImpl.this.mListeners.finishBroadcast();
                                        throw th;
                                    }
                                } catch (RemoteException e3) {
                                    re = e3;
                                }
                            }
                        }
                    }
                } catch (RuntimeException e4) {
                    e = e4;
                } catch (Throwable th2) {
                    th = th2;
                    LauncherAppsImpl.this.mListeners.finishBroadcast();
                    throw th;
                }
                LauncherAppsImpl.this.mListeners.finishBroadcast();
            }
        }

        class PackageCallbackList<T extends IInterface> extends RemoteCallbackList<T> {
            PackageCallbackList() {
            }

            @Override // android.os.RemoteCallbackList
            public void onCallbackDied(T callback, Object cookie) {
                LauncherAppsImpl.this.checkCallbackCount();
            }
        }
    }
}
