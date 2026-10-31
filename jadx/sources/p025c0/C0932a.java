package p025c0;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.UByte;

/* JADX INFO: renamed from: c0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0932a extends InputStream {

    /* JADX INFO: renamed from: b */
    public final ByteBuffer f784b;

    /* JADX INFO: renamed from: c */
    public int f785c = -1;

    public C0932a(ByteBuffer byteBuffer) {
        this.f784b = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f784b.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f785c = this.f784b.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        ByteBuffer byteBuffer = this.f784b;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int iMin = Math.min(i11, byteBuffer.remaining());
        byteBuffer.get(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i10 = this.f785c;
        if (i10 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f784b.position(i10);
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        ByteBuffer byteBuffer = this.f784b;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long jMin = Math.min(j10, byteBuffer.remaining());
        byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
        return jMin;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f784b;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & UByte.MAX_VALUE;
        }
        return -1;
    }
}
