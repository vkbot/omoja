package com.android.server.om;

import android.content.pm.PackageInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface PackageManagerHelper {
    List<PackageInfo> getOverlayPackages(int i);

    PackageInfo getPackageInfo(String str, int i);

    boolean signaturesMatching(String str, String str2, int i);
}
