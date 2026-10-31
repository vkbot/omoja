package p130l9;

import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import p142n0.C2467b;

/* JADX INFO: renamed from: l9.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2241k extends InputStream {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5875b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2244n f5876c;

    public /* synthetic */ C2241k(InterfaceC2244n interfaceC2244n, int i10) {
        this.f5875b = i10;
        this.f5876c = interfaceC2244n;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        switch (this.f5875b) {
            case 0:
                return (int) Math.min(((C2242l) this.f5876c).f5878c, Integer.MAX_VALUE);
            default:
                C2222a0 c2222a0 = (C2222a0) this.f5876c;
                if (!c2222a0.f5847d) {
                    return (int) Math.min(c2222a0.f5846c.f5878c, Integer.MAX_VALUE);
                }
                C2467b.m3820A("closed");
                return 0;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f5875b) {
            case 0:
                break;
            default:
                ((C2222a0) this.f5876c).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        switch (this.f5875b) {
            case 0:
                C2242l c2242l = (C2242l) this.f5876c;
                if (c2242l.f5878c > 0) {
                    return c2242l.readByte() & UByte.MAX_VALUE;
                }
                return -1;
            default:
                C2222a0 c2222a0 = (C2222a0) this.f5876c;
                C2242l c2242l2 = c2222a0.f5846c;
                if (c2222a0.f5847d) {
                    C2467b.m3820A("closed");
                    return 0;
                }
                if (c2242l2.f5878c == 0 && c2222a0.f5845b.read(c2242l2, 8192L) == -1) {
                    return -1;
                }
                return c2242l2.readByte() & UByte.MAX_VALUE;
        }
    }

    public final String toString() {
        switch (this.f5875b) {
            case 0:
                return ((C2242l) this.f5876c) + ".inputStream()";
            default:
                return ((C2222a0) this.f5876c) + ".inputStream()";
        }
    }

    /* JADX INFO: renamed from: b */
    private final void m3601b() {
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f5875b;
        bArr.getClass();
        switch (i12) {
            case 0:
                return ((C2242l) this.f5876c).read(bArr, i10, i11);
            default:
                C2222a0 c2222a0 = (C2222a0) this.f5876c;
                C2242l c2242l = c2222a0.f5846c;
                if (!c2222a0.f5847d) {
                    AbstractC2223b.m3571d(bArr.length, i10, i11);
                    if (c2242l.f5878c == 0 && c2222a0.f5845b.read(c2242l, 8192L) == -1) {
                        return -1;
                    }
                    return c2242l.read(bArr, i10, i11);
                }
                C2467b.m3820A("closed");
                return 0;
        }
    }
}
