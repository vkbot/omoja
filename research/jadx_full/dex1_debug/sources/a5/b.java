package a5;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f38b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) {
        int i11;
        if (i9 < 0 || i9 > bArr.length || i10 < 0 || (i11 = i9 + i10) > bArr.length || i11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.f38b += (long) i10;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f38b += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i9) {
        this.f38b++;
    }
}
