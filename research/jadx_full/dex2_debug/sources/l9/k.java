package l9;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class k extends InputStream {
    public final /* synthetic */ int b;
    public final /* synthetic */ n c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(n nVar, int i) {
        this.b = i;
        this.c = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int available() {
        switch (this.b) {
            case 0:
                return (int) Math.min(((l) this.c).c, Integer.MAX_VALUE);
            default:
                a0 a0Var = (a0) this.c;
                if (!a0Var.d) {
                    return (int) Math.min(a0Var.c.c, Integer.MAX_VALUE);
                }
                n0.b.A("closed");
                return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.b) {
            case 0:
                break;
            default:
                ((a0) this.c).close();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public final int read() {
        switch (this.b) {
            case 0:
                l lVar = (l) this.c;
                if (lVar.c > 0) {
                    return lVar.readByte() & 255;
                }
                return -1;
            default:
                a0 a0Var = (a0) this.c;
                l lVar2 = a0Var.c;
                if (a0Var.d) {
                    n0.b.A("closed");
                    return 0;
                }
                if (lVar2.c == 0 && a0Var.b.read(lVar2, 8192L) == -1) {
                    return -1;
                }
                return lVar2.readByte() & 255;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        switch (this.b) {
            case 0:
                return ((l) this.c) + ".inputStream()";
            default:
                return ((a0) this.c) + ".inputStream()";
        }
    }

    private final void b() {
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = this.b;
        bArr.getClass();
        switch (i3) {
            case 0:
                return ((l) this.c).read(bArr, i, i2);
            default:
                a0 a0Var = (a0) this.c;
                l lVar = a0Var.c;
                if (!a0Var.d) {
                    b.d(bArr.length, i, i2);
                    if (lVar.c == 0 && a0Var.b.read(lVar, 8192L) == -1) {
                        return -1;
                    }
                    return lVar.read(bArr, i, i2);
                }
                n0.b.A("closed");
                return 0;
        }
    }
}
