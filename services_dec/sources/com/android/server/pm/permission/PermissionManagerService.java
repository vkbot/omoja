package com.android.server.pm.permission;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.IActivityManager;
import android.app.admin.DevicePolicyManager;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.Context;
import android.content.PermissionChecker;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.ParceledListSlice;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.parsing.component.ParsedPermission;
import android.content.pm.parsing.component.ParsedPermissionGroup;
import android.content.pm.permission.SplitPermissionInfoParcelable;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.metrics.LogMaker;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.os.storage.StorageManager;
import android.permission.IOnPermissionsChangeListener;
import android.permission.IPermissionManager;
import android.permission.PermissionControllerManager;
import android.permission.PermissionManager;
import android.permission.PermissionManagerInternal;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.android.internal.compat.IPlatformCompat;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemConfig;
import com.android.server.Watchdog;
import com.android.server.pm.ApexManager;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.PackageManagerServiceUtils;
import com.android.server.pm.PackageSetting;
import com.android.server.pm.SharedUserSetting;
import com.android.server.pm.UserManagerService;
import com.android.server.pm.parsing.PackageInfoUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.policy.PermissionPolicyInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class PermissionManagerService extends IPermissionManager.Stub {
    private static final long BACKGROUND_RATIONALE_CHANGE_ID = 147316723;
    private static final int BLOCKING_PERMISSION_FLAGS = 52;
    private static final Map<String, String> FULLER_PERMISSION_MAP;
    private static final int GRANT_DENIED = 1;
    private static final int GRANT_INSTALL = 2;
    private static final int GRANT_RUNTIME = 3;
    private static final int GRANT_UPGRADE = 4;
    private static final int MAX_PERMISSION_TREE_FOOTPRINT = 32768;
    private static final String TAG = "PackageManager";
    private static final int UPDATE_PERMISSIONS_ALL = 1;
    private static final int UPDATE_PERMISSIONS_REPLACE_ALL = 4;
    private static final int UPDATE_PERMISSIONS_REPLACE_PKG = 2;
    private static final int USER_PERMISSION_FLAGS = 3;
    private final AppOpsManager mAppOpsManager;
    private ArrayMap<String, List<String>> mBackgroundPermissions;
    private PermissionManagerInternal.CheckPermissionDelegate mCheckPermissionDelegate;
    private final Context mContext;
    private PermissionManagerServiceInternal.DefaultBrowserProvider mDefaultBrowserProvider;
    private PermissionManagerServiceInternal.DefaultDialerProvider mDefaultDialerProvider;
    private PermissionManagerServiceInternal.DefaultHomeProvider mDefaultHomeProvider;
    private PermissionManagerServiceInternal.PermissionCallback mDefaultPermissionCallback;
    private final DefaultPermissionGrantPolicy mDefaultPermissionGrantPolicy;
    private final int[] mGlobalGids;
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private final SparseBooleanArray mHasNoDelayedPermBackup;
    private final Injector mInjector;
    private final Object mLock;
    private final MetricsLogger mMetricsLogger;
    private final OnPermissionChangeListeners mOnPermissionChangeListeners;
    private final SparseArray<OneTimePermissionUserManager> mOneTimePermissionUserManagers;
    private final PackageManagerInternal mPackageManagerInt;
    private PermissionControllerManager mPermissionControllerManager;
    private PermissionPolicyInternal mPermissionPolicyInternal;
    private final IPlatformCompat mPlatformCompat;
    private ArraySet<String> mPrivappPermissionsViolations;
    private final ArrayList<PermissionManagerInternal.OnRuntimePermissionStateChangedListener> mRuntimePermissionStateChangedListeners;
    private final PermissionSettings mSettings;
    private final SparseArray<ArraySet<String>> mSystemPermissions;
    private boolean mSystemReady;
    private final UserManagerInternal mUserManagerInt;
    private static final long BACKUP_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final List<String> STORAGE_PERMISSIONS = new ArrayList();

    @Retention(RetentionPolicy.SOURCE)
    private @interface UpdatePermissionFlags {
    }

    static {
        HashMap map = new HashMap();
        FULLER_PERMISSION_MAP = map;
        map.put("android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION");
        FULLER_PERMISSION_MAP.put("android.permission.INTERACT_ACROSS_USERS", "android.permission.INTERACT_ACROSS_USERS_FULL");
        STORAGE_PERMISSIONS.add("android.permission.READ_EXTERNAL_STORAGE");
        STORAGE_PERMISSIONS.add("android.permission.WRITE_EXTERNAL_STORAGE");
        STORAGE_PERMISSIONS.add("android.permission.ACCESS_MEDIA_LOCATION");
    }

    /* JADX INFO: renamed from: com.android.server.pm.permission.PermissionManagerService$1, reason: invalid class name */
    class AnonymousClass1 extends PermissionManagerServiceInternal.PermissionCallback {
        AnonymousClass1() {
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onGidsChanged(final int appId, final int userId) {
            PermissionManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$1$QSCLyelVDMHZe8LrlYhYvfz5G2c
                @Override // java.lang.Runnable
                public final void run() {
                    PermissionManagerService.killUid(appId, userId, "permission grant or revoke changed gids");
                }
            });
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onPermissionGranted(int uid, int userId) {
            PermissionManagerService.this.mOnPermissionChangeListeners.onPermissionsChanged(uid);
            PermissionManagerService.this.mPackageManagerInt.writeSettings(true);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onInstallPermissionGranted() {
            PermissionManagerService.this.mPackageManagerInt.writeSettings(true);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onPermissionRevoked(int uid, final int userId, final String reason) {
            PermissionManagerService.this.mOnPermissionChangeListeners.onPermissionsChanged(uid);
            PermissionManagerService.this.mPackageManagerInt.writeSettings(false);
            final int appId = UserHandle.getAppId(uid);
            if (reason == null) {
                PermissionManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$1$7A2ffMA57G4PvFD5RbG2mRh2Q_8
                    @Override // java.lang.Runnable
                    public final void run() {
                        PermissionManagerService.killUid(appId, userId, "permissions revoked");
                    }
                });
            } else {
                PermissionManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$1$5y_AV_Q7BQ7QMC5yBezSflQuMpw
                    @Override // java.lang.Runnable
                    public final void run() {
                        PermissionManagerService.killUid(appId, userId, reason);
                    }
                });
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onInstallPermissionRevoked() {
            PermissionManagerService.this.mPackageManagerInt.writeSettings(true);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onPermissionUpdated(int[] userIds, boolean sync) {
            PermissionManagerService.this.mPackageManagerInt.writePermissionSettings(userIds, !sync);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onInstallPermissionUpdated() {
            PermissionManagerService.this.mPackageManagerInt.writeSettings(true);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onPermissionRemoved() {
            PermissionManagerService.this.mPackageManagerInt.writeSettings(false);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onPermissionUpdatedNotifyListener(int[] updatedUserIds, boolean sync, int uid) {
            onPermissionUpdated(updatedUserIds, sync);
            for (int i : updatedUserIds) {
                int userUid = UserHandle.getUid(i, UserHandle.getAppId(uid));
                PermissionManagerService.this.mOnPermissionChangeListeners.onPermissionsChanged(userUid);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback
        public void onInstallPermissionUpdatedNotifyListener(int uid) {
            onInstallPermissionUpdated();
            PermissionManagerService.this.mOnPermissionChangeListeners.onPermissionsChanged(uid);
        }
    }

    PermissionManagerService(Context context, Object externalLock) {
        this(context, externalLock, new Injector(context));
    }

    PermissionManagerService(Context context, Object externalLock, Injector injector) {
        this.mOneTimePermissionUserManagers = new SparseArray<>();
        this.mMetricsLogger = new MetricsLogger();
        this.mPlatformCompat = IPlatformCompat.Stub.asInterface(ServiceManager.getService("platform_compat"));
        this.mHasNoDelayedPermBackup = new SparseBooleanArray();
        this.mRuntimePermissionStateChangedListeners = new ArrayList<>();
        this.mDefaultPermissionCallback = new AnonymousClass1();
        this.mInjector = injector;
        injector.invalidatePackageInfoCache();
        this.mInjector.disablePermissionCache();
        this.mInjector.disablePackageNamePermissionCache();
        this.mContext = context;
        this.mLock = externalLock;
        this.mPackageManagerInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mUserManagerInt = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        this.mSettings = new PermissionSettings(this.mLock);
        this.mAppOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        ServiceThread serviceThread = new ServiceThread(TAG, 10, true);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        Watchdog.getInstance().addThread(this.mHandler);
        this.mDefaultPermissionGrantPolicy = new DefaultPermissionGrantPolicy(context, this.mHandlerThread.getLooper());
        SystemConfig systemConfig = SystemConfig.getInstance();
        this.mSystemPermissions = systemConfig.getSystemPermissions();
        this.mGlobalGids = systemConfig.getGlobalGids();
        this.mOnPermissionChangeListeners = new OnPermissionChangeListeners(FgThread.get().getLooper());
        ArrayMap<String, SystemConfig.PermissionEntry> permConfig = SystemConfig.getInstance().getPermissions();
        synchronized (this.mLock) {
            for (int i = 0; i < permConfig.size(); i++) {
                SystemConfig.PermissionEntry perm = permConfig.valueAt(i);
                BasePermission bp = this.mSettings.getPermissionLocked(perm.name);
                if (bp == null) {
                    bp = new BasePermission(perm.name, PackageManagerService.PLATFORM_PACKAGE_NAME, 1);
                    this.mSettings.putPermissionLocked(perm.name, bp);
                }
                if (perm.gids != null) {
                    bp.setGids(perm.gids, perm.perUser);
                }
            }
        }
        PermissionManagerServiceInternalImpl localService = new PermissionManagerServiceInternalImpl(this, null);
        LocalServices.addService(PermissionManagerServiceInternal.class, localService);
        LocalServices.addService(PermissionManagerInternal.class, localService);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (!DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            return;
        }
        ((PermissionControllerManager) this.mContext.getSystemService(PermissionControllerManager.class)).dump(fd, args);
    }

    public static PermissionManagerServiceInternal create(Context context, Object externalLock) {
        PermissionManagerServiceInternal permMgrInt = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        if (permMgrInt != null) {
            return permMgrInt;
        }
        PermissionManagerService permissionService = (PermissionManagerService) ServiceManager.getService("permissionmgr");
        if (permissionService == null) {
            ServiceManager.addService("permissionmgr", new PermissionManagerService(context, externalLock));
        }
        return (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
    }

    public static void killUid(int appId, int userId, String reason) {
        long identity = Binder.clearCallingIdentity();
        try {
            IActivityManager am = ActivityManager.getService();
            if (am != null) {
                try {
                    am.killUidForPermissionChange(appId, userId, reason);
                } catch (RemoteException e) {
                }
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    BasePermission getPermission(String permName) {
        BasePermission permissionLocked;
        synchronized (this.mLock) {
            permissionLocked = this.mSettings.getPermissionLocked(permName);
        }
        return permissionLocked;
    }

    public String[] getAppOpPermissionPackages(String permName) {
        return getAppOpPermissionPackagesInternal(permName, getCallingUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getAppOpPermissionPackagesInternal(String permName, int callingUid) {
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return null;
        }
        synchronized (this.mLock) {
            ArraySet<String> pkgs = this.mSettings.mAppOpPermissionPackages.get(permName);
            if (pkgs == null) {
                return null;
            }
            return (String[]) pkgs.toArray(new String[pkgs.size()]);
        }
    }

    public ParceledListSlice<PermissionGroupInfo> getAllPermissionGroups(int flags) {
        ParceledListSlice<PermissionGroupInfo> parceledListSlice;
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return ParceledListSlice.emptyList();
        }
        synchronized (this.mLock) {
            int n = this.mSettings.mPermissionGroups.size();
            ArrayList<PermissionGroupInfo> out = new ArrayList<>(n);
            for (ParsedPermissionGroup pg : this.mSettings.mPermissionGroups.values()) {
                out.add(PackageInfoUtils.generatePermissionGroupInfo(pg, flags));
            }
            parceledListSlice = new ParceledListSlice<>(out);
        }
        return parceledListSlice;
    }

    public PermissionGroupInfo getPermissionGroupInfo(String groupName, int flags) {
        PermissionGroupInfo permissionGroupInfoGeneratePermissionGroupInfo;
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return null;
        }
        synchronized (this.mLock) {
            permissionGroupInfoGeneratePermissionGroupInfo = PackageInfoUtils.generatePermissionGroupInfo(this.mSettings.mPermissionGroups.get(groupName), flags);
        }
        return permissionGroupInfoGeneratePermissionGroupInfo;
    }

    public PermissionInfo getPermissionInfo(String permName, String packageName, int flags) {
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return null;
        }
        synchronized (this.mLock) {
            BasePermission bp = this.mSettings.getPermissionLocked(permName);
            if (bp == null) {
                return null;
            }
            int adjustedProtectionLevel = adjustPermissionProtectionFlagsLocked(bp.getProtectionLevel(), packageName, callingUid);
            return bp.generatePermissionInfo(adjustedProtectionLevel, flags);
        }
    }

    public ParceledListSlice<PermissionInfo> queryPermissionsByGroup(String groupName, int flags) {
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return null;
        }
        synchronized (this.mLock) {
            if (groupName != null) {
                if (!this.mSettings.mPermissionGroups.containsKey(groupName)) {
                    return null;
                }
            }
            ArrayList<PermissionInfo> out = new ArrayList<>(10);
            for (BasePermission bp : this.mSettings.mPermissions.values()) {
                PermissionInfo pi = bp.generatePermissionInfo(groupName, flags);
                if (pi != null) {
                    out.add(pi);
                }
            }
            return new ParceledListSlice<>(out);
        }
    }

    public boolean addPermission(PermissionInfo info, boolean async) {
        boolean added;
        boolean changed;
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            throw new SecurityException("Instant apps can't add permissions");
        }
        if (info.labelRes == 0 && info.nonLocalizedLabel == null) {
            throw new SecurityException("Label must be specified in permission");
        }
        BasePermission tree = this.mSettings.enforcePermissionTree(info.name, callingUid);
        synchronized (this.mLock) {
            BasePermission bp = this.mSettings.getPermissionLocked(info.name);
            added = bp == null;
            int fixedLevel = PermissionInfo.fixProtectionLevel(info.protectionLevel);
            enforcePermissionCapLocked(info, tree);
            if (added) {
                bp = new BasePermission(info.name, tree.getSourcePackageName(), 2);
            } else if (!bp.isDynamic()) {
                throw new SecurityException("Not allowed to modify non-dynamic permission " + info.name);
            }
            changed = bp.addToTree(fixedLevel, info, tree);
            if (added) {
                this.mSettings.putPermissionLocked(info.name, bp);
            }
        }
        if (changed) {
            this.mPackageManagerInt.writeSettings(async);
        }
        return added;
    }

    public void removePermission(String permName) {
        int callingUid = getCallingUid();
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            throw new SecurityException("Instant applications don't have access to this method");
        }
        this.mSettings.enforcePermissionTree(permName, callingUid);
        synchronized (this.mLock) {
            BasePermission bp = this.mSettings.getPermissionLocked(permName);
            if (bp == null) {
                return;
            }
            if (bp.isDynamic()) {
                Slog.wtf(TAG, "Not allowed to modify non-dynamic permission " + permName);
            }
            this.mSettings.removePermissionLocked(permName);
            this.mPackageManagerInt.writeSettings(false);
        }
    }

    public int getPermissionFlags(String permName, String packageName, int userId) {
        int callingUid = getCallingUid();
        return getPermissionFlagsInternal(permName, packageName, callingUid, userId);
    }

    private int getPermissionFlagsInternal(String permName, String packageName, int callingUid, int userId) {
        PackageSetting ps;
        if (!this.mUserManagerInt.exists(userId)) {
            return 0;
        }
        enforceGrantRevokeGetRuntimePermissionPermissions("getPermissionFlags");
        enforceCrossUserPermission(callingUid, userId, true, false, false, "getPermissionFlags");
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        if (pkg == null || (ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName())) == null) {
            return 0;
        }
        synchronized (this.mLock) {
            if (this.mSettings.getPermissionLocked(permName) == null) {
                return 0;
            }
            if (this.mPackageManagerInt.filterAppAccess(pkg, callingUid, userId)) {
                return 0;
            }
            PermissionsState permissionsState = ps.getPermissionsState();
            return permissionsState.getPermissionFlags(permName, userId);
        }
    }

    public void updatePermissionFlags(String permName, String packageName, int flagMask, int flagValues, boolean checkAdjustPolicyFlagPermission, int userId) throws Throwable {
        boolean overridePolicy;
        int callingUid = getCallingUid();
        boolean overridePolicy2 = false;
        if (callingUid != 1000 && callingUid != 0) {
            long callingIdentity = Binder.clearCallingIdentity();
            if ((flagMask & 4) != 0) {
                try {
                    if (checkAdjustPolicyFlagPermission) {
                        this.mContext.enforceCallingOrSelfPermission("android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY", "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags");
                    } else if (this.mPackageManagerInt.getUidTargetSdkVersion(callingUid) >= 29) {
                        throw new IllegalArgumentException("android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags");
                    }
                    overridePolicy2 = true;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(callingIdentity);
                    throw th;
                }
            }
            Binder.restoreCallingIdentity(callingIdentity);
            overridePolicy = overridePolicy2;
        } else {
            overridePolicy = false;
        }
        updatePermissionFlagsInternal(permName, packageName, flagMask, flagValues, callingUid, userId, overridePolicy, this.mDefaultPermissionCallback);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x014f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePermissionFlagsInternal(java.lang.String r20, java.lang.String r21, int r22, int r23, int r24, int r25, boolean r26, com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.permission.PermissionManagerService.updatePermissionFlagsInternal(java.lang.String, java.lang.String, int, int, int, int, boolean, com.android.server.pm.permission.PermissionManagerServiceInternal$PermissionCallback):void");
    }

    public void updatePermissionFlagsForAllApps(int flagMask, int flagValues, final int userId) {
        int callingUid = getCallingUid();
        if (!this.mUserManagerInt.exists(userId)) {
            return;
        }
        enforceGrantRevokeRuntimePermissionPermissions("updatePermissionFlagsForAllApps");
        enforceCrossUserPermission(callingUid, userId, true, true, false, "updatePermissionFlagsForAllApps");
        final int effectiveFlagMask = callingUid != 1000 ? flagMask : flagMask & (-17);
        final int effectiveFlagValues = callingUid != 1000 ? flagValues : flagValues & (-17);
        final boolean[] changed = new boolean[1];
        this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService(changed, userId, effectiveFlagMask, effectiveFlagValues, (AndroidPackage) obj);
            }
        });
        if (changed[0]) {
            this.mPackageManagerInt.writePermissionSettings(new int[]{userId}, true);
        }
    }

    public /* synthetic */ void lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService(boolean[] changed, int userId, int effectiveFlagMask, int effectiveFlagValues, AndroidPackage pkg) {
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName());
        if (ps == null) {
            return;
        }
        PermissionsState permissionsState = ps.getPermissionsState();
        changed[0] = changed[0] | permissionsState.updatePermissionFlagsForAllPermissions(userId, effectiveFlagMask, effectiveFlagValues);
        this.mOnPermissionChangeListeners.onPermissionsChanged(pkg.getUid());
    }

    public int checkPermission(String permName, String pkgName, int userId) {
        PermissionManagerInternal.CheckPermissionDelegate checkPermissionDelegate;
        if (permName == null || pkgName == null || !this.mUserManagerInt.exists(userId)) {
            return -1;
        }
        synchronized (this.mLock) {
            checkPermissionDelegate = this.mCheckPermissionDelegate;
        }
        if (checkPermissionDelegate == null) {
            return checkPermissionImpl(permName, pkgName, userId);
        }
        return checkPermissionDelegate.checkPermission(permName, pkgName, userId, new TriFunction() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Integer.valueOf(this.f$0.checkPermissionImpl((String) obj, (String) obj2, ((Integer) obj3).intValue()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkPermissionImpl(String permName, String pkgName, int userId) {
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(pkgName);
        if (pkg == null) {
            return -1;
        }
        return checkPermissionInternal(pkg, true, permName, userId);
    }

    private int checkPermissionInternal(AndroidPackage pkg, boolean isPackageExplicit, String permissionName, int userId) {
        int callingUid = getCallingUid();
        if (isPackageExplicit || pkg.getSharedUserId() == null) {
            if (this.mPackageManagerInt.filterAppAccess(pkg, callingUid, userId)) {
                return -1;
            }
        } else if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return -1;
        }
        int uid = UserHandle.getUid(userId, pkg.getUid());
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName());
        if (ps == null) {
            return -1;
        }
        PermissionsState permissionsState = ps.getPermissionsState();
        if (checkSinglePermissionInternal(uid, permissionsState, permissionName)) {
            return 0;
        }
        String fullerPermissionName = FULLER_PERMISSION_MAP.get(permissionName);
        return (fullerPermissionName == null || !checkSinglePermissionInternal(uid, permissionsState, fullerPermissionName)) ? -1 : 0;
    }

    private boolean checkSinglePermissionInternal(int uid, PermissionsState permissionsState, String permissionName) {
        if (!permissionsState.hasPermission(permissionName, UserHandle.getUserId(uid))) {
            return false;
        }
        if (this.mPackageManagerInt.getInstantAppPackageName(uid) != null) {
            return this.mSettings.isPermissionInstant(permissionName);
        }
        return true;
    }

    public int checkUidPermission(String permName, int uid) {
        PermissionManagerInternal.CheckPermissionDelegate checkPermissionDelegate;
        if (permName == null) {
            return -1;
        }
        int userId = UserHandle.getUserId(uid);
        if (!this.mUserManagerInt.exists(userId)) {
            return -1;
        }
        synchronized (this.mLock) {
            checkPermissionDelegate = this.mCheckPermissionDelegate;
        }
        if (checkPermissionDelegate == null) {
            return checkUidPermissionImpl(permName, uid);
        }
        return checkPermissionDelegate.checkUidPermission(permName, uid, new BiFunction() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Integer.valueOf(this.f$0.checkUidPermissionImpl((String) obj, ((Integer) obj2).intValue()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkUidPermissionImpl(String permName, int uid) {
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(uid);
        return checkUidPermissionInternal(pkg, uid, permName);
    }

    private int checkUidPermissionInternal(AndroidPackage pkg, int uid, String permissionName) {
        if (pkg != null) {
            int userId = UserHandle.getUserId(uid);
            return checkPermissionInternal(pkg, false, permissionName, userId);
        }
        if (checkSingleUidPermissionInternal(uid, permissionName)) {
            return 0;
        }
        String fullerPermissionName = FULLER_PERMISSION_MAP.get(permissionName);
        if (fullerPermissionName != null && checkSingleUidPermissionInternal(uid, fullerPermissionName)) {
            return 0;
        }
        return -1;
    }

    private boolean checkSingleUidPermissionInternal(int uid, String permissionName) {
        boolean z;
        synchronized (this.mLock) {
            ArraySet<String> permissions = this.mSystemPermissions.get(uid);
            z = permissions != null && permissions.contains(permissionName);
        }
        return z;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    public int checkDeviceIdentifierAccess(String packageName, String message, String callingFeatureId, int pid, int uid) {
        int callingUid = this.mInjector.getCallingUid();
        int callingPid = this.mInjector.getCallingPid();
        if (UserHandle.getAppId(callingUid) >= 10000 && (callingUid != uid || callingPid != pid)) {
            String response = String.format("Calling uid %d, pid %d cannot check device identifier access for package %s (uid=%d, pid=%d)", Integer.valueOf(callingUid), Integer.valueOf(callingPid), packageName, Integer.valueOf(uid), Integer.valueOf(pid));
            Log.w(TAG, response);
            throw new SecurityException(response);
        }
        int appId = UserHandle.getAppId(uid);
        if (appId == 1000 || appId == 0 || this.mInjector.checkPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", pid, uid) == 0) {
            return 0;
        }
        if (packageName != null) {
            long token = this.mInjector.clearCallingIdentity();
            AppOpsManager appOpsManager = (AppOpsManager) this.mInjector.getSystemService("appops");
            try {
                if (appOpsManager.noteOpNoThrow("android:read_device_identifiers", uid, packageName, callingFeatureId, message) == 0) {
                    this.mInjector.restoreCallingIdentity(token);
                    return 0;
                }
                this.mInjector.restoreCallingIdentity(token);
                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mInjector.getSystemService("device_policy");
                if (devicePolicyManager != null && devicePolicyManager.hasDeviceIdentifierAccess(packageName, pid, uid)) {
                    return 0;
                }
                return -1;
            } catch (Throwable th) {
                this.mInjector.restoreCallingIdentity(token);
                throw th;
            }
        }
        return -1;
    }

    public void addOnPermissionsChangeListener(IOnPermissionsChangeListener listener) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS", "addOnPermissionsChangeListener");
        synchronized (this.mLock) {
            this.mOnPermissionChangeListeners.addListenerLocked(listener);
        }
    }

    public void removeOnPermissionsChangeListener(IOnPermissionsChangeListener listener) {
        if (this.mPackageManagerInt.getInstantAppPackageName(Binder.getCallingUid()) != null) {
            throw new SecurityException("Instant applications don't have access to this method");
        }
        synchronized (this.mLock) {
            this.mOnPermissionChangeListeners.removeListenerLocked(listener);
        }
    }

    public List<String> getWhitelistedRestrictedPermissions(String packageName, int flags, int userId) {
        Objects.requireNonNull(packageName);
        Preconditions.checkFlagsArgument(flags, 7);
        Preconditions.checkArgumentNonNegative(userId, (String) null);
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", "getWhitelistedRestrictedPermissions for user " + userId);
        }
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        if (pkg == null) {
            return null;
        }
        int callingUid = Binder.getCallingUid();
        if (this.mPackageManagerInt.filterAppAccess(pkg, callingUid, UserHandle.getCallingUserId())) {
            return null;
        }
        boolean isCallerPrivileged = this.mContext.checkCallingOrSelfPermission("android.permission.WHITELIST_RESTRICTED_PERMISSIONS") == 0;
        boolean isCallerInstallerOnRecord = this.mPackageManagerInt.isCallerInstallerOfRecord(pkg, callingUid);
        if ((flags & 1) != 0 && !isCallerPrivileged) {
            throw new SecurityException("Querying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS");
        }
        if ((flags & 6) != 0 && !isCallerPrivileged && !isCallerInstallerOnRecord) {
            throw new SecurityException("Querying upgrade or installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS");
        }
        long identity = Binder.clearCallingIdentity();
        try {
            PermissionsState permissionsState = PackageManagerServiceUtils.getPermissionsState(this.mPackageManagerInt, pkg);
            if (permissionsState == null) {
                return null;
            }
            int queryFlags = 0;
            if ((flags & 1) != 0) {
                queryFlags = 0 | 4096;
            }
            if ((flags & 4) != 0) {
                queryFlags |= 8192;
            }
            if ((flags & 2) != 0) {
                queryFlags |= 2048;
            }
            ArrayList<String> whitelistedPermissions = null;
            int permissionCount = ArrayUtils.size(pkg.getRequestedPermissions());
            for (int i = 0; i < permissionCount; i++) {
                String permissionName = pkg.getRequestedPermissions().get(i);
                int currentFlags = permissionsState.getPermissionFlags(permissionName, userId);
                if ((currentFlags & queryFlags) != 0) {
                    if (whitelistedPermissions == null) {
                        whitelistedPermissions = new ArrayList<>();
                    }
                    whitelistedPermissions.add(permissionName);
                }
            }
            return whitelistedPermissions;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public boolean addWhitelistedRestrictedPermission(String packageName, String permName, int flags, int userId) {
        Objects.requireNonNull(permName);
        if (!checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(permName)) {
            return false;
        }
        List<String> permissions = getWhitelistedRestrictedPermissions(packageName, flags, userId);
        if (permissions == null) {
            permissions = new ArrayList(1);
        }
        if (permissions.indexOf(permName) >= 0) {
            return false;
        }
        permissions.add(permName);
        return setWhitelistedRestrictedPermissionsInternal(packageName, permissions, flags, userId);
    }

    private boolean checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(String permName) {
        synchronized (this.mLock) {
            BasePermission bp = this.mSettings.getPermissionLocked(permName);
            if (bp == null) {
                Slog.w(TAG, "No such permissions: " + permName);
                return false;
            }
            if (bp.isHardOrSoftRestricted() && bp.isImmutablyRestricted() && this.mContext.checkCallingOrSelfPermission("android.permission.WHITELIST_RESTRICTED_PERMISSIONS") != 0) {
                throw new SecurityException("Cannot modify whitelisting of an immutably restricted permission: " + permName);
            }
            return true;
        }
    }

    public boolean removeWhitelistedRestrictedPermission(String packageName, String permName, int flags, int userId) {
        List<String> permissions;
        Objects.requireNonNull(permName);
        if (checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(permName) && (permissions = getWhitelistedRestrictedPermissions(packageName, flags, userId)) != null && permissions.remove(permName)) {
            return setWhitelistedRestrictedPermissionsInternal(packageName, permissions, flags, userId);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setWhitelistedRestrictedPermissionsInternal(String packageName, List<String> permissions, int flags, int userId) {
        Objects.requireNonNull(packageName);
        Preconditions.checkFlagsArgument(flags, 7);
        Preconditions.checkArgument(Integer.bitCount(flags) == 1);
        Preconditions.checkArgumentNonNegative(userId, (String) null);
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", "setWhitelistedRestrictedPermissions for user " + userId);
        }
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        if (pkg == null) {
            return false;
        }
        int callingUid = Binder.getCallingUid();
        if (this.mPackageManagerInt.filterAppAccess(pkg, callingUid, UserHandle.getCallingUserId())) {
            return false;
        }
        boolean isCallerPrivileged = this.mContext.checkCallingOrSelfPermission("android.permission.WHITELIST_RESTRICTED_PERMISSIONS") == 0;
        boolean isCallerInstallerOnRecord = this.mPackageManagerInt.isCallerInstallerOfRecord(pkg, callingUid);
        if ((flags & 1) != 0 && !isCallerPrivileged) {
            throw new SecurityException("Modifying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS");
        }
        if ((flags & 4) != 0) {
            if (isCallerPrivileged || isCallerInstallerOnRecord) {
                List<String> whitelistedPermissions = getWhitelistedRestrictedPermissions(pkg.getPackageName(), flags, userId);
                if (permissions == null || permissions.isEmpty()) {
                    if (whitelistedPermissions == null || whitelistedPermissions.isEmpty()) {
                        return true;
                    }
                } else {
                    int permissionCount = permissions.size();
                    for (int i = 0; i < permissionCount; i++) {
                        if ((whitelistedPermissions == null || !whitelistedPermissions.contains(permissions.get(i))) && !isCallerPrivileged) {
                            throw new SecurityException("Adding to upgrade whitelist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS");
                        }
                    }
                }
                if ((flags & 2) != 0 && !isCallerPrivileged && !isCallerInstallerOnRecord) {
                    throw new SecurityException("Modifying installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS");
                }
            } else {
                throw new SecurityException("Modifying upgrade whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS");
            }
        }
        long identity = Binder.clearCallingIdentity();
        try {
            setWhitelistedRestrictedPermissionsForUsers(pkg, new int[]{userId}, permissions, Process.myUid(), flags, this.mDefaultPermissionCallback);
            return true;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public boolean setAutoRevokeWhitelisted(String packageName, boolean whitelisted, int userId) {
        Objects.requireNonNull(packageName);
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        int callingUid = Binder.getCallingUid();
        int packageUid = UserHandle.getUid(userId, pkg.getUid());
        if (!checkAutoRevokeAccess(pkg, callingUid) || this.mAppOpsManager.checkOpNoThrow(98, packageUid, packageName) != 0) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            this.mAppOpsManager.setMode(97, packageUid, packageName, whitelisted ? 1 : 0);
            return true;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private boolean checkAutoRevokeAccess(AndroidPackage pkg, int callingUid) {
        if (pkg == null) {
            return false;
        }
        boolean isCallerPrivileged = this.mContext.checkCallingOrSelfPermission("android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS") == 0;
        boolean isCallerInstallerOnRecord = this.mPackageManagerInt.isCallerInstallerOfRecord(pkg, callingUid);
        if (isCallerPrivileged || isCallerInstallerOnRecord) {
            return true;
        }
        throw new SecurityException("Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record");
    }

    public boolean isAutoRevokeWhitelisted(String packageName, int userId) {
        Objects.requireNonNull(packageName);
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        int callingUid = Binder.getCallingUid();
        int packageUid = UserHandle.getUid(userId, pkg.getUid());
        if (!checkAutoRevokeAccess(pkg, callingUid)) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            return this.mAppOpsManager.checkOpNoThrow(97, packageUid, packageName) == 1;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void grantRuntimePermission(String packageName, String permName, int userId) throws Throwable {
        int callingUid = Binder.getCallingUid();
        boolean overridePolicy = checkUidPermission("android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY", callingUid) == 0;
        grantRuntimePermissionInternal(permName, packageName, overridePolicy, callingUid, userId, this.mDefaultPermissionCallback);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x021e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void grantRuntimePermissionInternal(java.lang.String r17, java.lang.String r18, boolean r19, int r20, int r21, com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.permission.PermissionManagerService.grantRuntimePermissionInternal(java.lang.String, java.lang.String, boolean, int, int, com.android.server.pm.permission.PermissionManagerServiceInternal$PermissionCallback):void");
    }

    public void revokeRuntimePermission(String packageName, String permName, int userId, String reason) {
        int callingUid = Binder.getCallingUid();
        boolean overridePolicy = checkUidPermission("android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY", callingUid) == 0;
        revokeRuntimePermissionInternal(permName, packageName, overridePolicy, callingUid, userId, reason, this.mDefaultPermissionCallback);
    }

    private void revokeRuntimePermissionInternal(String permName, String packageName, boolean overridePolicy, int callingUid, int userId, String reason, PermissionManagerServiceInternal.PermissionCallback callback) {
        if (!this.mUserManagerInt.exists(userId)) {
            Log.e(TAG, "No such user:" + userId);
            return;
        }
        this.mContext.enforceCallingOrSelfPermission("android.permission.REVOKE_RUNTIME_PERMISSIONS", "revokeRuntimePermission");
        enforceCrossUserPermission(callingUid, userId, true, true, false, "revokeRuntimePermission");
        AndroidPackage pkg = this.mPackageManagerInt.getPackage(packageName);
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(packageName);
        if (pkg == null || ps == null) {
            Log.e(TAG, "Unknown package: " + packageName);
            return;
        }
        if (this.mPackageManagerInt.filterAppAccess(pkg, callingUid, userId)) {
            throw new IllegalArgumentException("Unknown package: " + packageName);
        }
        BasePermission bp = this.mSettings.getPermissionLocked(permName);
        if (bp == null) {
            throw new IllegalArgumentException("Unknown permission: " + permName);
        }
        bp.enforceDeclaredUsedAndRuntimeOrDevelopment(pkg, ps);
        if (pkg.getTargetSdkVersion() < 23 && bp.isRuntime()) {
            return;
        }
        PermissionsState permissionsState = ps.getPermissionsState();
        int flags = permissionsState.getPermissionFlags(permName, userId);
        if ((flags & 16) != 0 && UserHandle.getCallingAppId() != 1000) {
            throw new SecurityException("Non-System UID cannot revoke system fixed permission " + permName + " for package " + packageName);
        }
        if (!overridePolicy && (flags & 4) != 0) {
            throw new SecurityException("Cannot revoke policy fixed permission " + permName + " for package " + packageName);
        }
        if (bp.isDevelopment()) {
            if (permissionsState.revokeInstallPermission(bp) != -1 && callback != null) {
                this.mDefaultPermissionCallback.onInstallPermissionRevoked();
                return;
            }
            return;
        }
        if (!permissionsState.hasRuntimePermission(permName, userId) || permissionsState.revokeRuntimePermission(bp, userId) == -1) {
            return;
        }
        if (bp.isRuntime()) {
            logPermission(1245, permName, packageName);
        }
        if (callback != null) {
            callback.onPermissionRevoked(UserHandle.getUid(userId, UserHandle.getAppId(pkg.getUid())), userId, reason);
        }
        if (bp.isRuntime()) {
            notifyRuntimePermissionStateChanged(packageName, userId);
        }
    }

    public void resetRuntimePermissions() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.REVOKE_RUNTIME_PERMISSIONS", "revokeRuntimePermission");
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "resetRuntimePermissions");
        }
        updateAllPermissions(StorageManager.UUID_PRIVATE_INTERNAL, false, this.mDefaultPermissionCallback);
        for (final int userId : UserManagerService.getInstance().getUserIds()) {
            this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws Throwable {
                    this.f$0.lambda$resetRuntimePermissions$1$PermissionManagerService(userId, (AndroidPackage) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x014f */
    /* JADX WARN: Code duplicated, block: B:29:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:49:0x0127  */
    /* JADX INFO: renamed from: resetRuntimePermissionsInternal, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$resetRuntimePermissions$1$PermissionManagerService(com.android.server.pm.parsing.pkg.AndroidPackage r28, int r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.permission.PermissionManagerService.lambda$resetRuntimePermissions$1$PermissionManagerService(com.android.server.pm.parsing.pkg.AndroidPackage, int):void");
    }

    public String getDefaultBrowser(int userId) {
        PermissionManagerServiceInternal.DefaultBrowserProvider provider;
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getUserId(callingUid) != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", null);
        }
        if (this.mPackageManagerInt.getInstantAppPackageName(callingUid) != null) {
            return null;
        }
        synchronized (this.mLock) {
            provider = this.mDefaultBrowserProvider;
        }
        if (provider != null) {
            return provider.getDefaultBrowser(userId);
        }
        return null;
    }

    public boolean setDefaultBrowser(String packageName, int userId) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.SET_PREFERRED_APPLICATIONS", null);
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", null);
        }
        return setDefaultBrowserInternal(packageName, false, true, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setDefaultBrowserInternal(String packageName, boolean async, boolean doGrant, int userId) {
        PermissionManagerServiceInternal.DefaultBrowserProvider provider;
        if (userId == -1) {
            return false;
        }
        synchronized (this.mLock) {
            provider = this.mDefaultBrowserProvider;
        }
        if (provider == null) {
            return false;
        }
        if (async) {
            provider.setDefaultBrowserAsync(packageName, userId);
        } else if (!provider.setDefaultBrowser(packageName, userId)) {
            return false;
        }
        if (doGrant && packageName != null) {
            synchronized (this.mLock) {
                this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToDefaultBrowser(packageName, userId);
            }
            return true;
        }
        return true;
    }

    public void grantDefaultPermissionsToEnabledCarrierApps(final String[] packageNames, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("grantPermissionsToEnabledCarrierApps", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$grantDefaultPermissionsToEnabledCarrierApps$3$PermissionManagerService(packageNames, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$grantDefaultPermissionsToEnabledCarrierApps$3$PermissionManagerService(String[] packageNames, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToEnabledCarrierApps(packageNames, userId);
    }

    public void grantDefaultPermissionsToEnabledImsServices(final String[] packageNames, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("grantDefaultPermissionsToEnabledImsServices", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$grantDefaultPermissionsToEnabledImsServices$4$PermissionManagerService(packageNames, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$grantDefaultPermissionsToEnabledImsServices$4$PermissionManagerService(String[] packageNames, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToEnabledImsServices(packageNames, userId);
    }

    public void grantDefaultPermissionsToEnabledTelephonyDataServices(final String[] packageNames, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("grantDefaultPermissionsToEnabledTelephonyDataServices", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$5$PermissionManagerService(packageNames, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$5$PermissionManagerService(String[] packageNames, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToEnabledTelephonyDataServices(packageNames, userId);
    }

    public void revokeDefaultPermissionsFromDisabledTelephonyDataServices(final String[] packageNames, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("revokeDefaultPermissionsFromDisabledTelephonyDataServices", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$6$PermissionManagerService(packageNames, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$6$PermissionManagerService(String[] packageNames, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.revokeDefaultPermissionsFromDisabledTelephonyDataServices(packageNames, userId);
    }

    public void grantDefaultPermissionsToActiveLuiApp(final String packageName, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("grantDefaultPermissionsToActiveLuiApp", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(packageName, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(String packageName, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToActiveLuiApp(packageName, userId);
    }

    public void revokeDefaultPermissionsFromLuiApps(final String[] packageNames, final int userId) {
        int callingUid = Binder.getCallingUid();
        PackageManagerServiceUtils.enforceSystemOrPhoneCaller("revokeDefaultPermissionsFromLuiApps", callingUid);
        synchronized (this.mLock) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$revokeDefaultPermissionsFromLuiApps$8$PermissionManagerService(packageNames, userId);
                }
            });
        }
    }

    public /* synthetic */ void lambda$revokeDefaultPermissionsFromLuiApps$8$PermissionManagerService(String[] packageNames, int userId) throws Exception {
        this.mDefaultPermissionGrantPolicy.revokeDefaultPermissionsFromLuiApps(packageNames, userId);
    }

    public void setPermissionEnforced(String permName, boolean enforced) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.GRANT_RUNTIME_PERMISSIONS", "setPermissionEnforced");
        if ("android.permission.READ_EXTERNAL_STORAGE".equals(permName)) {
            this.mPackageManagerInt.setReadExternalStorageEnforced(enforced);
            IActivityManager am = ActivityManager.getService();
            if (am != null) {
                long token = Binder.clearCallingIdentity();
                try {
                    am.killProcessesBelowForeground("setPermissionEnforcement");
                } catch (RemoteException e) {
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("No selective enforcement for " + permName);
    }

    @Deprecated
    public boolean isPermissionEnforced(String permName) {
        return true;
    }

    public boolean shouldShowRequestPermissionRationale(String permName, String packageName, int userId) throws Throwable {
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "canShowRequestPermissionRationale for user " + userId);
        }
        int uid = this.mPackageManagerInt.getPackageUid(packageName, AudioFormat.EVRC, userId);
        if (UserHandle.getAppId(callingUid) != UserHandle.getAppId(uid) || checkPermission(permName, packageName, userId) == 0) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            int flags = getPermissionFlagsInternal(permName, packageName, callingUid, userId);
            Binder.restoreCallingIdentity(identity);
            if ((flags & 22) != 0) {
                return false;
            }
            long token = Binder.clearCallingIdentity();
            try {
                try {
                    if (permName.equals("android.permission.ACCESS_BACKGROUND_LOCATION")) {
                        try {
                            if (this.mPlatformCompat.isChangeEnabledByPackageName(BACKGROUND_RATIONALE_CHANGE_ID, packageName, userId)) {
                                Binder.restoreCallingIdentity(token);
                                return true;
                            }
                        } catch (RemoteException e) {
                            e = e;
                            Log.e(TAG, "Unable to check if compatibility change is enabled.", e);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (RemoteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                Binder.restoreCallingIdentity(token);
                throw th;
            }
            Binder.restoreCallingIdentity(token);
            return (flags & 1) != 0;
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(identity);
            throw th3;
        }
    }

    public boolean isPermissionRevokedByPolicy(String permName, String packageName, int userId) {
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "isPermissionRevokedByPolicy for user " + userId);
        }
        if (checkPermission(permName, packageName, userId) == 0) {
            return false;
        }
        int callingUid = Binder.getCallingUid();
        if (this.mPackageManagerInt.filterAppAccess(packageName, callingUid, userId)) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            int flags = getPermissionFlagsInternal(permName, packageName, callingUid, userId);
            return (flags & 4) != 0;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] backupRuntimePermissions(UserHandle user) {
        final CompletableFuture<byte[]> backup = new CompletableFuture<>();
        PermissionControllerManager permissionControllerManager = this.mPermissionControllerManager;
        Executor mainExecutor = this.mContext.getMainExecutor();
        Objects.requireNonNull(backup);
        permissionControllerManager.getRuntimePermissionBackup(user, mainExecutor, new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                backup.complete((byte[]) obj);
            }
        });
        try {
            return backup.get(BACKUP_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Slog.e(TAG, "Cannot create permission backup for " + user, e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreRuntimePermissions(byte[] backup, UserHandle user) {
        synchronized (this.mLock) {
            this.mHasNoDelayedPermBackup.delete(user.getIdentifier());
            this.mPermissionControllerManager.stageAndApplyRuntimePermissionsBackup(backup, user);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreDelayedRuntimePermissions(String packageName, final UserHandle user) {
        synchronized (this.mLock) {
            if (this.mHasNoDelayedPermBackup.get(user.getIdentifier(), false)) {
                return;
            }
            if (this.mPermissionControllerManager == null) {
                return;
            }
            this.mPermissionControllerManager.applyStagedRuntimePermissionBackup(packageName, user, this.mContext.getMainExecutor(), new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(user, (Boolean) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(UserHandle user, Boolean hasMoreBackup) {
        if (hasMoreBackup.booleanValue()) {
            return;
        }
        synchronized (this.mLock) {
            this.mHasNoDelayedPermBackup.put(user.getIdentifier(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOnRuntimePermissionStateChangedListener(PermissionManagerInternal.OnRuntimePermissionStateChangedListener listener) {
        synchronized (this.mLock) {
            this.mRuntimePermissionStateChangedListeners.add(listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOnRuntimePermissionStateChangedListener(PermissionManagerInternal.OnRuntimePermissionStateChangedListener listener) {
        synchronized (this.mLock) {
            this.mRuntimePermissionStateChangedListeners.remove(listener);
        }
    }

    private void notifyRuntimePermissionStateChanged(String packageName, int userId) {
        FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((PermissionManagerService) obj).doNotifyRuntimePermissionStateChanged((String) obj2, ((Integer) obj3).intValue());
            }
        }, this, packageName, Integer.valueOf(userId)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doNotifyRuntimePermissionStateChanged(String packageName, int userId) {
        synchronized (this.mLock) {
            if (this.mRuntimePermissionStateChangedListeners.isEmpty()) {
                return;
            }
            ArrayList<PermissionManagerInternal.OnRuntimePermissionStateChangedListener> listeners = new ArrayList<>(this.mRuntimePermissionStateChangedListeners);
            int listenerCount = listeners.size();
            for (int i = 0; i < listenerCount; i++) {
                listeners.get(i).onRuntimePermissionStateChanged(packageName, userId);
            }
        }
    }

    private int adjustPermissionProtectionFlagsLocked(int protectionLevel, String packageName, int uid) {
        int appId;
        AndroidPackage pkg;
        int protectionLevelMasked = protectionLevel & 3;
        if (protectionLevelMasked == 2 || (appId = UserHandle.getAppId(uid)) == 1000 || appId == 0 || appId == 2000 || (pkg = this.mPackageManagerInt.getPackage(packageName)) == null) {
            return protectionLevel;
        }
        if (pkg.getTargetSdkVersion() < 26) {
            return protectionLevelMasked;
        }
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName());
        if (ps != null && ps.getAppId() != appId) {
            return protectionLevel;
        }
        return protectionLevel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeStoragePermissionsIfScopeExpanded(AndroidPackage newPackage, AndroidPackage oldPackage, PermissionManagerServiceInternal.PermissionCallback permissionCallback) {
        int i;
        int numRequestedPermissions;
        int userId;
        int i2;
        int i3;
        int[] iArr;
        int numRequestedPermissions2 = 1;
        int userId2 = 0;
        boolean downgradedSdk = oldPackage.getTargetSdkVersion() >= 29 && newPackage.getTargetSdkVersion() < 29;
        boolean upgradedSdk = oldPackage.getTargetSdkVersion() < 29 && newPackage.getTargetSdkVersion() >= 29;
        boolean newlyRequestsLegacy = (upgradedSdk || oldPackage.isRequestLegacyExternalStorage() || !newPackage.isRequestLegacyExternalStorage()) ? false : true;
        if (!newlyRequestsLegacy && !downgradedSdk) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        int[] userIds = this.mUserManagerInt.getUserIds();
        int length = userIds.length;
        int i4 = 0;
        while (i4 < length) {
            int userId3 = userIds[i4];
            int numRequestedPermissions3 = newPackage.getRequestedPermissions().size();
            int i5 = 0;
            while (i5 < numRequestedPermissions3) {
                PermissionInfo permInfo = getPermissionInfo(newPackage.getRequestedPermissions().get(i5), newPackage.getPackageName(), userId2);
                if (permInfo == null) {
                    i = i5;
                    numRequestedPermissions = numRequestedPermissions3;
                    userId = userId3;
                    i2 = i4;
                    i3 = length;
                    iArr = userIds;
                } else if (!STORAGE_PERMISSIONS.contains(permInfo.name)) {
                    i = i5;
                    numRequestedPermissions = numRequestedPermissions3;
                    userId = userId3;
                    i2 = i4;
                    i3 = length;
                    iArr = userIds;
                } else {
                    Object[] objArr = new Object[3];
                    objArr[userId2] = "171430330";
                    objArr[numRequestedPermissions2] = Integer.valueOf(newPackage.getUid());
                    objArr[2] = "Revoking permission " + permInfo.name + " from package " + newPackage.getPackageName() + " as either the sdk downgraded " + downgradedSdk + " or newly requested legacy full storage " + newlyRequestsLegacy;
                    EventLog.writeEvent(1397638484, objArr);
                    try {
                        i = i5;
                        numRequestedPermissions = numRequestedPermissions3;
                        userId = userId3;
                        i2 = i4;
                        i3 = length;
                        iArr = userIds;
                        try {
                            revokeRuntimePermissionInternal(permInfo.name, newPackage.getPackageName(), false, callingUid, userId, null, permissionCallback);
                        } catch (IllegalStateException | SecurityException e) {
                            e = e;
                            Log.e(TAG, "unable to revoke " + permInfo.name + " for " + newPackage.getPackageName() + " user " + userId, e);
                        }
                    } catch (IllegalStateException | SecurityException e2) {
                        e = e2;
                        i = i5;
                        numRequestedPermissions = numRequestedPermissions3;
                        userId = userId3;
                        i2 = i4;
                        i3 = length;
                        iArr = userIds;
                    }
                }
                i5 = i + 1;
                numRequestedPermissions3 = numRequestedPermissions;
                userId3 = userId;
                userIds = iArr;
                i4 = i2;
                length = i3;
                numRequestedPermissions2 = 1;
                userId2 = 0;
            }
            i4++;
            numRequestedPermissions2 = 1;
            userId2 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeSystemAlertWindowIfUpgradedPast23(AndroidPackage newPackage, AndroidPackage oldPackage, PermissionManagerServiceInternal.PermissionCallback permissionCallback) {
        BasePermission saw;
        if (oldPackage.getTargetSdkVersion() >= 23 || newPackage.getTargetSdkVersion() < 23 || !newPackage.getRequestedPermissions().contains("android.permission.SYSTEM_ALERT_WINDOW")) {
            return;
        }
        synchronized (this.mLock) {
            saw = this.mSettings.getPermissionLocked("android.permission.SYSTEM_ALERT_WINDOW");
        }
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(newPackage.getPackageName());
        if (grantSignaturePermission("android.permission.SYSTEM_ALERT_WINDOW", newPackage, ps, saw, ps.getPermissionsState())) {
            return;
        }
        for (int userId : this.mUserManagerInt.getUserIds()) {
            try {
                revokePermissionFromPackageForUser(newPackage.getPackageName(), "android.permission.SYSTEM_ALERT_WINDOW", false, userId, permissionCallback);
            } catch (IllegalStateException | SecurityException e) {
                Log.e(TAG, "unable to revoke SYSTEM_ALERT_WINDOW for " + newPackage.getPackageName() + " user " + userId, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeRuntimePermissionsIfGroupChanged(AndroidPackage newPackage, AndroidPackage oldPackage, ArrayList<String> allPackageNames, PermissionManagerServiceInternal.PermissionCallback permissionCallback) {
        int numPackages;
        int userId;
        int userIdNum;
        int[] userIds;
        String oldPermissionGroupName;
        String newPermissionGroupName;
        String permissionName;
        int numOldPackagePermissions = ArrayUtils.size(oldPackage.getPermissions());
        ArrayMap<String, String> oldPermissionNameToGroupName = new ArrayMap<>(numOldPackagePermissions);
        for (int i = 0; i < numOldPackagePermissions; i++) {
            ParsedPermission permission = oldPackage.getPermissions().get(i);
            if (permission.getParsedPermissionGroup() != null) {
                oldPermissionNameToGroupName.put(permission.getName(), permission.getParsedPermissionGroup().getName());
            }
        }
        int callingUid = Binder.getCallingUid();
        int numNewPackagePermissions = ArrayUtils.size(newPackage.getPermissions());
        int newPermissionNum = 0;
        while (newPermissionNum < numNewPackagePermissions) {
            ParsedPermission newPermission = newPackage.getPermissions().get(newPermissionNum);
            int newProtection = newPermission.getProtection();
            if ((newProtection & 1) != 0) {
                String permissionName2 = newPermission.getName();
                String newPermissionGroupName2 = newPermission.getParsedPermissionGroup() == null ? null : newPermission.getParsedPermissionGroup().getName();
                String oldPermissionGroupName2 = oldPermissionNameToGroupName.get(permissionName2);
                if (newPermissionGroupName2 != null && !newPermissionGroupName2.equals(oldPermissionGroupName2)) {
                    int[] userIds2 = this.mUserManagerInt.getUserIds();
                    int numUserIds = userIds2.length;
                    int userIdNum2 = 0;
                    while (userIdNum2 < numUserIds) {
                        int userId2 = userIds2[userIdNum2];
                        int numPackages2 = allPackageNames.size();
                        int numUserIds2 = numUserIds;
                        int numUserIds3 = 0;
                        while (numUserIds3 < numPackages2) {
                            int numOldPackagePermissions2 = numOldPackagePermissions;
                            int packageNum = numUserIds3;
                            String packageName = allPackageNames.get(numUserIds3);
                            int permissionState = this.checkPermission(permissionName2, packageName, userId2);
                            if (permissionState != 0) {
                                numPackages = numPackages2;
                                userId = userId2;
                                userIdNum = userIdNum2;
                                userIds = userIds2;
                                oldPermissionGroupName = oldPermissionGroupName2;
                                newPermissionGroupName = newPermissionGroupName2;
                                permissionName = permissionName2;
                            } else {
                                EventLog.writeEvent(1397638484, "72710897", Integer.valueOf(newPackage.getUid()), "Revoking permission " + permissionName2 + " from package " + packageName + " as the group changed from " + oldPermissionGroupName2 + " to " + newPermissionGroupName2);
                                numPackages = numPackages2;
                                userId = userId2;
                                userIdNum = userIdNum2;
                                userIds = userIds2;
                                oldPermissionGroupName = oldPermissionGroupName2;
                                newPermissionGroupName = newPermissionGroupName2;
                                permissionName = permissionName2;
                                try {
                                    revokeRuntimePermissionInternal(permissionName2, packageName, false, callingUid, userId, null, permissionCallback);
                                } catch (IllegalArgumentException e) {
                                    Slog.e(TAG, "Could not revoke " + permissionName + " from " + packageName, e);
                                }
                            }
                            numUserIds3 = packageNum + 1;
                            permissionName2 = permissionName;
                            numOldPackagePermissions = numOldPackagePermissions2;
                            numPackages2 = numPackages;
                            userId2 = userId;
                            userIdNum2 = userIdNum;
                            userIds2 = userIds;
                            oldPermissionGroupName2 = oldPermissionGroupName;
                            newPermissionGroupName2 = newPermissionGroupName;
                            this = this;
                        }
                        userIdNum2++;
                        numUserIds = numUserIds2;
                        numOldPackagePermissions = numOldPackagePermissions;
                        this = this;
                    }
                }
            }
            newPermissionNum++;
            numOldPackagePermissions = numOldPackagePermissions;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeRuntimePermissionsIfPermissionDefinitionChanged(List<String> permissionsToRevoke, ArrayList<String> allPackageNames, PermissionManagerServiceInternal.PermissionCallback permissionCallback) {
        int[] userIds;
        int packageNum;
        int userId;
        int userIdNum;
        BasePermission bp;
        String permName;
        int[] userIds2 = this.mUserManagerInt.getUserIds();
        int numPermissions = permissionsToRevoke.size();
        int numUserIds = userIds2.length;
        int numPackages = allPackageNames.size();
        int callingUid = Binder.getCallingUid();
        int permNum = 0;
        while (permNum < numPermissions) {
            String permName2 = permissionsToRevoke.get(permNum);
            BasePermission bp2 = this.mSettings.getPermission(permName2);
            if (bp2 == null) {
                userIds = userIds2;
            } else if (!bp2.isRuntime()) {
                userIds = userIds2;
            } else {
                int userIdNum2 = 0;
                while (userIdNum2 < numUserIds) {
                    int userId2 = userIds2[userIdNum2];
                    int packageNum2 = 0;
                    while (packageNum2 < numPackages) {
                        String packageName = allPackageNames.get(packageNum2);
                        int[] userIds3 = userIds2;
                        int uid = this.mPackageManagerInt.getPackageUid(packageName, 0, userId2);
                        if (uid < 10000) {
                            packageNum = packageNum2;
                            userId = userId2;
                            userIdNum = userIdNum2;
                            bp = bp2;
                            permName = permName2;
                        } else {
                            int permissionState = checkPermissionImpl(permName2, packageName, userId2);
                            int flags = getPermissionFlags(permName2, packageName, userId2);
                            if (permissionState != 0 || (flags & 32820) != 0) {
                                packageNum = packageNum2;
                                userId = userId2;
                                userIdNum = userIdNum2;
                                bp = bp2;
                                permName = permName2;
                            } else {
                                EventLog.writeEvent(1397638484, "154505240", Integer.valueOf(uid), "Revoking permission " + permName2 + " from package " + packageName + " due to definition change");
                                EventLog.writeEvent(1397638484, "168319670", Integer.valueOf(uid), "Revoking permission " + permName2 + " from package " + packageName + " due to definition change");
                                Slog.e(TAG, "Revoking permission " + permName2 + " from package " + packageName + " due to definition change");
                                packageNum = packageNum2;
                                userId = userId2;
                                userIdNum = userIdNum2;
                                bp = bp2;
                                String permName3 = permName2;
                                try {
                                    revokeRuntimePermissionInternal(permName2, packageName, false, callingUid, userId, null, permissionCallback);
                                    permName = permName3;
                                } catch (Exception e) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Could not revoke ");
                                    permName = permName3;
                                    sb.append(permName);
                                    sb.append(" from ");
                                    sb.append(packageName);
                                    Slog.e(TAG, sb.toString(), e);
                                }
                            }
                        }
                        permName2 = permName;
                        userIdNum2 = userIdNum;
                        userIds2 = userIds3;
                        userId2 = userId;
                        bp2 = bp;
                        packageNum2 = packageNum + 1;
                    }
                    userIdNum2++;
                }
                userIds = userIds2;
                bp2.setPermissionDefinitionChanged(false);
            }
            permNum++;
            userIds2 = userIds;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> addAllPermissions(AndroidPackage pkg, boolean chatty) {
        BasePermission bp;
        int N = ArrayUtils.size(pkg.getPermissions());
        ArrayList<String> definitionChangedPermissions = new ArrayList<>();
        for (int i = 0; i < N; i++) {
            ParsedPermission p = pkg.getPermissions().get(i);
            p.setFlags(p.getFlags() & (-1073741825));
            synchronized (this.mLock) {
                if (pkg.getTargetSdkVersion() > 22) {
                    p.setParsedPermissionGroup(this.mSettings.mPermissionGroups.get(p.getGroup()));
                }
                if (p.isTree()) {
                    bp = BasePermission.createOrUpdate(this.mPackageManagerInt, this.mSettings.getPermissionTreeLocked(p.getName()), p, pkg, this.mSettings.getAllPermissionTreesLocked(), chatty);
                    this.mSettings.putPermissionTreeLocked(p.getName(), bp);
                } else {
                    bp = BasePermission.createOrUpdate(this.mPackageManagerInt, this.mSettings.getPermissionLocked(p.getName()), p, pkg, this.mSettings.getAllPermissionTreesLocked(), chatty);
                    this.mSettings.putPermissionLocked(p.getName(), bp);
                }
                if (bp.isPermissionDefinitionChanged()) {
                    definitionChangedPermissions.add(p.getName());
                }
            }
        }
        return definitionChangedPermissions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllPermissionGroups(AndroidPackage pkg, boolean chatty) {
        int N = ArrayUtils.size(pkg.getPermissionGroups());
        for (int i = 0; i < N; i++) {
            ParsedPermissionGroup pg = pkg.getPermissionGroups().get(i);
            ParsedPermissionGroup cur = this.mSettings.mPermissionGroups.get(pg.getName());
            String curPackageName = cur == null ? null : cur.getPackageName();
            boolean isPackageUpdate = pg.getPackageName().equals(curPackageName);
            if (cur == null || isPackageUpdate) {
                this.mSettings.mPermissionGroups.put(pg.getName(), pg);
            } else {
                Slog.w(TAG, "Permission group " + pg.getName() + " from package " + pg.getPackageName() + " ignored: original from " + cur.getPackageName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllPermissions(AndroidPackage pkg, boolean chatty) {
        ArraySet<String> appOpPkgs;
        ArraySet<String> appOpPkgs2;
        synchronized (this.mLock) {
            int N = ArrayUtils.size(pkg.getPermissions());
            for (int i = 0; i < N; i++) {
                ParsedPermission p = pkg.getPermissions().get(i);
                BasePermission bp = this.mSettings.mPermissions.get(p.getName());
                if (bp == null) {
                    bp = this.mSettings.mPermissionTrees.get(p.getName());
                }
                if (bp != null && bp.isPermission(p)) {
                    bp.setPermission(null);
                }
                if (p.isAppOp() && (appOpPkgs2 = this.mSettings.mAppOpPermissionPackages.get(p.getName())) != null) {
                    appOpPkgs2.remove(pkg.getPackageName());
                }
            }
            int N2 = pkg.getRequestedPermissions().size();
            for (int i2 = 0; i2 < N2; i2++) {
                String perm = pkg.getRequestedPermissions().get(i2);
                if (this.mSettings.isPermissionAppOp(perm) && (appOpPkgs = this.mSettings.mAppOpPermissionPackages.get(perm)) != null) {
                    appOpPkgs.remove(pkg.getPackageName());
                    if (appOpPkgs.isEmpty()) {
                        this.mSettings.mAppOpPermissionPackages.remove(perm);
                    }
                }
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0876 */
    /* JADX WARN: Code duplicated, block: B:106:0x0265 A[Catch: all -> 0x071c, TRY_LEAVE, TryCatch #25 {all -> 0x071c, blocks: (B:70:0x0197, B:73:0x01b2, B:102:0x024e, B:106:0x0265, B:111:0x0282, B:114:0x029f, B:122:0x02e0), top: B:501:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0274 A[Catch: all -> 0x0236, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x0236, blocks: (B:75:0x01b8, B:77:0x01c2, B:108:0x0274, B:116:0x02a5, B:81:0x01d1, B:83:0x01db, B:84:0x01e4, B:86:0x01f1, B:88:0x0201, B:90:0x0219, B:92:0x0221), top: B:467:0x01b8 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0280  */
    /* JADX WARN: Code duplicated, block: B:113:0x0288  */
    /* JADX WARN: Code duplicated, block: B:114:0x029f A[Catch: all -> 0x071c, TRY_LEAVE, TryCatch #25 {all -> 0x071c, blocks: (B:70:0x0197, B:73:0x01b2, B:102:0x024e, B:106:0x0265, B:111:0x0282, B:114:0x029f, B:122:0x02e0), top: B:501:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02a5 A[Catch: all -> 0x0236, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x0236, blocks: (B:75:0x01b8, B:77:0x01c2, B:108:0x0274, B:116:0x02a5, B:81:0x01d1, B:83:0x01db, B:84:0x01e4, B:86:0x01f1, B:88:0x0201, B:90:0x0219, B:92:0x0221), top: B:467:0x01b8 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x02af A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:121:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:122:0x02e0 A[Catch: all -> 0x071c, TRY_ENTER, TRY_LEAVE, TryCatch #25 {all -> 0x071c, blocks: (B:70:0x0197, B:73:0x01b2, B:102:0x024e, B:106:0x0265, B:111:0x0282, B:114:0x029f, B:122:0x02e0), top: B:501:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:128:0x0308  */
    /* JADX WARN: Code duplicated, block: B:129:0x030d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0321  */
    /* JADX WARN: Code duplicated, block: B:139:0x0343 A[Catch: all -> 0x0362, TRY_LEAVE, TryCatch #0 {all -> 0x0362, blocks: (B:137:0x033d, B:139:0x0343), top: B:451:0x033d }] */
    /* JADX WARN: Code duplicated, block: B:151:0x0373 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:154:0x037a  */
    /* JADX WARN: Code duplicated, block: B:156:0x037d  */
    /* JADX WARN: Code duplicated, block: B:158:0x0380 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:159:0x0382 A[Catch: all -> 0x0390, TRY_LEAVE, TryCatch #19 {all -> 0x0390, blocks: (B:143:0x034f, B:145:0x0355, B:159:0x0382, B:167:0x03ad, B:176:0x03cb), top: B:489:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:163:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:167:0x03ad A[Catch: all -> 0x0390, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x0390, blocks: (B:143:0x034f, B:145:0x0355, B:159:0x0382, B:167:0x03ad, B:176:0x03cb), top: B:489:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:169:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:171:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:172:0x03b9 A[Catch: all -> 0x052d, TRY_ENTER, TryCatch #5 {all -> 0x052d, blocks: (B:165:0x03a7, B:173:0x03bf, B:172:0x03b9), top: B:461:0x03a7 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:178:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:186:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:189:0x040f  */
    /* JADX WARN: Code duplicated, block: B:194:0x0424  */
    /* JADX WARN: Code duplicated, block: B:195:0x0426  */
    /* JADX WARN: Code duplicated, block: B:198:0x0431  */
    /* JADX WARN: Code duplicated, block: B:199:0x0433  */
    /* JADX WARN: Code duplicated, block: B:201:0x0436  */
    /* JADX WARN: Code duplicated, block: B:202:0x0438 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:214:0x045d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0461 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:222:0x046f A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:225:0x0477 A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:226:0x047c  */
    /* JADX WARN: Code duplicated, block: B:227:0x047e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:229:0x0482 A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:232:0x048c A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:234:0x0496 A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:238:0x04a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:244:0x04b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:250:0x04bd A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:253:0x04c3 A[Catch: all -> 0x04e3, TryCatch #1 {all -> 0x04e3, blocks: (B:192:0x041a, B:196:0x0427, B:205:0x043e, B:207:0x0444, B:212:0x0455, B:220:0x046b, B:222:0x046f, B:223:0x0473, B:225:0x0477, B:248:0x04b9, B:250:0x04bd, B:253:0x04c3, B:254:0x04c8, B:229:0x0482, B:219:0x0467, B:232:0x048c, B:234:0x0496, B:236:0x049d, B:242:0x04ab), top: B:453:0x041a }] */
    /* JADX WARN: Code duplicated, block: B:265:0x0540  */
    /* JADX WARN: Code duplicated, block: B:273:0x0563  */
    /* JADX WARN: Code duplicated, block: B:276:0x0572  */
    /* JADX WARN: Code duplicated, block: B:280:0x057a A[Catch: all -> 0x0565, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0565, blocks: (B:271:0x055b, B:280:0x057a), top: B:455:0x055b }] */
    /* JADX WARN: Code duplicated, block: B:282:0x057f  */
    /* JADX WARN: Code duplicated, block: B:286:0x058d  */
    /* JADX WARN: Code duplicated, block: B:287:0x058f  */
    /* JADX WARN: Code duplicated, block: B:290:0x059c  */
    /* JADX WARN: Code duplicated, block: B:291:0x059e  */
    /* JADX WARN: Code duplicated, block: B:293:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:294:0x05a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:306:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:308:0x05cd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:314:0x05dc A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:317:0x05e4 A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:318:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:319:0x05eb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:321:0x05ef A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:327:0x0601  */
    /* JADX WARN: Code duplicated, block: B:329:0x0605 A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:336:0x0624 A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:340:0x0630 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:346:0x063e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:352:0x064a A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:353:0x064e  */
    /* JADX WARN: Code duplicated, block: B:356:0x0653 A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:360:0x0671  */
    /* JADX WARN: Code duplicated, block: B:364:0x0680 A[Catch: all -> 0x06b6, TRY_ENTER, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:366:0x068a A[Catch: all -> 0x06b6, TryCatch #7 {all -> 0x06b6, blocks: (B:269:0x0555, B:278:0x0574, B:284:0x0583, B:288:0x0590, B:297:0x05a9, B:299:0x05af, B:304:0x05c0, B:312:0x05d8, B:314:0x05dc, B:315:0x05e0, B:317:0x05e4, B:350:0x0646, B:352:0x064a, B:356:0x0653, B:357:0x0658, B:322:0x05f1, B:324:0x05f7, B:311:0x05d3, B:329:0x0605, B:331:0x0611, B:333:0x0617, B:334:0x061c, B:336:0x0624, B:344:0x0638, B:364:0x0680, B:366:0x068a, B:367:0x0699, B:368:0x069e), top: B:465:0x0555 }] */
    /* JADX WARN: Code duplicated, block: B:371:0x06a7  */
    /* JADX WARN: Code duplicated, block: B:372:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:378:0x06df  */
    /* JADX WARN: Code duplicated, block: B:381:0x06f0 A[Catch: all -> 0x0707, TryCatch #15 {all -> 0x0707, blocks: (B:266:0x0548, B:361:0x067b, B:379:0x06e9, B:381:0x06f0, B:382:0x06ff), top: B:481:0x0548 }] */
    /* JADX WARN: Code duplicated, block: B:382:0x06ff A[Catch: all -> 0x0707, TRY_LEAVE, TryCatch #15 {all -> 0x0707, blocks: (B:266:0x0548, B:361:0x067b, B:379:0x06e9, B:381:0x06f0, B:382:0x06ff), top: B:481:0x0548 }] */
    /* JADX WARN: Code duplicated, block: B:414:0x07e2 A[Catch: all -> 0x0858, PHI: r8
  0x07e2: PHI (r8v7 boolean) = (r8v4 boolean), (r8v4 boolean), (r8v8 boolean) binds: [B:408:0x07c8, B:410:0x07ce, B:404:0x07bf] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #23 {all -> 0x0858, blocks: (B:414:0x07e2, B:407:0x07c4), top: B:497:0x07c4 }] */
    /* JADX WARN: Code duplicated, block: B:416:0x07ec A[PHI: r8
  0x07ec: PHI (r8v6 boolean) = (r8v4 boolean), (r8v7 boolean) binds: [B:410:0x07ce, B:415:0x07ea] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:421:0x0802  */
    /* JADX WARN: Code duplicated, block: B:431:0x0824  */
    /* JADX WARN: Code duplicated, block: B:432:0x082a  */
    /* JADX WARN: Code duplicated, block: B:435:0x082f A[LOOP:9: B:434:0x082d->B:435:0x082f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:451:0x033d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:455:0x055b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:461:0x03a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:465:0x0555 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:471:0x03e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:475:0x03f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:483:0x0337 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:525:0x0699 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void restorePermissionState(com.android.server.pm.parsing.pkg.AndroidPackage r38, boolean r39, java.lang.String r40, com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.permission.PermissionManagerService.restorePermissionState(com.android.server.pm.parsing.pkg.AndroidPackage, boolean, java.lang.String, com.android.server.pm.permission.PermissionManagerServiceInternal$PermissionCallback):void");
    }

    private int[] getAllUserIds() {
        return UserManagerService.getInstance().getUserIdsIncludingPreCreated();
    }

    private int[] revokePermissionsNoLongerImplicitLocked(PermissionsState ps, AndroidPackage pkg, int[] updatedUserIds) {
        pkg.getPackageName();
        boolean supportsRuntimePermissions = pkg.getTargetSdkVersion() >= 23;
        int[] users = getAllUserIds();
        int[] updatedUserIds2 = updatedUserIds;
        for (int userId : users) {
            for (String permission : ps.getPermissions(userId)) {
                if (!pkg.getImplicitPermissions().contains(permission) && !ps.hasInstallPermission(permission)) {
                    int flags = ps.getRuntimePermissionState(permission, userId).getFlags();
                    if ((flags & 128) != 0) {
                        BasePermission bp = this.mSettings.getPermissionLocked(permission);
                        int flagsToRemove = 128;
                        if ((flags & 52) == 0 && supportsRuntimePermissions) {
                            ps.revokeRuntimePermission(bp, userId);
                            flagsToRemove = 128 | 3;
                        }
                        ps.updatePermissionFlags(bp, userId, flagsToRemove, 0);
                        updatedUserIds2 = ArrayUtils.appendInt(updatedUserIds2, userId);
                    }
                }
            }
        }
        return updatedUserIds2;
    }

    private void inheritPermissionStateToNewImplicitPermissionLocked(ArraySet<String> sourcePerms, String newPerm, PermissionsState ps, AndroidPackage pkg, int userId) {
        pkg.getPackageName();
        boolean isGranted = false;
        int flags = 0;
        int numSourcePerm = sourcePerms.size();
        for (int i = 0; i < numSourcePerm; i++) {
            String sourcePerm = sourcePerms.valueAt(i);
            if (ps.hasRuntimePermission(sourcePerm, userId) || ps.hasInstallPermission(sourcePerm)) {
                if (!isGranted) {
                    flags = 0;
                }
                isGranted = true;
                flags |= ps.getPermissionFlags(sourcePerm, userId);
            } else if (!isGranted) {
                flags |= ps.getPermissionFlags(sourcePerm, userId);
            }
        }
        if (isGranted) {
            ps.grantRuntimePermission(this.mSettings.getPermissionLocked(newPerm), userId);
        }
        ps.updatePermissionFlags(this.mSettings.getPermission(newPerm), userId, flags, flags);
    }

    private int[] checkIfLegacyStorageOpsNeedToBeUpdated(AndroidPackage pkg, boolean replace, int[] updatedUserIds) {
        if (replace && pkg.isRequestLegacyExternalStorage() && (pkg.getRequestedPermissions().contains("android.permission.READ_EXTERNAL_STORAGE") || pkg.getRequestedPermissions().contains("android.permission.WRITE_EXTERNAL_STORAGE"))) {
            return getAllUserIds();
        }
        return updatedUserIds;
    }

    private int[] setInitialGrantForNewImplicitPermissionsLocked(PermissionsState origPs, PermissionsState ps, AndroidPackage pkg, ArraySet<String> newImplicitPermissions, int[] updatedUserIds) {
        boolean inheritsFromInstallPerm;
        String pkgName = pkg.getPackageName();
        ArrayMap<String, ArraySet<String>> newToSplitPerms = new ArrayMap<>();
        List<SplitPermissionInfoParcelable> permissionList = getSplitPermissions();
        int numSplitPerms = permissionList.size();
        for (int splitPermNum = 0; splitPermNum < numSplitPerms; splitPermNum++) {
            SplitPermissionInfoParcelable spi = permissionList.get(splitPermNum);
            List<String> newPerms = spi.getNewPermissions();
            int numNewPerms = newPerms.size();
            for (int newPermNum = 0; newPermNum < numNewPerms; newPermNum++) {
                String newPerm = newPerms.get(newPermNum);
                ArraySet<String> splitPerms = newToSplitPerms.get(newPerm);
                if (splitPerms == null) {
                    splitPerms = new ArraySet<>();
                    newToSplitPerms.put(newPerm, splitPerms);
                }
                splitPerms.add(spi.getSplitPermission());
            }
        }
        int numNewImplicitPerms = newImplicitPermissions.size();
        int newImplicitPermNum = 0;
        int[] updatedUserIds2 = updatedUserIds;
        while (newImplicitPermNum < numNewImplicitPerms) {
            String newPerm2 = newImplicitPermissions.valueAt(newImplicitPermNum);
            ArraySet<String> sourcePerms = newToSplitPerms.get(newPerm2);
            if (sourcePerms != null && !ps.hasInstallPermission(newPerm2)) {
                BasePermission bp = this.mSettings.getPermissionLocked(newPerm2);
                int[] users = getAllUserIds();
                int numUsers = users.length;
                int userNum = 0;
                while (userNum < numUsers) {
                    String pkgName2 = pkgName;
                    int userId = users[userNum];
                    int i = userNum;
                    if (!newPerm2.equals("android.permission.ACTIVITY_RECOGNITION")) {
                        ps.updatePermissionFlags(bp, userId, 128, 128);
                    }
                    int[] updatedUserIds3 = ArrayUtils.appendInt(updatedUserIds2, userId);
                    boolean inheritsFromInstallPerm2 = false;
                    int sourcePermNum = 0;
                    while (true) {
                        inheritsFromInstallPerm = inheritsFromInstallPerm2;
                        if (sourcePermNum >= sourcePerms.size()) {
                            break;
                        }
                        if (!ps.hasInstallPermission(sourcePerms.valueAt(sourcePermNum))) {
                            sourcePermNum++;
                            inheritsFromInstallPerm2 = inheritsFromInstallPerm;
                        } else {
                            inheritsFromInstallPerm = true;
                            break;
                        }
                    }
                    if (origPs.hasRequestedPermission(sourcePerms) || inheritsFromInstallPerm) {
                        inheritPermissionStateToNewImplicitPermissionLocked(sourcePerms, newPerm2, ps, pkg, userId);
                    }
                    userNum = i + 1;
                    pkgName = pkgName2;
                    updatedUserIds2 = updatedUserIds3;
                    numUsers = numUsers;
                    users = users;
                    bp = bp;
                }
            }
            newImplicitPermNum++;
            pkgName = pkgName;
        }
        return updatedUserIds2;
    }

    public List<SplitPermissionInfoParcelable> getSplitPermissions() {
        return PermissionManager.splitPermissionInfoListToParcelableList(SystemConfig.getInstance().getSplitPermissions());
    }

    private OneTimePermissionUserManager getOneTimePermissionUserManager(int userId) {
        synchronized (this.mLock) {
            OneTimePermissionUserManager oneTimePermissionUserManager = this.mOneTimePermissionUserManagers.get(userId);
            if (oneTimePermissionUserManager != null) {
                return oneTimePermissionUserManager;
            }
            OneTimePermissionUserManager oneTimePermissionUserManager2 = new OneTimePermissionUserManager(this.mContext.createContextAsUser(UserHandle.of(userId), 0));
            this.mOneTimePermissionUserManagers.put(userId, oneTimePermissionUserManager2);
            oneTimePermissionUserManager2.registerUninstallListener();
            return oneTimePermissionUserManager2;
        }
    }

    public void startOneTimePermissionSession(String packageName, int userId, long timeoutMillis, int importanceToResetTimer, int importanceToKeepSessionAlive) {
        this.mContext.enforceCallingPermission("android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS", "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time.");
        Objects.requireNonNull(packageName);
        long token = Binder.clearCallingIdentity();
        try {
            getOneTimePermissionUserManager(userId).startPackageOneTimeSession(packageName, timeoutMillis, importanceToResetTimer, importanceToKeepSessionAlive);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void stopOneTimePermissionSession(String packageName, int userId) {
        this.mContext.enforceCallingPermission("android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS", "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time.");
        Objects.requireNonNull(packageName);
        long token = Binder.clearCallingIdentity();
        try {
            getOneTimePermissionUserManager(userId).stopPackageOneTimeSession(packageName);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public List<String> getAutoRevokeExemptionRequestedPackages(int userId) {
        return getPackagesWithAutoRevokePolicy(1, userId);
    }

    public List<String> getAutoRevokeExemptionGrantedPackages(int userId) {
        return getPackagesWithAutoRevokePolicy(2, userId);
    }

    private List<String> getPackagesWithAutoRevokePolicy(final int autoRevokePolicy, int userId) {
        this.mContext.enforceCallingPermission("android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY", "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY");
        final List<String> result = new ArrayList<>();
        this.mPackageManagerInt.forEachInstalledPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PermissionManagerService.lambda$getPackagesWithAutoRevokePolicy$10(autoRevokePolicy, result, (AndroidPackage) obj);
            }
        }, userId);
        return result;
    }

    static /* synthetic */ void lambda$getPackagesWithAutoRevokePolicy$10(int autoRevokePolicy, List result, AndroidPackage pkg) {
        if (pkg.getAutoRevokePermissions() == autoRevokePolicy) {
            result.add(pkg.getPackageName());
        }
    }

    private boolean isNewPlatformPermissionForPackage(String perm, AndroidPackage pkg) {
        int NP = PackageParser.NEW_PERMISSIONS.length;
        for (int ip = 0; ip < NP; ip++) {
            PackageParser.NewPermissionInfo npi = PackageParser.NEW_PERMISSIONS[ip];
            if (npi.name.equals(perm) && pkg.getTargetSdkVersion() < npi.sdkVersion) {
                Log.i(TAG, "Auto-granting " + perm + " to old pkg " + pkg.getPackageName());
                return true;
            }
        }
        return false;
    }

    private boolean hasPrivappWhitelistEntry(String perm, AndroidPackage pkg) {
        ArraySet<String> wlPermissions;
        if (pkg.isVendor()) {
            wlPermissions = SystemConfig.getInstance().getVendorPrivAppPermissions(pkg.getPackageName());
        } else if (pkg.isProduct()) {
            wlPermissions = SystemConfig.getInstance().getProductPrivAppPermissions(pkg.getPackageName());
        } else if (pkg.isSystemExt()) {
            wlPermissions = SystemConfig.getInstance().getSystemExtPrivAppPermissions(pkg.getPackageName());
        } else {
            wlPermissions = SystemConfig.getInstance().getPrivAppPermissions(pkg.getPackageName());
        }
        return wlPermissions != null && wlPermissions.contains(perm);
    }

    private boolean grantSignaturePermission(String perm, AndroidPackage pkg, PackageSetting pkgSetting, BasePermission bp, PermissionsState origPermissions) {
        boolean z;
        ArraySet<String> deniedPermissions;
        boolean oemPermission = bp.isOEM();
        boolean vendorPrivilegedPermission = bp.isVendorPrivileged();
        boolean privilegedPermission = bp.isPrivileged() || bp.isVendorPrivileged();
        boolean privappPermissionsDisable = RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_DISABLE;
        boolean platformPermission = PackageManagerService.PLATFORM_PACKAGE_NAME.equals(bp.getSourcePackageName());
        boolean platformPackage = PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg.getPackageName());
        if (!privappPermissionsDisable && privilegedPermission && pkg.isPrivileged() && !platformPackage && platformPermission && !hasPrivappWhitelistEntry(perm, pkg)) {
            if (this.mSystemReady || pkgSetting.getPkgState().isUpdatedSystemApp()) {
                z = false;
            } else {
                ApexManager apexMgr = ApexManager.getInstance();
                String apexContainingPkg = apexMgr.getActiveApexPackageNameContainingPackage(pkg);
                if (apexContainingPkg == null || ApexManager.isFactory(apexMgr.getPackageInfo(apexContainingPkg, 1))) {
                    if (pkg.isVendor()) {
                        deniedPermissions = SystemConfig.getInstance().getVendorPrivAppDenyPermissions(pkg.getPackageName());
                    } else if (pkg.isProduct()) {
                        deniedPermissions = SystemConfig.getInstance().getProductPrivAppDenyPermissions(pkg.getPackageName());
                    } else if (pkg.isSystemExt()) {
                        deniedPermissions = SystemConfig.getInstance().getSystemExtPrivAppDenyPermissions(pkg.getPackageName());
                    } else {
                        deniedPermissions = SystemConfig.getInstance().getPrivAppDenyPermissions(pkg.getPackageName());
                    }
                    boolean permissionViolation = deniedPermissions == null || !deniedPermissions.contains(perm);
                    if (!permissionViolation) {
                        return false;
                    }
                    Slog.w(TAG, "Privileged permission " + perm + " for package " + pkg.getPackageName() + " (" + pkg.getCodePath() + ") not in privapp-permissions whitelist");
                    if (RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_ENFORCE) {
                        if (this.mPrivappPermissionsViolations == null) {
                            this.mPrivappPermissionsViolations = new ArraySet<>();
                        }
                        this.mPrivappPermissionsViolations.add(pkg.getPackageName() + " (" + pkg.getCodePath() + "): " + perm);
                        z = false;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            if (RoSystemProperties.CONTROL_PRIVAPP_PERMISSIONS_ENFORCE) {
                return z;
            }
        }
        String systemPackageName = (String) ArrayUtils.firstOrNull(this.mPackageManagerInt.getKnownPackageNames(0, 0));
        AndroidPackage systemPackage = this.mPackageManagerInt.getPackage(systemPackageName);
        PackageParser.SigningDetails sourceSigningDetails = getSourcePackageSigningDetails(bp);
        boolean allowed = pkg.getSigningDetails().hasAncestorOrSelf(sourceSigningDetails) || sourceSigningDetails.checkCapability(pkg.getSigningDetails(), 4) || pkg.getSigningDetails().hasAncestorOrSelf(systemPackage.getSigningDetails()) || systemPackage.getSigningDetails().checkCapability(pkg.getSigningDetails(), 4);
        if (!allowed && ((privilegedPermission || oemPermission) && pkg.isSystem())) {
            if (pkgSetting.getPkgState().isUpdatedSystemApp()) {
                PackageSetting disabledPs = this.mPackageManagerInt.getDisabledSystemPackage(pkg.getPackageName());
                AndroidPackage disabledPkg = disabledPs == null ? null : disabledPs.pkg;
                if (disabledPs != null && disabledPs.getPermissionsState().hasInstallPermission(perm)) {
                    if ((privilegedPermission && disabledPs.isPrivileged()) || (oemPermission && disabledPs.isOem() && canGrantOemPermission(disabledPs, perm))) {
                        allowed = true;
                    }
                } else if (disabledPs != null && disabledPkg != null && isPackageRequestingPermission(disabledPkg, perm) && ((privilegedPermission && disabledPs.isPrivileged()) || (oemPermission && disabledPs.isOem() && canGrantOemPermission(disabledPs, perm)))) {
                    allowed = true;
                }
            } else {
                PackageSetting ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName());
                allowed = (privilegedPermission && pkg.isPrivileged()) || (oemPermission && pkg.isOem() && canGrantOemPermission(ps, perm));
            }
            if (allowed && privilegedPermission && !vendorPrivilegedPermission && pkg.isVendor()) {
                Slog.w(TAG, "Permission " + perm + " cannot be granted to privileged vendor apk " + pkg.getPackageName() + " because it isn't a 'vendorPrivileged' permission.");
                allowed = false;
            }
        }
        if (!allowed) {
            if (!allowed && bp.isPre23() && pkg.getTargetSdkVersion() < 23) {
                allowed = true;
            }
            if ((!allowed && bp.isInstaller() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(2, 0), pkg.getPackageName())) || ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(6, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isVerifier() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(3, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isPreInstalled() && pkg.isSystem()) {
                allowed = true;
            }
            if (!allowed && bp.isDevelopment()) {
                allowed = origPermissions.hasInstallPermission(perm);
            }
            if (!allowed && bp.isSetup() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(1, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isSystemTextClassifier() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(5, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isConfigurator() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(9, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isWellbeing() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(7, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isDocumenter() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(8, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isIncidentReportApprover() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(10, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isAppPredictor() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(11, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isCompanion() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(14, 0), pkg.getPackageName())) {
                allowed = true;
            }
            if (!allowed && bp.isRetailDemo() && ArrayUtils.contains(this.mPackageManagerInt.getKnownPackageNames(15, 0), pkg.getPackageName()) && isProfileOwner(pkg.getUid())) {
                return true;
            }
            return allowed;
        }
        return allowed;
    }

    private PackageParser.SigningDetails getSourcePackageSigningDetails(BasePermission bp) {
        PackageSetting ps = getSourcePackageSetting(bp);
        if (ps == null) {
            return PackageParser.SigningDetails.UNKNOWN;
        }
        return ps.getSigningDetails();
    }

    private PackageSetting getSourcePackageSetting(BasePermission bp) {
        String sourcePackageName = bp.getSourcePackageName();
        return this.mPackageManagerInt.getPackageSetting(sourcePackageName);
    }

    private static boolean isProfileOwner(int uid) {
        DevicePolicyManagerInternal dpmInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        if (dpmInternal != null) {
            return dpmInternal.isActiveAdminWithPolicy(uid, -1);
        }
        return false;
    }

    private static boolean canGrantOemPermission(PackageSetting ps, String permission) {
        if (!ps.isOem()) {
            return false;
        }
        Boolean granted = (Boolean) SystemConfig.getInstance().getOemPermissions(ps.name).get(permission);
        if (granted != null) {
            return Boolean.TRUE == granted;
        }
        throw new IllegalStateException("OEM permission" + permission + " requested by package " + ps.name + " must be explicitly declared granted or not");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPermissionsReviewRequired(AndroidPackage pkg, int userId) {
        PackageSetting ps;
        if (pkg.getTargetSdkVersion() >= 23 || (ps = this.mPackageManagerInt.getPackageSetting(pkg.getPackageName())) == null) {
            return false;
        }
        PermissionsState permissionsState = ps.getPermissionsState();
        return permissionsState.isPermissionReviewRequired(userId);
    }

    private boolean isPackageRequestingPermission(AndroidPackage pkg, String permission) {
        int permCount = pkg.getRequestedPermissions().size();
        for (int j = 0; j < permCount; j++) {
            String requestedPermission = pkg.getRequestedPermissions().get(j);
            if (permission.equals(requestedPermission)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void grantRequestedRuntimePermissions(AndroidPackage pkg, int[] userIds, String[] grantedPermissions, int callingUid, PermissionManagerServiceInternal.PermissionCallback callback) throws Throwable {
        for (int userId : userIds) {
            grantRequestedRuntimePermissionsForUser(pkg, userId, grantedPermissions, callingUid, callback);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00bb */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void grantRequestedRuntimePermissionsForUser(com.android.server.pm.parsing.pkg.AndroidPackage r23, int r24, java.lang.String[] r25, int r26, com.android.server.pm.permission.PermissionManagerServiceInternal.PermissionCallback r27) throws java.lang.Throwable {
        /*
            r22 = this;
            r10 = r22
            r11 = r24
            r12 = r25
            android.content.pm.PackageManagerInternal r0 = r10.mPackageManagerInt
            java.lang.String r1 = r23.getPackageName()
            com.android.server.pm.PackageSetting r13 = r0.getPackageSetting(r1)
            if (r13 != 0) goto L13
            return
        L13:
            com.android.server.pm.permission.PermissionsState r14 = r13.getPermissionsState()
            r15 = 20
            r16 = 72
            int r0 = r23.getTargetSdkVersion()
            r1 = 23
            if (r0 < r1) goto L25
            r0 = 1
            goto L26
        L25:
            r0 = 0
        L26:
            r17 = r0
            android.content.pm.PackageManagerInternal r0 = r10.mPackageManagerInt
            java.lang.String r1 = r23.getPackageName()
            boolean r18 = r0.isInstantApp(r1, r11)
            java.util.List r0 = r23.getRequestedPermissions()
            java.util.Iterator r0 = r0.iterator()
        L3a:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lbd
            java.lang.Object r1 = r0.next()
            r9 = r1
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r1 = r10.mLock
            monitor-enter(r1)
            com.android.server.pm.permission.PermissionSettings r2 = r10.mSettings     // Catch: java.lang.Throwable -> Lb6
            com.android.server.pm.permission.BasePermission r2 = r2.getPermissionLocked(r9)     // Catch: java.lang.Throwable -> Lb6
            r19 = r2
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb6
            if (r19 == 0) goto Lb3
            boolean r1 = r19.isRuntime()
            if (r1 != 0) goto L61
            boolean r1 = r19.isDevelopment()
            if (r1 == 0) goto Lb5
        L61:
            if (r18 == 0) goto L69
            boolean r1 = r19.isInstant()
            if (r1 == 0) goto Lb5
        L69:
            if (r17 != 0) goto L71
            boolean r1 = r19.isRuntimeOnly()
            if (r1 != 0) goto Lb5
        L71:
            if (r12 == 0) goto L79
            boolean r1 = com.android.internal.util.ArrayUtils.contains(r12, r9)
            if (r1 == 0) goto Lb5
        L79:
            int r20 = r14.getPermissionFlags(r9, r11)
            if (r17 == 0) goto L95
            r1 = r20 & 20
            if (r1 != 0) goto Lb5
            java.lang.String r3 = r23.getPackageName()
            r4 = 0
            r1 = r22
            r2 = r9
            r5 = r26
            r6 = r24
            r7 = r27
            r1.grantRuntimePermissionInternal(r2, r3, r4, r5, r6, r7)
            goto Lb5
        L95:
            r1 = r20 & 72
            if (r1 == 0) goto Lb0
            java.lang.String r3 = r23.getPackageName()
            r4 = 72
            r5 = 0
            r8 = 0
            r1 = r22
            r2 = r9
            r6 = r26
            r7 = r24
            r21 = r9
            r9 = r27
            r1.updatePermissionFlagsInternal(r2, r3, r4, r5, r6, r7, r8, r9)
            goto Lb5
        Lb0:
            r21 = r9
            goto Lb5
        Lb3:
            r21 = r9
        Lb5:
            goto L3a
        Lb6:
            r0 = move-exception
            r21 = r9
        Lb9:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lbb
            throw r0
        Lbb:
            r0 = move-exception
            goto Lb9
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.permission.PermissionManagerService.grantRequestedRuntimePermissionsForUser(com.android.server.pm.parsing.pkg.AndroidPackage, int, java.lang.String[], int, com.android.server.pm.permission.PermissionManagerServiceInternal$PermissionCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWhitelistedRestrictedPermissionsForUsers(AndroidPackage pkg, int[] userIds, List<String> permissions, int callingUid, int whitelistFlags, PermissionManagerServiceInternal.PermissionCallback callback) throws Throwable {
        boolean updatePermissions;
        int j;
        int userId;
        int newFlags;
        int mask;
        PermissionsState permissionsState = PackageManagerServiceUtils.getPermissionsState(this.mPackageManagerInt, pkg);
        if (permissionsState == null) {
            return;
        }
        SparseArray<ArraySet<String>> oldGrantedRestrictedPermissions = new SparseArray<>();
        boolean updatePermissions2 = false;
        int permissionCount = pkg.getRequestedPermissions().size();
        int i = 0;
        while (i < userIds.length) {
            int userId2 = userIds[i];
            int j2 = 0;
            while (j2 < permissionCount) {
                String permissionName = pkg.getRequestedPermissions().get(j2);
                BasePermission bp = this.mSettings.getPermissionLocked(permissionName);
                if (bp == null) {
                    updatePermissions = updatePermissions2;
                    j = j2;
                    userId = userId2;
                } else if (!bp.isHardOrSoftRestricted()) {
                    updatePermissions = updatePermissions2;
                    j = j2;
                    userId = userId2;
                } else {
                    if (permissionsState.hasPermission(permissionName, userId2)) {
                        if (oldGrantedRestrictedPermissions.get(userId2) == null) {
                            oldGrantedRestrictedPermissions.put(userId2, new ArraySet<>());
                        }
                        oldGrantedRestrictedPermissions.get(userId2).add(permissionName);
                    }
                    int oldFlags = permissionsState.getPermissionFlags(permissionName, userId2);
                    int newFlags2 = oldFlags;
                    int whitelistFlagsCopy = whitelistFlags;
                    int mask2 = 0;
                    while (true) {
                        updatePermissions = updatePermissions2;
                        if (whitelistFlagsCopy == 0) {
                            break;
                        }
                        int j3 = j2;
                        int j4 = 1 << Integer.numberOfTrailingZeros(whitelistFlagsCopy);
                        whitelistFlagsCopy &= ~j4;
                        if (j4 == 1) {
                            int mask3 = mask2 | 4096;
                            if (permissions != null && permissions.contains(permissionName)) {
                                newFlags2 |= 4096;
                                mask2 = mask3;
                            } else {
                                newFlags2 &= -4097;
                                mask2 = mask3;
                            }
                        } else if (j4 == 2) {
                            int mask4 = mask2 | 2048;
                            if (permissions != null && permissions.contains(permissionName)) {
                                newFlags2 |= 2048;
                                mask2 = mask4;
                            } else {
                                newFlags2 &= -2049;
                                mask2 = mask4;
                            }
                        } else if (j4 == 4) {
                            int mask5 = mask2 | 8192;
                            if (permissions != null && permissions.contains(permissionName)) {
                                newFlags2 |= 8192;
                                mask2 = mask5;
                            } else {
                                newFlags2 &= -8193;
                                mask2 = mask5;
                            }
                        }
                        updatePermissions2 = updatePermissions;
                        j2 = j3;
                    }
                    j = j2;
                    if (oldFlags == newFlags2) {
                        userId = userId2;
                    } else {
                        updatePermissions = true;
                        boolean wasWhitelisted = (oldFlags & 14336) != 0;
                        boolean updatePermissions3 = (newFlags2 & 14336) != 0;
                        boolean isWhitelisted = updatePermissions3;
                        if ((oldFlags & 4) != 0) {
                            boolean isGranted = permissionsState.hasPermission(permissionName, userId2);
                            if (!isWhitelisted && isGranted) {
                                mask2 |= 4;
                                newFlags2 &= -5;
                            }
                        }
                        if (pkg.getTargetSdkVersion() < 23 && !wasWhitelisted && isWhitelisted) {
                            newFlags = newFlags2 | 64;
                            mask = mask2 | 64;
                        } else {
                            newFlags = newFlags2;
                            mask = mask2;
                        }
                        userId = userId2;
                        updatePermissionFlagsInternal(permissionName, pkg.getPackageName(), mask, newFlags, callingUid, userId, false, null);
                    }
                }
                updatePermissions2 = updatePermissions;
                j2 = j + 1;
                i = i;
                permissionCount = permissionCount;
                userId2 = userId;
            }
            i++;
        }
        if (updatePermissions2) {
            restorePermissionState(pkg, false, pkg.getPackageName(), callback);
            int i2 = 0;
            while (i2 < userIds.length) {
                int userId3 = userIds[i2];
                ArraySet<String> oldPermsForUser = oldGrantedRestrictedPermissions.get(userId3);
                if (oldPermsForUser != null) {
                    int oldGrantedCount = oldPermsForUser.size();
                    for (int j5 = 0; j5 < oldGrantedCount; j5++) {
                        String permission = oldPermsForUser.valueAt(j5);
                        PermissionsState newPermissionsState = PackageManagerServiceUtils.getPermissionsState(this.mPackageManagerInt, pkg);
                        if (!newPermissionsState.hasPermission(permission, userId3)) {
                            callback.onPermissionRevoked(pkg.getUid(), userId3, null);
                            break;
                        }
                    }
                }
                i2++;
                updatePermissions2 = updatePermissions2;
            }
        }
    }

    private int[] revokeUnusedSharedUserPermissionsLocked(SharedUserSetting suSetting, int[] allUserIds) {
        char c;
        boolean z;
        boolean z2;
        char c2;
        BasePermission bp;
        PermissionManagerService permissionManagerService = this;
        ArraySet<String> usedPermissions = new ArraySet<>();
        List<AndroidPackage> pkgList = suSetting.getPackages();
        if (pkgList == null || pkgList.size() == 0) {
            return EmptyArray.INT;
        }
        for (AndroidPackage pkg : pkgList) {
            if (!pkg.getRequestedPermissions().isEmpty()) {
                int requestedPermCount = pkg.getRequestedPermissions().size();
                for (int j = 0; j < requestedPermCount; j++) {
                    String permission = pkg.getRequestedPermissions().get(j);
                    if (permissionManagerService.mSettings.getPermissionLocked(permission) != null) {
                        usedPermissions.add(permission);
                    }
                }
            }
        }
        PermissionsState permissionsState = suSetting.getPermissionsState();
        List<PermissionsState.PermissionState> installPermStates = permissionsState.getInstallPermissionStates();
        int installPermCount = installPermStates.size();
        int i = installPermCount - 1;
        while (true) {
            c = 64511;
            z = false;
            if (i < 0) {
                break;
            }
            PermissionsState.PermissionState permissionState = installPermStates.get(i);
            if (!usedPermissions.contains(permissionState.getName()) && (bp = permissionManagerService.mSettings.getPermissionLocked(permissionState.getName())) != null) {
                permissionsState.revokeInstallPermission(bp);
                permissionsState.updatePermissionFlags(bp, -1, 261119, 0);
            }
            i--;
        }
        int[] runtimePermissionChangedUserIds = EmptyArray.INT;
        int length = allUserIds.length;
        int i2 = 0;
        while (i2 < length) {
            int userId = allUserIds[i2];
            List<PermissionsState.PermissionState> runtimePermStates = permissionsState.getRuntimePermissionStates(userId);
            int runtimePermCount = runtimePermStates.size();
            int i3 = runtimePermCount - 1;
            while (i3 >= 0) {
                PermissionsState.PermissionState permissionState2 = runtimePermStates.get(i3);
                if (usedPermissions.contains(permissionState2.getName())) {
                    z2 = z;
                    c2 = 64511;
                } else {
                    BasePermission bp2 = permissionManagerService.mSettings.getPermissionLocked(permissionState2.getName());
                    if (bp2 == null) {
                        z2 = false;
                        c2 = 64511;
                    } else {
                        permissionsState.revokeRuntimePermission(bp2, userId);
                        z2 = false;
                        c2 = 64511;
                        permissionsState.updatePermissionFlags(bp2, userId, 261119, 0);
                        runtimePermissionChangedUserIds = ArrayUtils.appendInt(runtimePermissionChangedUserIds, userId);
                    }
                }
                i3--;
                c = c2;
                z = z2;
                permissionManagerService = this;
            }
            i2++;
            z = z;
            permissionManagerService = this;
        }
        return runtimePermissionChangedUserIds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePermissions(String packageName, AndroidPackage pkg, PermissionManagerServiceInternal.PermissionCallback callback) throws Throwable {
        int flags = pkg == null ? 3 : 2;
        updatePermissions(packageName, pkg, getVolumeUuidForPackage(pkg), flags, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAllPermissions(String volumeUuid, boolean sdkUpdated, PermissionManagerServiceInternal.PermissionCallback callback) {
        int i;
        PackageManager.corkPackageInfoCache();
        if (sdkUpdated) {
            i = 6;
        } else {
            i = 0;
        }
        int flags = 1 | i;
        try {
            updatePermissions(null, null, volumeUuid, flags, callback);
        } finally {
            PackageManager.uncorkPackageInfoCache();
        }
    }

    private void cacheBackgroundToForegoundPermissionMapping() {
        synchronized (this.mLock) {
            if (this.mBackgroundPermissions == null) {
                this.mBackgroundPermissions = new ArrayMap<>();
                for (BasePermission bp : this.mSettings.getAllPermissionsLocked()) {
                    if (bp.perm != null && bp.perm.getBackgroundPermission() != null) {
                        String fgPerm = bp.name;
                        String bgPerm = bp.perm.getBackgroundPermission();
                        List<String> fgPerms = this.mBackgroundPermissions.get(bgPerm);
                        if (fgPerms == null) {
                            fgPerms = new ArrayList();
                            this.mBackgroundPermissions.put(bgPerm, fgPerms);
                        }
                        fgPerms.add(fgPerm);
                    }
                }
            }
        }
    }

    private void updatePermissions(final String changingPkgName, final AndroidPackage changingPkg, final String replaceVolumeUuid, int flags, final PermissionManagerServiceInternal.PermissionCallback callback) throws Throwable {
        int flags2;
        boolean permissionTreesSourcePackageChanged = updatePermissionTreeSourcePackage(changingPkgName, changingPkg);
        boolean permissionSourcePackageChanged = updatePermissionSourcePackage(changingPkgName, changingPkg, callback);
        if (!(permissionTreesSourcePackageChanged | permissionSourcePackageChanged)) {
            flags2 = flags;
        } else {
            Slog.i(TAG, "Permission ownership changed. Updating all permissions.");
            flags2 = flags | 1;
        }
        cacheBackgroundToForegoundPermissionMapping();
        Trace.traceBegin(262144L, "restorePermissionState");
        boolean z = false;
        if ((flags2 & 1) != 0) {
            final boolean replaceAll = (flags2 & 4) != 0;
            this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws Throwable {
                    this.f$0.lambda$updatePermissions$11$PermissionManagerService(changingPkg, replaceAll, replaceVolumeUuid, changingPkgName, callback, (AndroidPackage) obj);
                }
            });
        }
        if (changingPkg != null) {
            String volumeUuid = getVolumeUuidForPackage(changingPkg);
            if ((flags2 & 2) != 0 && Objects.equals(replaceVolumeUuid, volumeUuid)) {
                z = true;
            }
            boolean replace = z;
            restorePermissionState(changingPkg, replace, changingPkgName, callback);
        }
        Trace.traceEnd(262144L);
    }

    public /* synthetic */ void lambda$updatePermissions$11$PermissionManagerService(AndroidPackage changingPkg, boolean replaceAll, String replaceVolumeUuid, String changingPkgName, PermissionManagerServiceInternal.PermissionCallback callback, AndroidPackage pkg) throws Throwable {
        if (pkg == changingPkg) {
            return;
        }
        String volumeUuid = getVolumeUuidForPackage(pkg);
        boolean replace = replaceAll && Objects.equals(replaceVolumeUuid, volumeUuid);
        restorePermissionState(pkg, replace, changingPkgName, callback);
    }

    private boolean updatePermissionSourcePackage(String packageName, AndroidPackage pkg, final PermissionManagerServiceInternal.PermissionCallback callback) {
        if (packageName == null) {
            return true;
        }
        boolean changed = false;
        Set<BasePermission> needsUpdate = null;
        synchronized (this.mLock) {
            Iterator<BasePermission> it = this.mSettings.mPermissions.values().iterator();
            while (it.hasNext()) {
                final BasePermission bp = it.next();
                if (bp.isDynamic()) {
                    bp.updateDynamicPermission(this.mSettings.mPermissionTrees.values());
                }
                if (packageName.equals(bp.getSourcePackageName())) {
                    changed = true;
                    if (pkg == null || !hasPermission(pkg, bp.getName())) {
                        Slog.i(TAG, "Removing permission " + bp.getName() + " that used to be declared by " + bp.getSourcePackageName());
                        if (bp.isRuntime()) {
                            int[] userIds = this.mUserManagerInt.getUserIds();
                            for (final int userId : userIds) {
                                this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        this.f$0.lambda$updatePermissionSourcePackage$12$PermissionManagerService(bp, userId, callback, (AndroidPackage) obj);
                                    }
                                });
                            }
                        } else {
                            this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    this.f$0.lambda$updatePermissionSourcePackage$13$PermissionManagerService(bp, (AndroidPackage) obj);
                                }
                            });
                        }
                        it.remove();
                    }
                    if (needsUpdate == null) {
                        needsUpdate = new ArraySet<>(this.mSettings.mPermissions.size());
                    }
                    needsUpdate.add(bp);
                }
            }
        }
        if (needsUpdate != null) {
            for (BasePermission bp2 : needsUpdate) {
                AndroidPackage sourcePkg = this.mPackageManagerInt.getPackage(bp2.getSourcePackageName());
                PackageSetting sourcePs = this.mPackageManagerInt.getPackageSetting(bp2.getSourcePackageName());
                synchronized (this.mLock) {
                    if (sourcePkg == null || sourcePs == null) {
                        Slog.w(TAG, "Removing dangling permission: " + bp2.getName() + " from package " + bp2.getSourcePackageName());
                        this.mSettings.removePermissionLocked(bp2.getName());
                    }
                }
            }
        }
        return changed;
    }

    public /* synthetic */ void lambda$updatePermissionSourcePackage$12$PermissionManagerService(BasePermission bp, int userId, PermissionManagerServiceInternal.PermissionCallback callback, AndroidPackage p) {
        revokePermissionFromPackageForUser(p.getPackageName(), bp.getName(), true, userId, callback);
    }

    public /* synthetic */ void lambda$updatePermissionSourcePackage$13$PermissionManagerService(BasePermission bp, AndroidPackage p) {
        PackageSetting ps = this.mPackageManagerInt.getPackageSetting(p.getPackageName());
        if (ps == null) {
            return;
        }
        PermissionsState permissionsState = ps.getPermissionsState();
        if (permissionsState.getInstallPermissionState(bp.getName()) != null) {
            permissionsState.revokeInstallPermission(bp);
            permissionsState.updatePermissionFlags(bp, -1, 261119, 0);
        }
    }

    private void revokePermissionFromPackageForUser(String pName, String permissionName, boolean overridePolicy, int userId, PermissionManagerServiceInternal.PermissionCallback callback) {
        ApplicationInfo appInfo = this.mPackageManagerInt.getApplicationInfo(pName, 0, 1000, 0);
        if ((appInfo == null || appInfo.targetSdkVersion >= 23) && checkPermissionImpl(permissionName, pName, userId) == 0) {
            try {
                revokeRuntimePermissionInternal(permissionName, pName, overridePolicy, 1000, userId, null, callback);
            } catch (IllegalArgumentException e) {
                Slog.e(TAG, "Failed to revoke " + permissionName + " from " + pName, e);
            }
        }
    }

    private boolean updatePermissionTreeSourcePackage(String packageName, AndroidPackage pkg) {
        if (packageName == null) {
            return true;
        }
        boolean changed = false;
        Set<BasePermission> needsUpdate = null;
        synchronized (this.mLock) {
            Iterator<BasePermission> it = this.mSettings.mPermissionTrees.values().iterator();
            while (it.hasNext()) {
                BasePermission bp = it.next();
                if (packageName.equals(bp.getSourcePackageName())) {
                    changed = true;
                    if (pkg == null || !hasPermission(pkg, bp.getName())) {
                        Slog.i(TAG, "Removing permission tree " + bp.getName() + " that used to be declared by " + bp.getSourcePackageName());
                        it.remove();
                    }
                    if (needsUpdate == null) {
                        needsUpdate = new ArraySet<>(this.mSettings.mPermissionTrees.size());
                    }
                    needsUpdate.add(bp);
                }
            }
        }
        if (needsUpdate != null) {
            for (BasePermission bp2 : needsUpdate) {
                AndroidPackage sourcePkg = this.mPackageManagerInt.getPackage(bp2.getSourcePackageName());
                PackageSetting sourcePs = this.mPackageManagerInt.getPackageSetting(bp2.getSourcePackageName());
                synchronized (this.mLock) {
                    if (sourcePkg == null || sourcePs == null) {
                        Slog.w(TAG, "Removing dangling permission tree: " + bp2.getName() + " from package " + bp2.getSourcePackageName());
                        this.mSettings.removePermissionLocked(bp2.getName());
                    }
                }
            }
        }
        return changed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceGrantRevokeRuntimePermissionPermissions(String message) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.GRANT_RUNTIME_PERMISSIONS") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.REVOKE_RUNTIME_PERMISSIONS") != 0) {
            throw new SecurityException(message + " requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS");
        }
    }

    private void enforceGrantRevokeGetRuntimePermissionPermissions(String message) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.GET_RUNTIME_PERMISSIONS") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.GRANT_RUNTIME_PERMISSIONS") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.REVOKE_RUNTIME_PERMISSIONS") != 0) {
            throw new SecurityException(message + " requires android.permission.GRANT_RUNTIME_PERMISSIONS or android.permission.REVOKE_RUNTIME_PERMISSIONS or android.permission.GET_RUNTIME_PERMISSIONS");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceCrossUserPermission(int callingUid, int userId, boolean requireFullPermission, boolean checkShell, boolean requirePermissionWhenSameUser, String message) {
        if (userId < 0) {
            throw new IllegalArgumentException("Invalid userId " + userId);
        }
        if (checkShell) {
            PackageManagerServiceUtils.enforceShellRestriction(this.mUserManagerInt, "no_debugging_features", callingUid, userId);
        }
        int callingUserId = UserHandle.getUserId(callingUid);
        if (hasCrossUserPermission(callingUid, callingUserId, userId, requireFullPermission, requirePermissionWhenSameUser)) {
            return;
        }
        String errorMessage = buildInvalidCrossUserPermissionMessage(message, requireFullPermission);
        Slog.w(TAG, errorMessage);
        throw new SecurityException(errorMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceCrossUserOrProfilePermission(int callingUid, int userId, boolean requireFullPermission, boolean checkShell, String message) {
        if (userId < 0) {
            throw new IllegalArgumentException("Invalid userId " + userId);
        }
        if (checkShell) {
            PackageManagerServiceUtils.enforceShellRestriction(this.mUserManagerInt, "no_debugging_features", callingUid, userId);
        }
        int callingUserId = UserHandle.getUserId(callingUid);
        if (hasCrossUserPermission(callingUid, callingUserId, userId, requireFullPermission, false)) {
            return;
        }
        boolean isSameProfileGroup = isSameProfileGroup(callingUserId, userId);
        if (isSameProfileGroup && PermissionChecker.checkPermissionForPreflight(this.mContext, "android.permission.INTERACT_ACROSS_PROFILES", -1, callingUid, this.mPackageManagerInt.getPackage(callingUid).getPackageName()) == 0) {
            return;
        }
        String errorMessage = buildInvalidCrossUserOrProfilePermissionMessage(message, requireFullPermission, isSameProfileGroup);
        Slog.w(TAG, errorMessage);
        throw new SecurityException(errorMessage);
    }

    private boolean hasCrossUserPermission(int callingUid, int callingUserId, int userId, boolean requireFullPermission, boolean requirePermissionWhenSameUser) {
        if ((!requirePermissionWhenSameUser && userId == callingUserId) || callingUid == 1000 || callingUid == 0) {
            return true;
        }
        if (requireFullPermission) {
            return hasPermission("android.permission.INTERACT_ACROSS_USERS_FULL");
        }
        return hasPermission("android.permission.INTERACT_ACROSS_USERS_FULL") || hasPermission("android.permission.INTERACT_ACROSS_USERS");
    }

    private boolean hasPermission(String permission) {
        return this.mContext.checkCallingOrSelfPermission(permission) == 0;
    }

    private boolean isSameProfileGroup(int callerUserId, int userId) {
        long identity = Binder.clearCallingIdentity();
        try {
            return UserManagerService.getInstance().isSameProfileGroup(callerUserId, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private static String buildInvalidCrossUserPermissionMessage(String message, boolean requireFullPermission) {
        StringBuilder builder = new StringBuilder();
        if (message != null) {
            builder.append(message);
            builder.append(": ");
        }
        builder.append("Requires ");
        builder.append("android.permission.INTERACT_ACROSS_USERS_FULL");
        if (requireFullPermission) {
            builder.append(".");
            return builder.toString();
        }
        builder.append(" or ");
        builder.append("android.permission.INTERACT_ACROSS_USERS");
        builder.append(".");
        return builder.toString();
    }

    private static String buildInvalidCrossUserOrProfilePermissionMessage(String message, boolean requireFullPermission, boolean isSameProfileGroup) {
        StringBuilder builder = new StringBuilder();
        if (message != null) {
            builder.append(message);
            builder.append(": ");
        }
        builder.append("Requires ");
        builder.append("android.permission.INTERACT_ACROSS_USERS_FULL");
        if (requireFullPermission) {
            builder.append(".");
            return builder.toString();
        }
        builder.append(" or ");
        builder.append("android.permission.INTERACT_ACROSS_USERS");
        if (isSameProfileGroup) {
            builder.append(" or ");
            builder.append("android.permission.INTERACT_ACROSS_PROFILES");
        }
        builder.append(".");
        return builder.toString();
    }

    private int calculateCurrentPermissionFootprintLocked(BasePermission tree) {
        int size = 0;
        for (BasePermission perm : this.mSettings.mPermissions.values()) {
            size += tree.calculateFootprint(perm);
        }
        return size;
    }

    private void enforcePermissionCapLocked(PermissionInfo info, BasePermission tree) {
        if (tree.getUid() != 1000) {
            int curTreeSize = calculateCurrentPermissionFootprintLocked(tree);
            if (info.calculateFootprint() + curTreeSize > 32768) {
                throw new SecurityException("Permission tree size cap exceeded");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void systemReady() {
        this.mSystemReady = true;
        if (this.mPrivappPermissionsViolations != null) {
            throw new IllegalStateException("Signature|privileged permissions not in privapp-permissions whitelist: " + this.mPrivappPermissionsViolations);
        }
        this.mPermissionControllerManager = (PermissionControllerManager) this.mContext.getSystemService(PermissionControllerManager.class);
        this.mPermissionPolicyInternal = (PermissionPolicyInternal) LocalServices.getService(PermissionPolicyInternal.class);
        int[] grantPermissionsUserIds = EMPTY_INT_ARRAY;
        for (int userId : UserManagerService.getInstance().getUserIds()) {
            if (this.mPackageManagerInt.isPermissionUpgradeNeeded(userId)) {
                grantPermissionsUserIds = ArrayUtils.appendInt(grantPermissionsUserIds, userId);
            }
        }
        for (int i : grantPermissionsUserIds) {
            this.mDefaultPermissionGrantPolicy.grantDefaultPermissions(i);
        }
        if (grantPermissionsUserIds == EMPTY_INT_ARRAY) {
            this.mDefaultPermissionGrantPolicy.scheduleReadDefaultPermissionExceptions();
        }
    }

    private static String getVolumeUuidForPackage(AndroidPackage pkg) {
        if (pkg == null) {
            return StorageManager.UUID_PRIVATE_INTERNAL;
        }
        if (pkg.isExternalStorage()) {
            if (TextUtils.isEmpty(pkg.getVolumeUuid())) {
                return "primary_physical";
            }
            return pkg.getVolumeUuid();
        }
        return StorageManager.UUID_PRIVATE_INTERNAL;
    }

    private static boolean hasPermission(AndroidPackage pkg, String permName) {
        if (pkg.getPermissions().isEmpty()) {
            return false;
        }
        for (int i = pkg.getPermissions().size() - 1; i >= 0; i--) {
            if (pkg.getPermissions().get(i).getName().equals(permName)) {
                return true;
            }
        }
        return false;
    }

    private void logPermission(int action, String name, String packageName) {
        LogMaker log = new LogMaker(action);
        log.setPackageName(packageName);
        log.addTaggedData(1241, name);
        this.mMetricsLogger.write(log);
    }

    public ArrayMap<String, List<String>> getBackgroundPermissions() {
        return this.mBackgroundPermissions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PermissionManagerServiceInternalImpl extends PermissionManagerServiceInternal {
        private PermissionManagerServiceInternalImpl() {
        }

        /* synthetic */ PermissionManagerServiceInternalImpl(PermissionManagerService x0, AnonymousClass1 x1) {
            this();
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void systemReady() {
            PermissionManagerService.this.systemReady();
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public boolean isPermissionsReviewRequired(AndroidPackage pkg, int userId) {
            return PermissionManagerService.this.isPermissionsReviewRequired(pkg, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void onPackageUpdated(AndroidPackage newPackage, AndroidPackage oldPackage, ArrayList<String> allPackageNames) {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.revokeStoragePermissionsIfScopeExpanded(newPackage, oldPackage, permissionManagerService.mDefaultPermissionCallback);
            PermissionManagerService permissionManagerService2 = PermissionManagerService.this;
            permissionManagerService2.revokeSystemAlertWindowIfUpgradedPast23(newPackage, oldPackage, permissionManagerService2.mDefaultPermissionCallback);
            PermissionManagerService permissionManagerService3 = PermissionManagerService.this;
            permissionManagerService3.revokeRuntimePermissionsIfGroupChanged(newPackage, oldPackage, allPackageNames, permissionManagerService3.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void revokeRuntimePermissionsIfPermissionDefinitionChanged(List<String> permissionsToRevoke, ArrayList<String> allPackageNames) {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.revokeRuntimePermissionsIfPermissionDefinitionChanged(permissionsToRevoke, allPackageNames, permissionManagerService.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public List<String> addAllPermissions(AndroidPackage pkg, boolean chatty) {
            return PermissionManagerService.this.addAllPermissions(pkg, chatty);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void addAllPermissionGroups(AndroidPackage pkg, boolean chatty) {
            PermissionManagerService.this.addAllPermissionGroups(pkg, chatty);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void removeAllPermissions(AndroidPackage pkg, boolean chatty) {
            PermissionManagerService.this.removeAllPermissions(pkg, chatty);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void grantRequestedRuntimePermissions(AndroidPackage pkg, int[] userIds, String[] grantedPermissions, int callingUid) throws Throwable {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.grantRequestedRuntimePermissions(pkg, userIds, grantedPermissions, callingUid, permissionManagerService.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setWhitelistedRestrictedPermissions(AndroidPackage pkg, int[] userIds, List<String> permissions, int callingUid, int flags) throws Throwable {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.setWhitelistedRestrictedPermissionsForUsers(pkg, userIds, permissions, callingUid, flags, permissionManagerService.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setWhitelistedRestrictedPermissions(String packageName, List<String> permissions, int flags, int userId) {
            PermissionManagerService.this.setWhitelistedRestrictedPermissionsInternal(packageName, permissions, flags, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setAutoRevokeWhitelisted(String packageName, boolean whitelisted, int userId) {
            PermissionManagerService.this.setAutoRevokeWhitelisted(packageName, whitelisted, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void updatePermissions(String packageName, AndroidPackage pkg) throws Throwable {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.updatePermissions(packageName, pkg, permissionManagerService.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void updateAllPermissions(String volumeUuid, boolean sdkUpdated) {
            PermissionManagerService permissionManagerService = PermissionManagerService.this;
            permissionManagerService.updateAllPermissions(volumeUuid, sdkUpdated, permissionManagerService.mDefaultPermissionCallback);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void resetRuntimePermissions(AndroidPackage pkg, int userId) throws Throwable {
            PermissionManagerService.this.lambda$resetRuntimePermissions$1$PermissionManagerService(pkg, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void resetAllRuntimePermissions(final int userId) {
            PermissionManagerService.this.mPackageManagerInt.forEachPackage(new Consumer() { // from class: com.android.server.pm.permission.-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws Throwable {
                    this.f$0.lambda$resetAllRuntimePermissions$0$PermissionManagerService$PermissionManagerServiceInternalImpl(userId, (AndroidPackage) obj);
                }
            });
        }

        public /* synthetic */ void lambda$resetAllRuntimePermissions$0$PermissionManagerService$PermissionManagerServiceInternalImpl(int userId, AndroidPackage pkg) throws Throwable {
            PermissionManagerService.this.lambda$resetRuntimePermissions$1$PermissionManagerService(pkg, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public String[] getAppOpPermissionPackages(String permName, int callingUid) {
            return PermissionManagerService.this.getAppOpPermissionPackagesInternal(permName, callingUid);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void enforceCrossUserPermission(int callingUid, int userId, boolean requireFullPermission, boolean checkShell, String message) {
            PermissionManagerService.this.enforceCrossUserPermission(callingUid, userId, requireFullPermission, checkShell, false, message);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void enforceCrossUserPermission(int callingUid, int userId, boolean requireFullPermission, boolean checkShell, boolean requirePermissionWhenSameUser, String message) {
            PermissionManagerService.this.enforceCrossUserPermission(callingUid, userId, requireFullPermission, checkShell, requirePermissionWhenSameUser, message);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void enforceCrossUserOrProfilePermission(int callingUid, int userId, boolean requireFullPermission, boolean checkShell, String message) {
            PermissionManagerService.this.enforceCrossUserOrProfilePermission(callingUid, userId, requireFullPermission, checkShell, message);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void enforceGrantRevokeRuntimePermissionPermissions(String message) {
            PermissionManagerService.this.enforceGrantRevokeRuntimePermissionPermissions(message);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public PermissionSettings getPermissionSettings() {
            return PermissionManagerService.this.mSettings;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public BasePermission getPermissionTEMP(String permName) {
            BasePermission permissionLocked;
            synchronized (PermissionManagerService.this.mLock) {
                permissionLocked = PermissionManagerService.this.mSettings.getPermissionLocked(permName);
            }
            return permissionLocked;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public ArrayList<PermissionInfo> getAllPermissionsWithProtection(int protection) {
            ArrayList<PermissionInfo> matchingPermissions = new ArrayList<>();
            synchronized (PermissionManagerService.this.mLock) {
                int numTotalPermissions = PermissionManagerService.this.mSettings.mPermissions.size();
                for (int i = 0; i < numTotalPermissions; i++) {
                    BasePermission bp = PermissionManagerService.this.mSettings.mPermissions.valueAt(i);
                    if (bp.perm != null && bp.perm.getProtection() == protection) {
                        matchingPermissions.add(PackageInfoUtils.generatePermissionInfo(bp.perm, 0));
                    }
                }
            }
            return matchingPermissions;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public ArrayList<PermissionInfo> getAllPermissionsWithProtectionFlags(int protectionFlags) {
            ArrayList<PermissionInfo> matchingPermissions = new ArrayList<>();
            synchronized (PermissionManagerService.this.mLock) {
                int numTotalPermissions = PermissionManagerService.this.mSettings.mPermissions.size();
                for (int i = 0; i < numTotalPermissions; i++) {
                    BasePermission bp = PermissionManagerService.this.mSettings.mPermissions.valueAt(i);
                    if (bp.perm != null && (bp.perm.getProtectionFlags() & protectionFlags) == protectionFlags) {
                        matchingPermissions.add(PackageInfoUtils.generatePermissionInfo(bp.perm, 0));
                    }
                }
            }
            return matchingPermissions;
        }

        public byte[] backupRuntimePermissions(UserHandle user) {
            return PermissionManagerService.this.backupRuntimePermissions(user);
        }

        public void restoreRuntimePermissions(byte[] backup, UserHandle user) {
            PermissionManagerService.this.restoreRuntimePermissions(backup, user);
        }

        public void restoreDelayedRuntimePermissions(String packageName, UserHandle user) {
            PermissionManagerService.this.restoreDelayedRuntimePermissions(packageName, user);
        }

        public void addOnRuntimePermissionStateChangedListener(PermissionManagerInternal.OnRuntimePermissionStateChangedListener listener) {
            PermissionManagerService.this.addOnRuntimePermissionStateChangedListener(listener);
        }

        public void removeOnRuntimePermissionStateChangedListener(PermissionManagerInternal.OnRuntimePermissionStateChangedListener listener) {
            PermissionManagerService.this.removeOnRuntimePermissionStateChangedListener(listener);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public PermissionManagerInternal.CheckPermissionDelegate getCheckPermissionDelegate() {
            PermissionManagerInternal.CheckPermissionDelegate checkPermissionDelegate;
            synchronized (PermissionManagerService.this.mLock) {
                checkPermissionDelegate = PermissionManagerService.this.mCheckPermissionDelegate;
            }
            return checkPermissionDelegate;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0011 A[Catch: all -> 0x001b, TryCatch #0 {, blocks: (B:5:0x0009, B:8:0x0014, B:9:0x0019, B:7:0x0011), top: B:14:0x0009 }] */
        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setCheckPermissionDelegate(PermissionManagerInternal.CheckPermissionDelegate delegate) {
            synchronized (PermissionManagerService.this.mLock) {
                if (delegate == null) {
                    if (PermissionManagerService.this.mCheckPermissionDelegate != null) {
                        PackageManager.invalidatePackageInfoCache();
                    }
                    PermissionManagerService.this.mCheckPermissionDelegate = delegate;
                } else {
                    PackageManager.invalidatePackageInfoCache();
                    PermissionManagerService.this.mCheckPermissionDelegate = delegate;
                }
                throw th;
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDefaultBrowserProvider(PermissionManagerServiceInternal.DefaultBrowserProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultBrowserProvider = provider;
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDefaultBrowser(String packageName, boolean async, boolean doGrant, int userId) {
            PermissionManagerService.this.setDefaultBrowserInternal(packageName, async, doGrant, userId);
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDefaultDialerProvider(PermissionManagerServiceInternal.DefaultDialerProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultDialerProvider = provider;
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDefaultHomeProvider(PermissionManagerServiceInternal.DefaultHomeProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultHomeProvider = provider;
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDefaultHome(String packageName, int userId, Consumer<Boolean> callback) {
            PermissionManagerServiceInternal.DefaultHomeProvider provider;
            if (userId != -1) {
                synchronized (PermissionManagerService.this.mLock) {
                    provider = PermissionManagerService.this.mDefaultHomeProvider;
                }
                if (provider == null) {
                    return;
                }
                provider.setDefaultHomeAsync(packageName, userId, callback);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setDialerAppPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setDialerAppPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setLocationExtraPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setLocationExtraPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setLocationPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setLocationPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setSimCallManagerPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setSimCallManagerPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setSmsAppPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setSmsAppPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setSyncAdapterPackagesProvider(PermissionManagerServiceInternal.SyncAdapterPackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setSyncAdapterPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setUseOpenWifiAppPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setUseOpenWifiAppPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void setVoiceInteractionPackagesProvider(PermissionManagerServiceInternal.PackagesProvider provider) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.setVoiceInteractionPackagesProvider(provider);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public String getDefaultBrowser(int userId) {
            PermissionManagerServiceInternal.DefaultBrowserProvider provider;
            synchronized (PermissionManagerService.this.mLock) {
                provider = PermissionManagerService.this.mDefaultBrowserProvider;
            }
            if (provider != null) {
                return provider.getDefaultBrowser(userId);
            }
            return null;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public String getDefaultDialer(int userId) {
            PermissionManagerServiceInternal.DefaultDialerProvider provider;
            synchronized (PermissionManagerService.this.mLock) {
                provider = PermissionManagerService.this.mDefaultDialerProvider;
            }
            if (provider != null) {
                return provider.getDefaultDialer(userId);
            }
            return null;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public String getDefaultHome(int userId) {
            PermissionManagerServiceInternal.DefaultHomeProvider provider;
            synchronized (PermissionManagerService.this.mLock) {
                provider = PermissionManagerService.this.mDefaultHomeProvider;
            }
            if (provider != null) {
                return provider.getDefaultHome(userId);
            }
            return null;
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void grantDefaultPermissionsToDefaultSimCallManager(String packageName, int userId) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToDefaultSimCallManager(packageName, userId);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void grantDefaultPermissionsToDefaultUseOpenWifiApp(String packageName, int userId) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToDefaultUseOpenWifiApp(packageName, userId);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void grantDefaultPermissionsToDefaultBrowser(String packageName, int userId) {
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.mDefaultPermissionGrantPolicy.grantDefaultPermissionsToDefaultBrowser(packageName, userId);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void onNewUserCreated(int userId) {
            PermissionManagerService.this.mDefaultPermissionGrantPolicy.grantDefaultPermissions(userId);
            synchronized (PermissionManagerService.this.mLock) {
                PermissionManagerService.this.updateAllPermissions(StorageManager.UUID_PRIVATE_INTERNAL, true, PermissionManagerService.this.mDefaultPermissionCallback);
            }
        }

        @Override // com.android.server.pm.permission.PermissionManagerServiceInternal
        public void retainHardAndSoftRestrictedPermissions(List<String> permissions) {
            synchronized (PermissionManagerService.this.mLock) {
                Iterator<String> iterator = permissions.iterator();
                while (iterator.hasNext()) {
                    String permission = iterator.next();
                    BasePermission basePermission = PermissionManagerService.this.mSettings.mPermissions.get(permission);
                    if (basePermission == null || !basePermission.isHardOrSoftRestricted()) {
                        iterator.remove();
                    }
                }
            }
        }
    }

    private static final class OnPermissionChangeListeners extends Handler {
        private static final int MSG_ON_PERMISSIONS_CHANGED = 1;
        private final RemoteCallbackList<IOnPermissionsChangeListener> mPermissionListeners;

        OnPermissionChangeListeners(Looper looper) {
            super(looper);
            this.mPermissionListeners = new RemoteCallbackList<>();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                int uid = msg.arg1;
                handleOnPermissionsChanged(uid);
            }
        }

        public void addListenerLocked(IOnPermissionsChangeListener listener) {
            this.mPermissionListeners.register(listener);
        }

        public void removeListenerLocked(IOnPermissionsChangeListener listener) {
            this.mPermissionListeners.unregister(listener);
        }

        public void onPermissionsChanged(int uid) {
            if (this.mPermissionListeners.getRegisteredCallbackCount() > 0) {
                obtainMessage(1, uid, 0).sendToTarget();
            }
        }

        private void handleOnPermissionsChanged(int uid) {
            int count = this.mPermissionListeners.beginBroadcast();
            for (int i = 0; i < count; i++) {
                try {
                    IOnPermissionsChangeListener callback = this.mPermissionListeners.getBroadcastItem(i);
                    try {
                        callback.onPermissionsChanged(uid);
                    } catch (RemoteException e) {
                        Log.e(PermissionManagerService.TAG, "Permission listener is dead", e);
                    }
                } catch (Throwable th) {
                    this.mPermissionListeners.finishBroadcast();
                    throw th;
                }
            }
            this.mPermissionListeners.finishBroadcast();
        }
    }

    public static class Injector {
        private final Context mContext;

        public Injector(Context context) {
            this.mContext = context;
        }

        public int getCallingUid() {
            return Binder.getCallingUid();
        }

        public int getCallingPid() {
            return Binder.getCallingPid();
        }

        public void invalidatePackageInfoCache() {
            PackageManager.invalidatePackageInfoCache();
        }

        public void disablePermissionCache() {
            PermissionManager.disablePermissionCache();
        }

        public void disablePackageNamePermissionCache() {
            PermissionManager.disablePackageNamePermissionCache();
        }

        public int checkPermission(String permission, int pid, int uid) {
            return this.mContext.checkPermission(permission, pid, uid);
        }

        public long clearCallingIdentity() {
            return Binder.clearCallingIdentity();
        }

        public void restoreCallingIdentity(long token) {
            Binder.restoreCallingIdentity(token);
        }

        public Object getSystemService(String name) {
            return this.mContext.getSystemService(name);
        }
    }
}
