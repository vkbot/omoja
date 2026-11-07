package com.android.server.pm.permission;

import android.content.pm.PermissionInfo;
import android.permission.PermissionManagerInternal;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public abstract class PermissionManagerServiceInternal extends PermissionManagerInternal {

    public interface DefaultBrowserProvider {
        String getDefaultBrowser(int i);

        boolean setDefaultBrowser(String str, int i);

        void setDefaultBrowserAsync(String str, int i);
    }

    public interface DefaultDialerProvider {
        String getDefaultDialer(int i);
    }

    public interface DefaultHomeProvider {
        String getDefaultHome(int i);

        void setDefaultHomeAsync(String str, int i, Consumer<Boolean> consumer);
    }

    public interface PackagesProvider {
        String[] getPackages(int i);
    }

    public interface SyncAdapterPackagesProvider {
        String[] getPackages(String str, int i);
    }

    public abstract void addAllPermissionGroups(AndroidPackage androidPackage, boolean z);

    public abstract List<String> addAllPermissions(AndroidPackage androidPackage, boolean z);

    public abstract void enforceCrossUserOrProfilePermission(int i, int i2, boolean z, boolean z2, String str);

    public abstract void enforceCrossUserPermission(int i, int i2, boolean z, boolean z2, String str);

    public abstract void enforceCrossUserPermission(int i, int i2, boolean z, boolean z2, boolean z3, String str);

    public abstract void enforceGrantRevokeRuntimePermissionPermissions(String str);

    public abstract ArrayList<PermissionInfo> getAllPermissionsWithProtection(int i);

    public abstract ArrayList<PermissionInfo> getAllPermissionsWithProtectionFlags(int i);

    public abstract String[] getAppOpPermissionPackages(String str, int i);

    public abstract PermissionManagerInternal.CheckPermissionDelegate getCheckPermissionDelegate();

    public abstract String getDefaultBrowser(int i);

    public abstract String getDefaultDialer(int i);

    public abstract String getDefaultHome(int i);

    public abstract PermissionSettings getPermissionSettings();

    public abstract BasePermission getPermissionTEMP(String str);

    public abstract void grantDefaultPermissionsToDefaultBrowser(String str, int i);

    public abstract void grantDefaultPermissionsToDefaultSimCallManager(String str, int i);

    public abstract void grantDefaultPermissionsToDefaultUseOpenWifiApp(String str, int i);

    public abstract void grantRequestedRuntimePermissions(AndroidPackage androidPackage, int[] iArr, String[] strArr, int i);

    public abstract boolean isPermissionsReviewRequired(AndroidPackage androidPackage, int i);

    public abstract void onNewUserCreated(int i);

    public abstract void onPackageUpdated(AndroidPackage androidPackage, AndroidPackage androidPackage2, ArrayList<String> arrayList);

    public abstract void removeAllPermissions(AndroidPackage androidPackage, boolean z);

    public abstract void resetAllRuntimePermissions(int i);

    public abstract void resetRuntimePermissions(AndroidPackage androidPackage, int i);

    public abstract void retainHardAndSoftRestrictedPermissions(List<String> list);

    public abstract void revokeRuntimePermissionsIfPermissionDefinitionChanged(List<String> list, ArrayList<String> arrayList);

    public abstract void setAutoRevokeWhitelisted(String str, boolean z, int i);

    public abstract void setCheckPermissionDelegate(PermissionManagerInternal.CheckPermissionDelegate checkPermissionDelegate);

    public abstract void setDefaultBrowser(String str, boolean z, boolean z2, int i);

    public abstract void setDefaultBrowserProvider(DefaultBrowserProvider defaultBrowserProvider);

    public abstract void setDefaultDialerProvider(DefaultDialerProvider defaultDialerProvider);

    public abstract void setDefaultHome(String str, int i, Consumer<Boolean> consumer);

    public abstract void setDefaultHomeProvider(DefaultHomeProvider defaultHomeProvider);

    public abstract void setDialerAppPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setLocationExtraPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setLocationPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSimCallManagerPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSmsAppPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSyncAdapterPackagesProvider(SyncAdapterPackagesProvider syncAdapterPackagesProvider);

    public abstract void setUseOpenWifiAppPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setVoiceInteractionPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setWhitelistedRestrictedPermissions(AndroidPackage androidPackage, int[] iArr, List<String> list, int i, int i2);

    public abstract void setWhitelistedRestrictedPermissions(String str, List<String> list, int i, int i2);

    public abstract void systemReady();

    public abstract void updateAllPermissions(String str, boolean z);

    public abstract void updatePermissions(String str, AndroidPackage androidPackage);

    public static class PermissionCallback {
        public void onGidsChanged(int appId, int userId) {
        }

        public void onPermissionChanged() {
        }

        public void onPermissionGranted(int uid, int userId) {
        }

        public void onInstallPermissionGranted() {
        }

        public void onPermissionRevoked(int uid, int userId, String reason) {
        }

        public void onInstallPermissionRevoked() {
        }

        public void onPermissionUpdated(int[] updatedUserIds, boolean sync) {
        }

        public void onPermissionUpdatedNotifyListener(int[] updatedUserIds, boolean sync, int uid) {
            onPermissionUpdated(updatedUserIds, sync);
        }

        public void onPermissionRemoved() {
        }

        public void onInstallPermissionUpdated() {
        }

        public void onInstallPermissionUpdatedNotifyListener(int uid) {
            onInstallPermissionUpdated();
        }
    }
}
