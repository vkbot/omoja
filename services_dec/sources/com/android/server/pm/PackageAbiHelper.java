package com.android.server.pm;

import android.util.Pair;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.parsing.pkg.ParsedPackage;
import java.io.File;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface PackageAbiHelper {
    Pair<Abis, NativeLibraryPaths> derivePackageAbi(AndroidPackage androidPackage, boolean z, String str, boolean z2) throws PackageManagerException;

    String getAdjustedAbiForSharedUser(Set<PackageSetting> set, AndroidPackage androidPackage);

    Abis getBundledAppAbis(AndroidPackage androidPackage);

    NativeLibraryPaths getNativeLibraryPaths(AndroidPackage androidPackage, PackageSetting packageSetting, File file);

    public static final class NativeLibraryPaths {
        public final String nativeLibraryDir;
        public final String nativeLibraryRootDir;
        public final boolean nativeLibraryRootRequiresIsa;
        public final String secondaryNativeLibraryDir;

        NativeLibraryPaths(String nativeLibraryRootDir, boolean nativeLibraryRootRequiresIsa, String nativeLibraryDir, String secondaryNativeLibraryDir) {
            this.nativeLibraryRootDir = nativeLibraryRootDir;
            this.nativeLibraryRootRequiresIsa = nativeLibraryRootRequiresIsa;
            this.nativeLibraryDir = nativeLibraryDir;
            this.secondaryNativeLibraryDir = secondaryNativeLibraryDir;
        }

        public void applyTo(ParsedPackage pkg) {
            pkg.setNativeLibraryRootDir(this.nativeLibraryRootDir).setNativeLibraryRootRequiresIsa(this.nativeLibraryRootRequiresIsa).setNativeLibraryDir(this.nativeLibraryDir).setSecondaryNativeLibraryDir(this.secondaryNativeLibraryDir);
        }
    }

    public static final class Abis {
        public final String primary;
        public final String secondary;

        Abis(String primary, String secondary) {
            this.primary = primary;
            this.secondary = secondary;
        }

        Abis(AndroidPackage pkg, PackageSetting pkgSetting) {
            this(AndroidPackageUtils.getPrimaryCpuAbi(pkg, pkgSetting), AndroidPackageUtils.getSecondaryCpuAbi(pkg, pkgSetting));
        }

        public void applyTo(ParsedPackage pkg) {
            pkg.setPrimaryCpuAbi(this.primary).setSecondaryCpuAbi(this.secondary);
        }

        public void applyTo(PackageSetting pkgSetting) {
            if (pkgSetting != null) {
                pkgSetting.primaryCpuAbiString = this.primary;
                pkgSetting.secondaryCpuAbiString = this.secondary;
            }
        }
    }
}
