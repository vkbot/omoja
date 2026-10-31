package o7;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s2 extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t2 f4424b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s2(t2 t2Var) {
        this.f4424b = t2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public final void write(int i9) {
        write(new byte[]{(byte) i9}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) {
        this.f4424b.f(bArr, i9, i10);
    }
}
