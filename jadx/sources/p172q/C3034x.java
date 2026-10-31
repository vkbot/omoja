package p172q;

import com.google.protobuf.C1163l;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import p108k.C2019g;

/* JADX INFO: renamed from: q.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3034x extends FilterInputStream {

    /* JADX INFO: renamed from: b */
    public volatile byte[] f8512b;

    /* JADX INFO: renamed from: c */
    public int f8513c;

    /* JADX INFO: renamed from: d */
    public int f8514d;

    /* JADX INFO: renamed from: e */
    public int f8515e;

    /* JADX INFO: renamed from: f */
    public int f8516f;

    /* JADX INFO: renamed from: g */
    public final C2019g f8517g;

    public C3034x(InputStream inputStream, C2019g c2019g) {
        super(inputStream);
        this.f8515e = -1;
        this.f8517g = c2019g;
        this.f8512b = (byte[]) c2019g.m3106c(65536, byte[].class);
    }

    /* JADX INFO: renamed from: y */
    public static void m4855y() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f8512b == null || inputStream == null) {
            m4855y();
            throw null;
        }
        return (this.f8513c - this.f8516f) + inputStream.available();
    }

    /* JADX INFO: renamed from: b */
    public final int m4856b(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f8515e;
        if (i10 != -1) {
            int i11 = this.f8516f - i10;
            int i12 = this.f8514d;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f8513c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f8517g.m3106c(i12, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f8512b = bArr2;
                    this.f8517g.m3110g(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f8516f - this.f8515e;
                this.f8516f = i13;
                this.f8515e = 0;
                this.f8513c = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.f8516f;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.f8513c = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.f8515e = -1;
            this.f8516f = 0;
            this.f8513c = i16;
        }
        return i16;
    }

    /* JADX INFO: renamed from: c */
    public final synchronized void m4857c() {
        if (this.f8512b != null) {
            this.f8517g.m3110g(this.f8512b);
            this.f8512b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f8512b != null) {
            this.f8517g.m3110g(this.f8512b);
            this.f8512b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f8514d = Math.max(this.f8514d, i10);
        this.f8515e = this.f8516f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        byte[] bArr2 = this.f8512b;
        if (bArr2 == null) {
            m4855y();
            throw null;
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            m4855y();
            throw null;
        }
        int i14 = this.f8516f;
        int i15 = this.f8513c;
        if (i14 < i15) {
            int i16 = i15 - i14;
            if (i16 >= i11) {
                i16 = i11;
            }
            System.arraycopy(bArr2, i14, bArr, i10, i16);
            this.f8516f += i16;
            if (i16 == i11 || inputStream.available() == 0) {
                return i16;
            }
            i10 += i16;
            i12 = i11 - i16;
        } else {
            i12 = i11;
        }
        while (true) {
            if (this.f8515e == -1 && i12 >= bArr2.length) {
                i13 = inputStream.read(bArr, i10, i12);
                if (i13 == -1) {
                    return i12 != i11 ? i11 - i12 : -1;
                }
            } else {
                if (m4856b(inputStream, bArr2) == -1) {
                    return i12 != i11 ? i11 - i12 : -1;
                }
                if (bArr2 != this.f8512b && (bArr2 = this.f8512b) == null) {
                    m4855y();
                    throw null;
                }
                int i17 = this.f8513c;
                int i18 = this.f8516f;
                i13 = i17 - i18;
                if (i13 >= i12) {
                    i13 = i12;
                }
                System.arraycopy(bArr2, i18, bArr, i10, i13);
                this.f8516f += i13;
            }
            i12 -= i13;
            if (i12 == 0) {
                return i11;
            }
            if (inputStream.available() == 0) {
                return i11 - i12;
            }
            i10 += i13;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f8512b == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.f8515e;
        if (-1 == i10) {
            throw new C1163l("Mark has been invalidated, pos: " + this.f8516f + " markLimit: " + this.f8514d);
        }
        this.f8516f = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f8512b;
        if (bArr == null) {
            m4855y();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            m4855y();
            throw null;
        }
        int i10 = this.f8513c;
        int i11 = this.f8516f;
        if (i10 - i11 >= j10) {
            this.f8516f = (int) (((long) i11) + j10);
            return j10;
        }
        long j11 = ((long) i10) - ((long) i11);
        this.f8516f = i10;
        if (this.f8515e == -1 || j10 > this.f8514d) {
            long jSkip = inputStream.skip(j10 - j11);
            if (jSkip > 0) {
                this.f8515e = -1;
            }
            return j11 + jSkip;
        }
        if (m4856b(inputStream, bArr) == -1) {
            return j11;
        }
        int i12 = this.f8513c;
        int i13 = this.f8516f;
        if (i12 - i13 >= j10 - j11) {
            this.f8516f = (int) ((((long) i13) + j10) - j11);
            return j10;
        }
        long j12 = (j11 + ((long) i12)) - ((long) i13);
        this.f8516f = i12;
        return j12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f8512b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f8516f >= this.f8513c && m4856b(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f8512b && (bArr = this.f8512b) == null) {
                m4855y();
                throw null;
            }
            int i10 = this.f8513c;
            int i11 = this.f8516f;
            if (i10 - i11 <= 0) {
                return -1;
            }
            this.f8516f = i11 + 1;
            return bArr[i11] & UByte.MAX_VALUE;
        }
        m4855y();
        throw null;
    }
}
