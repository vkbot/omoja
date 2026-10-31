package o7;

import java.io.Closeable;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class c implements Closeable {
    public abstract c S(int i9);

    public abstract void V(OutputStream outputStream, int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9) {
        if (f0() < i9) {
            throw new IndexOutOfBoundsException();
        }
    }

    public abstract void c0(ByteBuffer byteBuffer);

    public abstract void d0(byte[] bArr, int i9, int i10);

    public abstract int e0();

    public abstract int f0();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g0() {
        throw new UnsupportedOperationException();
    }

    public abstract void h0(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean y() {
        return this instanceof j3;
    }

    public void c() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
