package org.libpag;

import android.content.Context;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class PAGDiskCache {
    static {
        org.extra.tools.a.b("pag");
    }

    private static String GetCacheDir() {
        Context contextA = org.extra.tools.a.a();
        if (contextA == null) {
            return "";
        }
        File externalCacheDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? contextA.getExternalCacheDir() : null;
        if (externalCacheDir == null) {
            externalCacheDir = contextA.getCacheDir();
        }
        return externalCacheDir == null ? "" : externalCacheDir.getPath();
    }

    public static native long MaxDiskSize();

    static native byte[] ReadFile(String str);

    public static native void RemoveAll();

    public static native void SetMaxDiskSize(long j);

    static native boolean WriteFile(String str, byte[] bArr);
}
