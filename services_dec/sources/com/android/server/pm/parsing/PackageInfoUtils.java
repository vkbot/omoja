package com.android.server.pm.parsing;

import android.apex.ApexInfo;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageUserState;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProcessInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.parsing.PackageInfoWithoutStateUtils;
import android.content.pm.parsing.component.ComponentParseUtils;
import android.content.pm.parsing.component.ParsedActivity;
import android.content.pm.parsing.component.ParsedComponent;
import android.content.pm.parsing.component.ParsedInstrumentation;
import android.content.pm.parsing.component.ParsedMainComponent;
import android.content.pm.parsing.component.ParsedPermission;
import android.content.pm.parsing.component.ParsedPermissionGroup;
import android.content.pm.parsing.component.ParsedProcess;
import android.content.pm.parsing.component.ParsedProvider;
import android.content.pm.parsing.component.ParsedService;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.server.pm.PackageSetting;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.pkg.PackageStateUnserialized;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class PackageInfoUtils {
    private static final String TAG = "PackageParser2";

    public static PackageInfo generate(AndroidPackage pkg, int[] gids, int flags, long firstInstallTime, long lastUpdateTime, Set<String> grantedPermissions, PackageUserState state, int userId, PackageSetting pkgSetting) {
        return generateWithComponents(pkg, gids, flags, firstInstallTime, lastUpdateTime, grantedPermissions, state, userId, null, pkgSetting);
    }

    public static PackageInfo generate(AndroidPackage pkg, ApexInfo apexInfo, int flags, PackageSetting pkgSetting) {
        return generateWithComponents(pkg, EmptyArray.INT, flags, 0L, 0L, Collections.emptySet(), new PackageUserState(), UserHandle.getCallingUserId(), apexInfo, pkgSetting);
    }

    private static PackageInfo generateWithComponents(AndroidPackage pkg, int[] gids, int flags, long firstInstallTime, long lastUpdateTime, Set<String> grantedPermissions, PackageUserState state, int userId, ApexInfo apexInfo, PackageSetting pkgSetting) {
        int N;
        int size;
        int size2;
        int size3;
        int N2;
        ApplicationInfo applicationInfo = generateApplicationInfo(pkg, flags, state, userId, pkgSetting);
        if (applicationInfo == null) {
            return null;
        }
        PackageInfo info = PackageInfoWithoutStateUtils.generateWithoutComponentsUnchecked(pkg, gids, flags, firstInstallTime, lastUpdateTime, grantedPermissions, state, userId, apexInfo, applicationInfo);
        info.isStub = pkg.isStub();
        info.coreApp = pkg.isCoreApp();
        if ((flags & 1) != 0 && (N2 = pkg.getActivities().size()) > 0) {
            ActivityInfo[] res = new ActivityInfo[N2];
            int num = 0;
            for (int i = 0; i < N2; i++) {
                ParsedActivity a = pkg.getActivities().get(i);
                if (ComponentParseUtils.isMatch(state, pkg.isSystem(), pkg.isEnabled(), a, flags) && !PackageManager.APP_DETAILS_ACTIVITY_CLASS_NAME.equals(a.getName())) {
                    res[num] = generateActivityInfo(pkg, a, flags, state, applicationInfo, userId, pkgSetting);
                    num++;
                }
            }
            info.activities = (ActivityInfo[]) ArrayUtils.trimToSize(res, num);
        }
        if ((flags & 2) != 0 && (size3 = pkg.getReceivers().size()) > 0) {
            ActivityInfo[] res2 = new ActivityInfo[size3];
            int num2 = 0;
            for (int i2 = 0; i2 < size3; i2++) {
                ParsedActivity a2 = pkg.getReceivers().get(i2);
                if (ComponentParseUtils.isMatch(state, pkg.isSystem(), pkg.isEnabled(), a2, flags)) {
                    res2[num2] = generateActivityInfo(pkg, a2, flags, state, applicationInfo, userId, pkgSetting);
                    num2++;
                }
            }
            info.receivers = (ActivityInfo[]) ArrayUtils.trimToSize(res2, num2);
        }
        if ((flags & 4) != 0 && (size2 = pkg.getServices().size()) > 0) {
            ServiceInfo[] res3 = new ServiceInfo[size2];
            int num3 = 0;
            for (int i3 = 0; i3 < size2; i3++) {
                ParsedService s = pkg.getServices().get(i3);
                if (ComponentParseUtils.isMatch(state, pkg.isSystem(), pkg.isEnabled(), s, flags)) {
                    res3[num3] = generateServiceInfo(pkg, s, flags, state, applicationInfo, userId, pkgSetting);
                    num3++;
                }
            }
            info.services = (ServiceInfo[]) ArrayUtils.trimToSize(res3, num3);
        }
        if ((flags & 8) != 0 && (size = pkg.getProviders().size()) > 0) {
            ProviderInfo[] res4 = new ProviderInfo[size];
            int num4 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                ParsedProvider pr = pkg.getProviders().get(i4);
                if (ComponentParseUtils.isMatch(state, pkg.isSystem(), pkg.isEnabled(), pr, flags)) {
                    res4[num4] = generateProviderInfo(pkg, pr, flags, state, applicationInfo, userId, pkgSetting);
                    num4++;
                }
            }
            info.providers = (ProviderInfo[]) ArrayUtils.trimToSize(res4, num4);
        }
        if ((flags & 16) != 0 && (N = pkg.getInstrumentations().size()) > 0) {
            info.instrumentation = new InstrumentationInfo[N];
            for (int i5 = 0; i5 < N; i5++) {
                info.instrumentation[i5] = generateInstrumentationInfo(pkg.getInstrumentations().get(i5), pkg, flags, userId, pkgSetting);
            }
        }
        return info;
    }

    public static ApplicationInfo generateApplicationInfo(AndroidPackage pkg, int flags, PackageUserState state, int userId, PackageSetting pkgSetting) {
        if (pkg == null || !checkUseInstalledOrHidden(pkg, pkgSetting, state, flags) || !AndroidPackageUtils.isMatchForSystemOnly(pkg, flags)) {
            return null;
        }
        ApplicationInfo info = PackageInfoWithoutStateUtils.generateApplicationInfoUnchecked(pkg, flags, state, userId);
        if (pkgSetting != null) {
            PackageStateUnserialized pkgState = pkgSetting.getPkgState();
            info.hiddenUntilInstalled = pkgState.isHiddenUntilInstalled();
            List<String> usesLibraryFiles = pkgState.getUsesLibraryFiles();
            List<SharedLibraryInfo> usesLibraryInfos = pkgState.getUsesLibraryInfos();
            info.sharedLibraryFiles = usesLibraryFiles.isEmpty() ? null : (String[]) usesLibraryFiles.toArray(new String[0]);
            info.sharedLibraryInfos = usesLibraryInfos.isEmpty() ? null : usesLibraryInfos;
        }
        info.seInfo = AndroidPackageUtils.getSeInfo(pkg, pkgSetting);
        info.primaryCpuAbi = AndroidPackageUtils.getPrimaryCpuAbi(pkg, pkgSetting);
        info.secondaryCpuAbi = AndroidPackageUtils.getSecondaryCpuAbi(pkg, pkgSetting);
        info.flags |= appInfoFlags(info.flags, pkgSetting);
        info.privateFlags |= appInfoPrivateFlags(info.privateFlags, pkgSetting);
        return info;
    }

    public static ActivityInfo generateActivityInfo(AndroidPackage pkg, ParsedActivity a, int flags, PackageUserState state, int userId, PackageSetting pkgSetting) {
        return generateActivityInfo(pkg, a, flags, state, null, userId, pkgSetting);
    }

    private static ActivityInfo generateActivityInfo(AndroidPackage pkg, ParsedActivity a, int flags, PackageUserState state, ApplicationInfo applicationInfo, int userId, PackageSetting pkgSetting) {
        if (a == null || !checkUseInstalledOrHidden(pkg, pkgSetting, state, flags)) {
            return null;
        }
        if (applicationInfo == null) {
            applicationInfo = generateApplicationInfo(pkg, flags, state, userId, pkgSetting);
        }
        if (applicationInfo == null) {
            return null;
        }
        ActivityInfo info = PackageInfoWithoutStateUtils.generateActivityInfoUnchecked(a, applicationInfo);
        assignSharedFieldsForComponentInfo(info, a, pkgSetting, userId);
        return info;
    }

    public static ServiceInfo generateServiceInfo(AndroidPackage pkg, ParsedService s, int flags, PackageUserState state, int userId, PackageSetting pkgSetting) {
        return generateServiceInfo(pkg, s, flags, state, null, userId, pkgSetting);
    }

    private static ServiceInfo generateServiceInfo(AndroidPackage pkg, ParsedService s, int flags, PackageUserState state, ApplicationInfo applicationInfo, int userId, PackageSetting pkgSetting) {
        if (s == null || !checkUseInstalledOrHidden(pkg, pkgSetting, state, flags)) {
            return null;
        }
        if (applicationInfo == null) {
            applicationInfo = generateApplicationInfo(pkg, flags, state, userId, pkgSetting);
        }
        if (applicationInfo == null) {
            return null;
        }
        ServiceInfo info = PackageInfoWithoutStateUtils.generateServiceInfoUnchecked(s, applicationInfo);
        assignSharedFieldsForComponentInfo(info, s, pkgSetting, userId);
        return info;
    }

    public static ProviderInfo generateProviderInfo(AndroidPackage pkg, ParsedProvider p, int flags, PackageUserState state, ApplicationInfo applicationInfo, int userId, PackageSetting pkgSetting) {
        if (p == null || !checkUseInstalledOrHidden(pkg, pkgSetting, state, flags)) {
            return null;
        }
        if (applicationInfo == null || !pkg.getPackageName().equals(applicationInfo.packageName)) {
            StringBuilder sb = new StringBuilder();
            sb.append("AppInfo's package name is different. Expected=");
            sb.append(pkg.getPackageName());
            sb.append(" actual=");
            sb.append(applicationInfo == null ? "(null AppInfo)" : applicationInfo.packageName);
            Slog.wtf(TAG, sb.toString());
            applicationInfo = generateApplicationInfo(pkg, flags, state, userId, pkgSetting);
        }
        if (applicationInfo == null) {
            return null;
        }
        ProviderInfo info = PackageInfoWithoutStateUtils.generateProviderInfoUnchecked(p, flags, applicationInfo);
        assignSharedFieldsForComponentInfo(info, p, pkgSetting, userId);
        return info;
    }

    public static InstrumentationInfo generateInstrumentationInfo(ParsedInstrumentation i, AndroidPackage pkg, int flags, int userId, PackageSetting pkgSetting) {
        InstrumentationInfo info;
        if (i == null || (info = PackageInfoWithoutStateUtils.generateInstrumentationInfo(i, pkg, flags, userId)) == null) {
            return null;
        }
        info.primaryCpuAbi = AndroidPackageUtils.getPrimaryCpuAbi(pkg, pkgSetting);
        info.secondaryCpuAbi = AndroidPackageUtils.getSecondaryCpuAbi(pkg, pkgSetting);
        info.nativeLibraryDir = pkg.getNativeLibraryDir();
        info.secondaryNativeLibraryDir = pkg.getSecondaryNativeLibraryDir();
        assignStateFieldsForPackageItemInfo(info, i, pkgSetting, userId);
        return info;
    }

    public static PermissionInfo generatePermissionInfo(ParsedPermission p, int flags) {
        if (p == null) {
            return null;
        }
        return PackageInfoWithoutStateUtils.generatePermissionInfo(p, flags);
    }

    public static PermissionGroupInfo generatePermissionGroupInfo(ParsedPermissionGroup pg, int flags) {
        if (pg == null) {
            return null;
        }
        return PackageInfoWithoutStateUtils.generatePermissionGroupInfo(pg, flags);
    }

    public static ArrayMap<String, ProcessInfo> generateProcessInfo(Map<String, ParsedProcess> procs, int flags) {
        if (procs == null) {
            return null;
        }
        int numProcs = procs.size();
        ArrayMap<String, ProcessInfo> retProcs = new ArrayMap<>(numProcs);
        for (String key : procs.keySet()) {
            ParsedProcess proc = procs.get(key);
            retProcs.put(proc.getName(), new ProcessInfo(proc.getName(), new ArraySet(proc.getDeniedPermissions()), proc.getGwpAsanMode()));
        }
        return retProcs;
    }

    private static boolean checkUseInstalledOrHidden(AndroidPackage pkg, PackageSetting pkgSetting, PackageUserState state, int flags) {
        if ((flags & AudioFormat.APTX) == 0 && !state.installed && pkgSetting != null && pkgSetting.getPkgState().isHiddenUntilInstalled()) {
            return false;
        }
        if (!state.isAvailable(flags)) {
            if (!pkg.isSystem()) {
                return false;
            }
            if ((4202496 & flags) == 0 && (536870912 & flags) == 0) {
                return false;
            }
        }
        return true;
    }

    private static void assignSharedFieldsForComponentInfo(ComponentInfo componentInfo, ParsedMainComponent mainComponent, PackageSetting pkgSetting, int userId) {
        assignStateFieldsForPackageItemInfo(componentInfo, mainComponent, pkgSetting, userId);
        componentInfo.descriptionRes = mainComponent.getDescriptionRes();
        componentInfo.directBootAware = mainComponent.isDirectBootAware();
        componentInfo.enabled = mainComponent.isEnabled();
        componentInfo.splitName = mainComponent.getSplitName();
    }

    private static void assignStateFieldsForPackageItemInfo(PackageItemInfo packageItemInfo, ParsedComponent component, PackageSetting pkgSetting, int userId) {
        Pair<CharSequence, Integer> labelAndIcon = ParsedComponentStateUtils.getNonLocalizedLabelAndIcon(component, pkgSetting, userId);
        packageItemInfo.nonLocalizedLabel = (CharSequence) labelAndIcon.first;
        packageItemInfo.icon = ((Integer) labelAndIcon.second).intValue();
    }

    private static int flag(boolean hasFlag, int flag) {
        if (hasFlag) {
            return flag;
        }
        return 0;
    }

    public static int appInfoFlags(AndroidPackage pkg, PackageSetting pkgSetting) {
        int pkgWithoutStateFlags = PackageInfoWithoutStateUtils.appInfoFlags(pkg) | flag(pkg.isSystem(), 1) | flag(pkg.isFactoryTest(), 16);
        return appInfoFlags(pkgWithoutStateFlags, pkgSetting);
    }

    public static int appInfoFlags(int pkgWithoutStateFlags, PackageSetting pkgSetting) {
        if (pkgSetting != null) {
            int flags = pkgWithoutStateFlags | flag(pkgSetting.getPkgState().isUpdatedSystemApp(), 128);
            return flags;
        }
        return pkgWithoutStateFlags;
    }

    public static int appInfoPrivateFlags(AndroidPackage pkg, PackageSetting pkgSetting) {
        int pkgWithoutStateFlags = PackageInfoWithoutStateUtils.appInfoPrivateFlags(pkg) | flag(pkg.isSystemExt(), 2097152) | flag(pkg.isPrivileged(), 8) | flag(pkg.isOem(), 131072) | flag(pkg.isVendor(), 262144) | flag(pkg.isProduct(), 524288) | flag(pkg.isOdm(), 1073741824) | flag(pkg.isSignedWithPlatformKey(), 1048576);
        return appInfoPrivateFlags(pkgWithoutStateFlags, pkgSetting);
    }

    public static int appInfoPrivateFlags(int pkgWithoutStateFlags, PackageSetting pkgSetting) {
        return pkgWithoutStateFlags;
    }

    public static class CachedApplicationInfoGenerator {
        private ArrayMap<String, ApplicationInfo> mCache = new ArrayMap<>();

        public ApplicationInfo generate(AndroidPackage pkg, int flags, PackageUserState state, int userId, PackageSetting pkgSetting) {
            ApplicationInfo appInfo = this.mCache.get(pkg.getPackageName());
            if (appInfo != null) {
                return appInfo;
            }
            ApplicationInfo appInfo2 = PackageInfoUtils.generateApplicationInfo(pkg, flags, state, userId, pkgSetting);
            this.mCache.put(pkg.getPackageName(), appInfo2);
            return appInfo2;
        }
    }
}
