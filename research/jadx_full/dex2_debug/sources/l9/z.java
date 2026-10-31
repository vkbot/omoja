package l9;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class z implements m {
    public final e0 b;
    public final l c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z(e0 e0Var) {
        e0Var.getClass();
        this.b = e0Var;
        this.c = new l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m A(String str) {
        str.getClass();
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.u0(str);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final long G(g0 g0Var) throws IOException {
        long j = 0;
        while (true) {
            long j2 = ((f) g0Var).read(this.c, 8192L);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            n();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m H(long j) {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.o0(j);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m Z(long j) {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.n0(j);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final l a() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        e0 e0Var = this.b;
        if (this.d) {
            return;
        }
        l lVar = this.c;
        long j = lVar.c;
        if (j > 0) {
            e0Var.write(lVar, j);
        }
        th = null;
        try {
            e0Var.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m, l9.e0, java.io.Flushable
    public final void flush() {
        if (this.d) {
            j1.i.l("closed");
            return;
        }
        l lVar = this.c;
        long j = lVar.c;
        e0 e0Var = this.b;
        if (j > 0) {
            e0Var.write(lVar, j);
        }
        e0Var.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m g() {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        l lVar = this.c;
        long j = lVar.c;
        if (j > 0) {
            this.b.write(lVar, j);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m n() {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        l lVar = this.c;
        long jY = lVar.y();
        if (jY > 0) {
            this.b.write(lVar, jY);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public final j0 timeout() {
        return this.b.timeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "buffer(" + this.b + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m w(o oVar) {
        oVar.getClass();
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.l0(oVar);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m write(byte[] bArr) {
        bArr.getClass();
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.m174write(bArr, 0, bArr.length);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m writeByte(int i) {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.m0(i);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m writeInt(int i) {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.p0(i);
        n();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.m
    public final m writeShort(int i) {
        if (this.d) {
            j1.i.l("closed");
            return null;
        }
        this.c.r0(i);
        n();
        return this;
    }

    @Override // l9.e0
    public final void write(l lVar, long j) {
        lVar.getClass();
        if (!this.d) {
            this.c.write(lVar, j);
            n();
        } else {
            j1.i.l("closed");
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.d) {
            int iWrite = this.c.write(byteBuffer);
            n();
            return iWrite;
        }
        j1.i.l("closed");
        return 0;
    }

    @Override // l9.m
    public final m write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (!this.d) {
            this.c.m174write(bArr, i, i2);
            n();
            return this;
        }
        j1.i.l("closed");
        return null;
    }
}
