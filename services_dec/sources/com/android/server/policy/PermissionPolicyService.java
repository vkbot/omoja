package com.android.server.policy;

import android.app.AppOpsManager;
import android.app.AppOpsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PermissionInfo;
import android.os.Handler;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.permission.PermissionControllerManager;
import android.permission.PermissionManagerInternal;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.LongSparseLongArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseBooleanArray;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import com.android.internal.infra.AndroidFuture;
import com.android.internal.util.IntPair;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.pm.Settings;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class PermissionPolicyService extends SystemService {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = PermissionPolicyService.class.getSimpleName();
    private static final long USER_SENSITIVE_UPDATE_DELAY_MS = 60000;
    private List<String> mAppOpPermissions;
    private IAppOpsCallback mAppOpsCallback;
    private final ArraySet<Pair<String, Integer>> mIsPackageSyncsScheduled;
    private final SparseBooleanArray mIsStarted;
    private final SparseBooleanArray mIsUidSyncScheduled;
    private final Object mLock;
    private PermissionPolicyInternal.OnInitializedCallback mOnInitializedCallback;

    public PermissionPolicyService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mIsStarted = new SparseBooleanArray();
        this.mIsPackageSyncsScheduled = new ArraySet<>();
        this.mIsUidSyncScheduled = new SparseBooleanArray();
        LocalServices.addService(PermissionPolicyInternal.class, new Internal());
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d0  */
    @Override // com.android.server.SystemService
    public void onStart() {
        byte b;
        Object obj;
        final PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        IAppOpsService appOpsService = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        packageManagerInternal.getPackageList(new PackageManagerInternal.PackageListObserver() { // from class: com.android.server.policy.PermissionPolicyService.1
            @Override // android.content.pm.PackageManagerInternal.PackageListObserver
            public void onPackageAdded(String packageName, int uid) {
                int userId = UserHandle.getUserId(uid);
                if (PermissionPolicyService.this.isStarted(userId)) {
                    PermissionPolicyService.this.synchronizePackagePermissionsAndAppOpsForUser(packageName, userId);
                }
            }

            @Override // android.content.pm.PackageManagerInternal.PackageListObserver
            public void onPackageChanged(String packageName, int uid) {
                int userId = UserHandle.getUserId(uid);
                if (PermissionPolicyService.this.isStarted(userId)) {
                    PermissionPolicyService.this.synchronizePackagePermissionsAndAppOpsForUser(packageName, userId);
                    PermissionPolicyService.this.resetAppOpPermissionsIfNotRequestedForUid(uid);
                }
            }

            @Override // android.content.pm.PackageManagerInternal.PackageListObserver
            public void onPackageRemoved(String packageName, int uid) {
                int userId = UserHandle.getUserId(uid);
                if (PermissionPolicyService.this.isStarted(userId)) {
                    PermissionPolicyService.this.resetAppOpPermissionsIfNotRequestedForUid(uid);
                }
            }
        });
        permissionManagerInternal.addOnRuntimePermissionStateChangedListener(new PermissionManagerInternal.OnRuntimePermissionStateChangedListener() { // from class: com.android.server.policy.-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc
            public final void onRuntimePermissionStateChanged(String str, int i) {
                this.f$0.synchronizePackagePermissionsAndAppOpsAsyncForUser(str, i);
            }
        });
        this.mAppOpsCallback = new IAppOpsCallback.Stub() { // from class: com.android.server.policy.PermissionPolicyService.2
            public void opChanged(int op, int uid, String packageName) {
                PermissionPolicyService.this.synchronizePackagePermissionsAndAppOpsAsyncForUser(packageName, UserHandle.getUserId(uid));
                PermissionPolicyService.this.resetAppOpPermissionsIfNotRequestedForUidAsync(uid);
            }
        };
        ArrayList<PermissionInfo> dangerousPerms = permissionManagerInternal.getAllPermissionsWithProtection(1);
        try {
            int numDangerousPerms = dangerousPerms.size();
            for (int i = 0; i < numDangerousPerms; i++) {
                PermissionInfo perm = dangerousPerms.get(i);
                if (perm.isRuntime()) {
                    appOpsService.startWatchingMode(getSwitchOp(perm.name), (String) null, this.mAppOpsCallback);
                }
                if (perm.isSoftRestricted()) {
                    SoftRestrictedPermissionPolicy policy = SoftRestrictedPermissionPolicy.forPermission(null, null, null, null, perm.name);
                    int extraAppOp = policy.getExtraAppOpCode();
                    if (extraAppOp != -1) {
                        appOpsService.startWatchingMode(extraAppOp, (String) null, this.mAppOpsCallback);
                    }
                }
            }
        } catch (RemoteException e) {
            Slog.wtf(LOG_TAG, "Cannot set up app-ops listener");
        }
        List<PermissionInfo> appOpPermissionInfos = permissionManagerInternal.getAllPermissionsWithProtectionFlags(64);
        this.mAppOpPermissions = new ArrayList();
        int appOpPermissionInfosSize = appOpPermissionInfos.size();
        for (int i2 = 0; i2 < appOpPermissionInfosSize; i2++) {
            PermissionInfo appOpPermissionInfo = appOpPermissionInfos.get(i2);
            String str = appOpPermissionInfo.name;
            int iHashCode = str.hashCode();
            if (iHashCode != 309844284) {
                if (iHashCode != 1353874541) {
                    if (iHashCode == 1777263169 && str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                } else if (str.equals("android.permission.ACCESS_NOTIFICATIONS")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals("android.permission.MANAGE_IPSEC_TUNNELS")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0 || b == 1) {
                obj = null;
            } else if (b == 2) {
                obj = null;
            } else {
                int appOpCode = AppOpsManager.permissionToOpCode(appOpPermissionInfo.name);
                if (appOpCode == -1) {
                    obj = null;
                } else {
                    this.mAppOpPermissions.add(appOpPermissionInfo.name);
                    try {
                        obj = null;
                        try {
                            appOpsService.startWatchingMode(appOpCode, (String) null, this.mAppOpsCallback);
                        } catch (RemoteException e2) {
                            e = e2;
                            Slog.wtf(LOG_TAG, "Cannot set up app-ops listener", e);
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                        obj = null;
                    }
                }
            }
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme(Settings.ATTR_PACKAGE);
        getContext().registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.policy.PermissionPolicyService.3
            final List<Integer> mUserSetupUids = new ArrayList(DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE);
            final Map<UserHandle, PermissionControllerManager> mPermControllerManagers = new HashMap();

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                boolean hasSetupRun = true;
                try {
                    hasSetupRun = android.provider.Settings.Secure.getInt(PermissionPolicyService.this.getContext().getContentResolver(), "user_setup_complete") != 0;
                } catch (android.provider.Settings.SettingNotFoundException e4) {
                }
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                if (packageManagerInternal.getPackage(uid) == null) {
                    return;
                }
                if (hasSetupRun) {
                    if (!this.mUserSetupUids.isEmpty()) {
                        synchronized (this.mUserSetupUids) {
                            for (int i3 = this.mUserSetupUids.size() - 1; i3 >= 0; i3--) {
                                updateUid(this.mUserSetupUids.get(i3).intValue());
                            }
                            this.mUserSetupUids.clear();
                        }
                    }
                    updateUid(uid);
                    return;
                }
                synchronized (this.mUserSetupUids) {
                    if (!this.mUserSetupUids.contains(Integer.valueOf(uid))) {
                        this.mUserSetupUids.add(Integer.valueOf(uid));
                    }
                }
            }

            private void updateUid(int uid) {
                UserHandle user = UserHandle.getUserHandleForUid(uid);
                PermissionControllerManager manager = this.mPermControllerManagers.get(user);
                if (manager == null) {
                    manager = new PermissionControllerManager(PermissionPolicyService.getUserContext(PermissionPolicyService.this.getContext(), user), FgThread.getHandler());
                    this.mPermControllerManagers.put(user, manager);
                }
                manager.updateUserSensitiveForApp(uid);
            }
        }, UserHandle.ALL, intentFilter, null, null);
        final PermissionControllerManager manager = new PermissionControllerManager(getUserContext(getContext(), Process.myUserHandle()), FgThread.getHandler());
        Handler handler = FgThread.getHandler();
        Objects.requireNonNull(manager);
        handler.postDelayed(new Runnable() { // from class: com.android.server.policy.-$$Lambda$jaDybyCEM2y6SS96P5BBES0UITE
            @Override // java.lang.Runnable
            public final void run() {
                manager.updateUserSensitive();
            }
        }, 60000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSwitchOp(String permission) {
        int op = AppOpsManager.permissionToOpCode(permission);
        if (op == -1) {
            return -1;
        }
        return AppOpsManager.opToSwitch(op);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synchronizePackagePermissionsAndAppOpsAsyncForUser(String packageName, int changedUserId) {
        if (isStarted(changedUserId)) {
            synchronized (this.mLock) {
                if (this.mIsPackageSyncsScheduled.add(new Pair<>(packageName, Integer.valueOf(changedUserId)))) {
                    FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.policy.-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw
                        public final void accept(Object obj, Object obj2, Object obj3) {
                            ((PermissionPolicyService) obj).synchronizePackagePermissionsAndAppOpsForUser((String) obj2, ((Integer) obj3).intValue());
                        }
                    }, this, packageName, Integer.valueOf(changedUserId)));
                }
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 550) {
            UserManagerInternal um = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            for (int userId : um.getUserIds()) {
                if (um.isUserRunning(userId)) {
                    onStartUser(userId);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStarted(int userId) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsStarted.get(userId);
        }
        return z;
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userId) {
        PermissionPolicyInternal.OnInitializedCallback callback;
        if (isStarted(userId)) {
            return;
        }
        grantOrUpgradeDefaultRuntimePermissionsIfNeeded(userId);
        synchronized (this.mLock) {
            this.mIsStarted.put(userId, true);
            callback = this.mOnInitializedCallback;
        }
        synchronizePermissionsAndAppOpsForUser(userId);
        if (callback != null) {
            callback.onInitialized(userId);
        }
    }

    @Override // com.android.server.SystemService
    public void onStopUser(int userId) {
        synchronized (this.mLock) {
            this.mIsStarted.delete(userId);
        }
    }

    private void grantOrUpgradeDefaultRuntimePermissionsIfNeeded(final int userId) {
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        if (packageManagerInternal.isPermissionUpgradeNeeded(userId)) {
            final AndroidFuture<Boolean> future = new AndroidFuture<>();
            PermissionControllerManager permissionControllerManager = new PermissionControllerManager(getUserContext(getContext(), UserHandle.of(userId)), FgThread.getHandler());
            permissionControllerManager.grantOrUpgradeDefaultRuntimePermissions(FgThread.getExecutor(), new Consumer() { // from class: com.android.server.policy.-$$Lambda$PermissionPolicyService$enZnky8NIhd5B9lAhmYeFn1Y6mk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PermissionPolicyService.lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(future, userId, (Boolean) obj);
                }
            });
            try {
                future.get();
                permissionControllerManager.updateUserSensitive();
                packageManagerInternal.updateRuntimePermissionsFingerprint(userId);
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    static /* synthetic */ void lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(AndroidFuture future, int userId, Boolean successful) {
        if (successful.booleanValue()) {
            future.complete((Object) null);
            return;
        }
        String message = "Error granting/upgrading runtime permissions for user " + userId;
        Slog.wtf(LOG_TAG, message);
        future.completeExceptionally(new IllegalStateException(message));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Context getUserContext(Context context, UserHandle user) {
        if (context.getUser().equals(user)) {
            return context;
        }
        try {
            return context.createPackageContextAsUser(context.getPackageName(), 0, user);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(LOG_TAG, "Cannot create context for user " + user, e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synchronizePackagePermissionsAndAppOpsForUser(String packageName, int userId) {
        synchronized (this.mLock) {
            this.mIsPackageSyncsScheduled.remove(new Pair(packageName, Integer.valueOf(userId)));
        }
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        PackageInfo pkg = packageManagerInternal.getPackageInfo(packageName, 0, 1000, userId);
        if (pkg == null) {
            return;
        }
        PermissionToOpSynchroniser synchroniser = new PermissionToOpSynchroniser(getUserContext(getContext(), UserHandle.of(userId)));
        synchroniser.addPackage(pkg.packageName);
        String[] sharedPkgNames = packageManagerInternal.getSharedUserPackagesForPackage(pkg.packageName, userId);
        for (String sharedPkgName : sharedPkgNames) {
            AndroidPackage sharedPkg = packageManagerInternal.getPackage(sharedPkgName);
            if (sharedPkg != null) {
                synchroniser.addPackage(sharedPkg.getPackageName());
            }
        }
        synchroniser.syncPackages();
    }

    private void synchronizePermissionsAndAppOpsForUser(int userId) {
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        final PermissionToOpSynchroniser synchronizer = new PermissionToOpSynchroniser(getUserContext(getContext(), UserHandle.of(userId)));
        packageManagerInternal.forEachPackage(new Consumer() { // from class: com.android.server.policy.-$$Lambda$PermissionPolicyService$i87nwVknDNR-kxbgdgQq3zYShyg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                synchronizer.addPackage(((AndroidPackage) obj).getPackageName());
            }
        });
        synchronizer.syncPackages();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAppOpPermissionsIfNotRequestedForUidAsync(int uid) {
        if (isStarted(UserHandle.getUserId(uid))) {
            synchronized (this.mLock) {
                if (!this.mIsUidSyncScheduled.get(uid)) {
                    this.mIsUidSyncScheduled.put(uid, true);
                    FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.policy.-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((PermissionPolicyService) obj).resetAppOpPermissionsIfNotRequestedForUid(((Integer) obj2).intValue());
                        }
                    }, this, Integer.valueOf(uid)));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAppOpPermissionsIfNotRequestedForUid(int uid) {
        AppOpsManager appOpsManager;
        int defaultAppOpMode;
        synchronized (this.mLock) {
            this.mIsUidSyncScheduled.delete(uid);
        }
        Context context = getContext();
        PackageManager userPackageManager = getUserContext(context, UserHandle.getUserHandleForUid(uid)).getPackageManager();
        String[] packageNames = userPackageManager.getPackagesForUid(uid);
        if (packageNames != null && packageNames.length != 0) {
            ArraySet<String> requestedPermissions = new ArraySet<>();
            for (String str : packageNames) {
                try {
                    PackageInfo packageInfo = userPackageManager.getPackageInfo(str, 4096);
                    if (packageInfo != null && packageInfo.requestedPermissions != null) {
                        Collections.addAll(requestedPermissions, packageInfo.requestedPermissions);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            AppOpsManager appOpsManager2 = (AppOpsManager) context.getSystemService(AppOpsManager.class);
            AppOpsManagerInternal appOpsManagerInternal = (AppOpsManagerInternal) LocalServices.getService(AppOpsManagerInternal.class);
            int appOpPermissionsSize = this.mAppOpPermissions.size();
            int i = 0;
            while (i < appOpPermissionsSize) {
                String appOpPermission = this.mAppOpPermissions.get(i);
                if (requestedPermissions.contains(appOpPermission)) {
                    appOpsManager = appOpsManager2;
                } else {
                    int appOpCode = AppOpsManager.permissionToOpCode(appOpPermission);
                    int defaultAppOpMode2 = AppOpsManager.opToDefaultMode(appOpCode);
                    int length = packageNames.length;
                    int i2 = 0;
                    while (i2 < length) {
                        String packageName = packageNames[i2];
                        Context context2 = context;
                        int appOpMode = appOpsManager2.unsafeCheckOpRawNoThrow(appOpCode, uid, packageName);
                        if (appOpMode != defaultAppOpMode2) {
                            appOpsManagerInternal.setUidModeFromPermissionPolicy(appOpCode, uid, defaultAppOpMode2, this.mAppOpsCallback);
                            defaultAppOpMode = defaultAppOpMode2;
                            appOpsManagerInternal.setModeFromPermissionPolicy(appOpCode, uid, packageName, defaultAppOpMode, this.mAppOpsCallback);
                        } else {
                            defaultAppOpMode = defaultAppOpMode2;
                        }
                        i2++;
                        context = context2;
                        appOpsManager2 = appOpsManager2;
                        length = length;
                        defaultAppOpMode2 = defaultAppOpMode;
                        appOpCode = appOpCode;
                        appOpPermission = appOpPermission;
                        i = i;
                    }
                    appOpsManager = appOpsManager2;
                }
                i++;
                context = context;
                appOpsManager2 = appOpsManager;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PermissionToOpSynchroniser {
        private final AppOpsManager mAppOpsManager;
        private final Context mContext;
        private final PackageManager mPackageManager;
        private final ArrayList<OpToChange> mOpsToAllow = new ArrayList<>();
        private final ArrayList<OpToChange> mOpsToIgnore = new ArrayList<>();
        private final ArrayList<OpToChange> mOpsToIgnoreIfNotAllowed = new ArrayList<>();
        private final ArrayList<OpToChange> mOpsToForeground = new ArrayList<>();
        private final AppOpsManagerInternal mAppOpsManagerInternal = (AppOpsManagerInternal) LocalServices.getService(AppOpsManagerInternal.class);
        private final ArrayMap<String, PermissionInfo> mRuntimePermissionInfos = new ArrayMap<>();

        PermissionToOpSynchroniser(Context context) {
            this.mContext = context;
            this.mPackageManager = context.getPackageManager();
            this.mAppOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
            PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
            List<PermissionInfo> permissionInfos = permissionManagerInternal.getAllPermissionsWithProtection(1);
            int permissionInfosSize = permissionInfos.size();
            for (int i = 0; i < permissionInfosSize; i++) {
                PermissionInfo permissionInfo = permissionInfos.get(i);
                this.mRuntimePermissionInfos.put(permissionInfo.name, permissionInfo);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void syncPackages() {
            LongSparseLongArray alreadySetAppOps = new LongSparseLongArray();
            int allowCount = this.mOpsToAllow.size();
            for (int i = 0; i < allowCount; i++) {
                OpToChange op = this.mOpsToAllow.get(i);
                setUidModeAllowed(op.code, op.uid, op.packageName);
                alreadySetAppOps.put(IntPair.of(op.uid, op.code), 1L);
            }
            int foregroundCount = this.mOpsToForeground.size();
            for (int i2 = 0; i2 < foregroundCount; i2++) {
                OpToChange op2 = this.mOpsToForeground.get(i2);
                if (alreadySetAppOps.indexOfKey(IntPair.of(op2.uid, op2.code)) < 0) {
                    setUidModeForeground(op2.code, op2.uid, op2.packageName);
                    alreadySetAppOps.put(IntPair.of(op2.uid, op2.code), 1L);
                }
            }
            int ignoreCount = this.mOpsToIgnore.size();
            for (int i3 = 0; i3 < ignoreCount; i3++) {
                OpToChange op3 = this.mOpsToIgnore.get(i3);
                if (alreadySetAppOps.indexOfKey(IntPair.of(op3.uid, op3.code)) < 0) {
                    setUidModeIgnored(op3.code, op3.uid, op3.packageName);
                    alreadySetAppOps.put(IntPair.of(op3.uid, op3.code), 1L);
                }
            }
            int ignoreIfNotAllowedCount = this.mOpsToIgnoreIfNotAllowed.size();
            for (int i4 = 0; i4 < ignoreIfNotAllowedCount; i4++) {
                OpToChange op4 = this.mOpsToIgnoreIfNotAllowed.get(i4);
                if (alreadySetAppOps.indexOfKey(IntPair.of(op4.uid, op4.code)) < 0) {
                    boolean wasSet = setUidModeIgnoredIfNotAllowed(op4.code, op4.uid, op4.packageName);
                    if (wasSet) {
                        alreadySetAppOps.put(IntPair.of(op4.uid, op4.code), 1L);
                    }
                }
            }
        }

        private void addAppOps(PackageInfo packageInfo, AndroidPackage pkg, String permissionName) {
            PermissionInfo permissionInfo = this.mRuntimePermissionInfos.get(permissionName);
            if (permissionInfo == null) {
                return;
            }
            addPermissionAppOp(packageInfo, pkg, permissionInfo);
            addExtraAppOp(packageInfo, pkg, permissionInfo);
        }

        private void addPermissionAppOp(PackageInfo packageInfo, AndroidPackage pkg, PermissionInfo permissionInfo) {
            int appOpCode;
            if (!permissionInfo.isRuntime()) {
                return;
            }
            String permissionName = permissionInfo.name;
            String packageName = packageInfo.packageName;
            int permissionFlags = this.mPackageManager.getPermissionFlags(permissionName, packageName, this.mContext.getUser());
            int appOpMode = 0;
            boolean isReviewRequired = (permissionFlags & 64) != 0;
            if (isReviewRequired || (appOpCode = PermissionPolicyService.getSwitchOp(permissionName)) == -1) {
                return;
            }
            boolean shouldGrantAppOp = shouldGrantAppOp(packageInfo, pkg, permissionInfo);
            if (shouldGrantAppOp) {
                if (permissionInfo.backgroundPermission != null) {
                    PermissionInfo backgroundPermissionInfo = this.mRuntimePermissionInfos.get(permissionInfo.backgroundPermission);
                    boolean shouldGrantBackgroundAppOp = backgroundPermissionInfo != null && shouldGrantAppOp(packageInfo, pkg, backgroundPermissionInfo);
                    if (!shouldGrantBackgroundAppOp) {
                        appOpMode = 4;
                    }
                } else {
                    appOpMode = 0;
                }
            } else {
                appOpMode = 1;
            }
            int uid = packageInfo.applicationInfo.uid;
            OpToChange opToChange = new OpToChange(uid, packageName, appOpCode);
            if (appOpMode == 0) {
                this.mOpsToAllow.add(opToChange);
            } else {
                if (appOpMode != 1) {
                    if (appOpMode == 4) {
                        this.mOpsToForeground.add(opToChange);
                        return;
                    }
                    return;
                }
                this.mOpsToIgnore.add(opToChange);
            }
        }

        private boolean shouldGrantAppOp(PackageInfo packageInfo, AndroidPackage pkg, PermissionInfo permissionInfo) {
            String permissionName = permissionInfo.name;
            String packageName = packageInfo.packageName;
            boolean isGranted = this.mPackageManager.checkPermission(permissionName, packageName) == 0;
            if (!isGranted) {
                return false;
            }
            int permissionFlags = this.mPackageManager.getPermissionFlags(permissionName, packageName, this.mContext.getUser());
            boolean isRevokedCompat = (permissionFlags & 8) == 8;
            if (isRevokedCompat) {
                return false;
            }
            if (permissionInfo.isHardRestricted()) {
                boolean shouldApplyRestriction = (permissionFlags & 16384) == 16384;
                return !shouldApplyRestriction;
            }
            if (!permissionInfo.isSoftRestricted()) {
                return true;
            }
            SoftRestrictedPermissionPolicy policy = SoftRestrictedPermissionPolicy.forPermission(this.mContext, packageInfo.applicationInfo, pkg, this.mContext.getUser(), permissionName);
            return policy.mayGrantPermission();
        }

        private void addExtraAppOp(PackageInfo packageInfo, AndroidPackage pkg, PermissionInfo permissionInfo) {
            if (!permissionInfo.isSoftRestricted()) {
                return;
            }
            String permissionName = permissionInfo.name;
            SoftRestrictedPermissionPolicy policy = SoftRestrictedPermissionPolicy.forPermission(this.mContext, packageInfo.applicationInfo, pkg, this.mContext.getUser(), permissionName);
            int extraOpCode = policy.getExtraAppOpCode();
            if (extraOpCode == -1) {
                return;
            }
            int uid = packageInfo.applicationInfo.uid;
            String packageName = packageInfo.packageName;
            OpToChange extraOpToChange = new OpToChange(uid, packageName, extraOpCode);
            if (policy.mayAllowExtraAppOp()) {
                this.mOpsToAllow.add(extraOpToChange);
            } else if (policy.mayDenyExtraAppOpIfGranted()) {
                this.mOpsToIgnore.add(extraOpToChange);
            } else {
                this.mOpsToIgnoreIfNotAllowed.add(extraOpToChange);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void addPackage(String pkgName) {
            int uid;
            PackageManagerInternal pmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            try {
                PackageInfo pkgInfo = this.mPackageManager.getPackageInfo(pkgName, 4096);
                AndroidPackage pkg = pmInternal.getPackage(pkgName);
                if (pkgInfo == null || pkg == null || pkgInfo.applicationInfo == null || pkgInfo.requestedPermissions == null || (uid = pkgInfo.applicationInfo.uid) == 0 || uid == 1000) {
                    return;
                }
                for (String permission : pkgInfo.requestedPermissions) {
                    addAppOps(pkgInfo, pkg, permission);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }

        private void setUidModeAllowed(int opCode, int uid, String packageName) {
            setUidMode(opCode, uid, 0, packageName);
        }

        private void setUidModeForeground(int opCode, int uid, String packageName) {
            setUidMode(opCode, uid, 4, packageName);
        }

        private void setUidModeIgnored(int opCode, int uid, String packageName) {
            setUidMode(opCode, uid, 1, packageName);
        }

        private boolean setUidModeIgnoredIfNotAllowed(int opCode, int uid, String packageName) {
            int currentMode = this.mAppOpsManager.unsafeCheckOpRaw(AppOpsManager.opToPublicName(opCode), uid, packageName);
            if (currentMode != 0) {
                if (currentMode != 1) {
                    this.mAppOpsManagerInternal.setUidModeFromPermissionPolicy(opCode, uid, 1, PermissionPolicyService.this.mAppOpsCallback);
                }
                return true;
            }
            return false;
        }

        private void setUidMode(int opCode, int uid, int mode, String packageName) {
            int oldMode = this.mAppOpsManager.unsafeCheckOpRaw(AppOpsManager.opToPublicName(opCode), uid, packageName);
            if (oldMode != mode) {
                this.mAppOpsManagerInternal.setUidModeFromPermissionPolicy(opCode, uid, mode, PermissionPolicyService.this.mAppOpsCallback);
                int newMode = this.mAppOpsManager.unsafeCheckOpRaw(AppOpsManager.opToPublicName(opCode), uid, packageName);
                if (newMode != mode) {
                    this.mAppOpsManagerInternal.setModeFromPermissionPolicy(opCode, uid, packageName, AppOpsManager.opToDefaultMode(opCode), PermissionPolicyService.this.mAppOpsCallback);
                }
            }
        }

        private class OpToChange {
            final int code;
            final String packageName;
            final int uid;

            OpToChange(int uid, String packageName, int code) {
                this.uid = uid;
                this.packageName = packageName;
                this.code = code;
            }
        }
    }

    private class Internal extends PermissionPolicyInternal {
        private Internal() {
        }

        @Override // com.android.server.policy.PermissionPolicyInternal
        public boolean checkStartActivity(Intent intent, int callingUid, String callingPackage) {
            if (callingPackage != null && isActionRemovedForCallingPackage(intent, callingUid, callingPackage)) {
                Slog.w(PermissionPolicyService.LOG_TAG, "Action Removed: starting " + intent.toString() + " from " + callingPackage + " (uid=" + callingUid + ")");
                return false;
            }
            return true;
        }

        @Override // com.android.server.policy.PermissionPolicyInternal
        public boolean isInitialized(int userId) {
            return PermissionPolicyService.this.isStarted(userId);
        }

        @Override // com.android.server.policy.PermissionPolicyInternal
        public void setOnInitializedCallback(PermissionPolicyInternal.OnInitializedCallback callback) {
            synchronized (PermissionPolicyService.this.mLock) {
                PermissionPolicyService.this.mOnInitializedCallback = callback;
            }
        }

        private boolean isActionRemovedForCallingPackage(Intent intent, int callingUid, String callingPackage) {
            String action = intent.getAction();
            if (action == null) {
                return false;
            }
            byte b = -1;
            int iHashCode = action.hashCode();
            if (iHashCode != -1673968409) {
                if (iHashCode == 579418056 && action.equals("android.telecom.action.CHANGE_DEFAULT_DIALER")) {
                    b = 0;
                }
            } else if (action.equals("android.provider.Telephony.ACTION_CHANGE_DEFAULT")) {
                b = 1;
            }
            if (b != 0 && b != 1) {
                return false;
            }
            try {
                ApplicationInfo applicationInfo = PermissionPolicyService.this.getContext().getPackageManager().getApplicationInfoAsUser(callingPackage, 0, UserHandle.getUserId(callingUid));
                if (applicationInfo.targetSdkVersion >= 29) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException e) {
                Slog.i(PermissionPolicyService.LOG_TAG, "Cannot find application info for " + callingPackage);
            }
            intent.putExtra("android.intent.extra.CALLING_PACKAGE", callingPackage);
            return false;
        }
    }
}
