package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.UShort;
import p142n0.C2467b;

/* JADX INFO: renamed from: l9.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2250t implements InterfaceC2234g0 {

    /* JADX INFO: renamed from: b */
    public byte f5887b;

    /* JADX INFO: renamed from: c */
    public final C2222a0 f5888c;

    /* JADX INFO: renamed from: d */
    public final Inflater f5889d;

    /* JADX INFO: renamed from: e */
    public final C2251u f5890e;

    /* JADX INFO: renamed from: f */
    public final CRC32 f5891f;

    public C2250t(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        C2222a0 c2222a0 = new C2222a0(interfaceC2234g0);
        this.f5888c = c2222a0;
        Inflater inflater = new Inflater(true);
        this.f5889d = inflater;
        this.f5890e = new C2251u(c2222a0, inflater);
        this.f5891f = new CRC32();
    }

    /* JADX INFO: renamed from: b */
    public static void m3638b(int i10, int i11, String str) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3)));
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m3639c(long j10, C2242l c2242l, long j11) {
        C2224b0 c2224b0 = c2242l.f5877b;
        c2224b0.getClass();
        while (true) {
            int i10 = c2224b0.f5851c;
            int i11 = c2224b0.f5850b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
        }
        while (j11 > 0) {
            int i12 = (int) (((long) c2224b0.f5850b) + j10);
            int iMin = (int) Math.min(c2224b0.f5851c - i12, j11);
            this.f5891f.update(c2224b0.f5849a, i12, iMin);
            j11 -= (long) iMin;
            c2224b0 = c2224b0.f5854f;
            c2224b0.getClass();
            j10 = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5890e.close();
    }

    @Override // p130l9.InterfaceC2234g0
    public final long read(C2242l c2242l, long j10) throws IOException {
        long j11;
        C2250t c2250t = this;
        c2242l.getClass();
        if (j10 < 0) {
            C2237i.m3597d(AbstractC0074a.m157h(j10, "byteCount < 0: "));
            return 0L;
        }
        if (j10 == 0) {
            return 0L;
        }
        byte b10 = c2250t.f5887b;
        CRC32 crc32 = c2250t.f5891f;
        C2222a0 c2222a0 = c2250t.f5888c;
        if (b10 == 0) {
            c2222a0.mo3555Y(10L);
            C2242l c2242l2 = c2222a0.f5846c;
            byte bM3606V = c2242l2.m3606V(3L);
            boolean z9 = ((bM3606V >> 1) & 1) == 1;
            if (z9) {
                c2250t.m3639c(0L, c2242l2, 10L);
            }
            m3638b(8075, c2222a0.readShort(), "ID1ID2");
            c2222a0.skip(8L);
            if (((bM3606V >> 2) & 1) == 1) {
                c2222a0.mo3555Y(2L);
                if (z9) {
                    m3639c(0L, c2242l2, 2L);
                }
                short s5 = c2242l2.readShort();
                long j12 = ((short) (((s5 & 255) << 8) | ((s5 & 65280) >>> 8))) & UShort.MAX_VALUE;
                c2222a0.mo3555Y(j12);
                if (z9) {
                    m3639c(0L, c2242l2, j12);
                }
                c2222a0.skip(j12);
            }
            if (((bM3606V >> 3) & 1) == 1) {
                long jM3558b = c2222a0.m3558b(0L, Long.MAX_VALUE, (byte) 0);
                if (jM3558b == -1) {
                    throw new EOFException();
                }
                if (z9) {
                    j11 = 2;
                    m3639c(0L, c2242l2, jM3558b + 1);
                } else {
                    j11 = 2;
                }
                c2222a0.skip(jM3558b + 1);
            } else {
                j11 = 2;
            }
            if (((bM3606V >> 4) & 1) == 1) {
                long j13 = j11;
                long jM3558b2 = c2222a0.m3558b(0L, Long.MAX_VALUE, (byte) 0);
                if (jM3558b2 == -1) {
                    throw new EOFException();
                }
                j11 = j13;
                if (z9) {
                    c2250t = this;
                    c2250t.m3639c(0L, c2242l2, jM3558b2 + 1);
                } else {
                    c2250t = this;
                }
                c2222a0.skip(jM3558b2 + 1);
            } else {
                c2250t = this;
            }
            if (z9) {
                c2222a0.mo3555Y(j11);
                short s9 = c2242l2.readShort();
                m3638b((short) (((s9 & 255) << 8) | ((s9 & 65280) >>> 8)), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            c2250t.f5887b = (byte) 1;
        }
        if (c2250t.f5887b == 1) {
            long j14 = c2242l.f5878c;
            long j15 = c2250t.f5890e.read(c2242l, j10);
            if (j15 != -1) {
                c2250t.m3639c(j14, c2242l, j15);
                return j15;
            }
            c2250t.f5887b = (byte) 2;
        }
        if (c2250t.f5887b == 2) {
            m3638b(c2222a0.m3560c(), (int) crc32.getValue(), "CRC");
            m3638b(c2222a0.m3560c(), (int) c2250t.f5889d.getBytesWritten(), "ISIZE");
            c2250t.f5887b = (byte) 3;
            if (!c2222a0.mo3564k()) {
                C2467b.m3820A("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    @Override // p130l9.InterfaceC2234g0
    public final C2240j0 timeout() {
        return this.f5888c.f5845b.timeout();
    }
}
