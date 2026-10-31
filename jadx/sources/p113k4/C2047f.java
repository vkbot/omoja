package p113k4;

import java.io.OutputStream;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: k4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2047f extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        AbstractC2587b.m4044k(i10, i11 + i10, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        bArr.getClass();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
    }
}
