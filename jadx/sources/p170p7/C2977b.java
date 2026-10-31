package p170p7;

import java.io.Closeable;
import java.io.IOException;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import p097j.C1897i;
import p186r7.C3117i;
import p186r7.C3118j;
import p186r7.EnumC3109a;

/* JADX INFO: renamed from: p7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2977b implements Closeable {

    /* JADX INFO: renamed from: b */
    public final C3117i f8286b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2978c f8287c;

    public C2977b(C2978c c2978c, C3117i c3117i) {
        this.f8287c = c2978c;
        this.f8286b = c3117i;
    }

    /* JADX INFO: renamed from: S */
    public final void m4766S(boolean z9, int i10, int i11) {
        if (z9) {
            this.f8287c.f8299m++;
        }
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            if (c3117i.f8927f) {
                throw new IOException("closed");
            }
            c3117i.m4965b(0, 8, (byte) 6, z9 ? (byte) 1 : (byte) 0);
            c3117i.f8923b.writeInt(i10);
            c3117i.f8923b.writeInt(i11);
            c3117i.f8923b.flush();
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m4767V(int i10, EnumC3109a enumC3109a) {
        this.f8287c.f8299m++;
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            if (c3117i.f8927f) {
                throw new IOException("closed");
            }
            if (enumC3109a.f8886b == -1) {
                throw new IllegalArgumentException();
            }
            c3117i.m4965b(i10, 4, (byte) 3, (byte) 0);
            c3117i.f8923b.writeInt(enumC3109a.f8886b);
            c3117i.f8923b.flush();
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m4768b(C1897i c1897i) {
        this.f8287c.f8299m++;
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            if (c3117i.f8927f) {
                throw new IOException("closed");
            }
            int i10 = c3117i.f8926e;
            if ((c1897i.f4929b & 32) != 0) {
                i10 = ((int[]) c1897i.f4930c)[5];
            }
            c3117i.f8926e = i10;
            c3117i.m4965b(0, 0, (byte) 4, (byte) 1);
            c3117i.f8923b.flush();
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4769c() {
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            try {
                if (c3117i.f8927f) {
                    throw new IOException("closed");
                }
                Logger logger = C3118j.f8928a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(">> CONNECTION " + C3118j.f8929b.mo3586d());
                }
                c3117i.f8923b.write(C3118j.f8929b.mo3592k());
                c3117i.f8923b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final void m4770c0(C1897i c1897i) {
        int i10;
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            try {
                if (c3117i.f8927f) {
                    throw new IOException("closed");
                }
                int i11 = 0;
                c3117i.m4965b(0, Integer.bitCount(c1897i.f4929b) * 6, (byte) 4, (byte) 0);
                while (i11 < 10) {
                    if (c1897i.m2943b(i11)) {
                        if (i11 == 4) {
                            i10 = 3;
                        } else {
                            i10 = i11 == 7 ? 4 : i11;
                        }
                        c3117i.f8923b.writeShort(i10);
                        c3117i.f8923b.writeInt(((int[]) c1897i.f4930c)[i11]);
                    }
                    i11++;
                }
                c3117i.f8923b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8286b.close();
    }

    /* JADX INFO: renamed from: d0 */
    public final void m4771d0(int i10, long j10) {
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            if (c3117i.f8927f) {
                throw new IOException("closed");
            }
            if (j10 == 0 || j10 > 2147483647L) {
                Locale locale = Locale.US;
                throw new IllegalArgumentException("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j10);
            }
            c3117i.m4965b(i10, 4, (byte) 8, (byte) 0);
            c3117i.f8923b.writeInt((int) j10);
            c3117i.f8923b.flush();
        }
    }

    public final void flush() {
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            if (c3117i.f8927f) {
                throw new IOException("closed");
            }
            c3117i.f8923b.flush();
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m4772y(EnumC3109a enumC3109a, byte[] bArr) {
        C3117i c3117i = this.f8286b;
        synchronized (c3117i) {
            try {
                if (c3117i.f8927f) {
                    throw new IOException("closed");
                }
                if (enumC3109a.f8886b == -1) {
                    Locale locale = Locale.US;
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
                c3117i.m4965b(0, bArr.length + 8, (byte) 7, (byte) 0);
                c3117i.f8923b.writeInt(0);
                c3117i.f8923b.writeInt(enumC3109a.f8886b);
                if (bArr.length > 0) {
                    c3117i.f8923b.write(bArr);
                }
                c3117i.f8923b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
