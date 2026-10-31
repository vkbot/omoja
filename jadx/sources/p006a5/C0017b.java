package p006a5;

import java.io.OutputStream;

/* JADX INFO: renamed from: a5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0017b extends OutputStream {

    /* JADX INFO: renamed from: b */
    public long f66b;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > bArr.length || i11 < 0 || (i12 = i10 + i11) > bArr.length || i12 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f66b += (long) i11;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f66b += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        this.f66b++;
    }
}
