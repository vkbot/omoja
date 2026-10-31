package com.example.navistart.cores;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class PkgTools {
    private final Context context;

    public PkgTools(Context context) {
        this.context = context;
    }

    public boolean isActivityAvailable(String str, String str2) {
        PackageManager packageManager = this.context.getPackageManager();
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        return !packageManager.queryIntentActivities(intent, 65536).isEmpty();
    }

    public boolean isActivityAvailable(Intent intent) {
        return isActivityAvailable(intent.getComponent().getPackageName(), intent.getComponent().getClassName());
    }
}
