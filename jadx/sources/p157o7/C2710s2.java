package p157o7;

import java.io.OutputStream;

/* JADX INFO: renamed from: o7.s2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2710s2 extends OutputStream {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2716t2 f7751b;

    public C2710s2(C2716t2 c2716t2) {
        this.f7751b = c2716t2;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        this.f7751b.m4241f(bArr, i10, i11);
    }
}
