package l9;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.text.CharsKt;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a0 implements n {
    public final g0 b;
    public final l c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a0(g0 g0Var) {
        g0Var.getClass();
        this.b = g0Var;
        this.c = new l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String D(Charset charset) {
        charset.getClass();
        g0 g0Var = this.b;
        l lVar = this.c;
        lVar.G(g0Var);
        return lVar.g0(lVar.c, charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final o J() {
        g0 g0Var = this.b;
        l lVar = this.c;
        lVar.G(g0Var);
        return lVar.f(lVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String L() {
        return p(Long.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final int P(w wVar) throws EOFException {
        l lVar;
        wVar.getClass();
        if (this.d) {
            j1.i.l("closed");
            return 0;
        }
        do {
            lVar = this.c;
            int iC = m9.a.c(lVar, wVar, true);
            if (iC != -2) {
                if (iC == -1) {
                    break;
                }
                lVar.skip(wVar.b[iC].c());
                return iC;
            }
        } while (this.b.read(lVar, 8192L) != -1);
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean Q(long j, o oVar) {
        oVar.getClass();
        int iC = oVar.c();
        if (this.d) {
            j1.i.l("closed");
            return false;
        }
        if (iC >= 0 && oVar.c() >= iC) {
            for (int i = 0; i < iC; i++) {
                long j2 = i;
                if (d(1 + j2) && this.c.V(j2) == oVar.f(i)) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void Y(long j) throws EOFException {
        if (!d(j)) {
            throw new EOFException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final l a() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long a0() throws EOFException {
        l lVar;
        Y(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            boolean zD = d(i2);
            lVar = this.c;
            if (!zD) {
                break;
            }
            byte bV = lVar.V(i);
            if ((bV < 48 || bV > 57) && ((bV < 97 || bV > 102) && (bV < 65 || bV > 70))) {
                if (i != 0) {
                    break;
                }
                String string = Integer.toString(bV, CharsKt.checkRadix(CharsKt.checkRadix(16)));
                string.getClass();
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
            }
            i = i2;
        }
        return lVar.a0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long b(long j, long j2, byte b) {
        if (this.d) {
            j1.i.l("closed");
            return 0L;
        }
        if (0 > j2) {
            i.d(ai.onnxruntime.a.h(j2, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j2) {
            l lVar = this.c;
            long j3 = j2;
            byte b2 = b;
            long jC0 = lVar.c0(jMax, j3, b2);
            if (jC0 != -1) {
                return jC0;
            }
            long j4 = lVar.c;
            if (j4 >= j3 || this.b.read(lVar, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j4);
            j2 = j3;
            b = b2;
        }
        return -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final InputStream b0() {
        return new k(this, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c() throws EOFException {
        Y(4L);
        int i = this.c.readInt();
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.d) {
            return;
        }
        this.d = true;
        this.b.close();
        this.c.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean d(long j) {
        l lVar;
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
            return false;
        }
        if (this.d) {
            j1.i.l("closed");
            return false;
        }
        do {
            lVar = this.c;
            if (lVar.c >= j) {
                return true;
            }
        } while (this.b.read(lVar, 8192L) != -1);
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final o f(long j) throws EOFException {
        Y(j);
        return this.c.f(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final byte[] j() {
        g0 g0Var = this.b;
        l lVar = this.c;
        lVar.G(g0Var);
        return lVar.f0(lVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final boolean k() {
        if (this.d) {
            j1.i.l("closed");
            return false;
        }
        l lVar = this.c;
        return lVar.k() && this.b.read(lVar, 8192L) == -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long o() throws EOFException {
        l lVar;
        Y(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            boolean zD = d(j2);
            lVar = this.c;
            if (!zD) {
                break;
            }
            byte bV = lVar.V(j);
            if ((bV < 48 || bV > 57) && !(j == 0 && bV == 45)) {
                if (j != 0) {
                    break;
                }
                String string = Integer.toString(bV, CharsKt.checkRadix(CharsKt.checkRadix(16)));
                string.getClass();
                throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
            }
            j = j2;
        }
        return lVar.o();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final String p(long j) throws EOFException {
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "limit < 0: "));
            return null;
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long jB = b(0L, j2, (byte) 10);
        l lVar = this.c;
        if (jB != -1) {
            return m9.a.b(lVar, jB);
        }
        if (j2 < Long.MAX_VALUE && d(j2) && lVar.V(j2 - 1) == 13 && d(j2 + 1) && lVar.V(j2) == 10) {
            return m9.a.b(lVar, j2);
        }
        l lVar2 = new l();
        lVar.S(0L, lVar2, Math.min(32, lVar.c));
        throw new EOFException("\\n not found: limit=" + Math.min(lVar.c, j) + " content=" + lVar2.f(lVar2.c).d() + Typography.ellipsis);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final a0 peek() {
        return new a0(new y(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public final long read(l lVar, long j) {
        lVar.getClass();
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.d) {
            j1.i.l("closed");
            return 0L;
        }
        l lVar2 = this.c;
        if (lVar2.c == 0 && this.b.read(lVar2, 8192L) == -1) {
            return -1L;
        }
        return lVar2.read(lVar, Math.min(j, lVar2.c));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final byte readByte() throws EOFException {
        Y(1L);
        return this.c.readByte();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void readFully(byte[] bArr) throws EOFException {
        l lVar = this.c;
        bArr.getClass();
        try {
            Y(bArr.length);
            lVar.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                long j = lVar.c;
                if (j <= 0) {
                    throw e;
                }
                int i2 = lVar.read(bArr, i, (int) j);
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final int readInt() throws EOFException {
        Y(4L);
        return this.c.readInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final long readLong() throws EOFException {
        Y(8L);
        return this.c.readLong();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final short readShort() throws EOFException {
        Y(2L);
        return this.c.readShort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void skip(long j) throws EOFException {
        if (this.d) {
            j1.i.l("closed");
            return;
        }
        while (j > 0) {
            l lVar = this.c;
            if (lVar.c == 0 && this.b.read(lVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, lVar.c);
            lVar.skip(jMin);
            j -= jMin;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.n
    public final void t(l lVar, long j) throws EOFException {
        l lVar2 = this.c;
        lVar.getClass();
        try {
            Y(j);
            lVar2.t(lVar, j);
        } catch (EOFException e) {
            lVar.G(lVar2);
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        return this.b.getTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "buffer(" + this.b + ')';
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        l lVar = this.c;
        if (lVar.c == 0 && this.b.read(lVar, 8192L) == -1) {
            return -1;
        }
        return lVar.read(byteBuffer);
    }
}
