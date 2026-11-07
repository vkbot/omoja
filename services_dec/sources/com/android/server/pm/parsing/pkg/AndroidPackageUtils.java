package com.android.server.pm.parsing.pkg;

import android.content.pm.PackageInfo;
import android.content.pm.PackageParser;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import android.content.pm.dex.DexMetadataHelper;
import android.content.pm.parsing.ParsingPackageRead;
import android.content.pm.parsing.component.ParsedActivity;
import android.content.pm.parsing.component.ParsedInstrumentation;
import android.content.pm.parsing.component.ParsedProvider;
import android.content.pm.parsing.component.ParsedService;
import android.os.incremental.IncrementalManager;
import android.text.TextUtils;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.util.ArrayUtils;
import com.android.server.SystemConfig;
import com.android.server.pm.PackageSetting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AndroidPackageUtils {
    private AndroidPackageUtils() {
    }

    public static List<String> getAllCodePathsExcludingResourceOnly(AndroidPackage aPkg) {
        PackageImpl pkg = (PackageImpl) aPkg;
        ArrayList<String> paths = new ArrayList<>();
        if (pkg.isHasCode()) {
            paths.add(pkg.getBaseCodePath());
        }
        String[] splitCodePaths = pkg.getSplitCodePaths();
        if (!ArrayUtils.isEmpty(splitCodePaths)) {
            for (int i = 0; i < splitCodePaths.length; i++) {
                if ((pkg.getSplitFlags()[i] & 4) != 0) {
                    paths.add(splitCodePaths[i]);
                }
            }
        }
        return paths;
    }

    public static List<String> getAllCodePaths(AndroidPackage aPkg) {
        PackageImpl pkg = (PackageImpl) aPkg;
        ArrayList<String> paths = new ArrayList<>();
        paths.add(pkg.getBaseCodePath());
        String[] splitCodePaths = pkg.getSplitCodePaths();
        if (!ArrayUtils.isEmpty(splitCodePaths)) {
            Collections.addAll(paths, splitCodePaths);
        }
        return paths;
    }

    public static SharedLibraryInfo createSharedLibraryForStatic(AndroidPackage pkg) {
        return new SharedLibraryInfo(null, pkg.getPackageName(), getAllCodePaths(pkg), pkg.getStaticSharedLibName(), pkg.getStaticSharedLibVersion(), 2, new VersionedPackage(pkg.getManifestPackageName(), pkg.getLongVersionCode()), null, null);
    }

    public static SharedLibraryInfo createSharedLibraryForDynamic(AndroidPackage pkg, String name) {
        return new SharedLibraryInfo(null, pkg.getPackageName(), getAllCodePaths(pkg), name, -1L, 1, new VersionedPackage(pkg.getPackageName(), pkg.getLongVersionCode()), null, null);
    }

    public static Map<String, String> getPackageDexMetadata(AndroidPackage pkg) {
        return DexMetadataHelper.buildPackageApkToDexMetadataMap(getAllCodePaths(pkg));
    }

    public static void validatePackageDexMetadata(AndroidPackage pkg) throws PackageParser.PackageParserException {
        Collection<String> apkToDexMetadataList = getPackageDexMetadata(pkg).values();
        for (String dexMetadata : apkToDexMetadataList) {
            DexMetadataHelper.validateDexMetadataFile(dexMetadata);
        }
    }

    public static NativeLibraryHelper.Handle createNativeLibraryHandle(AndroidPackage pkg) throws IOException {
        return NativeLibraryHelper.Handle.create(getAllCodePaths(pkg), pkg.isMultiArch(), pkg.isExtractNativeLibs(), pkg.isDebuggable());
    }

    public static boolean canHaveOatDir(AndroidPackage pkg, boolean isUpdatedSystemApp) {
        return (!pkg.isSystem() || isUpdatedSystemApp) && !IncrementalManager.isIncrementalPath(pkg.getCodePath());
    }

    public static boolean hasComponentClassName(AndroidPackage pkg, String className) {
        List<ParsedActivity> activities = pkg.getActivities();
        int activitiesSize = activities.size();
        for (int index = 0; index < activitiesSize; index++) {
            if (Objects.equals(className, activities.get(index).getName())) {
                return true;
            }
        }
        List<ParsedActivity> receivers = pkg.getReceivers();
        int receiversSize = receivers.size();
        for (int index2 = 0; index2 < receiversSize; index2++) {
            if (Objects.equals(className, receivers.get(index2).getName())) {
                return true;
            }
        }
        List<ParsedProvider> providers = pkg.getProviders();
        int providersSize = providers.size();
        for (int index3 = 0; index3 < providersSize; index3++) {
            if (Objects.equals(className, providers.get(index3).getName())) {
                return true;
            }
        }
        List<ParsedService> services = pkg.getServices();
        int servicesSize = services.size();
        for (int index4 = 0; index4 < servicesSize; index4++) {
            if (Objects.equals(className, services.get(index4).getName())) {
                return true;
            }
        }
        List<ParsedInstrumentation> instrumentations = pkg.getInstrumentations();
        int instrumentationsSize = instrumentations.size();
        for (int index5 = 0; index5 < instrumentationsSize; index5++) {
            if (Objects.equals(className, instrumentations.get(index5).getName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEncryptionAware(AndroidPackage pkg) {
        return pkg.isDirectBootAware() || pkg.isPartiallyDirectBootAware();
    }

    public static boolean isLibrary(AndroidPackage pkg) {
        return (pkg.getStaticSharedLibName() == null && pkg.getLibraryNames().isEmpty()) ? false : true;
    }

    public static int getHiddenApiEnforcementPolicy(AndroidPackage pkg, PackageSetting pkgSetting) {
        boolean isAllowedToUseHiddenApis;
        if (pkg.isSignedWithPlatformKey()) {
            isAllowedToUseHiddenApis = true;
        } else {
            boolean isAllowedToUseHiddenApis2 = pkg.isSystem();
            if (isAllowedToUseHiddenApis2 || pkgSetting.getPkgState().isUpdatedSystemApp()) {
                boolean isAllowedToUseHiddenApis3 = pkg.isUsesNonSdkApi();
                isAllowedToUseHiddenApis = isAllowedToUseHiddenApis3 || SystemConfig.getInstance().getHiddenApiWhitelistedApps().contains(pkg.getPackageName());
            } else {
                isAllowedToUseHiddenApis = false;
            }
        }
        return isAllowedToUseHiddenApis ? 0 : 2;
    }

    public static int getIcon(ParsingPackageRead pkg) {
        return (!PackageParser.sUseRoundIcon || pkg.getRoundIconRes() == 0) ? pkg.getIconRes() : pkg.getRoundIconRes();
    }

    public static long getLongVersionCode(AndroidPackage pkg) {
        return PackageInfo.composeLongVersionCode(pkg.getVersionCodeMajor(), pkg.getVersionCode());
    }

    public static boolean isMatchForSystemOnly(AndroidPackage pkg, int flags) {
        if ((1048576 & flags) != 0) {
            return pkg.isSystem();
        }
        return true;
    }

    public static String getPrimaryCpuAbi(AndroidPackage pkg, PackageSetting pkgSetting) {
        if (pkgSetting == null || TextUtils.isEmpty(pkgSetting.primaryCpuAbiString)) {
            return pkg.getPrimaryCpuAbi();
        }
        return pkgSetting.primaryCpuAbiString;
    }

    public static String getSecondaryCpuAbi(AndroidPackage pkg, PackageSetting pkgSetting) {
        if (pkgSetting == null || TextUtils.isEmpty(pkgSetting.secondaryCpuAbiString)) {
            return pkg.getSecondaryCpuAbi();
        }
        return pkgSetting.secondaryCpuAbiString;
    }

    public static String getRawPrimaryCpuAbi(AndroidPackage pkg) {
        return pkg.getPrimaryCpuAbi();
    }

    public static String getRawSecondaryCpuAbi(AndroidPackage pkg) {
        return pkg.getSecondaryCpuAbi();
    }

    public static String getSeInfo(AndroidPackage pkg, PackageSetting pkgSetting) {
        if (pkgSetting != null) {
            String overrideSeInfo = pkgSetting.getPkgState().getOverrideSeInfo();
            if (!TextUtils.isEmpty(overrideSeInfo)) {
                return overrideSeInfo;
            }
        }
        return pkg.getSeInfo();
    }
}
