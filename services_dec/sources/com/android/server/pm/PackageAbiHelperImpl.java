package com.android.server.pm;

import android.content.pm.PackageParser;
import android.hardware.biometrics.fingerprint.V2_1.RequestStatus;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Trace;
import android.os.incremental.IncrementalManager;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.util.ArrayUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.IOException;
import java.util.Set;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
final class PackageAbiHelperImpl implements PackageAbiHelper {
    PackageAbiHelperImpl() {
    }

    private static String calculateBundledApkRoot(String codePathString) {
        File f;
        File codePath = new File(codePathString);
        if (FileUtils.contains(Environment.getRootDirectory(), codePath)) {
            f = Environment.getRootDirectory();
        } else {
            File codeRoot = Environment.getOemDirectory();
            if (FileUtils.contains(codeRoot, codePath)) {
                f = Environment.getOemDirectory();
            } else {
                File codeRoot2 = Environment.getVendorDirectory();
                if (FileUtils.contains(codeRoot2, codePath)) {
                    f = Environment.getVendorDirectory();
                } else {
                    File codeRoot3 = Environment.getOdmDirectory();
                    if (FileUtils.contains(codeRoot3, codePath)) {
                        f = Environment.getOdmDirectory();
                    } else {
                        File codeRoot4 = Environment.getProductDirectory();
                        if (FileUtils.contains(codeRoot4, codePath)) {
                            f = Environment.getProductDirectory();
                        } else {
                            File codeRoot5 = Environment.getSystemExtDirectory();
                            if (FileUtils.contains(codeRoot5, codePath)) {
                                f = Environment.getSystemExtDirectory();
                            } else {
                                File codeRoot6 = Environment.getOdmDirectory();
                                if (FileUtils.contains(codeRoot6, codePath)) {
                                    f = Environment.getOdmDirectory();
                                } else {
                                    File codeRoot7 = Environment.getApexDirectory();
                                    if (FileUtils.contains(codeRoot7, codePath)) {
                                        String fullPath = codePath.getAbsolutePath();
                                        String[] parts = fullPath.split(File.separator);
                                        if (parts.length > 2) {
                                            f = new File(parts[1] + File.separator + parts[2]);
                                        } else {
                                            Slog.w("PackageManager", "Can't canonicalize code path " + codePath);
                                            f = Environment.getApexDirectory();
                                        }
                                    } else {
                                        try {
                                            File f2 = codePath.getCanonicalFile();
                                            File parent = f2.getParentFile();
                                            while (true) {
                                                File tmp = parent.getParentFile();
                                                if (tmp == null) {
                                                    break;
                                                }
                                                f2 = parent;
                                                parent = tmp;
                                            }
                                            File codeRoot8 = f2;
                                            Slog.w("PackageManager", "Unrecognized code path " + codePath + " - using " + codeRoot8);
                                            f = codeRoot8;
                                        } catch (IOException e) {
                                            Slog.w("PackageManager", "Can't canonicalize code path " + codePath);
                                            return Environment.getRootDirectory().getPath();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return f.getPath();
    }

    private static String deriveCodePathName(String codePath) {
        if (codePath == null) {
            return null;
        }
        File codeFile = new File(codePath);
        String name = codeFile.getName();
        if (codeFile.isDirectory()) {
            return name;
        }
        if (name.endsWith(".apk") || name.endsWith(".tmp")) {
            int lastDot = name.lastIndexOf(46);
            return name.substring(0, lastDot);
        }
        Slog.w("PackageManager", "Odd, " + codePath + " doesn't look like an APK");
        return null;
    }

    private static void maybeThrowExceptionForMultiArchCopy(String message, int copyRet) throws PackageManagerException {
        if (copyRet < 0 && copyRet != -114 && copyRet != -113) {
            throw new PackageManagerException(copyRet, message);
        }
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public PackageAbiHelper.NativeLibraryPaths getNativeLibraryPaths(AndroidPackage pkg, PackageSetting pkgSetting, File appLib32InstallDir) {
        return getNativeLibraryPaths(new PackageAbiHelper.Abis(pkg.getPrimaryCpuAbi(), pkg.getSecondaryCpuAbi()), appLib32InstallDir, pkg.getCodePath(), pkg.getBaseCodePath(), pkg.isSystem(), pkgSetting.getPkgState().isUpdatedSystemApp());
    }

    private static PackageAbiHelper.NativeLibraryPaths getNativeLibraryPaths(PackageAbiHelper.Abis abis, File appLib32InstallDir, String codePath, String sourceDir, boolean isSystemApp, boolean isUpdatedSystemApp) {
        String nativeLibraryRootDir;
        boolean nativeLibraryRootRequiresIsa;
        String nativeLibraryDir;
        String secondaryNativeLibraryDir;
        File codeFile = new File(codePath);
        boolean bundledApp = isSystemApp && !isUpdatedSystemApp;
        if (PackageParser.isApkFile(codeFile)) {
            if (bundledApp) {
                String apkRoot = calculateBundledApkRoot(sourceDir);
                boolean is64Bit = VMRuntime.is64BitInstructionSet(InstructionSets.getPrimaryInstructionSet(abis));
                String apkName = deriveCodePathName(codePath);
                String libDir = is64Bit ? "lib64" : "lib";
                nativeLibraryRootDir = Environment.buildPath(new File(apkRoot), new String[]{libDir, apkName}).getAbsolutePath();
                if (abis.secondary != null) {
                    String secondaryLibDir = is64Bit ? "lib" : "lib64";
                    secondaryNativeLibraryDir = Environment.buildPath(new File(apkRoot), new String[]{secondaryLibDir, apkName}).getAbsolutePath();
                } else {
                    secondaryNativeLibraryDir = null;
                }
            } else {
                nativeLibraryRootDir = new File(appLib32InstallDir, deriveCodePathName(codePath)).getAbsolutePath();
                secondaryNativeLibraryDir = null;
            }
            nativeLibraryRootRequiresIsa = false;
            nativeLibraryDir = nativeLibraryRootDir;
        } else {
            nativeLibraryRootDir = new File(codeFile, "lib").getAbsolutePath();
            nativeLibraryRootRequiresIsa = true;
            nativeLibraryDir = new File(nativeLibraryRootDir, InstructionSets.getPrimaryInstructionSet(abis)).getAbsolutePath();
            if (abis.secondary != null) {
                secondaryNativeLibraryDir = new File(nativeLibraryRootDir, VMRuntime.getInstructionSet(abis.secondary)).getAbsolutePath();
            } else {
                secondaryNativeLibraryDir = null;
            }
        }
        return new PackageAbiHelper.NativeLibraryPaths(nativeLibraryRootDir, nativeLibraryRootRequiresIsa, nativeLibraryDir, secondaryNativeLibraryDir);
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public PackageAbiHelper.Abis getBundledAppAbis(AndroidPackage pkg) {
        String apkName = deriveCodePathName(pkg.getCodePath());
        String apkRoot = calculateBundledApkRoot(pkg.getBaseCodePath());
        PackageAbiHelper.Abis abis = getBundledAppAbi(pkg, apkRoot, apkName);
        return abis;
    }

    private PackageAbiHelper.Abis getBundledAppAbi(AndroidPackage pkg, String apkRoot, String apkName) {
        boolean has64BitLibs;
        boolean has64BitLibs2;
        boolean has64BitLibs3;
        String primaryCpuAbi;
        String secondaryCpuAbi;
        File codeFile = new File(pkg.getCodePath());
        if (PackageParser.isApkFile(codeFile)) {
            has64BitLibs2 = new File(apkRoot, new File("lib64", apkName).getPath()).exists();
            has64BitLibs3 = new File(apkRoot, new File("lib", apkName).getPath()).exists();
        } else {
            File rootDir = new File(codeFile, "lib");
            if (!ArrayUtils.isEmpty(Build.SUPPORTED_64_BIT_ABIS) && !TextUtils.isEmpty(Build.SUPPORTED_64_BIT_ABIS[0])) {
                String isa = VMRuntime.getInstructionSet(Build.SUPPORTED_64_BIT_ABIS[0]);
                has64BitLibs = new File(rootDir, isa).exists();
            } else {
                has64BitLibs = false;
            }
            if (!ArrayUtils.isEmpty(Build.SUPPORTED_32_BIT_ABIS) && !TextUtils.isEmpty(Build.SUPPORTED_32_BIT_ABIS[0])) {
                String isa2 = VMRuntime.getInstructionSet(Build.SUPPORTED_32_BIT_ABIS[0]);
                boolean has32BitLibs = new File(rootDir, isa2).exists();
                has64BitLibs2 = has64BitLibs;
                has64BitLibs3 = has32BitLibs;
            } else {
                has64BitLibs2 = has64BitLibs;
                has64BitLibs3 = false;
            }
        }
        if (has64BitLibs2 && !has64BitLibs3) {
            primaryCpuAbi = Build.SUPPORTED_64_BIT_ABIS[0];
            secondaryCpuAbi = null;
        } else if (has64BitLibs3 && !has64BitLibs2) {
            primaryCpuAbi = Build.SUPPORTED_32_BIT_ABIS[0];
            secondaryCpuAbi = null;
        } else if (has64BitLibs3 && has64BitLibs2) {
            if (!pkg.isMultiArch()) {
                Slog.e("PackageManager", "Package " + pkg + " has multiple bundled libs, but is not multiarch.");
            }
            if (VMRuntime.is64BitInstructionSet(InstructionSets.getPreferredInstructionSet())) {
                String primaryCpuAbi2 = Build.SUPPORTED_64_BIT_ABIS[0];
                secondaryCpuAbi = Build.SUPPORTED_32_BIT_ABIS[0];
                primaryCpuAbi = primaryCpuAbi2;
            } else {
                String primaryCpuAbi3 = Build.SUPPORTED_32_BIT_ABIS[0];
                secondaryCpuAbi = Build.SUPPORTED_64_BIT_ABIS[0];
                primaryCpuAbi = primaryCpuAbi3;
            }
        } else {
            primaryCpuAbi = null;
            secondaryCpuAbi = null;
        }
        return new PackageAbiHelper.Abis(primaryCpuAbi, secondaryCpuAbi);
    }

    /* JADX WARN: Not initialized variable reg: 15, insn: 0x0126: MOVE (r1 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY] A[D('pkgRawPrimaryCpuAbi' java.lang.String)]), block:B:66:0x0126 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x012a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY] A[D('pkgRawPrimaryCpuAbi' java.lang.String)]), block:B:68:0x012a */
    @Override // com.android.server.pm.PackageAbiHelper
    public Pair<PackageAbiHelper.Abis, PackageAbiHelper.NativeLibraryPaths> derivePackageAbi(AndroidPackage pkg, boolean isUpdatedSystemApp, String cpuAbiOverride, boolean extractLibs) throws Throwable {
        String[] abiList;
        int copyRet;
        int abi64;
        int abi65;
        String pkgRawPrimaryCpuAbi = AndroidPackageUtils.getRawPrimaryCpuAbi(pkg);
        String pkgRawSecondaryCpuAbi = AndroidPackageUtils.getRawSecondaryCpuAbi(pkg);
        PackageAbiHelper.NativeLibraryPaths initialLibraryPaths = getNativeLibraryPaths(new PackageAbiHelper.Abis(pkgRawPrimaryCpuAbi, pkgRawSecondaryCpuAbi), PackageManagerService.sAppLib32InstallDir, pkg.getCodePath(), pkg.getBaseCodePath(), pkg.isSystem(), isUpdatedSystemApp);
        boolean extractLibs2 = (!pkg.isSystem() || isUpdatedSystemApp) ? extractLibs : false;
        String nativeLibraryRootStr = initialLibraryPaths.nativeLibraryRootDir;
        boolean useIsaSpecificSubdirs = initialLibraryPaths.nativeLibraryRootRequiresIsa;
        boolean onIncremental = IncrementalManager.isIncrementalPath(pkg.getCodePath());
        String primaryCpuAbi = null;
        String secondaryCpuAbi = null;
        NativeLibraryHelper.Handle handle = null;
        try {
            try {
                handle = AndroidPackageUtils.createNativeLibraryHandle(pkg);
                File nativeLibraryRoot = new File(nativeLibraryRootStr);
                primaryCpuAbi = null;
                secondaryCpuAbi = null;
                try {
                    if (pkg.isMultiArch()) {
                        int abi32 = -114;
                        try {
                            try {
                                if (Build.SUPPORTED_32_BIT_ABIS.length > 0) {
                                    if (extractLibs2) {
                                        Trace.traceBegin(262144L, "copyNativeBinaries");
                                        abi32 = NativeLibraryHelper.copyNativeBinariesForSupportedAbi(handle, nativeLibraryRoot, Build.SUPPORTED_32_BIT_ABIS, useIsaSpecificSubdirs, onIncremental);
                                    } else {
                                        Trace.traceBegin(262144L, "findSupportedAbi");
                                        abi32 = NativeLibraryHelper.findSupportedAbi(handle, Build.SUPPORTED_32_BIT_ABIS);
                                    }
                                    Trace.traceEnd(262144L);
                                }
                                if (abi32 >= 0 && AndroidPackageUtils.isLibrary(pkg) && extractLibs2) {
                                    throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Shared library native lib extraction not supported");
                                }
                                maybeThrowExceptionForMultiArchCopy("Error unpackaging 32 bit native libs for multiarch app.", abi32);
                                if (Build.SUPPORTED_64_BIT_ABIS.length > 0) {
                                    if (extractLibs2) {
                                        Trace.traceBegin(262144L, "copyNativeBinaries");
                                        abi65 = NativeLibraryHelper.copyNativeBinariesForSupportedAbi(handle, nativeLibraryRoot, Build.SUPPORTED_64_BIT_ABIS, useIsaSpecificSubdirs, onIncremental);
                                    } else {
                                        Trace.traceBegin(262144L, "findSupportedAbi");
                                        int abi66 = NativeLibraryHelper.findSupportedAbi(handle, Build.SUPPORTED_64_BIT_ABIS);
                                        abi65 = abi66;
                                    }
                                    Trace.traceEnd(262144L);
                                    abi64 = abi65;
                                } else {
                                    pkgRawPrimaryCpuAbi = pkgRawPrimaryCpuAbi;
                                    abi64 = -114;
                                }
                                maybeThrowExceptionForMultiArchCopy("Error unpackaging 64 bit native libs for multiarch app.", abi64);
                                if (abi64 >= 0) {
                                    if (extractLibs2 && AndroidPackageUtils.isLibrary(pkg)) {
                                        throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Shared library native lib extraction not supported");
                                    }
                                    primaryCpuAbi = Build.SUPPORTED_64_BIT_ABIS[abi64];
                                }
                                if (abi32 >= 0) {
                                    String abi = Build.SUPPORTED_32_BIT_ABIS[abi32];
                                    if (abi64 < 0) {
                                        primaryCpuAbi = abi;
                                    } else if (pkg.isUse32BitAbi()) {
                                        secondaryCpuAbi = primaryCpuAbi;
                                        primaryCpuAbi = abi;
                                    } else {
                                        secondaryCpuAbi = abi;
                                    }
                                }
                            } catch (IOException e) {
                                ioe = e;
                                Slog.e("PackageManager", "Unable to get canonical file " + ioe.toString());
                            } catch (Throwable th) {
                                th = th;
                                IoUtils.closeQuietly(handle);
                                throw th;
                            }
                        } catch (IOException e2) {
                            ioe = e2;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        if (cpuAbiOverride != null) {
                            abiList = new String[]{cpuAbiOverride};
                        } else {
                            try {
                                abiList = Build.SUPPORTED_ABIS;
                            } catch (IOException e3) {
                                ioe = e3;
                                Slog.e("PackageManager", "Unable to get canonical file " + ioe.toString());
                                IoUtils.closeQuietly(handle);
                                PackageAbiHelper.Abis abis = new PackageAbiHelper.Abis(primaryCpuAbi, secondaryCpuAbi);
                                return new Pair<>(abis, getNativeLibraryPaths(abis, PackageManagerService.sAppLib32InstallDir, pkg.getCodePath(), pkg.getBaseCodePath(), pkg.isSystem(), isUpdatedSystemApp));
                            } catch (Throwable th3) {
                                th = th3;
                                IoUtils.closeQuietly(handle);
                                throw th;
                            }
                        }
                        boolean needsRenderScriptOverride = false;
                        if (Build.SUPPORTED_64_BIT_ABIS.length > 0 && cpuAbiOverride == null && NativeLibraryHelper.hasRenderscriptBitcode(handle)) {
                            abiList = Build.SUPPORTED_32_BIT_ABIS;
                            needsRenderScriptOverride = true;
                        }
                        if (extractLibs2) {
                            Trace.traceBegin(262144L, "copyNativeBinaries");
                            abiList = abiList;
                            copyRet = NativeLibraryHelper.copyNativeBinariesForSupportedAbi(handle, nativeLibraryRoot, abiList, useIsaSpecificSubdirs, onIncremental);
                        } else {
                            try {
                                Trace.traceBegin(262144L, "findSupportedAbi");
                                copyRet = NativeLibraryHelper.findSupportedAbi(handle, abiList);
                            } catch (IOException e4) {
                                ioe = e4;
                                Slog.e("PackageManager", "Unable to get canonical file " + ioe.toString());
                            }
                        }
                        Trace.traceEnd(262144L);
                        if (copyRet < 0 && copyRet != -114) {
                            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Error unpackaging native libs for app, errorCode=" + copyRet);
                        }
                        if (copyRet >= 0) {
                            if (AndroidPackageUtils.isLibrary(pkg)) {
                                throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Shared library with native libs must be multiarch");
                            }
                            primaryCpuAbi = abiList[copyRet];
                        } else if (copyRet == -114 && cpuAbiOverride != null) {
                            primaryCpuAbi = cpuAbiOverride;
                        } else if (needsRenderScriptOverride) {
                            primaryCpuAbi = abiList[0];
                        }
                    }
                } catch (IOException e5) {
                    ioe = e5;
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (IOException e6) {
            ioe = e6;
        } catch (Throwable th6) {
            th = th6;
        }
        IoUtils.closeQuietly(handle);
        PackageAbiHelper.Abis abis2 = new PackageAbiHelper.Abis(primaryCpuAbi, secondaryCpuAbi);
        return new Pair<>(abis2, getNativeLibraryPaths(abis2, PackageManagerService.sAppLib32InstallDir, pkg.getCodePath(), pkg.getBaseCodePath(), pkg.isSystem(), isUpdatedSystemApp));
    }

    @Override // com.android.server.pm.PackageAbiHelper
    public String getAdjustedAbiForSharedUser(Set<PackageSetting> packagesForUser, AndroidPackage scannedPackage) {
        String pkgRawPrimaryCpuAbi;
        String requiredInstructionSet = null;
        if (scannedPackage != null && (pkgRawPrimaryCpuAbi = AndroidPackageUtils.getRawPrimaryCpuAbi(scannedPackage)) != null) {
            requiredInstructionSet = VMRuntime.getInstructionSet(pkgRawPrimaryCpuAbi);
        }
        PackageSetting requirer = null;
        for (PackageSetting ps : packagesForUser) {
            if (scannedPackage == null || !scannedPackage.getPackageName().equals(ps.name)) {
                if (ps.primaryCpuAbiString != null) {
                    String instructionSet = VMRuntime.getInstructionSet(ps.primaryCpuAbiString);
                    if (requiredInstructionSet != null && !requiredInstructionSet.equals(instructionSet)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Instruction set mismatch, ");
                        sb.append(requirer == null ? "[caller]" : requirer);
                        sb.append(" requires ");
                        sb.append(requiredInstructionSet);
                        sb.append(" whereas ");
                        sb.append(ps);
                        sb.append(" requires ");
                        sb.append(instructionSet);
                        String errorMessage = sb.toString();
                        Slog.w("PackageManager", errorMessage);
                    }
                    if (requiredInstructionSet == null) {
                        requiredInstructionSet = instructionSet;
                        requirer = ps;
                    }
                }
            }
        }
        if (requiredInstructionSet == null) {
            return null;
        }
        if (requirer != null) {
            String adjustedAbi = requirer.primaryCpuAbiString;
            return adjustedAbi;
        }
        String adjustedAbi2 = AndroidPackageUtils.getRawPrimaryCpuAbi(scannedPackage);
        return adjustedAbi2;
    }
}
