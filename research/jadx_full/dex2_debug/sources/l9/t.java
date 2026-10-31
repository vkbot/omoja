package l9;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class t implements g0 {
    public byte b;
    public final a0 c;
    public final Inflater d;
    public final u e;
    public final CRC32 f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(g0 g0Var) {
        g0Var.getClass();
        a0 a0Var = new a0(g0Var);
        this.c = a0Var;
        Inflater inflater = new Inflater(true);
        this.d = inflater;
        this.e = new u(a0Var, inflater);
        this.f = new CRC32();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(int i, int i2, String str) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(long j, l lVar, long j2) {
        b0 b0Var = lVar.b;
        b0Var.getClass();
        while (true) {
            int i = b0Var.c;
            int i2 = b0Var.b;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            b0Var = b0Var.f;
            b0Var.getClass();
        }
        while (j2 > 0) {
            int i3 = (int) (((long) b0Var.b) + j);
            int iMin = (int) Math.min(b0Var.c - i3, j2);
            this.f.update(b0Var.a, i3, iMin);
            j2 -= (long) iMin;
            b0Var = b0Var.f;
            b0Var.getClass();
            j = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.e.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public final long read(l lVar, long j) throws IOException {
        long j2;
        t tVar = this;
        lVar.getClass();
        if (j < 0) {
            i.d(ai.onnxruntime.a.h(j, "byteCount < 0: "));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b = tVar.b;
        CRC32 crc32 = tVar.f;
        a0 a0Var = tVar.c;
        if (b == 0) {
            a0Var.Y(10L);
            l lVar2 = a0Var.c;
            byte bV = lVar2.V(3L);
            boolean z = ((bV >> 1) & 1) == 1;
            if (z) {
                tVar.c(0L, lVar2, 10L);
            }
            b(8075, a0Var.readShort(), "ID1ID2");
            a0Var.skip(8L);
            if (((bV >> 2) & 1) == 1) {
                a0Var.Y(2L);
                if (z) {
                    c(0L, lVar2, 2L);
                }
                short s = lVar2.readShort();
                long j3 = ((short) (((s & 255) << 8) | ((s & 65280) >>> 8))) & 65535;
                a0Var.Y(j3);
                if (z) {
                    c(0L, lVar2, j3);
                }
                a0Var.skip(j3);
            }
            if (((bV >> 3) & 1) == 1) {
                long jB = a0Var.b(0L, Long.MAX_VALUE, (byte) 0);
                if (jB == -1) {
                    throw new EOFException();
                }
                if (z) {
                    j2 = 2;
                    c(0L, lVar2, jB + 1);
                } else {
                    j2 = 2;
                }
                a0Var.skip(jB + 1);
            } else {
                j2 = 2;
            }
            if (((bV >> 4) & 1) == 1) {
                long j4 = j2;
                long jB2 = a0Var.b(0L, Long.MAX_VALUE, (byte) 0);
                if (jB2 == -1) {
                    throw new EOFException();
                }
                j2 = j4;
                if (z) {
                    tVar = this;
                    tVar.c(0L, lVar2, jB2 + 1);
                } else {
                    tVar = this;
                }
                a0Var.skip(jB2 + 1);
            } else {
                tVar = this;
            }
            if (z) {
                a0Var.Y(j2);
                short s2 = lVar2.readShort();
                b((short) (((s2 & 255) << 8) | ((s2 & 65280) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            tVar.b = (byte) 1;
        }
        if (tVar.b == 1) {
            long j5 = lVar.c;
            long j6 = tVar.e.read(lVar, j);
            if (j6 != -1) {
                tVar.c(j5, lVar, j6);
                return j6;
            }
            tVar.b = (byte) 2;
        }
        if (tVar.b == 2) {
            b(a0Var.c(), (int) crc32.getValue(), "CRC");
            b(a0Var.c(), (int) tVar.d.getBytesWritten(), "ISIZE");
            tVar.b = (byte) 3;
            if (!a0Var.k()) {
                n0.b.A("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public final j0 getTimeout() {
        return this.c.b.getTimeout();
    }
}
