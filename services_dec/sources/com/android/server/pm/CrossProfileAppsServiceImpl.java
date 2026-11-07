package com.android.server.pm;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityOptions;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.IApplicationThread;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.PermissionChecker;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.CrossProfileAppsInternal;
import android.content.pm.ICrossProfileApps;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.server.LocalServices;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.pm.permission.PermissionManagerService;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class CrossProfileAppsServiceImpl extends ICrossProfileApps.Stub {
    private static final String TAG = "CrossProfileAppsService";
    private Context mContext;
    private Injector mInjector;
    private final LocalService mLocalService;

    public interface Injector {
        int checkComponentPermission(String str, int i, int i2, boolean z);

        long clearCallingIdentity();

        ActivityManagerInternal getActivityManagerInternal();

        ActivityTaskManagerInternal getActivityTaskManagerInternal();

        AppOpsManager getAppOpsManager();

        int getCallingPid();

        int getCallingUid();

        UserHandle getCallingUserHandle();

        int getCallingUserId();

        DevicePolicyManagerInternal getDevicePolicyManagerInternal();

        IPackageManager getIPackageManager();

        PackageManager getPackageManager();

        PackageManagerInternal getPackageManagerInternal();

        UserManager getUserManager();

        void killUid(int i);

        void restoreCallingIdentity(long j);

        void sendBroadcastAsUser(Intent intent, UserHandle userHandle);

        <T> T withCleanCallingIdentity(FunctionalUtils.ThrowingSupplier<T> throwingSupplier);

        void withCleanCallingIdentity(FunctionalUtils.ThrowingRunnable throwingRunnable);
    }

    public CrossProfileAppsServiceImpl(Context context) {
        this(context, new InjectorImpl(context));
    }

    CrossProfileAppsServiceImpl(Context context, Injector injector) {
        this.mLocalService = new LocalService();
        this.mContext = context;
        this.mInjector = injector;
    }

    public List<UserHandle> getTargetUserProfiles(String callingPackage) {
        Objects.requireNonNull(callingPackage);
        verifyCallingPackage(callingPackage);
        DevicePolicyEventLogger.createEvent(125).setStrings(new String[]{callingPackage}).write();
        return getTargetUserProfilesUnchecked(callingPackage, this.mInjector.getCallingUserId());
    }

    public void startActivityAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, ComponentName component, int userId, boolean launchMainActivity) throws RemoteException {
        Bundle bundle;
        Objects.requireNonNull(callingPackage);
        Objects.requireNonNull(component);
        verifyCallingPackage(callingPackage);
        DevicePolicyEventLogger.createEvent(CecMessageType.SYSTEM_AUDIO_MODE_STATUS).setStrings(new String[]{callingPackage}).write();
        int callerUserId = this.mInjector.getCallingUserId();
        int callingUid = this.mInjector.getCallingUid();
        int callingPid = this.mInjector.getCallingPid();
        List<UserHandle> allowedTargetUsers = getTargetUserProfilesUnchecked(callingPackage, callerUserId);
        if (!allowedTargetUsers.contains(UserHandle.of(userId))) {
            throw new SecurityException(callingPackage + " cannot access unrelated user " + userId);
        }
        if (!callingPackage.equals(component.getPackageName())) {
            throw new SecurityException(callingPackage + " attempts to start an activity in other package - " + component.getPackageName());
        }
        Intent launchIntent = new Intent();
        if (launchMainActivity) {
            launchIntent.setAction("android.intent.action.MAIN");
            launchIntent.addCategory("android.intent.category.LAUNCHER");
            launchIntent.addFlags(270532608);
            launchIntent.setPackage(component.getPackageName());
        } else {
            if (callerUserId != userId) {
                int permissionFlag = PermissionChecker.checkPermissionForPreflight(this.mContext, "android.permission.INTERACT_ACROSS_PROFILES", callingPid, callingUid, callingPackage);
                if (permissionFlag != 0 || !isSameProfileGroup(callerUserId, userId)) {
                    throw new SecurityException("Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group.");
                }
            }
            launchIntent.setComponent(component);
        }
        verifyActivityCanHandleIntentAndExported(launchIntent, component, callingUid, userId);
        launchIntent.setPackage(null);
        launchIntent.setComponent(component);
        ActivityTaskManagerInternal activityTaskManagerInternal = this.mInjector.getActivityTaskManagerInternal();
        if (launchMainActivity) {
            bundle = ActivityOptions.makeOpenCrossProfileAppsAnimation().toBundle();
        } else {
            bundle = null;
        }
        activityTaskManagerInternal.startActivityAsUser(caller, callingPackage, callingFeatureId, launchIntent, null, AudioFormat.EVRC, bundle, userId);
    }

    public void startActivityAsUserByIntent(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, int userId, IBinder callingActivity, Bundle options) throws RemoteException {
        Objects.requireNonNull(callingPackage);
        Objects.requireNonNull(intent);
        Objects.requireNonNull(intent.getComponent(), "The intent must have a Component set");
        verifyCallingPackage(callingPackage);
        int callerUserId = this.mInjector.getCallingUserId();
        int callingUid = this.mInjector.getCallingUid();
        List<UserHandle> allowedTargetUsers = getTargetUserProfilesUnchecked(callingPackage, callerUserId);
        if (callerUserId != userId && !allowedTargetUsers.contains(UserHandle.of(userId))) {
            throw new SecurityException(callingPackage + " cannot access unrelated user " + userId);
        }
        Intent launchIntent = new Intent(intent);
        launchIntent.setPackage(callingPackage);
        if (!callingPackage.equals(launchIntent.getComponent().getPackageName())) {
            throw new SecurityException(callingPackage + " attempts to start an activity in other package - " + launchIntent.getComponent().getPackageName());
        }
        if (callerUserId != userId && !hasCallerGotInteractAcrossProfilesPermission(callingPackage)) {
            throw new SecurityException("Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group.");
        }
        verifyActivityCanHandleIntent(launchIntent, callingUid, userId);
        this.mInjector.getActivityTaskManagerInternal().startActivityAsUser(caller, callingPackage, callingFeatureId, launchIntent, callingActivity, 0, options, userId);
        logStartActivityByIntent(callingPackage);
    }

    private void logStartActivityByIntent(String packageName) {
        DevicePolicyEventLogger.createEvent(DisplayTransformManager.LEVEL_COLOR_MATRIX_SATURATION).setStrings(new String[]{packageName}).setBoolean(isCallingUserAManagedProfile()).write();
    }

    public boolean canRequestInteractAcrossProfiles(String callingPackage) {
        Objects.requireNonNull(callingPackage);
        verifyCallingPackage(callingPackage);
        return canRequestInteractAcrossProfilesUnchecked(callingPackage);
    }

    private boolean canRequestInteractAcrossProfilesUnchecked(String packageName) {
        int[] enabledProfileIds = this.mInjector.getUserManager().getEnabledProfileIds(this.mInjector.getCallingUserId());
        if (enabledProfileIds.length >= 2 && !isProfileOwner(packageName, enabledProfileIds)) {
            return hasRequestedAppOpPermission(AppOpsManager.opToPermission(93), packageName);
        }
        return false;
    }

    private boolean hasRequestedAppOpPermission(String permission, String packageName) {
        try {
            String[] packages = this.mInjector.getIPackageManager().getAppOpPermissionPackages(permission);
            return ArrayUtils.contains(packages, packageName);
        } catch (RemoteException e) {
            Slog.e(TAG, "PackageManager dead. Cannot get permission info");
            return false;
        }
    }

    public boolean canInteractAcrossProfiles(String callingPackage) {
        Objects.requireNonNull(callingPackage);
        verifyCallingPackage(callingPackage);
        List<UserHandle> targetUserProfiles = getTargetUserProfilesUnchecked(callingPackage, this.mInjector.getCallingUserId());
        if (targetUserProfiles.isEmpty()) {
            return false;
        }
        return hasCallerGotInteractAcrossProfilesPermission(callingPackage);
    }

    private boolean hasCallerGotInteractAcrossProfilesPermission(String callingPackage) {
        return hasInteractAcrossProfilesPermission(callingPackage, this.mInjector.getCallingUid(), this.mInjector.getCallingPid());
    }

    private boolean isCrossProfilePackageAllowlisted(final String packageName) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$gcoZAdm28ry1frfwa0f7lWeFljM
            public final Object getOrThrow() {
                return this.f$0.lambda$isCrossProfilePackageAllowlisted$0$CrossProfileAppsServiceImpl(packageName);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isCrossProfilePackageAllowlisted$0$CrossProfileAppsServiceImpl(String packageName) throws Exception {
        return Boolean.valueOf(this.mInjector.getDevicePolicyManagerInternal().getAllCrossProfilePackages().contains(packageName));
    }

    private boolean isCrossProfilePackageAllowlistedByDefault(final String packageName) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$NMfVWc26yr4bo5gpKZzvzpXn0ic
            public final Object getOrThrow() {
                return this.f$0.lambda$isCrossProfilePackageAllowlistedByDefault$1$CrossProfileAppsServiceImpl(packageName);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isCrossProfilePackageAllowlistedByDefault$1$CrossProfileAppsServiceImpl(String packageName) throws Exception {
        return Boolean.valueOf(this.mInjector.getDevicePolicyManagerInternal().getDefaultCrossProfilePackages().contains(packageName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<UserHandle> getTargetUserProfilesUnchecked(final String packageName, final int userId) {
        return (List) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$ZwEbVtiAVN8XYZYxg44xuGkFKak
            public final Object getOrThrow() {
                return this.f$0.lambda$getTargetUserProfilesUnchecked$2$CrossProfileAppsServiceImpl(userId, packageName);
            }
        });
    }

    public /* synthetic */ List lambda$getTargetUserProfilesUnchecked$2$CrossProfileAppsServiceImpl(int userId, String packageName) throws Exception {
        int[] enabledProfileIds = this.mInjector.getUserManager().getEnabledProfileIds(userId);
        List<UserHandle> targetProfiles = new ArrayList<>();
        for (int profileId : enabledProfileIds) {
            if (profileId != userId && isPackageEnabled(packageName, profileId)) {
                targetProfiles.add(UserHandle.of(profileId));
            }
        }
        return targetProfiles;
    }

    private boolean isPackageEnabled(final String packageName, final int userId) {
        final int callingUid = this.mInjector.getCallingUid();
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$35r-Eh7boIF7EPFqH7bKXyZYEDo
            public final Object getOrThrow() {
                return this.f$0.lambda$isPackageEnabled$3$CrossProfileAppsServiceImpl(packageName, callingUid, userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isPackageEnabled$3$CrossProfileAppsServiceImpl(String packageName, int callingUid, int userId) throws Exception {
        PackageInfo info = this.mInjector.getPackageManagerInternal().getPackageInfo(packageName, 786432, callingUid, userId);
        return Boolean.valueOf(info != null && info.applicationInfo.enabled);
    }

    private void verifyActivityCanHandleIntent(final Intent launchIntent, final int callingUid, final int userId) {
        this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$verifyActivityCanHandleIntent$4$CrossProfileAppsServiceImpl(launchIntent, callingUid, userId);
            }
        });
    }

    public /* synthetic */ void lambda$verifyActivityCanHandleIntent$4$CrossProfileAppsServiceImpl(Intent launchIntent, int callingUid, int userId) throws Exception {
        List<ResolveInfo> activities = this.mInjector.getPackageManagerInternal().queryIntentActivities(launchIntent, launchIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, callingUid, userId);
        if (!activities.isEmpty()) {
        } else {
            throw new SecurityException("Activity cannot handle intent");
        }
    }

    private void verifyActivityCanHandleIntentAndExported(final Intent launchIntent, final ComponentName component, final int callingUid, final int userId) {
        this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$OF_Fe6H4qgx502m4OuO6sVwmhH8
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$verifyActivityCanHandleIntentAndExported$5$CrossProfileAppsServiceImpl(launchIntent, callingUid, userId, component);
            }
        });
    }

    public /* synthetic */ void lambda$verifyActivityCanHandleIntentAndExported$5$CrossProfileAppsServiceImpl(Intent launchIntent, int callingUid, int userId, ComponentName component) throws Exception {
        List<ResolveInfo> apps = this.mInjector.getPackageManagerInternal().queryIntentActivities(launchIntent, launchIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 786432, callingUid, userId);
        int size = apps.size();
        for (int i = 0; i < size; i++) {
            ActivityInfo activityInfo = apps.get(i).activityInfo;
            if (TextUtils.equals(activityInfo.packageName, component.getPackageName()) && TextUtils.equals(activityInfo.name, component.getClassName()) && activityInfo.exported) {
                return;
            }
        }
        throw new SecurityException("Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported" + component);
    }

    /* JADX INFO: renamed from: setInteractAcrossProfilesAppOp, reason: merged with bridge method [inline-methods] */
    public void lambda$clearInteractAcrossProfilesAppOps$10$CrossProfileAppsServiceImpl(String packageName, int newMode) {
        setInteractAcrossProfilesAppOp(packageName, newMode, this.mInjector.getCallingUserId());
    }

    private void setInteractAcrossProfilesAppOp(String packageName, int newMode, int userId) {
        int callingUid = this.mInjector.getCallingUid();
        if (!isPermissionGranted("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) && !isPermissionGranted("android.permission.INTERACT_ACROSS_USERS", callingUid)) {
            throw new SecurityException("INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles.");
        }
        if (!isPermissionGranted("android.permission.MANAGE_APP_OPS_MODES", callingUid) && !isPermissionGranted("android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES", callingUid)) {
            throw new SecurityException("MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles.");
        }
        setInteractAcrossProfilesAppOpUnchecked(packageName, newMode, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInteractAcrossProfilesAppOpUnchecked(String packageName, int newMode, int userId) {
        if (newMode == 0 && !canConfigureInteractAcrossProfiles(packageName, userId)) {
            Slog.e(TAG, "Tried to turn on the appop for interacting across profiles for invalid app " + packageName);
            return;
        }
        int[] profileIds = this.mInjector.getUserManager().getProfileIds(userId, false);
        int length = profileIds.length;
        for (int i = 0; i < length; i++) {
            int profileId = profileIds[i];
            if (isPackageInstalled(packageName, profileId)) {
                setInteractAcrossProfilesAppOpForProfile(packageName, newMode, profileId, profileId == userId);
            }
        }
    }

    private boolean isPackageInstalled(final String packageName, final int userId) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$5kQNf6B4-PcRylaUWWVmM7msVIg
            public final Object getOrThrow() {
                return this.f$0.lambda$isPackageInstalled$6$CrossProfileAppsServiceImpl(packageName, userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isPackageInstalled$6$CrossProfileAppsServiceImpl(String packageName, int userId) throws Exception {
        PackageInfo info = this.mInjector.getPackageManagerInternal().getPackageInfo(packageName, 786432, this.mInjector.getCallingUid(), userId);
        return Boolean.valueOf(info != null);
    }

    private void setInteractAcrossProfilesAppOpForProfile(String packageName, int newMode, int profileId, boolean logMetrics) {
        try {
            setInteractAcrossProfilesAppOpForProfileOrThrow(packageName, newMode, profileId, logMetrics);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "Missing package " + packageName + " on profile user ID " + profileId, e);
        }
    }

    private void setInteractAcrossProfilesAppOpForProfileOrThrow(final String packageName, final int newMode, int profileId, boolean logMetrics) throws PackageManager.NameNotFoundException {
        final int uid = this.mInjector.getPackageManager().getPackageUidAsUser(packageName, 0, profileId);
        if (currentModeEquals(newMode, packageName, uid)) {
            Slog.i(TAG, "Attempt to set mode to existing value of " + newMode + " for " + packageName + " on profile user ID " + profileId);
            return;
        }
        boolean hadPermission = hasInteractAcrossProfilesPermission(packageName, uid, -1);
        if (isPermissionGranted("android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES", this.mInjector.getCallingUid())) {
            this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$JUwHr7lh91RynCQdEsfLvNISbx8
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$7$CrossProfileAppsServiceImpl(uid, packageName, newMode);
                }
            });
        } else {
            this.mInjector.getAppOpsManager().setMode(93, uid, packageName, newMode);
        }
        maybeKillUid(packageName, uid, hadPermission);
        sendCanInteractAcrossProfilesChangedBroadcast(packageName, uid, UserHandle.of(profileId));
        maybeLogSetInteractAcrossProfilesAppOp(packageName, newMode, logMetrics, uid);
    }

    public /* synthetic */ void lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$7$CrossProfileAppsServiceImpl(int uid, String packageName, int newMode) throws Exception {
        this.mInjector.getAppOpsManager().setMode(93, uid, packageName, newMode);
    }

    private void maybeKillUid(String packageName, int uid, boolean hadPermission) {
        if (!hadPermission || hasInteractAcrossProfilesPermission(packageName, uid, -1)) {
            return;
        }
        this.mInjector.killUid(uid);
    }

    private void maybeLogSetInteractAcrossProfilesAppOp(String packageName, int newMode, boolean logMetrics, int uid) {
        if (!logMetrics) {
            return;
        }
        DevicePolicyEventLogger.createEvent(CecMessageType.VENDOR_REMOTE_BUTTON_UP).setStrings(new String[]{packageName}).setInt(newMode).setBoolean(appDeclaresCrossProfileAttribute(uid)).write();
    }

    private boolean currentModeEquals(final int otherMode, final String packageName, final int uid) {
        final String op = AppOpsManager.permissionToOp("android.permission.INTERACT_ACROSS_PROFILES");
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg
            public final Object getOrThrow() {
                return this.f$0.lambda$currentModeEquals$8$CrossProfileAppsServiceImpl(otherMode, op, uid, packageName);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$currentModeEquals$8$CrossProfileAppsServiceImpl(int otherMode, String op, int uid, String packageName) throws Exception {
        return Boolean.valueOf(otherMode == this.mInjector.getAppOpsManager().unsafeCheckOpNoThrow(op, uid, packageName));
    }

    private void sendCanInteractAcrossProfilesChangedBroadcast(String packageName, int uid, UserHandle userHandle) {
        Intent intent = new Intent("android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED").setPackage(packageName);
        if (appDeclaresCrossProfileAttribute(uid)) {
            intent.addFlags(AudioFormat.EVRCB);
        } else {
            intent.addFlags(1073741824);
        }
        for (ResolveInfo receiver : findBroadcastReceiversForUser(intent, userHandle)) {
            intent.setComponent(receiver.getComponentInfo().getComponentName());
            this.mInjector.sendBroadcastAsUser(intent, userHandle);
        }
    }

    private List<ResolveInfo> findBroadcastReceiversForUser(Intent intent, UserHandle userHandle) {
        return this.mInjector.getPackageManager().queryBroadcastReceiversAsUser(intent, 0, userHandle);
    }

    private boolean appDeclaresCrossProfileAttribute(int uid) {
        return this.mInjector.getPackageManagerInternal().getPackage(uid).isCrossProfile();
    }

    public boolean canConfigureInteractAcrossProfiles(String packageName) {
        return canConfigureInteractAcrossProfiles(packageName, this.mInjector.getCallingUserId());
    }

    private boolean canConfigureInteractAcrossProfiles(String packageName, int userId) {
        if (canUserAttemptToConfigureInteractAcrossProfiles(packageName, userId) && hasOtherProfileWithPackageInstalled(packageName, userId) && hasRequestedAppOpPermission(AppOpsManager.opToPermission(93), packageName)) {
            return isCrossProfilePackageAllowlisted(packageName);
        }
        return false;
    }

    public boolean canUserAttemptToConfigureInteractAcrossProfiles(String packageName) {
        return canUserAttemptToConfigureInteractAcrossProfiles(packageName, this.mInjector.getCallingUserId());
    }

    private boolean canUserAttemptToConfigureInteractAcrossProfiles(String packageName, int userId) {
        int[] profileIds = this.mInjector.getUserManager().getProfileIds(userId, false);
        if (profileIds.length >= 2 && !isProfileOwner(packageName, profileIds) && hasRequestedAppOpPermission(AppOpsManager.opToPermission(93), packageName)) {
            return !isPlatformSignedAppWithNonUserConfigurablePermission(packageName, profileIds);
        }
        return false;
    }

    private boolean isPlatformSignedAppWithNonUserConfigurablePermission(String packageName, int[] profileIds) {
        return !isCrossProfilePackageAllowlistedByDefault(packageName) && isPlatformSignedAppWithAutomaticProfilesPermission(packageName, profileIds);
    }

    private boolean isPlatformSignedAppWithAutomaticProfilesPermission(String packageName, int[] profileIds) {
        for (int userId : profileIds) {
            int uid = this.mInjector.getPackageManagerInternal().getPackageUidInternal(packageName, 0, userId);
            if (uid != -1 && isPermissionGranted("android.permission.INTERACT_ACROSS_PROFILES", uid)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasOtherProfileWithPackageInstalled(final String packageName, final int userId) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$mdLHcsVQVlAc0piNfMSuwChvy8Y
            public final Object getOrThrow() {
                return this.f$0.lambda$hasOtherProfileWithPackageInstalled$9$CrossProfileAppsServiceImpl(userId, packageName);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$hasOtherProfileWithPackageInstalled$9$CrossProfileAppsServiceImpl(int userId, String packageName) throws Exception {
        int[] profileIds = this.mInjector.getUserManager().getProfileIds(userId, false);
        for (int profileId : profileIds) {
            if (profileId != userId && isPackageInstalled(packageName, profileId)) {
                return true;
            }
        }
        return false;
    }

    public void resetInteractAcrossProfilesAppOps(List<String> packageNames) {
        packageNames.forEach(new Consumer() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$wMVevLD4FZ1cL73xmtbSkTJK9d8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.resetInteractAcrossProfilesAppOp((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetInteractAcrossProfilesAppOp(String packageName) {
        if (canConfigureInteractAcrossProfiles(packageName)) {
            Slog.w(TAG, "Not resetting app-op for package " + packageName + " since it is still configurable by users.");
            return;
        }
        String op = AppOpsManager.permissionToOp("android.permission.INTERACT_ACROSS_PROFILES");
        lambda$clearInteractAcrossProfilesAppOps$10$CrossProfileAppsServiceImpl(packageName, AppOpsManager.opToDefaultMode(op));
    }

    public void clearInteractAcrossProfilesAppOps() {
        final int defaultMode = AppOpsManager.opToDefaultMode(AppOpsManager.permissionToOp("android.permission.INTERACT_ACROSS_PROFILES"));
        findAllPackageNames().forEach(new Consumer() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$clearInteractAcrossProfilesAppOps$10$CrossProfileAppsServiceImpl(defaultMode, (String) obj);
            }
        });
    }

    private List<String> findAllPackageNames() {
        return (List) this.mInjector.getPackageManagerInternal().getInstalledApplications(0, this.mInjector.getCallingUserId(), this.mInjector.getCallingUid()).stream().map(new Function() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ApplicationInfo) obj).packageName;
            }
        }).collect(Collectors.toList());
    }

    CrossProfileAppsInternal getLocalService() {
        return this.mLocalService;
    }

    private boolean isSameProfileGroup(final int callerUserId, final int userId) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$l-HDH615-tUbj1olMg0-KDh14VY
            public final Object getOrThrow() {
                return this.f$0.lambda$isSameProfileGroup$12$CrossProfileAppsServiceImpl(callerUserId, userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isSameProfileGroup$12$CrossProfileAppsServiceImpl(int callerUserId, int userId) throws Exception {
        return Boolean.valueOf(this.mInjector.getUserManager().isSameProfileGroup(callerUserId, userId));
    }

    private void verifyCallingPackage(String callingPackage) {
        this.mInjector.getAppOpsManager().checkPackage(this.mInjector.getCallingUid(), callingPackage);
    }

    private boolean isPermissionGranted(String permission, int uid) {
        return this.mInjector.checkComponentPermission(permission, uid, -1, true) == 0;
    }

    private boolean isCallingUserAManagedProfile() {
        return isManagedProfile(this.mInjector.getCallingUserId());
    }

    private boolean isManagedProfile(final int userId) {
        return ((Boolean) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q
            public final Object getOrThrow() {
                return this.f$0.lambda$isManagedProfile$13$CrossProfileAppsServiceImpl(userId);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$isManagedProfile$13$CrossProfileAppsServiceImpl(int userId) throws Exception {
        return Boolean.valueOf(((UserManager) this.mContext.getSystemService(UserManager.class)).isManagedProfile(userId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasInteractAcrossProfilesPermission(String packageName, int uid, int pid) {
        return isPermissionGranted("android.permission.INTERACT_ACROSS_USERS_FULL", uid) || isPermissionGranted("android.permission.INTERACT_ACROSS_USERS", uid) || PermissionChecker.checkPermissionForPreflight(this.mContext, "android.permission.INTERACT_ACROSS_PROFILES", pid, uid, packageName) == 0;
    }

    private boolean isProfileOwner(String packageName, int[] userIds) {
        for (int userId : userIds) {
            if (isProfileOwner(packageName, userId)) {
                return true;
            }
        }
        return false;
    }

    private boolean isProfileOwner(String packageName, final int userId) {
        ComponentName profileOwner = (ComponentName) this.mInjector.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.-$$Lambda$CrossProfileAppsServiceImpl$SkoXDY_btTNmVcedeaMo-QLx9-s
            public final Object getOrThrow() {
                return this.f$0.lambda$isProfileOwner$14$CrossProfileAppsServiceImpl(userId);
            }
        });
        if (profileOwner == null) {
            return false;
        }
        return profileOwner.getPackageName().equals(packageName);
    }

    public /* synthetic */ ComponentName lambda$isProfileOwner$14$CrossProfileAppsServiceImpl(int userId) throws Exception {
        return this.mInjector.getDevicePolicyManagerInternal().getProfileOwnerAsUser(userId);
    }

    private static class InjectorImpl implements Injector {
        private Context mContext;

        public InjectorImpl(Context context) {
            this.mContext = context;
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public int getCallingUid() {
            return Binder.getCallingUid();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public int getCallingPid() {
            return Binder.getCallingPid();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public int getCallingUserId() {
            return UserHandle.getCallingUserId();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public UserHandle getCallingUserHandle() {
            return Binder.getCallingUserHandle();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public long clearCallingIdentity() {
            return Binder.clearCallingIdentity();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public void restoreCallingIdentity(long token) {
            Binder.restoreCallingIdentity(token);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public void withCleanCallingIdentity(FunctionalUtils.ThrowingRunnable action) {
            Binder.withCleanCallingIdentity(action);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public final <T> T withCleanCallingIdentity(FunctionalUtils.ThrowingSupplier<T> throwingSupplier) {
            return (T) Binder.withCleanCallingIdentity(throwingSupplier);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public UserManager getUserManager() {
            return (UserManager) this.mContext.getSystemService(UserManager.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public PackageManagerInternal getPackageManagerInternal() {
            return (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public PackageManager getPackageManager() {
            return this.mContext.getPackageManager();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public AppOpsManager getAppOpsManager() {
            return (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public ActivityManagerInternal getActivityManagerInternal() {
            return (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public ActivityTaskManagerInternal getActivityTaskManagerInternal() {
            return (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public IPackageManager getIPackageManager() {
            return AppGlobals.getPackageManager();
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public DevicePolicyManagerInternal getDevicePolicyManagerInternal() {
            return (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public void sendBroadcastAsUser(Intent intent, UserHandle user) {
            this.mContext.sendBroadcastAsUser(intent, user);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public int checkComponentPermission(String permission, int uid, int owningUid, boolean exported) {
            return ActivityManager.checkComponentPermission(permission, uid, owningUid, exported);
        }

        @Override // com.android.server.pm.CrossProfileAppsServiceImpl.Injector
        public void killUid(int uid) {
            PermissionManagerService.killUid(UserHandle.getAppId(uid), UserHandle.getUserId(uid), "permissions revoked");
        }
    }

    class LocalService extends CrossProfileAppsInternal {
        LocalService() {
        }

        public boolean verifyPackageHasInteractAcrossProfilePermission(String packageName, int userId) throws PackageManager.NameNotFoundException {
            PackageManager packageManager = CrossProfileAppsServiceImpl.this.mInjector.getPackageManager();
            Objects.requireNonNull(packageName);
            ApplicationInfo applicationInfoAsUser = packageManager.getApplicationInfoAsUser(packageName, 0, userId);
            Objects.requireNonNull(applicationInfoAsUser);
            int uid = applicationInfoAsUser.uid;
            return verifyUidHasInteractAcrossProfilePermission(packageName, uid);
        }

        public boolean verifyUidHasInteractAcrossProfilePermission(String packageName, int uid) {
            Objects.requireNonNull(packageName);
            return CrossProfileAppsServiceImpl.this.hasInteractAcrossProfilesPermission(packageName, uid, -1);
        }

        public List<UserHandle> getTargetUserProfiles(String packageName, int userId) {
            return CrossProfileAppsServiceImpl.this.getTargetUserProfilesUnchecked(packageName, userId);
        }

        public void setInteractAcrossProfilesAppOp(String packageName, int newMode, int userId) {
            CrossProfileAppsServiceImpl.this.setInteractAcrossProfilesAppOpUnchecked(packageName, newMode, userId);
        }
    }
}
