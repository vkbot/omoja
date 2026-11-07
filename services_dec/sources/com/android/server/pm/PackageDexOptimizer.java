package com.android.server.pm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.dex.ArtManager;
import android.content.pm.dex.DexMetadataHelper;
import android.os.FileUtils;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.WorkSource;
import android.os.storage.StorageManager;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.pm.dex.ArtManagerService;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.dex.DexoptOptions;
import com.android.server.pm.dex.DexoptUtils;
import com.android.server.pm.dex.PackageDexUsage;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PackageDexOptimizer {
    public static final int DEX_OPT_FAILED = -1;
    public static final int DEX_OPT_PERFORMED = 1;
    public static final int DEX_OPT_SKIPPED = 0;
    static final String OAT_DIR_NAME = "oat";
    private static final String TAG = "PackageDexOptimizer";
    private static final long WAKELOCK_TIMEOUT_MS = 660000;
    private final PowerManager.WakeLock mDexoptWakeLock;
    private final Object mInstallLock;
    private final Installer mInstaller;
    private volatile boolean mSystemReady;

    PackageDexOptimizer(Installer installer, Object installLock, Context context, String wakeLockTag) {
        this.mInstaller = installer;
        this.mInstallLock = installLock;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mDexoptWakeLock = powerManager.newWakeLock(1, wakeLockTag);
    }

    protected PackageDexOptimizer(PackageDexOptimizer from) {
        this.mInstaller = from.mInstaller;
        this.mInstallLock = from.mInstallLock;
        this.mDexoptWakeLock = from.mDexoptWakeLock;
        this.mSystemReady = from.mSystemReady;
    }

    static boolean canOptimizePackage(AndroidPackage pkg) {
        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg.getPackageName()) && !pkg.isHasCode()) {
            return false;
        }
        return true;
    }

    int performDexOpt(AndroidPackage pkg, PackageSetting pkgSetting, String[] instructionSets, CompilerStats.PackageStats packageStats, PackageDexUsage.PackageUseInfo packageUseInfo, DexoptOptions options) {
        int iPerformDexOptLI;
        if (PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg.getPackageName())) {
            throw new IllegalArgumentException("System server dexopting should be done via  DexManager and PackageDexOptimizer#dexoptSystemServerPath");
        }
        if (pkg.getUid() == -1) {
            throw new IllegalArgumentException("Dexopt for " + pkg.getPackageName() + " has invalid uid.");
        }
        if (!canOptimizePackage(pkg)) {
            return 0;
        }
        synchronized (this.mInstallLock) {
            long acquireTime = acquireWakeLockLI(pkg.getUid());
            try {
                iPerformDexOptLI = performDexOptLI(pkg, pkgSetting, instructionSets, packageStats, packageUseInfo, options);
                releaseWakeLockLI(acquireTime);
            } catch (Throwable th) {
                releaseWakeLockLI(acquireTime);
                throw th;
            }
        }
        return iPerformDexOptLI;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0104  */
    private int performDexOptLI(AndroidPackage pkg, PackageSetting pkgSetting, String[] targetInstructionSets, CompilerStats.PackageStats packageStats, PackageDexUsage.PackageUseInfo packageUseInfo, DexoptOptions options) {
        int sharedGid;
        int i;
        String[] classLoaderContexts;
        boolean[] pathsWithCode;
        int sharedGid2;
        int i2;
        List<String> paths;
        String[] dexCodeInstructionSets;
        String dexMetadataPath;
        AndroidPackage androidPackage = pkg;
        List<SharedLibraryInfo> sharedLibraries = pkgSetting.getPkgState().getUsesLibraryInfos();
        String[] instructionSets = targetInstructionSets != null ? targetInstructionSets : InstructionSets.getAppDexInstructionSets(AndroidPackageUtils.getPrimaryCpuAbi(pkg, pkgSetting), AndroidPackageUtils.getSecondaryCpuAbi(pkg, pkgSetting));
        String[] dexCodeInstructionSets2 = InstructionSets.getDexCodeInstructionSets(instructionSets);
        List<String> paths2 = AndroidPackageUtils.getAllCodePaths(pkg);
        int sharedGid3 = UserHandle.getSharedAppGid(pkg.getUid());
        int i3 = -1;
        if (sharedGid3 != -1) {
            sharedGid = sharedGid3;
        } else {
            Slog.wtf(TAG, "Well this is awkward; package " + pkg.getPackageName() + " had UID " + pkg.getUid(), new Throwable());
            sharedGid = 9999;
        }
        boolean[] pathsWithCode2 = new boolean[paths2.size()];
        pathsWithCode2[0] = pkg.isHasCode();
        int i4 = 1;
        while (true) {
            boolean z = true;
            if (i4 >= paths2.size()) {
                break;
            }
            if ((pkg.getSplitFlags()[i4 - 1] & 4) == 0) {
                z = false;
            }
            pathsWithCode2[i4] = z;
            i4++;
        }
        String[] classLoaderContexts2 = DexoptUtils.getClassLoaderContexts(androidPackage, sharedLibraries, pathsWithCode2);
        if (paths2.size() != classLoaderContexts2.length) {
            String[] splitCodePaths = pkg.getSplitCodePaths();
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths=");
            sb.append(paths2);
            sb.append(" pkg.getBaseCodePath=");
            sb.append(pkg.getBaseCodePath());
            sb.append(" pkg.getSplitCodePaths=");
            sb.append(splitCodePaths == null ? "null" : Arrays.toString(splitCodePaths));
            throw new IllegalStateException(sb.toString());
        }
        int result = 0;
        int i5 = 0;
        while (i5 < paths2.size()) {
            if (!pathsWithCode2[i5]) {
                i = i5;
                classLoaderContexts = classLoaderContexts2;
                pathsWithCode = pathsWithCode2;
                sharedGid2 = sharedGid;
                i2 = i3;
                paths = paths2;
                dexCodeInstructionSets = dexCodeInstructionSets2;
            } else {
                if (classLoaderContexts2[i5] == null) {
                    int i6 = i5;
                    throw new IllegalStateException("Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index=" + i6 + " path=" + paths2.get(i6));
                }
                String path = paths2.get(i5);
                if (options.getSplitName() != null && !options.getSplitName().equals(new File(path).getName())) {
                    i = i5;
                    classLoaderContexts = classLoaderContexts2;
                    pathsWithCode = pathsWithCode2;
                    sharedGid2 = sharedGid;
                    i2 = i3;
                    paths = paths2;
                    dexCodeInstructionSets = dexCodeInstructionSets2;
                } else {
                    String profileName = ArtManager.getProfileName(i5 == 0 ? null : pkg.getSplitNames()[i5 - 1]);
                    if (!options.isDexoptInstallWithDexMetadata()) {
                        dexMetadataPath = null;
                    } else {
                        File dexMetadataFile = DexMetadataHelper.findDexMetadataForFile(new File(path));
                        String dexMetadataPath2 = dexMetadataFile != null ? dexMetadataFile.getAbsolutePath() : null;
                        dexMetadataPath = dexMetadataPath2;
                    }
                    boolean isUsedByOtherApps = options.isDexoptAsSharedLibrary() || packageUseInfo.isUsedByOtherApps(path);
                    String compilerFilter = getRealCompilerFilter(androidPackage, options.getCompilerFilter(), isUsedByOtherApps);
                    boolean profileUpdated = options.isCheckForProfileUpdates() && isProfileUpdated(androidPackage, sharedGid, profileName, compilerFilter);
                    String compilerFilter2 = compilerFilter;
                    List<String> paths3 = paths2;
                    int dexoptFlags = getDexFlags(androidPackage, pkgSetting, compilerFilter2, options);
                    int length = dexCodeInstructionSets2.length;
                    int i7 = 0;
                    while (i7 < length) {
                        String dexCodeIsa = dexCodeInstructionSets2[i7];
                        int i8 = length;
                        int result2 = result;
                        boolean isUsedByOtherApps2 = isUsedByOtherApps;
                        String profileName2 = profileName;
                        String path2 = path;
                        int i9 = i5;
                        String[] classLoaderContexts3 = classLoaderContexts2;
                        boolean[] pathsWithCode3 = pathsWithCode2;
                        int sharedGid4 = sharedGid;
                        int result3 = i3;
                        List<String> paths4 = paths3;
                        String[] dexCodeInstructionSets3 = dexCodeInstructionSets2;
                        String compilerFilter3 = compilerFilter2;
                        boolean profileUpdated2 = profileUpdated;
                        int i10 = i7;
                        result = dexOptPath(pkg, pkgSetting, path, dexCodeIsa, compilerFilter2, profileUpdated2, classLoaderContexts2[i5], dexoptFlags, sharedGid, packageStats, options.isDowngrade(), profileName2, dexMetadataPath, options.getCompilationReason());
                        if (result2 == result3 || result == 0) {
                            result = result2;
                        }
                        int result4 = i10 + 1;
                        profileUpdated = profileUpdated2;
                        i3 = result3;
                        dexCodeInstructionSets2 = dexCodeInstructionSets3;
                        pathsWithCode2 = pathsWithCode3;
                        compilerFilter2 = compilerFilter3;
                        length = i8;
                        profileName = profileName2;
                        path = path2;
                        i5 = i9;
                        classLoaderContexts2 = classLoaderContexts3;
                        sharedGid = sharedGid4;
                        paths3 = paths4;
                        i7 = result4;
                        isUsedByOtherApps = isUsedByOtherApps2;
                    }
                    i = i5;
                    classLoaderContexts = classLoaderContexts2;
                    pathsWithCode = pathsWithCode2;
                    sharedGid2 = sharedGid;
                    i2 = i3;
                    paths = paths3;
                    dexCodeInstructionSets = dexCodeInstructionSets2;
                }
            }
            i5 = i + 1;
            androidPackage = pkg;
            i3 = i2;
            sharedLibraries = sharedLibraries;
            dexCodeInstructionSets2 = dexCodeInstructionSets;
            pathsWithCode2 = pathsWithCode;
            classLoaderContexts2 = classLoaderContexts;
            sharedGid = sharedGid2;
            paths2 = paths;
        }
        return result;
    }

    private int dexOptPath(AndroidPackage pkg, PackageSetting pkgSetting, String path, String isa, String compilerFilter, boolean profileUpdated, String classLoaderContext, int dexoptFlags, int uid, CompilerStats.PackageStats packageStats, boolean downgrade, String profileName, String dexMetadataPath, int compilationReason) {
        int dexoptNeeded = getDexoptNeeded(path, isa, compilerFilter, classLoaderContext, profileUpdated, downgrade);
        if (Math.abs(dexoptNeeded) == 0) {
            return 0;
        }
        String oatDir = getPackageOatDirIfSupported(pkg, pkgSetting.getPkgState().isUpdatedSystemApp());
        Log.i(TAG, "Running dexopt (dexoptNeeded=" + dexoptNeeded + ") on: " + path + " pkg=" + pkg.getPackageName() + " isa=" + isa + " dexoptFlags=" + printDexoptFlags(dexoptFlags) + " targetFilter=" + compilerFilter + " oatDir=" + oatDir + " classLoaderContext=" + classLoaderContext);
        try {
            long startTime = System.currentTimeMillis();
            String seInfo = AndroidPackageUtils.getSeInfo(pkg, pkgSetting);
            try {
                this.mInstaller.dexopt(path, uid, pkg.getPackageName(), isa, dexoptNeeded, oatDir, dexoptFlags, compilerFilter, pkg.getVolumeUuid(), classLoaderContext, seInfo, false, pkg.getTargetSdkVersion(), profileName, dexMetadataPath, getAugmentedReasonName(compilationReason, dexMetadataPath != null));
                if (packageStats != null) {
                    long endTime = System.currentTimeMillis();
                    packageStats.setCompileTime(path, (int) (endTime - startTime));
                }
                return 1;
            } catch (Installer.InstallerException e) {
                e = e;
                Slog.w(TAG, "Failed to dexopt", e);
                return -1;
            }
        } catch (Installer.InstallerException e2) {
            e = e2;
        }
    }

    public int dexoptSystemServerPath(String dexPath, PackageDexUsage.DexUseInfo dexUseInfo, DexoptOptions options) {
        int dexoptFlags = (options.isDexoptIdleBackgroundJob() ? 512 : 0) | (options.isBootComplete() ? 8 : 0) | 2;
        int result = 0;
        for (String isa : dexUseInfo.getLoaderIsas()) {
            int dexoptNeeded = getDexoptNeeded(dexPath, isa, options.getCompilerFilter(), dexUseInfo.getClassLoaderContext(), false, false);
            if (dexoptNeeded != 0) {
                try {
                    this.mInstaller.dexopt(dexPath, 1000, PackageManagerService.PLATFORM_PACKAGE_NAME, isa, dexoptNeeded, null, dexoptFlags, options.getCompilerFilter(), StorageManager.UUID_PRIVATE_INTERNAL, dexUseInfo.getClassLoaderContext(), null, false, 0, null, null, PackageManagerServiceCompilerMapping.getReasonName(options.getCompilationReason()));
                    result = 1;
                } catch (Installer.InstallerException e) {
                    Slog.w(TAG, "Failed to dexopt", e);
                    return -1;
                }
            }
        }
        return result;
    }

    private String getAugmentedReasonName(int compilationReason, boolean useDexMetadata) {
        String annotation = useDexMetadata ? ArtManagerService.DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION : "";
        return PackageManagerServiceCompilerMapping.getReasonName(compilationReason) + annotation;
    }

    public int dexOptSecondaryDexPath(ApplicationInfo info, String path, PackageDexUsage.DexUseInfo dexUseInfo, DexoptOptions options) {
        int iDexOptSecondaryDexPathLI;
        if (info.uid == -1) {
            throw new IllegalArgumentException("Dexopt for path " + path + " has invalid uid.");
        }
        synchronized (this.mInstallLock) {
            long acquireTime = acquireWakeLockLI(info.uid);
            try {
                iDexOptSecondaryDexPathLI = dexOptSecondaryDexPathLI(info, path, dexUseInfo, options);
                releaseWakeLockLI(acquireTime);
            } catch (Throwable th) {
                releaseWakeLockLI(acquireTime);
                throw th;
            }
        }
        return iDexOptSecondaryDexPathLI;
    }

    private long acquireWakeLockLI(int uid) {
        if (!this.mSystemReady) {
            return -1L;
        }
        this.mDexoptWakeLock.setWorkSource(new WorkSource(uid));
        this.mDexoptWakeLock.acquire(WAKELOCK_TIMEOUT_MS);
        return SystemClock.elapsedRealtime();
    }

    private void releaseWakeLockLI(long acquireTime) {
        if (acquireTime < 0) {
            return;
        }
        try {
            if (this.mDexoptWakeLock.isHeld()) {
                this.mDexoptWakeLock.release();
            }
            long duration = SystemClock.elapsedRealtime() - acquireTime;
            if (duration >= WAKELOCK_TIMEOUT_MS) {
                Slog.wtf(TAG, "WakeLock " + this.mDexoptWakeLock.getTag() + " time out. Operation took " + duration + " ms. Thread: " + Thread.currentThread().getName());
            }
        } catch (Exception e) {
            Slog.wtf(TAG, "Error while releasing " + this.mDexoptWakeLock.getTag() + " lock", e);
        }
    }

    private int dexOptSecondaryDexPathLI(ApplicationInfo info, String path, PackageDexUsage.DexUseInfo dexUseInfo, DexoptOptions options) {
        int dexoptFlags;
        String compilerFilter;
        String classLoaderContext;
        String str;
        if (options.isDexoptOnlySharedDex() && !dexUseInfo.isUsedByOtherApps()) {
            return 0;
        }
        String compilerFilter2 = getRealCompilerFilter(info, options.getCompilerFilter(), dexUseInfo.isUsedByOtherApps());
        int dexoptFlags2 = getDexFlags(info, compilerFilter2, options) | 32;
        String str2 = info.deviceProtectedDataDir;
        String str3 = TAG;
        if (str2 != null && FileUtils.contains(info.deviceProtectedDataDir, path)) {
            dexoptFlags = dexoptFlags2 | 256;
        } else {
            if (info.credentialProtectedDataDir == null || !FileUtils.contains(info.credentialProtectedDataDir, path)) {
                Slog.e(TAG, "Could not infer CE/DE storage for package " + info.packageName);
                return -1;
            }
            dexoptFlags = dexoptFlags2 | 128;
        }
        if (dexUseInfo.isUnsupportedClassLoaderContext() || dexUseInfo.isVariableClassLoaderContext()) {
            compilerFilter = "extract";
            classLoaderContext = null;
        } else {
            String classLoaderContext2 = dexUseInfo.getClassLoaderContext();
            compilerFilter = compilerFilter2;
            classLoaderContext = classLoaderContext2;
        }
        int reason = options.getCompilationReason();
        Log.d(TAG, "Running dexopt on: " + path + " pkg=" + info.packageName + " isa=" + dexUseInfo.getLoaderIsas() + " reason=" + PackageManagerServiceCompilerMapping.getReasonName(reason) + " dexoptFlags=" + printDexoptFlags(dexoptFlags) + " target-filter=" + compilerFilter + " class-loader-context=" + classLoaderContext);
        try {
            for (String isa : dexUseInfo.getLoaderIsas()) {
                String classLoaderContext3 = classLoaderContext;
                String compilerFilter3 = compilerFilter;
                int dexoptFlags3 = dexoptFlags;
                str = str3;
                try {
                    this.mInstaller.dexopt(path, info.uid, info.packageName, isa, 0, null, dexoptFlags, compilerFilter, info.volumeUuid, classLoaderContext3, info.seInfo, options.isDowngrade(), info.targetSdkVersion, null, null, PackageManagerServiceCompilerMapping.getReasonName(reason));
                    classLoaderContext = classLoaderContext3;
                    compilerFilter = compilerFilter3;
                    dexoptFlags = dexoptFlags3;
                    str3 = str;
                } catch (Installer.InstallerException e) {
                    e = e;
                    Slog.w(str, "Failed to dexopt", e);
                    return -1;
                }
            }
            return 1;
        } catch (Installer.InstallerException e2) {
            e = e2;
            str = str3;
        }
    }

    protected int adjustDexoptNeeded(int dexoptNeeded) {
        return dexoptNeeded;
    }

    protected int adjustDexoptFlags(int dexoptFlags) {
        return dexoptFlags;
    }

    void dumpDexoptState(IndentingPrintWriter pw, AndroidPackage pkg, PackageSetting pkgSetting, PackageDexUsage.PackageUseInfo useInfo) {
        String[] instructionSets = InstructionSets.getAppDexInstructionSets(AndroidPackageUtils.getPrimaryCpuAbi(pkg, pkgSetting), AndroidPackageUtils.getSecondaryCpuAbi(pkg, pkgSetting));
        String[] dexCodeInstructionSets = InstructionSets.getDexCodeInstructionSets(instructionSets);
        List<String> paths = AndroidPackageUtils.getAllCodePathsExcludingResourceOnly(pkg);
        for (String path : paths) {
            pw.println("path: " + path);
            pw.increaseIndent();
            int length = dexCodeInstructionSets.length;
            for (int i = 0; i < length; i++) {
                String isa = dexCodeInstructionSets[i];
                try {
                    DexFile.OptimizationInfo info = DexFile.getDexFileOptimizationInfo(path, isa);
                    pw.println(isa + ": [status=" + info.getStatus() + "] [reason=" + info.getReason() + "]");
                } catch (IOException ioe) {
                    pw.println(isa + ": [Exception]: " + ioe.getMessage());
                }
            }
            if (useInfo.isUsedByOtherApps(path)) {
                pw.println("used by other apps: " + useInfo.getLoadingPackages(path));
            }
            Map<String, PackageDexUsage.DexUseInfo> dexUseInfoMap = useInfo.getDexUseInfoMap();
            if (!dexUseInfoMap.isEmpty()) {
                pw.println("known secondary dex files:");
                pw.increaseIndent();
                for (Map.Entry<String, PackageDexUsage.DexUseInfo> e : dexUseInfoMap.entrySet()) {
                    String dex = e.getKey();
                    PackageDexUsage.DexUseInfo dexUseInfo = e.getValue();
                    pw.println(dex);
                    pw.increaseIndent();
                    pw.println("class loader context: " + dexUseInfo.getClassLoaderContext());
                    if (dexUseInfo.isUsedByOtherApps()) {
                        pw.println("used by other apps: " + dexUseInfo.getLoadingPackages());
                    }
                    pw.decreaseIndent();
                }
                pw.decreaseIndent();
            }
            pw.decreaseIndent();
        }
    }

    private String getRealCompilerFilter(ApplicationInfo info, String targetCompilerFilter, boolean isUsedByOtherApps) {
        if (!info.isEmbeddedDexUsed()) {
            if (info.isPrivilegedApp() && DexManager.isPackageSelectedToRunOob(info.packageName)) {
                return "verify";
            }
            boolean vmSafeModeOrDebuggable = ((info.flags & 16384) == 0 && (info.flags & 2) == 0) ? false : true;
            if (vmSafeModeOrDebuggable) {
                return DexFile.getSafeModeCompilerFilter(targetCompilerFilter);
            }
            if (DexFile.isProfileGuidedCompilerFilter(targetCompilerFilter) && isUsedByOtherApps) {
                return PackageManagerServiceCompilerMapping.getCompilerFilterForReason(6);
            }
            return targetCompilerFilter;
        }
        return "verify";
    }

    private String getRealCompilerFilter(AndroidPackage pkg, String targetCompilerFilter, boolean isUsedByOtherApps) {
        if (!pkg.isUseEmbeddedDex()) {
            if (pkg.isPrivileged() && DexManager.isPackageSelectedToRunOob(pkg.getPackageName())) {
                return "verify";
            }
            boolean vmSafeModeOrDebuggable = pkg.isVmSafeMode() || pkg.isDebuggable();
            if (vmSafeModeOrDebuggable) {
                return DexFile.getSafeModeCompilerFilter(targetCompilerFilter);
            }
            if (DexFile.isProfileGuidedCompilerFilter(targetCompilerFilter) && isUsedByOtherApps) {
                return PackageManagerServiceCompilerMapping.getCompilerFilterForReason(6);
            }
            return targetCompilerFilter;
        }
        return "verify";
    }

    private boolean isAppImageEnabled() {
        return SystemProperties.get("dalvik.vm.appimageformat", "").length() > 0;
    }

    private int getDexFlags(ApplicationInfo info, String compilerFilter, DexoptOptions options) {
        return getDexFlags((info.flags & 2) != 0, info.getHiddenApiEnforcementPolicy(), info.splitDependencies, info.requestsIsolatedSplitLoading(), compilerFilter, options);
    }

    private int getDexFlags(AndroidPackage pkg, PackageSetting pkgSetting, String compilerFilter, DexoptOptions options) {
        return getDexFlags(pkg.isDebuggable(), AndroidPackageUtils.getHiddenApiEnforcementPolicy(pkg, pkgSetting), pkg.getSplitDependencies(), pkg.isIsolatedSplitLoading(), compilerFilter, options);
    }

    private int getDexFlags(boolean debuggable, int hiddenApiEnforcementPolicy, SparseArray<int[]> splitDependencies, boolean requestsIsolatedSplitLoading, String compilerFilter, DexoptOptions options) {
        int hiddenApiFlag;
        boolean isProfileGuidedFilter = DexFile.isProfileGuidedCompilerFilter(compilerFilter);
        boolean isPublic = !isProfileGuidedFilter || options.isDexoptInstallWithDexMetadata();
        int profileFlag = isProfileGuidedFilter ? 16 : 0;
        if (hiddenApiEnforcementPolicy == 0) {
            hiddenApiFlag = 0;
        } else {
            hiddenApiFlag = 1024;
        }
        int compilationReason = options.getCompilationReason();
        boolean generateCompactDex = true;
        if (compilationReason == 0 || compilationReason == 1 || compilationReason == 2) {
            generateCompactDex = false;
        }
        boolean generateAppImage = isProfileGuidedFilter && (splitDependencies == null || !requestsIsolatedSplitLoading) && isAppImageEnabled();
        int dexFlags = (options.isDexoptInstallForRestore() ? 8192 : 0) | (isPublic ? 2 : 0) | (debuggable ? 4 : 0) | profileFlag | (options.isBootComplete() ? 8 : 0) | (options.isDexoptIdleBackgroundJob() ? 512 : 0) | (generateCompactDex ? 2048 : 0) | (generateAppImage ? 4096 : 0) | hiddenApiFlag;
        return adjustDexoptFlags(dexFlags);
    }

    private int getDexoptNeeded(String path, String isa, String compilerFilter, String classLoaderContext, boolean newProfile, boolean downgrade) {
        try {
            int dexoptNeeded = DexFile.getDexOptNeeded(path, isa, compilerFilter, classLoaderContext, newProfile, downgrade);
            return adjustDexoptNeeded(dexoptNeeded);
        } catch (IOException ioe) {
            Slog.w(TAG, "IOException reading apk: " + path, ioe);
            return -1;
        } catch (Exception e) {
            Slog.wtf(TAG, "Unexpected exception when calling dexoptNeeded on " + path, e);
            return -1;
        }
    }

    private boolean isProfileUpdated(AndroidPackage pkg, int uid, String profileName, String compilerFilter) {
        if (!DexFile.isProfileGuidedCompilerFilter(compilerFilter)) {
            return false;
        }
        try {
            return this.mInstaller.mergeProfiles(uid, pkg.getPackageName(), profileName);
        } catch (Installer.InstallerException e) {
            Slog.w(TAG, "Failed to merge profiles", e);
            return false;
        }
    }

    private String getPackageOatDirIfSupported(AndroidPackage pkg, boolean isUpdatedSystemApp) {
        if (!AndroidPackageUtils.canHaveOatDir(pkg, isUpdatedSystemApp)) {
            return null;
        }
        File codePath = new File(pkg.getCodePath());
        if (codePath.isDirectory()) {
            return getOatDir(codePath).getAbsolutePath();
        }
        return null;
    }

    static File getOatDir(File codePath) {
        return new File(codePath, OAT_DIR_NAME);
    }

    void systemReady() {
        this.mSystemReady = true;
    }

    private String printDexoptFlags(int flags) {
        ArrayList<String> flagsList = new ArrayList<>();
        if ((flags & 8) == 8) {
            flagsList.add("boot_complete");
        }
        if ((flags & 4) == 4) {
            flagsList.add("debuggable");
        }
        if ((flags & 16) == 16) {
            flagsList.add("profile_guided");
        }
        if ((flags & 2) == 2) {
            flagsList.add("public");
        }
        if ((flags & 32) == 32) {
            flagsList.add("secondary");
        }
        if ((flags & 64) == 64) {
            flagsList.add("force");
        }
        if ((flags & 128) == 128) {
            flagsList.add("storage_ce");
        }
        if ((flags & 256) == 256) {
            flagsList.add("storage_de");
        }
        if ((flags & 512) == 512) {
            flagsList.add("idle_background_job");
        }
        if ((flags & 1024) == 1024) {
            flagsList.add("enable_hidden_api_checks");
        }
        return String.join(",", flagsList);
    }

    public static class ForcedUpdatePackageDexOptimizer extends PackageDexOptimizer {
        public ForcedUpdatePackageDexOptimizer(Installer installer, Object installLock, Context context, String wakeLockTag) {
            super(installer, installLock, context, wakeLockTag);
        }

        public ForcedUpdatePackageDexOptimizer(PackageDexOptimizer from) {
            super(from);
        }

        @Override // com.android.server.pm.PackageDexOptimizer
        protected int adjustDexoptNeeded(int dexoptNeeded) {
            if (dexoptNeeded == 0) {
                return -3;
            }
            return dexoptNeeded;
        }

        @Override // com.android.server.pm.PackageDexOptimizer
        protected int adjustDexoptFlags(int flags) {
            return flags | 64;
        }
    }
}
