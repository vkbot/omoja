package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1133b0 {

    /* JADX INFO: renamed from: a */
    public static final Charset f2634a;

    /* JADX INFO: renamed from: b */
    public static final byte[] f2635b;

    static {
        Charset.forName("US-ASCII");
        f2634a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f2635b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC1157j.m2005d(bArr, 0, 0, false);
    }

    /* JADX INFO: renamed from: a */
    public static void m1899a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: b */
    public static int m1900b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }
}
