package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.Closeable;
import java.util.Arrays;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2239j implements Closeable {

    /* JADX INFO: renamed from: b */
    public C2242l f5868b;

    /* JADX INFO: renamed from: c */
    public boolean f5869c;

    /* JADX INFO: renamed from: d */
    public C2224b0 f5870d;

    /* JADX INFO: renamed from: f */
    public byte[] f5872f;

    /* JADX INFO: renamed from: e */
    public long f5871e = -1;

    /* JADX INFO: renamed from: g */
    public int f5873g = -1;

    /* JADX INFO: renamed from: h */
    public int f5874h = -1;

    /* JADX INFO: renamed from: b */
    public final void m3599b(long j10) {
        C2242l c2242l = this.f5868b;
        if (c2242l == null) {
            C1929i.m3030l("not attached to a buffer");
            return;
        }
        if (!this.f5869c) {
            C1929i.m3030l("resizeBuffer() only permitted for read/write buffers");
            return;
        }
        long j11 = c2242l.f5878c;
        if (j10 <= j11) {
            if (j10 < 0) {
                C2237i.m3597d(AbstractC0074a.m157h(j10, "newSize < 0: "));
                return;
            }
            long j12 = j11 - j10;
            while (j12 > 0) {
                C2224b0 c2224b0 = c2242l.f5877b;
                c2224b0.getClass();
                C2224b0 c2224b1 = c2224b0.f5855g;
                c2224b1.getClass();
                int i10 = c2224b1.f5851c;
                long j13 = i10 - c2224b1.f5850b;
                if (j13 > j12) {
                    c2224b1.f5851c = i10 - ((int) j12);
                    break;
                } else {
                    c2242l.f5877b = c2224b1.m3576a();
                    AbstractC2226c0.m3581a(c2224b1);
                    j12 -= j13;
                }
            }
            this.f5870d = null;
            this.f5871e = j10;
            this.f5872f = null;
            this.f5873g = -1;
            this.f5874h = -1;
        } else if (j10 > j11) {
            long j14 = j10 - j11;
            int i11 = 1;
            boolean z9 = true;
            for (long j15 = 0; j14 > j15; j15 = 0) {
                C2224b0 c2224b0M3619k0 = c2242l.m3619k0(i11);
                int iMin = (int) Math.min(j14, 8192 - c2224b0M3619k0.f5851c);
                int i12 = c2224b0M3619k0.f5851c + iMin;
                c2224b0M3619k0.f5851c = i12;
                j14 -= (long) iMin;
                if (z9) {
                    this.f5870d = c2224b0M3619k0;
                    this.f5871e = j11;
                    this.f5872f = c2224b0M3619k0.f5849a;
                    this.f5873g = i12 - iMin;
                    this.f5874h = i12;
                    z9 = false;
                }
                i11 = 1;
            }
        }
        c2242l.f5878c = j10;
    }

    /* JADX INFO: renamed from: c */
    public final int m3600c(long j10) {
        C2242l c2242l = this.f5868b;
        if (c2242l == null) {
            C1929i.m3030l("not attached to a buffer");
            return 0;
        }
        if (j10 >= -1) {
            long j11 = c2242l.f5878c;
            if (j10 <= j11) {
                if (j10 == -1 || j10 == j11) {
                    this.f5870d = null;
                    this.f5871e = j10;
                    this.f5872f = null;
                    this.f5873g = -1;
                    this.f5874h = -1;
                    return -1;
                }
                C2224b0 c2224b0 = c2242l.f5877b;
                C2224b0 c2224b1 = this.f5870d;
                long j12 = 0;
                if (c2224b1 != null) {
                    long j13 = this.f5871e - ((long) (this.f5873g - c2224b1.f5850b));
                    if (j13 > j10) {
                        c2224b1 = c2224b0;
                        c2224b0 = c2224b1;
                        j11 = j13;
                    } else {
                        j12 = j13;
                    }
                } else {
                    c2224b1 = c2224b0;
                }
                if (j11 - j10 > j10 - j12) {
                    while (true) {
                        c2224b1.getClass();
                        long j14 = ((long) (c2224b1.f5851c - c2224b1.f5850b)) + j12;
                        if (j10 < j14) {
                            break;
                        }
                        c2224b1 = c2224b1.f5854f;
                        j12 = j14;
                    }
                } else {
                    while (j11 > j10) {
                        c2224b0.getClass();
                        c2224b0 = c2224b0.f5855g;
                        c2224b0.getClass();
                        j11 -= (long) (c2224b0.f5851c - c2224b0.f5850b);
                    }
                    c2224b1 = c2224b0;
                    j12 = j11;
                }
                if (this.f5869c) {
                    c2224b1.getClass();
                    if (c2224b1.f5852d) {
                        byte[] bArr = c2224b1.f5849a;
                        C2224b0 c2224b2 = new C2224b0(Arrays.copyOf(bArr, bArr.length), c2224b1.f5850b, c2224b1.f5851c, false, true);
                        if (c2242l.f5877b == c2224b1) {
                            c2242l.f5877b = c2224b2;
                        }
                        c2224b1.m3577b(c2224b2);
                        C2224b0 c2224b3 = c2224b2.f5855g;
                        c2224b3.getClass();
                        c2224b3.m3576a();
                        c2224b1 = c2224b2;
                    }
                }
                this.f5870d = c2224b1;
                this.f5871e = j10;
                c2224b1.getClass();
                this.f5872f = c2224b1.f5849a;
                int i10 = c2224b1.f5850b + ((int) (j10 - j12));
                this.f5873g = i10;
                int i11 = c2224b1.f5851c;
                this.f5874h = i11;
                return i11 - i10;
            }
        }
        throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + c2242l.f5878c);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f5868b == null) {
            C1929i.m3030l("not attached to a buffer");
            return;
        }
        this.f5868b = null;
        this.f5870d = null;
        this.f5871e = -1L;
        this.f5872f = null;
        this.f5873g = -1;
        this.f5874h = -1;
    }
}
