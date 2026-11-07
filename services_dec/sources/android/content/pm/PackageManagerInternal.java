package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.parsing.component.ParsedMainComponent;
import android.os.Bundle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import com.android.server.pm.PackageList;
import com.android.server.pm.PackageSetting;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageManagerInternal {
    public static final int ENABLE_ROLLBACK_FAILED = -1;
    public static final int ENABLE_ROLLBACK_SUCCEEDED = 1;
    public static final String EXTRA_ENABLE_ROLLBACK_SESSION_ID = "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID";
    public static final String EXTRA_ENABLE_ROLLBACK_TOKEN = "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN";
    public static final int INTEGRITY_VERIFICATION_ALLOW = 1;
    public static final int INTEGRITY_VERIFICATION_REJECT = 0;
    public static final int PACKAGE_APP_PREDICTOR = 11;
    public static final int PACKAGE_BROWSER = 4;
    public static final int PACKAGE_COMPANION = 14;
    public static final int PACKAGE_CONFIGURATOR = 9;
    public static final int PACKAGE_DOCUMENTER = 8;
    public static final int PACKAGE_INCIDENT_REPORT_APPROVER = 10;
    public static final int PACKAGE_INSTALLER = 2;
    public static final int PACKAGE_PERMISSION_CONTROLLER = 6;
    public static final int PACKAGE_RETAIL_DEMO = 15;
    public static final int PACKAGE_SETUP_WIZARD = 1;
    public static final int PACKAGE_SYSTEM = 0;
    public static final int PACKAGE_SYSTEM_TEXT_CLASSIFIER = 5;
    public static final int PACKAGE_VERIFIER = 3;
    public static final int PACKAGE_WELLBEING = 7;
    public static final int PACKAGE_WIFI = 13;
    public static final int RESOLVE_NON_BROWSER_ONLY = 1;
    public static final int RESOLVE_NON_RESOLVER_ONLY = 2;

    public interface ExternalSourcesPolicy {
        public static final int USER_BLOCKED = 1;
        public static final int USER_DEFAULT = 2;
        public static final int USER_TRUSTED = 0;

        int getPackageTrustedToInstallApps(String str, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IntegrityVerificationResult {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface KnownPackage {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface PrivateResolveFlags {
    }

    public abstract void addIsolatedUid(int i, int i2);

    public abstract boolean canAccessComponent(int i, ComponentName componentName, int i2);

    public abstract boolean canAccessInstantApps(int i, int i2);

    public abstract void clearBlockUninstallForUser(int i);

    public abstract boolean compileLayouts(String str);

    public abstract boolean filterAppAccess(AndroidPackage androidPackage, int i, int i2);

    public abstract boolean filterAppAccess(String str, int i, int i2);

    public abstract void finishPackageInstall(int i, boolean z);

    public abstract void flushPackageRestrictions(int i);

    public abstract void forEachInstalledPackage(Consumer<AndroidPackage> consumer, int i);

    public abstract void forEachPackage(Consumer<AndroidPackage> consumer);

    public abstract void forEachPackageSetting(Consumer<PackageSetting> consumer);

    public abstract void freeStorage(String str, long j, int i) throws IOException;

    public abstract ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2, int i3);

    public abstract List<String> getApksInApex(String str);

    public abstract int getApplicationEnabledState(String str, int i);

    public abstract ApplicationInfo getApplicationInfo(String str, int i, int i2, int i3);

    public abstract SparseArray<String> getAppsWithSharedUserIds();

    public abstract long getCeDataInode(String str, int i);

    public abstract ComponentName getDefaultHomeActivity(int i);

    public abstract ArraySet<String> getDisabledComponents(String str, int i);

    public abstract PackageSetting getDisabledSystemPackage(String str);

    public abstract String getDisabledSystemPackageName(String str);

    public abstract int getDistractingPackageRestrictions(String str, int i);

    public abstract ArraySet<String> getEnabledComponents(String str, int i);

    public abstract ComponentName getHomeActivitiesAsUser(List<ResolveInfo> list, int i);

    public abstract List<ApplicationInfo> getInstalledApplications(int i, int i2, int i3);

    public abstract int getInstalledSdkVersion(AndroidPackage androidPackage);

    public abstract String getInstantAppPackageName(int i);

    public abstract String[] getKnownPackageNames(int i, int i2);

    public abstract List<String> getMimeGroup(String str, String str2);

    public abstract String getNameForUid(int i);

    public abstract List<PackageInfo> getOverlayPackages(int i);

    public abstract AndroidPackage getPackage(int i);

    public abstract AndroidPackage getPackage(String str);

    public abstract PackageInfo getPackageInfo(String str, int i, int i2, int i3);

    public abstract PackageList getPackageList(PackageListObserver packageListObserver);

    public abstract PackageSetting getPackageSetting(String str);

    public abstract int getPackageTargetSdkVersion(String str);

    @Deprecated
    public abstract int getPackageUid(String str, int i, int i2);

    public abstract int getPackageUidInternal(String str, int i, int i2);

    public abstract int[] getPermissionGids(String str, int i);

    public abstract ArrayMap<String, ProcessInfo> getProcessesForUid(int i);

    public abstract String getSetupWizardPackageName();

    public abstract String[] getSharedUserPackagesForPackage(String str, int i);

    public abstract SuspendDialogInfo getSuspendedDialogInfo(String str, String str2, int i);

    public abstract Bundle getSuspendedPackageLauncherExtras(String str, int i);

    public abstract String getSuspendingPackage(String str, int i);

    public abstract ComponentName getSystemUiServiceComponent();

    public abstract List<String> getTargetPackageNames(int i);

    public abstract int getUidTargetSdkVersion(int i);

    public abstract void grantImplicitAccess(int i, Intent intent, int i2, int i3, boolean z);

    public abstract boolean hasInstantApplicationMetadata(String str, int i);

    public abstract boolean hasSignatureCapability(int i, int i2, int i3);

    public abstract boolean isApexPackage(String str);

    public abstract boolean isCallerInstallerOfRecord(AndroidPackage androidPackage, int i);

    public abstract boolean isDataRestoreSafe(Signature signature, String str);

    public abstract boolean isDataRestoreSafe(byte[] bArr, String str);

    public abstract boolean isEnabledAndMatches(ParsedMainComponent parsedMainComponent, int i, int i2);

    public abstract boolean isInstantApp(String str, int i);

    public abstract boolean isInstantAppInstallerComponent(ComponentName componentName);

    public abstract boolean isOnlyCoreApps();

    public abstract boolean isPackageDataProtected(int i, String str);

    public abstract boolean isPackageEphemeral(int i, String str);

    public abstract boolean isPackagePersistent(String str);

    public abstract boolean isPackageStateProtected(String str, int i);

    public abstract boolean isPackageSuspended(String str, int i);

    public abstract boolean isPermissionUpgradeNeeded(int i);

    public abstract boolean isPermissionsReviewRequired(String str, int i);

    public abstract boolean isPlatformSigned(String str);

    public abstract boolean isResolveActivityComponent(ComponentInfo componentInfo);

    public abstract boolean isSuspendingAnyPackages(String str, int i);

    public abstract boolean isSystemPackage(String str);

    public abstract void migrateLegacyObbData();

    public abstract void notifyPackageUse(String str, int i);

    public abstract void pruneCachedApksInApex(List<PackageInfo> list);

    public abstract void pruneInstantApps();

    public abstract List<ResolveInfo> queryIntentActivities(Intent intent, String str, int i, int i2, int i3);

    public abstract List<ResolveInfo> queryIntentServices(Intent intent, int i, int i2, int i3);

    public abstract void removeAllDistractingPackageRestrictions(int i);

    public abstract void removeAllNonSystemPackageSuspensions(int i);

    public abstract void removeDistractingPackageRestrictions(String str, int i);

    public abstract void removeIsolatedUid(int i);

    public abstract String removeLegacyDefaultBrowserPackageName(int i);

    public abstract void removeNonSystemPackageSuspensions(String str, int i);

    public abstract void removePackageListObserver(PackageListObserver packageListObserver);

    public abstract void requestInstantAppResolutionPhaseTwo(AuxiliaryResolveInfo auxiliaryResolveInfo, Intent intent, String str, String str2, String str3, boolean z, Bundle bundle, int i);

    public abstract ProviderInfo resolveContentProvider(String str, int i, int i2);

    public abstract ResolveInfo resolveIntent(Intent intent, String str, int i, int i2, int i3, boolean z, int i4);

    public abstract ResolveInfo resolveService(Intent intent, String str, int i, int i2, int i3);

    public abstract void setDeviceAndProfileOwnerPackages(int i, String str, SparseArray<String> sparseArray);

    public abstract void setDeviceOwnerProtectedPackages(List<String> list);

    public abstract void setEnableRollbackCode(int i, int i2);

    public abstract boolean setEnabledOverlayPackages(int i, String str, List<String> list, Collection<String> collection);

    public abstract void setExternalSourcesPolicy(ExternalSourcesPolicy externalSourcesPolicy);

    public abstract void setIntegrityVerificationResult(int i, int i2);

    public abstract void setKeepUninstalledPackages(List<String> list);

    public abstract void setReadExternalStorageEnforced(boolean z);

    public abstract void setVisibilityLogging(String str, boolean z);

    public abstract void uninstallApex(String str, long j, int i, IntentSender intentSender, int i2);

    public abstract void unsuspendForSuspendingPackage(String str, int i);

    public abstract void updateRuntimePermissionsFingerprint(int i);

    public abstract boolean userNeedsBadging(int i);

    public abstract boolean wasPackageEverLaunched(String str, int i);

    public abstract void writePermissionSettings(int[] iArr, boolean z);

    public abstract void writeSettings(boolean z);

    public interface PackageListObserver {
        void onPackageAdded(String str, int i);

        void onPackageRemoved(String str, int i);

        default void onPackageChanged(String packageName, int uid) {
        }
    }

    public void onDefaultSmsAppChanged(String packageName, int userId) {
    }

    public void onDefaultSimCallManagerAppChanged(String packageName, int userId) {
    }

    public PackageList getPackageList() {
        return getPackageList(null);
    }
}
