package org.libpag;

/* JADX INFO: loaded from: classes2.dex */
public class PAGSolidLayer extends PAGLayer {
    static {
        org.extra.tools.a.b("pag");
        nativeInit();
    }

    public PAGSolidLayer(long j) {
        super(j);
    }

    private static native void nativeInit();

    public native void setSolidColor(int i);

    public native int solidColor();
}
