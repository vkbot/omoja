package p157o7;

import java.io.Closeable;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: o7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2611c implements Closeable {
    /* JADX INFO: renamed from: S */
    public abstract AbstractC2611c mo4102S(int i10);

    /* JADX INFO: renamed from: V */
    public abstract void mo4103V(OutputStream outputStream, int i10);

    /* JADX INFO: renamed from: b */
    public final void m4129b(int i10) {
        if (mo4108f0() < i10) {
            throw new IndexOutOfBoundsException();
        }
    }

    /* JADX INFO: renamed from: c0 */
    public abstract void mo4105c0(ByteBuffer byteBuffer);

    /* JADX INFO: renamed from: d0 */
    public abstract void mo4106d0(byte[] bArr, int i10, int i11);

    /* JADX INFO: renamed from: e0 */
    public abstract int mo4107e0();

    /* JADX INFO: renamed from: f0 */
    public abstract int mo4108f0();

    /* JADX INFO: renamed from: g0 */
    public void mo4109g0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: h0 */
    public abstract void mo4110h0(int i10);

    /* JADX INFO: renamed from: y */
    public boolean mo4115y() {
        return this instanceof C2657j3;
    }

    /* JADX INFO: renamed from: c */
    public void mo4104c() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
