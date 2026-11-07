package com.android.server.pm;

import android.app.AppGlobals;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfoLite;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.hardware.biometrics.fingerprint.V2_1.RequestStatus;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.FileUtils;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserManagerInternal;
import android.os.incremental.IncrementalManager;
import android.os.incremental.V4Signature;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.content.PackageHelper;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.HexDump;
import com.android.server.EventLogTags;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.dex.PackageDexUsage;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.permission.PermissionsState;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;
import java.util.zip.GZIPInputStream;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PackageManagerServiceUtils {
    private static final int FSVERITY_DISABLED = 0;
    private static final int FSVERITY_ENABLED = 2;
    private static final int FSVERITY_LEGACY = 1;
    public static final Predicate<PackageSetting> REMOVE_IF_NULL_PKG = new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$RPtRdW9NvVYNz-tG18YC0n7VJp4
        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            return PackageManagerServiceUtils.lambda$static$0((PackageSetting) obj);
        }
    };
    private static final long SEVEN_DAYS_IN_MILLISECONDS = 604800000;

    static /* synthetic */ boolean lambda$static$0(PackageSetting pkgSetting) {
        return pkgSetting.pkg == null;
    }

    private static ArraySet<String> getPackageNamesForIntent(Intent intent, int userId) {
        List<ResolveInfo> ris = null;
        try {
            ris = AppGlobals.getPackageManager().queryIntentReceivers(intent, (String) null, 0, userId).getList();
        } catch (RemoteException e) {
        }
        ArraySet<String> pkgNames = new ArraySet<>();
        if (ris != null) {
            for (ResolveInfo ri : ris) {
                pkgNames.add(ri.activityInfo.packageName);
            }
        }
        return pkgNames;
    }

    public static void sortPackagesByUsageDate(List<PackageSetting> pkgSettings, PackageManagerService packageManagerService) {
        if (!packageManagerService.isHistoricalPackageUsageAvailable()) {
            return;
        }
        Collections.sort(pkgSettings, new Comparator() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$X1ShBJjcdw7NZGmmKd5HWXujgg8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((PackageSetting) obj2).getPkgState().getLatestForegroundPackageUseTimeInMills(), ((PackageSetting) obj).getPkgState().getLatestForegroundPackageUseTimeInMills());
            }
        });
    }

    private static void applyPackageFilter(Predicate<PackageSetting> filter, Collection<PackageSetting> result, Collection<PackageSetting> packages, List<PackageSetting> sortTemp, PackageManagerService packageManagerService) {
        for (PackageSetting pkgSetting : packages) {
            if (filter.test(pkgSetting)) {
                sortTemp.add(pkgSetting);
            }
        }
        sortPackagesByUsageDate(sortTemp, packageManagerService);
        packages.removeAll(sortTemp);
        for (PackageSetting pkgSetting2 : sortTemp) {
            result.add(pkgSetting2);
            List<PackageSetting> deps = packageManagerService.findSharedNonSystemLibraries(pkgSetting2);
            if (!deps.isEmpty()) {
                deps.removeAll(result);
                result.addAll(deps);
                packages.removeAll(deps);
            }
        }
        sortTemp.clear();
    }

    public static List<PackageSetting> getPackagesForDexopt(Collection<PackageSetting> packages, PackageManagerService packageManagerService) {
        return getPackagesForDexopt(packages, packageManagerService, false);
    }

    public static List<PackageSetting> getPackagesForDexopt(Collection<PackageSetting> pkgSettings, PackageManagerService packageManagerService, boolean debug) {
        Predicate<PackageSetting> remainingPredicate;
        List<PackageSetting> result = new LinkedList<>();
        ArrayList<PackageSetting> remainingPkgSettings = new ArrayList<>(pkgSettings);
        remainingPkgSettings.removeIf(REMOVE_IF_NULL_PKG);
        ArrayList<PackageSetting> sortTemp = new ArrayList<>(remainingPkgSettings.size());
        applyPackageFilter(new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$6Hiu23bVWNI_UB8JjRQOmllFVE8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((PackageSetting) obj).pkg.isCoreApp();
            }
        }, result, remainingPkgSettings, sortTemp, packageManagerService);
        Intent intent = new Intent("android.intent.action.PRE_BOOT_COMPLETED");
        final ArraySet<String> pkgNames = getPackageNamesForIntent(intent, 0);
        applyPackageFilter(new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$miSwAI7tlaWPbDunujMxV7oiAWA
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return pkgNames.contains(((PackageSetting) obj).name);
            }
        }, result, remainingPkgSettings, sortTemp, packageManagerService);
        final DexManager dexManager = packageManagerService.getDexManager();
        applyPackageFilter(new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$CznOu58qzp1xBXuz65vwZNf-2YQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return dexManager.getPackageUseInfoOrDefault(((PackageSetting) obj).name).isAnyCodePathUsedByOtherApps();
            }
        }, result, remainingPkgSettings, sortTemp, packageManagerService);
        if (!remainingPkgSettings.isEmpty() && packageManagerService.isHistoricalPackageUsageAvailable()) {
            if (debug) {
                Log.i("PackageManager", "Looking at historical package use");
            }
            PackageSetting lastUsed = (PackageSetting) Collections.max(remainingPkgSettings, new Comparator() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$-TyALUo9to-tSa8TowQ8FvHNb6w
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((PackageSetting) obj).getPkgState().getLatestForegroundPackageUseTimeInMills(), ((PackageSetting) obj2).getPkgState().getLatestForegroundPackageUseTimeInMills());
                }
            });
            if (debug) {
                Log.i("PackageManager", "Taking package " + lastUsed.name + " as reference in time use");
            }
            long estimatedPreviousSystemUseTime = lastUsed.getPkgState().getLatestForegroundPackageUseTimeInMills();
            if (estimatedPreviousSystemUseTime != 0) {
                final long cutoffTime = estimatedPreviousSystemUseTime - 604800000;
                remainingPredicate = new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$sV6Dy76F46JIA9ovYV5QyhvLuQ4
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return PackageManagerServiceUtils.lambda$getPackagesForDexopt$6(cutoffTime, (PackageSetting) obj);
                    }
                };
            } else {
                remainingPredicate = new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$Nz561xT8r_YIT6_Lm5bJ67n8gRs
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return PackageManagerServiceUtils.lambda$getPackagesForDexopt$7((PackageSetting) obj);
                    }
                };
            }
            sortPackagesByUsageDate(remainingPkgSettings, packageManagerService);
        } else {
            remainingPredicate = new Predicate() { // from class: com.android.server.pm.-$$Lambda$PackageManagerServiceUtils$kGgIy61AI0hVhikc5IBRoH-OqgM
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return PackageManagerServiceUtils.lambda$getPackagesForDexopt$8((PackageSetting) obj);
                }
            };
        }
        applyPackageFilter(remainingPredicate, result, remainingPkgSettings, sortTemp, packageManagerService);
        if (debug) {
            Log.i("PackageManager", "Packages to be dexopted: " + packagesToString(result));
            Log.i("PackageManager", "Packages skipped from dexopt: " + packagesToString(remainingPkgSettings));
        }
        return result;
    }

    static /* synthetic */ boolean lambda$getPackagesForDexopt$6(long cutoffTime, PackageSetting pkgSetting) {
        return pkgSetting.getPkgState().getLatestForegroundPackageUseTimeInMills() >= cutoffTime;
    }

    static /* synthetic */ boolean lambda$getPackagesForDexopt$7(PackageSetting pkgSetting) {
        return true;
    }

    static /* synthetic */ boolean lambda$getPackagesForDexopt$8(PackageSetting pkgSetting) {
        return true;
    }

    public static boolean isUnusedSinceTimeInMillis(long firstInstallTime, long currentTimeInMillis, long thresholdTimeinMillis, PackageDexUsage.PackageUseInfo packageUseInfo, long latestPackageUseTimeInMillis, long latestForegroundPackageUseTimeInMillis) {
        if (currentTimeInMillis - firstInstallTime < thresholdTimeinMillis) {
            return false;
        }
        boolean isActiveInForeground = currentTimeInMillis - latestForegroundPackageUseTimeInMillis < thresholdTimeinMillis;
        if (isActiveInForeground) {
            return false;
        }
        boolean isActiveInBackgroundAndUsedByOtherPackages = currentTimeInMillis - latestPackageUseTimeInMillis < thresholdTimeinMillis && packageUseInfo.isAnyCodePathUsedByOtherApps();
        return !isActiveInBackgroundAndUsedByOtherPackages;
    }

    public static String realpath(File path) throws IOException {
        try {
            return Os.realpath(path.getAbsolutePath());
        } catch (ErrnoException ee) {
            throw ee.rethrowAsIOException();
        }
    }

    public static String packagesToString(List<PackageSetting> pkgSettings) {
        StringBuilder sb = new StringBuilder();
        for (int index = 0; index < pkgSettings.size(); index++) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(pkgSettings.get(index).name);
        }
        return sb.toString();
    }

    public static boolean checkISA(String isa) {
        for (String abi : Build.SUPPORTED_ABIS) {
            if (VMRuntime.getInstructionSet(abi).equals(isa)) {
                return true;
            }
        }
        return false;
    }

    public static long getLastModifiedTime(AndroidPackage pkg) {
        File srcFile = new File(pkg.getCodePath());
        if (!srcFile.isDirectory()) {
            return srcFile.lastModified();
        }
        File baseFile = new File(pkg.getBaseCodePath());
        long maxModifiedTime = baseFile.lastModified();
        if (pkg.getSplitCodePaths() != null) {
            for (int i = pkg.getSplitCodePaths().length - 1; i >= 0; i--) {
                File splitFile = new File(pkg.getSplitCodePaths()[i]);
                maxModifiedTime = Math.max(maxModifiedTime, splitFile.lastModified());
            }
        }
        return maxModifiedTime;
    }

    private static File getSettingsProblemFile() {
        File dataDir = Environment.getDataDirectory();
        File systemDir = new File(dataDir, "system");
        File fname = new File(systemDir, "uiderrors.txt");
        return fname;
    }

    public static void dumpCriticalInfo(ProtoOutputStream proto) {
        try {
            BufferedReader in = new BufferedReader(new FileReader(getSettingsProblemFile()));
            while (true) {
                try {
                    String line = in.readLine();
                    if (line != null) {
                        if (!line.contains("ignored: updated version")) {
                            proto.write(2237677961223L, line);
                        }
                    } else {
                        in.close();
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        in.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException e) {
        }
    }

    public static void dumpCriticalInfo(PrintWriter pw, String msg) {
        try {
            BufferedReader in = new BufferedReader(new FileReader(getSettingsProblemFile()));
            while (true) {
                try {
                    String line = in.readLine();
                    if (line != null) {
                        if (!line.contains("ignored: updated version")) {
                            if (msg != null) {
                                pw.print(msg);
                            }
                            pw.println(line);
                        }
                    } else {
                        in.close();
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        in.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException e) {
        }
    }

    public static void logCriticalInfo(int priority, String msg) {
        Slog.println(priority, "PackageManager", msg);
        EventLogTags.writePmCriticalInfo(msg);
        try {
            File fname = getSettingsProblemFile();
            FileOutputStream out = new FileOutputStream(fname, true);
            FastPrintWriter fastPrintWriter = new FastPrintWriter(out);
            SimpleDateFormat formatter = new SimpleDateFormat();
            String dateString = formatter.format(new Date(System.currentTimeMillis()));
            fastPrintWriter.println(dateString + ": " + msg);
            fastPrintWriter.close();
            FileUtils.setPermissions(fname.toString(), 508, -1, -1);
        } catch (IOException e) {
        }
    }

    public static void enforceShellRestriction(UserManagerInternal userManager, String restriction, int callingUid, int userHandle) {
        if (callingUid == 2000) {
            if (userHandle >= 0 && userManager.hasUserRestriction(restriction, userHandle)) {
                throw new SecurityException("Shell does not have permission to access user " + userHandle);
            }
            if (userHandle < 0) {
                Slog.e("PackageManager", "Unable to check shell permission for user " + userHandle + "\n\t" + Debug.getCallers(3));
            }
        }
    }

    public static void enforceSystemOrPhoneCaller(String methodName, int callingUid) {
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Cannot call " + methodName + " from UID " + callingUid);
        }
    }

    public static String deriveAbiOverride(String abiOverride, PackageSetting settings) {
        if ("-".equals(abiOverride)) {
            return null;
        }
        if (abiOverride != null) {
            return abiOverride;
        }
        if (settings == null) {
            return null;
        }
        String cpuAbiOverride = settings.cpuAbiOverrideString;
        return cpuAbiOverride;
    }

    public static int compareSignatures(Signature[] s1, Signature[] s2) {
        if (s1 == null) {
            if (s2 == null) {
                return 1;
            }
            return -1;
        }
        if (s2 == null) {
            return -2;
        }
        if (s1.length != s2.length) {
            return -3;
        }
        if (s1.length == 1) {
            return s1[0].equals(s2[0]) ? 0 : -3;
        }
        ArraySet<Signature> set1 = new ArraySet<>();
        for (Signature sig : s1) {
            set1.add(sig);
        }
        ArraySet<Signature> set2 = new ArraySet<>();
        for (Signature sig2 : s2) {
            set2.add(sig2);
        }
        return set1.equals(set2) ? 0 : -3;
    }

    private static boolean matchSignaturesCompat(String packageName, PackageSignatures packageSignatures, PackageParser.SigningDetails parsedSignatures) {
        ArraySet<Signature> existingSet = new ArraySet<>();
        for (Signature signature : packageSignatures.mSigningDetails.signatures) {
            existingSet.add(signature);
        }
        ArraySet<Signature> scannedCompatSet = new ArraySet<>();
        for (Signature sig : parsedSignatures.signatures) {
            try {
                Signature[] chainSignatures = sig.getChainSignatures();
                for (Signature chainSig : chainSignatures) {
                    scannedCompatSet.add(chainSig);
                }
            } catch (CertificateEncodingException e) {
                scannedCompatSet.add(sig);
            }
        }
        if (scannedCompatSet.equals(existingSet)) {
            packageSignatures.mSigningDetails = parsedSignatures;
            return true;
        }
        if (parsedSignatures.hasPastSigningCertificates()) {
            logCriticalInfo(4, "Existing package " + packageName + " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate.");
        }
        return false;
    }

    private static boolean matchSignaturesRecover(String packageName, PackageParser.SigningDetails existingSignatures, PackageParser.SigningDetails parsedSignatures, int flags) {
        String msg = null;
        try {
            if (parsedSignatures.checkCapabilityRecover(existingSignatures, flags)) {
                logCriticalInfo(4, "Recovered effectively matching certificates for " + packageName);
                return true;
            }
        } catch (CertificateException e) {
            msg = e.getMessage();
        }
        logCriticalInfo(4, "Failed to recover certificates for " + packageName + ": " + msg);
        return false;
    }

    private static boolean matchSignatureInSystem(PackageSetting pkgSetting, PackageSetting disabledPkgSetting) {
        if (pkgSetting.signatures.mSigningDetails.checkCapability(disabledPkgSetting.signatures.mSigningDetails, 1) || disabledPkgSetting.signatures.mSigningDetails.checkCapability(pkgSetting.signatures.mSigningDetails, 8)) {
            return true;
        }
        logCriticalInfo(6, "Updated system app mismatches cert on /system: " + pkgSetting.name);
        return false;
    }

    static boolean isApkVerityEnabled() {
        return Build.VERSION.FIRST_SDK_INT >= 30 || SystemProperties.getInt("ro.apk_verity.mode", 0) == 2;
    }

    static boolean isLegacyApkVerityEnabled() {
        return SystemProperties.getInt("ro.apk_verity.mode", 0) == 1;
    }

    static boolean isApkVerificationForced(PackageSetting ps) {
        return false;
    }

    public static boolean verifySignatures(PackageSetting pkgSetting, PackageSetting disabledPkgSetting, PackageParser.SigningDetails parsedSignatures, boolean compareCompat, boolean compareRecover) throws PackageManagerException {
        String packageName = pkgSetting.name;
        boolean compatMatch = false;
        if (pkgSetting.signatures.mSigningDetails.signatures != null) {
            boolean match = parsedSignatures.checkCapability(pkgSetting.signatures.mSigningDetails, 1) || pkgSetting.signatures.mSigningDetails.checkCapability(parsedSignatures, 8);
            if (!match && compareCompat) {
                match = matchSignaturesCompat(packageName, pkgSetting.signatures, parsedSignatures);
                compatMatch = match;
            }
            if (!match && compareRecover) {
                match = matchSignaturesRecover(packageName, pkgSetting.signatures.mSigningDetails, parsedSignatures, 1) || matchSignaturesRecover(packageName, parsedSignatures, pkgSetting.signatures.mSigningDetails, 8);
            }
            if (!match && isApkVerificationForced(disabledPkgSetting)) {
                match = matchSignatureInSystem(pkgSetting, disabledPkgSetting);
            }
            if (!match) {
                throw new PackageManagerException(-7, "Package " + packageName + " signatures do not match previously installed version; ignoring!");
            }
        }
        if (pkgSetting.getSharedUser() != null && pkgSetting.getSharedUser().signatures.mSigningDetails != PackageParser.SigningDetails.UNKNOWN) {
            boolean match2 = parsedSignatures.checkCapability(pkgSetting.getSharedUser().signatures.mSigningDetails, 2) || pkgSetting.getSharedUser().signatures.mSigningDetails.checkCapability(parsedSignatures, 2);
            if (!match2 && pkgSetting.getSharedUser().packages.size() == 1 && pkgSetting.getSharedUser().packages.valueAt(0).name.equals(packageName)) {
                match2 = true;
            }
            if (!match2 && compareCompat) {
                match2 = matchSignaturesCompat(packageName, pkgSetting.getSharedUser().signatures, parsedSignatures);
            }
            if (!match2 && compareRecover) {
                match2 = matchSignaturesRecover(packageName, pkgSetting.getSharedUser().signatures.mSigningDetails, parsedSignatures, 2) || matchSignaturesRecover(packageName, parsedSignatures, pkgSetting.getSharedUser().signatures.mSigningDetails, 2);
                compatMatch |= match2;
            }
            if (!match2) {
                throw new PackageManagerException(-8, "Package " + packageName + " has no signatures that match those in shared user " + pkgSetting.getSharedUser().name + "; ignoring!");
            }
            if (parsedSignatures.hasPastSigningCertificates()) {
                for (PackageSetting shUidPkgSetting : pkgSetting.getSharedUser().packages) {
                    if (!packageName.equals(shUidPkgSetting.name)) {
                        PackageParser.SigningDetails shUidSigningDetails = shUidPkgSetting.getSigningDetails();
                        if (parsedSignatures.hasAncestor(shUidSigningDetails) && !parsedSignatures.checkCapability(shUidSigningDetails, 2)) {
                            throw new PackageManagerException(-8, "Package " + packageName + " revoked the sharedUserId capability from the signing key used to sign " + shUidPkgSetting.name);
                        }
                    }
                }
            }
            if (!parsedSignatures.hasCommonAncestor(pkgSetting.getSharedUser().signatures.mSigningDetails)) {
                throw new PackageManagerException(-8, "Package " + packageName + " has a signing lineage that diverges from the lineage of the sharedUserId");
            }
        }
        return compatMatch;
    }

    public static int decompressFile(File srcFile, File dstFile) throws ErrnoException {
        if (PackageManagerService.DEBUG_COMPRESSION) {
            Slog.i("PackageManager", "Decompress file; src: " + srcFile.getAbsolutePath() + ", dst: " + dstFile.getAbsolutePath());
        }
        try {
            InputStream fileIn = new GZIPInputStream(new FileInputStream(srcFile));
            try {
                OutputStream fileOut = new FileOutputStream(dstFile, false);
                try {
                    FileUtils.copy(fileIn, fileOut);
                    Os.chmod(dstFile.getAbsolutePath(), 420);
                    fileOut.close();
                    fileIn.close();
                    return 1;
                } catch (Throwable th) {
                    try {
                        fileOut.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileIn.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException e) {
            logCriticalInfo(6, "Failed to decompress file; src: " + srcFile.getAbsolutePath() + ", dst: " + dstFile.getAbsolutePath());
            return RequestStatus.SYS_ETIMEDOUT;
        }
    }

    public static File[] getCompressedFiles(String codePath) {
        File stubCodePath = new File(codePath);
        String stubName = stubCodePath.getName();
        int idx = stubName.lastIndexOf(PackageManagerService.STUB_SUFFIX);
        if (idx < 0 || stubName.length() != PackageManagerService.STUB_SUFFIX.length() + idx) {
            return null;
        }
        File stubParentDir = stubCodePath.getParentFile();
        if (stubParentDir == null) {
            Slog.e("PackageManager", "Unable to determine stub parent dir for codePath: " + codePath);
            return null;
        }
        File compressedPath = new File(stubParentDir, stubName.substring(0, idx));
        File[] files = compressedPath.listFiles(new FilenameFilter() { // from class: com.android.server.pm.PackageManagerServiceUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String name) {
                return name.toLowerCase().endsWith(PackageManagerService.COMPRESSED_EXTENSION);
            }
        });
        if (PackageManagerService.DEBUG_COMPRESSION && files != null && files.length > 0) {
            Slog.i("PackageManager", "getCompressedFiles[" + codePath + "]: " + Arrays.toString(files));
        }
        return files;
    }

    public static boolean compressedFileExists(String codePath) {
        File[] compressedFiles = getCompressedFiles(codePath);
        return compressedFiles != null && compressedFiles.length > 0;
    }

    public static PackageInfoLite getMinimalPackageInfo(Context context, String packagePath, int flags, String abiOverride) {
        PackageInfoLite ret = new PackageInfoLite();
        if (packagePath == null) {
            Slog.i("PackageManager", "Invalid package file " + packagePath);
            ret.recommendedInstallLocation = -2;
            return ret;
        }
        File packageFile = new File(packagePath);
        try {
            PackageParser.PackageLite pkg = PackageParser.parsePackageLite(packageFile, 0);
            long sizeBytes = PackageHelper.calculateInstalledSize(pkg, abiOverride);
            int recommendedInstallLocation = PackageHelper.resolveInstallLocation(context, pkg.packageName, pkg.installLocation, sizeBytes, flags);
            ret.packageName = pkg.packageName;
            ret.splitNames = pkg.splitNames;
            ret.versionCode = pkg.versionCode;
            ret.versionCodeMajor = pkg.versionCodeMajor;
            ret.baseRevisionCode = pkg.baseRevisionCode;
            ret.splitRevisionCodes = pkg.splitRevisionCodes;
            ret.installLocation = pkg.installLocation;
            ret.verifiers = pkg.verifiers;
            ret.recommendedInstallLocation = recommendedInstallLocation;
            ret.multiArch = pkg.multiArch;
            ret.debuggable = pkg.debuggable;
            return ret;
        } catch (PackageParser.PackageParserException | IOException e) {
            Slog.w("PackageManager", "Failed to parse package at " + packagePath + ": " + e);
            if (!packageFile.exists()) {
                ret.recommendedInstallLocation = -6;
            } else {
                ret.recommendedInstallLocation = -2;
            }
            return ret;
        }
    }

    public static long calculateInstalledSize(String packagePath, String abiOverride) {
        File packageFile = new File(packagePath);
        try {
            PackageParser.PackageLite pkg = PackageParser.parsePackageLite(packageFile, 0);
            return PackageHelper.calculateInstalledSize(pkg, abiOverride);
        } catch (PackageParser.PackageParserException | IOException e) {
            Slog.w("PackageManager", "Failed to calculate installed size: " + e);
            return -1L;
        }
    }

    public static boolean isDowngradePermitted(int installFlags, boolean isAppDebuggable) {
        boolean downgradeRequested = (installFlags & 128) != 0;
        if (!downgradeRequested) {
            return false;
        }
        boolean isDebuggable = Build.IS_DEBUGGABLE || isAppDebuggable;
        return isDebuggable || (1048576 & installFlags) != 0;
    }

    public static int copyPackage(String packagePath, File targetDir) {
        if (packagePath == null) {
            return -3;
        }
        try {
            File packageFile = new File(packagePath);
            PackageParser.PackageLite pkg = PackageParser.parsePackageLite(packageFile, 0);
            copyFile(pkg.baseCodePath, targetDir, "base.apk");
            if (!ArrayUtils.isEmpty(pkg.splitNames)) {
                for (int i = 0; i < pkg.splitNames.length; i++) {
                    copyFile(pkg.splitCodePaths[i], targetDir, "split_" + pkg.splitNames[i] + ".apk");
                }
                return 1;
            }
            return 1;
        } catch (PackageParser.PackageParserException | ErrnoException | IOException e) {
            Slog.w("PackageManager", "Failed to copy package at " + packagePath + ": " + e);
            return -4;
        }
    }

    private static void copyFile(String sourcePath, File targetDir, String targetName) throws IOException, ErrnoException {
        if (!FileUtils.isValidExtFilename(targetName)) {
            throw new IllegalArgumentException("Invalid filename: " + targetName);
        }
        Slog.d("PackageManager", "Copying " + sourcePath + " to " + targetName);
        File targetFile = new File(targetDir, targetName);
        FileDescriptor targetFd = Os.open(targetFile.getAbsolutePath(), OsConstants.O_RDWR | OsConstants.O_CREAT, 420);
        Os.chmod(targetFile.getAbsolutePath(), 420);
        FileInputStream source = null;
        try {
            source = new FileInputStream(sourcePath);
            FileUtils.copy(source.getFD(), targetFd);
        } finally {
            IoUtils.closeQuietly(source);
        }
    }

    public static PermissionsState getPermissionsState(PackageManagerInternal packageManagerInternal, AndroidPackage pkg) {
        PackageSetting packageSetting = packageManagerInternal.getPackageSetting(pkg.getPackageName());
        if (packageSetting == null) {
            return null;
        }
        return packageSetting.getPermissionsState();
    }

    public static void makeDirRecursive(File targetDir, int mode) throws ErrnoException {
        Path targetDirPath = targetDir.toPath();
        int directoriesCount = targetDirPath.getNameCount();
        for (int i = 1; i <= directoriesCount; i++) {
            File currentDir = targetDirPath.subpath(0, i).toFile();
            if (!currentDir.exists()) {
                Os.mkdir(currentDir.getAbsolutePath(), mode);
                Os.chmod(currentDir.getAbsolutePath(), mode);
            }
        }
    }

    public static String buildVerificationRootHashString(String baseFilename, String[] splitFilenameArray) {
        StringBuilder sb = new StringBuilder();
        String baseFilePath = baseFilename.substring(baseFilename.lastIndexOf(File.separator) + 1);
        sb.append(baseFilePath);
        sb.append(":");
        byte[] baseRootHash = getRootHash(baseFilename);
        if (baseRootHash == null) {
            sb.append("0");
        } else {
            sb.append(HexDump.toHexString(baseRootHash));
        }
        if (splitFilenameArray == null || splitFilenameArray.length == 0) {
            return sb.toString();
        }
        for (int i = splitFilenameArray.length - 1; i >= 0; i--) {
            String splitFilename = splitFilenameArray[i];
            String splitFilePath = splitFilename.substring(splitFilename.lastIndexOf(File.separator) + 1);
            byte[] splitRootHash = getRootHash(splitFilename);
            sb.append(";");
            sb.append(splitFilePath);
            sb.append(":");
            if (splitRootHash == null) {
                sb.append("0");
            } else {
                sb.append(HexDump.toHexString(splitRootHash));
            }
        }
        return sb.toString();
    }

    private static byte[] getRootHash(String filename) {
        try {
            byte[] baseFileSignature = IncrementalManager.unsafeGetFileSignature(filename);
            if (baseFileSignature == null) {
                throw new IOException("File signature not present");
            }
            V4Signature signature = V4Signature.readFrom(baseFileSignature);
            if (signature.hashingInfo == null) {
                throw new IOException("Hashing info not present");
            }
            V4Signature.HashingInfo hashInfo = V4Signature.HashingInfo.fromByteArray(signature.hashingInfo);
            if (ArrayUtils.isEmpty(hashInfo.rawRootHash)) {
                throw new IOException("Root has not present");
            }
            return hashInfo.rawRootHash;
        } catch (IOException e) {
            Slog.e("PackageManager", "ERROR: could not load root hash from incremental install");
            return null;
        }
    }
}
