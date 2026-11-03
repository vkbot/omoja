package org.extra.relinker;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
final class e implements c.b {
    e() {
    }

    @Override // org.extra.relinker.c.b
    public void a(String str) {
        System.loadLibrary(str);
    }

    @Override // org.extra.relinker.c.b
    public String b(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // org.extra.relinker.c.b
    public void c(String str) {
        System.load(str);
    }

    @Override // org.extra.relinker.c.b
    public String d(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // org.extra.relinker.c.b
    public String[] a() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !f.a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }
}
