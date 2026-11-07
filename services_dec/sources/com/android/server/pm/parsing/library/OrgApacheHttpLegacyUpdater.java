package com.android.server.pm.parsing.library;

import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.parsing.pkg.ParsedPackage;

/* JADX INFO: loaded from: classes.dex */
public class OrgApacheHttpLegacyUpdater extends PackageSharedLibraryUpdater {
    private static boolean apkTargetsApiLevelLessThanOrEqualToOMR1(AndroidPackage pkg) {
        return pkg.getTargetSdkVersion() < 28;
    }

    @Override // com.android.server.pm.parsing.library.PackageSharedLibraryUpdater
    public void updatePackage(ParsedPackage parsedPackage, boolean isUpdatedSystemApp) {
        if (apkTargetsApiLevelLessThanOrEqualToOMR1(parsedPackage)) {
            prefixRequiredLibrary(parsedPackage, SharedLibraryNames.ORG_APACHE_HTTP_LEGACY);
        }
    }
}
