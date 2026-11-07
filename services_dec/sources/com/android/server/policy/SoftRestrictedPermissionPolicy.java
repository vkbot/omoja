package com.android.server.policy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.os.storage.StorageManagerInternal;
import android.provider.DeviceConfig;
import com.android.server.LocalServices;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class SoftRestrictedPermissionPolicy {
    private static final int FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT = 14336;
    private static final SoftRestrictedPermissionPolicy DUMMY_POLICY = new SoftRestrictedPermissionPolicy() { // from class: com.android.server.policy.SoftRestrictedPermissionPolicy.1
        @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
        public boolean mayGrantPermission() {
            return true;
        }
    };
    private static final HashSet<String> sForcedScopedStorageAppWhitelist = new HashSet<>(Arrays.asList(getForcedScopedStorageAppWhitelist()));

    public abstract boolean mayGrantPermission();

    private static int getMinimumTargetSDK(Context context, ApplicationInfo appInfo, UserHandle user) {
        PackageManager pm = context.getPackageManager();
        int minimumTargetSDK = appInfo.targetSdkVersion;
        String[] uidPkgs = pm.getPackagesForUid(appInfo.uid);
        if (uidPkgs != null) {
            for (String uidPkg : uidPkgs) {
                if (!uidPkg.equals(appInfo.packageName)) {
                    try {
                        ApplicationInfo uidPkgInfo = pm.getApplicationInfoAsUser(uidPkg, 0, user);
                        minimumTargetSDK = Integer.min(minimumTargetSDK, uidPkgInfo.targetSdkVersion);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
            }
        }
        return minimumTargetSDK;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    public static SoftRestrictedPermissionPolicy forPermission(Context context, ApplicationInfo appInfo, AndroidPackage pkg, UserHandle user, String permission) {
        byte b;
        boolean isWhiteListed;
        boolean shouldApplyRestriction;
        int targetSDK;
        boolean hasLegacyExternalStorage;
        boolean hasRequestedLegacyExternalStorage;
        boolean hasRequestedPreserveLegacyExternalStorage;
        boolean hasWriteMediaStorageGrantedForUid;
        boolean isForcedScopedStorage;
        final boolean isWhiteListed2;
        final int flags;
        int iHashCode = permission.hashCode();
        if (iHashCode != -406040016) {
            if (iHashCode == 1365911975 && permission.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (permission.equals("android.permission.READ_EXTERNAL_STORAGE")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b != 0) {
            if (b == 1) {
                if (appInfo != null) {
                    shouldApplyRestriction = (context.getPackageManager().getPermissionFlags(permission, appInfo.packageName, user) & FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT) != 0;
                    isWhiteListed2 = shouldApplyRestriction;
                    flags = getMinimumTargetSDK(context, appInfo, user);
                } else {
                    isWhiteListed2 = false;
                    flags = 0;
                }
                return new SoftRestrictedPermissionPolicy() { // from class: com.android.server.policy.SoftRestrictedPermissionPolicy.3
                    @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
                    public boolean mayGrantPermission() {
                        return isWhiteListed2 || flags >= 29;
                    }
                };
            }
            return DUMMY_POLICY;
        }
        if (appInfo != null) {
            PackageManager pm = context.getPackageManager();
            StorageManagerInternal smInternal = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
            int flags2 = pm.getPermissionFlags(permission, appInfo.packageName, user);
            isWhiteListed = (flags2 & FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT) != 0;
            hasLegacyExternalStorage = smInternal.hasLegacyExternalStorage(appInfo.uid);
            hasRequestedLegacyExternalStorage = hasUidRequestedLegacyExternalStorage(appInfo.uid, context);
            hasWriteMediaStorageGrantedForUid = hasWriteMediaStorageGrantedForUid(appInfo.uid, context);
            hasRequestedPreserveLegacyExternalStorage = pkg.hasPreserveLegacyExternalStorage();
            targetSDK = getMinimumTargetSDK(context, appInfo, user);
            shouldApplyRestriction = (flags2 & 16384) != 0;
            isForcedScopedStorage = sForcedScopedStorageAppWhitelist.contains(appInfo.packageName);
        } else {
            isWhiteListed = false;
            shouldApplyRestriction = false;
            targetSDK = 0;
            hasLegacyExternalStorage = false;
            hasRequestedLegacyExternalStorage = false;
            hasRequestedPreserveLegacyExternalStorage = false;
            hasWriteMediaStorageGrantedForUid = false;
            isForcedScopedStorage = false;
        }
        final boolean z = isWhiteListed;
        final int i = targetSDK;
        final boolean z2 = shouldApplyRestriction;
        final boolean z3 = isForcedScopedStorage;
        final boolean z4 = hasWriteMediaStorageGrantedForUid;
        final boolean z5 = hasLegacyExternalStorage;
        final boolean z6 = hasRequestedLegacyExternalStorage;
        final boolean z7 = hasRequestedPreserveLegacyExternalStorage;
        return new SoftRestrictedPermissionPolicy() { // from class: com.android.server.policy.SoftRestrictedPermissionPolicy.2
            @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
            public boolean mayGrantPermission() {
                return z || i >= 29;
            }

            @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
            public int getExtraAppOpCode() {
                return 87;
            }

            @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
            public boolean mayAllowExtraAppOp() {
                if (z2 || z3) {
                    return false;
                }
                return z4 || ((z5 || z6) && i < 30);
            }

            @Override // com.android.server.policy.SoftRestrictedPermissionPolicy
            public boolean mayDenyExtraAppOpIfGranted() {
                if (i < 30) {
                    return !mayAllowExtraAppOp();
                }
                if (z2 || z3) {
                    return true;
                }
                return (z4 || z7) ? false : true;
            }
        };
    }

    private static boolean hasUidRequestedLegacyExternalStorage(int uid, Context context) {
        PackageManager packageManager = context.getPackageManager();
        String[] packageNames = packageManager.getPackagesForUid(uid);
        if (packageNames == null) {
            return false;
        }
        UserHandle user = UserHandle.getUserHandleForUid(uid);
        for (String packageName : packageNames) {
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfoAsUser(packageName, 0, user);
                if (applicationInfo.hasRequestedLegacyExternalStorage()) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return false;
    }

    private static boolean hasWriteMediaStorageGrantedForUid(int uid, Context context) {
        PackageManager packageManager = context.getPackageManager();
        String[] packageNames = packageManager.getPackagesForUid(uid);
        if (packageNames == null) {
            return false;
        }
        for (String packageName : packageNames) {
            if (packageManager.checkPermission("android.permission.WRITE_MEDIA_STORAGE", packageName) == 0) {
                return true;
            }
        }
        return false;
    }

    private static String[] getForcedScopedStorageAppWhitelist() {
        String rawList = DeviceConfig.getString("storage_native_boot", "forced_scoped_storage_whitelist", "");
        if (rawList == null || rawList.equals("")) {
            return new String[0];
        }
        return rawList.split(",");
    }

    public int getExtraAppOpCode() {
        return -1;
    }

    public boolean mayAllowExtraAppOp() {
        return false;
    }

    public boolean mayDenyExtraAppOpIfGranted() {
        return false;
    }
}
