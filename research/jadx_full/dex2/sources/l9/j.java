package l9;

import java.io.Closeable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class j implements Closeable {
    public l b;
    public boolean c;
    public b0 d;
    public byte[] f;
    public long e = -1;
    public int g = -1;
    public int h = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(long j) {
        l lVar = this.b;
        if (lVar == null) {
            j1.i.l("not attached to a buffer");
            return;
        }
        if (!this.c) {
            j1.i.l("resizeBuffer() only permitted for read/write buffers");
            return;
        }
        long j2 = lVar.c;
        if (j <= j2) {
            if (j < 0) {
                i.d(ai.onnxruntime.a.h(j, "newSize < 0: "));
                return;
            }
            long j3 = j2 - j;
            while (j3 > 0) {
                b0 b0Var = lVar.b;
                b0Var.getClass();
                b0 b0Var2 = b0Var.g;
                b0Var2.getClass();
                int i = b0Var2.c;
                long j4 = i - b0Var2.b;
                if (j4 > j3) {
                    b0Var2.c = i - ((int) j3);
                    break;
                } else {
                    lVar.b = b0Var2.a();
                    c0.a(b0Var2);
                    j3 -= j4;
                }
            }
            this.d = null;
            this.e = j;
            this.f = null;
            this.g = -1;
            this.h = -1;
        } else if (j > j2) {
            long j5 = j - j2;
            int i2 = 1;
            boolean z = true;
            for (long j6 = 0; j5 > j6; j6 = 0) {
                b0 b0VarK0 = lVar.k0(i2);
                int iMin = (int) Math.min(j5, 8192 - b0VarK0.c);
                int i3 = b0VarK0.c + iMin;
                b0VarK0.c = i3;
                j5 -= (long) iMin;
                if (z) {
                    this.d = b0VarK0;
                    this.e = j2;
                    this.f = b0VarK0.a;
                    this.g = i3 - iMin;
                    this.h = i3;
                    z = false;
                }
                i2 = 1;
            }
        }
        lVar.c = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(long j) {
        l lVar = this.b;
        if (lVar == null) {
            j1.i.l("not attached to a buffer");
            return 0;
        }
        if (j >= -1) {
            long j2 = lVar.c;
            if (j <= j2) {
                if (j == -1 || j == j2) {
                    this.d = null;
                    this.e = j;
                    this.f = null;
                    this.g = -1;
                    this.h = -1;
                    return -1;
                }
                b0 b0Var = lVar.b;
                b0 b0Var2 = this.d;
                long j3 = 0;
                if (b0Var2 != null) {
                    long j4 = this.e - ((long) (this.g - b0Var2.b));
                    if (j4 > j) {
                        b0Var2 = b0Var;
                        b0Var = b0Var2;
                        j2 = j4;
                    } else {
                        j3 = j4;
                    }
                } else {
                    b0Var2 = b0Var;
                }
                if (j2 - j > j - j3) {
                    while (true) {
                        b0Var2.getClass();
                        long j5 = ((long) (b0Var2.c - b0Var2.b)) + j3;
                        if (j < j5) {
                            break;
                        }
                        b0Var2 = b0Var2.f;
                        j3 = j5;
                    }
                } else {
                    while (j2 > j) {
                        b0Var.getClass();
                        b0Var = b0Var.g;
                        b0Var.getClass();
                        j2 -= (long) (b0Var.c - b0Var.b);
                    }
                    b0Var2 = b0Var;
                    j3 = j2;
                }
                if (this.c) {
                    b0Var2.getClass();
                    if (b0Var2.d) {
                        byte[] bArr = b0Var2.a;
                        b0 b0Var3 = new b0(Arrays.copyOf(bArr, bArr.length), b0Var2.b, b0Var2.c, false, true);
                        if (lVar.b == b0Var2) {
                            lVar.b = b0Var3;
                        }
                        b0Var2.b(b0Var3);
                        b0 b0Var4 = b0Var3.g;
                        b0Var4.getClass();
                        b0Var4.a();
                        b0Var2 = b0Var3;
                    }
                }
                this.d = b0Var2;
                this.e = j;
                b0Var2.getClass();
                this.f = b0Var2.a;
                int i = b0Var2.b + ((int) (j - j3));
                this.g = i;
                int i2 = b0Var2.c;
                this.h = i2;
                return i2 - i;
            }
        }
        throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + lVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.b == null) {
            j1.i.l("not attached to a buffer");
            return;
        }
        this.b = null;
        this.d = null;
        this.e = -1L;
        this.f = null;
        this.g = -1;
        this.h = -1;
    }
}
