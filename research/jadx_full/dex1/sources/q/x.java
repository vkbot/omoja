package q;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile byte[] f4748b;
    public int c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k.g f4750g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(InputStream inputStream, k.g gVar) {
        super(inputStream);
        this.e = -1;
        this.f4750g = gVar;
        this.f4748b = (byte[]) gVar.c(65536, byte[].class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f4748b == null || inputStream == null) {
            y();
            throw null;
        }
        return (this.c - this.f4749f) + inputStream.available();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(InputStream inputStream, byte[] bArr) throws IOException {
        int i9 = this.e;
        if (i9 != -1) {
            int i10 = this.f4749f - i9;
            int i11 = this.d;
            if (i10 < i11) {
                if (i9 == 0 && i11 > bArr.length && this.c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i11) {
                        i11 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f4750g.c(i11, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f4748b = bArr2;
                    this.f4750g.g(bArr);
                    bArr = bArr2;
                } else if (i9 > 0) {
                    System.arraycopy(bArr, i9, bArr, 0, bArr.length - i9);
                }
                int i12 = this.f4749f - this.e;
                this.f4749f = i12;
                this.e = 0;
                this.c = 0;
                int i13 = inputStream.read(bArr, i12, bArr.length - i12);
                int i14 = this.f4749f;
                if (i13 > 0) {
                    i14 += i13;
                }
                this.c = i14;
                return i13;
            }
        }
        int i15 = inputStream.read(bArr);
        if (i15 > 0) {
            this.e = -1;
            this.f4749f = 0;
            this.c = i15;
        }
        return i15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void c() {
        if (this.f4748b != null) {
            this.f4750g.g(this.f4748b);
            this.f4748b = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f4748b != null) {
            this.f4750g.g(this.f4748b);
            this.f4748b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i9) {
        this.d = Math.max(this.d, i9);
        this.e = this.f4749f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i9, int i10) {
        int i11;
        int i12;
        byte[] bArr2 = this.f4748b;
        if (bArr2 == null) {
            y();
            throw null;
        }
        if (i10 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            y();
            throw null;
        }
        int i13 = this.f4749f;
        int i14 = this.c;
        if (i13 < i14) {
            int i15 = i14 - i13;
            if (i15 >= i10) {
                i15 = i10;
            }
            System.arraycopy(bArr2, i13, bArr, i9, i15);
            this.f4749f += i15;
            if (i15 == i10 || inputStream.available() == 0) {
                return i15;
            }
            i9 += i15;
            i11 = i10 - i15;
        } else {
            i11 = i10;
        }
        while (true) {
            if (this.e == -1 && i11 >= bArr2.length) {
                i12 = inputStream.read(bArr, i9, i11);
                if (i12 == -1) {
                    return i11 != i10 ? i10 - i11 : -1;
                }
            } else {
                if (b(inputStream, bArr2) == -1) {
                    return i11 != i10 ? i10 - i11 : -1;
                }
                if (bArr2 != this.f4748b && (bArr2 = this.f4748b) == null) {
                    y();
                    throw null;
                }
                int i16 = this.c;
                int i17 = this.f4749f;
                i12 = i16 - i17;
                if (i12 >= i11) {
                    i12 = i11;
                }
                System.arraycopy(bArr2, i17, bArr, i9, i12);
                this.f4749f += i12;
            }
            i11 -= i12;
            if (i11 == 0) {
                return i10;
            }
            if (inputStream.available() == 0) {
                return i10 - i11;
            }
            i9 += i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f4748b == null) {
            throw new IOException("Stream is closed");
        }
        int i9 = this.e;
        if (-1 == i9) {
            throw new com.google.protobuf.l("Mark has been invalidated, pos: " + this.f4749f + " markLimit: " + this.d);
        }
        this.f4749f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j9) {
        if (j9 < 1) {
            return 0L;
        }
        byte[] bArr = this.f4748b;
        if (bArr == null) {
            y();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            y();
            throw null;
        }
        int i9 = this.c;
        int i10 = this.f4749f;
        if (i9 - i10 >= j9) {
            this.f4749f = (int) (((long) i10) + j9);
            return j9;
        }
        long j10 = ((long) i9) - ((long) i10);
        this.f4749f = i9;
        if (this.e == -1 || j9 > this.d) {
            long jSkip = inputStream.skip(j9 - j10);
            if (jSkip > 0) {
                this.e = -1;
            }
            return j10 + jSkip;
        }
        if (b(inputStream, bArr) == -1) {
            return j10;
        }
        int i11 = this.c;
        int i12 = this.f4749f;
        if (i11 - i12 >= j9 - j10) {
            this.f4749f = (int) ((((long) i12) + j9) - j10);
            return j9;
        }
        long j11 = (j10 + ((long) i11)) - ((long) i12);
        this.f4749f = i11;
        return j11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f4748b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f4749f >= this.c && b(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f4748b && (bArr = this.f4748b) == null) {
                y();
                throw null;
            }
            int i9 = this.c;
            int i10 = this.f4749f;
            if (i9 - i10 <= 0) {
                return -1;
            }
            this.f4749f = i10 + 1;
            return bArr[i10] & UByte.MAX_VALUE;
        }
        y();
        throw null;
    }
}
