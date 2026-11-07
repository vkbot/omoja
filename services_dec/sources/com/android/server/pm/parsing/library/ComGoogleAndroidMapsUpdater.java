package com.android.server.pm.parsing.library;

import com.android.server.pm.parsing.pkg.ParsedPackage;

/* JADX INFO: loaded from: classes.dex */
public class ComGoogleAndroidMapsUpdater extends PackageSharedLibraryUpdater {
    private static final String LIBRARY_NAME = "com.google.android.maps";

    @Override // com.android.server.pm.parsing.library.PackageSharedLibraryUpdater
    public void updatePackage(ParsedPackage parsedPackage, boolean isUpdatedSystemApp) {
        parsedPackage.removeUsesLibrary(LIBRARY_NAME);
        parsedPackage.removeUsesOptionalLibrary(LIBRARY_NAME);
    }
}
