package p7;

import java.io.Closeable;
import java.io.IOException;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r7.i f4607b;
    public final /* synthetic */ c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c cVar, r7.i iVar) {
        this.c = cVar;
        this.f4607b = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(boolean z8, int i9, int i10) {
        if (z8) {
            this.c.f4616m++;
        }
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            if (iVar.f5024f) {
                throw new IOException("closed");
            }
            iVar.b(0, 8, (byte) 6, z8 ? (byte) 1 : (byte) 0);
            iVar.f5023b.writeInt(i9);
            iVar.f5023b.writeInt(i10);
            iVar.f5023b.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(int i9, r7.a aVar) {
        this.c.f4616m++;
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            if (iVar.f5024f) {
                throw new IOException("closed");
            }
            if (aVar.f5002b == -1) {
                throw new IllegalArgumentException();
            }
            iVar.b(i9, 4, (byte) 3, (byte) 0);
            iVar.f5023b.writeInt(aVar.f5002b);
            iVar.f5023b.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(j.i iVar) {
        this.c.f4616m++;
        r7.i iVar2 = this.f4607b;
        synchronized (iVar2) {
            if (iVar2.f5024f) {
                throw new IOException("closed");
            }
            int i9 = iVar2.e;
            if ((iVar.f2793b & 32) != 0) {
                i9 = ((int[]) iVar.c)[5];
            }
            iVar2.e = i9;
            iVar2.b(0, 0, (byte) 4, (byte) 1);
            iVar2.f5023b.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            try {
                if (iVar.f5024f) {
                    throw new IOException("closed");
                }
                Logger logger = r7.j.f5025a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(">> CONNECTION " + r7.j.f5026b.d());
                }
                iVar.f5023b.write(r7.j.f5026b.k());
                iVar.f5023b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0(j.i iVar) {
        int i9;
        r7.i iVar2 = this.f4607b;
        synchronized (iVar2) {
            try {
                if (iVar2.f5024f) {
                    throw new IOException("closed");
                }
                int i10 = 0;
                iVar2.b(0, Integer.bitCount(iVar.f2793b) * 6, (byte) 4, (byte) 0);
                while (i10 < 10) {
                    if (iVar.b(i10)) {
                        if (i10 == 4) {
                            i9 = 3;
                        } else {
                            i9 = i10 == 7 ? 4 : i10;
                        }
                        iVar2.f5023b.writeShort(i9);
                        iVar2.f5023b.writeInt(((int[]) iVar.c)[i10]);
                    }
                    i10++;
                }
                iVar2.f5023b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4607b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d0(int i9, long j9) {
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            if (iVar.f5024f) {
                throw new IOException("closed");
            }
            if (j9 == 0 || j9 > 2147483647L) {
                Locale locale = Locale.US;
                throw new IllegalArgumentException("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j9);
            }
            iVar.b(i9, 4, (byte) 8, (byte) 0);
            iVar.f5023b.writeInt((int) j9);
            iVar.f5023b.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void flush() {
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            if (iVar.f5024f) {
                throw new IOException("closed");
            }
            iVar.f5023b.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(r7.a aVar, byte[] bArr) {
        r7.i iVar = this.f4607b;
        synchronized (iVar) {
            try {
                if (iVar.f5024f) {
                    throw new IOException("closed");
                }
                if (aVar.f5002b == -1) {
                    Locale locale = Locale.US;
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
                iVar.b(0, bArr.length + 8, (byte) 7, (byte) 0);
                iVar.f5023b.writeInt(0);
                iVar.f5023b.writeInt(aVar.f5002b);
                if (bArr.length > 0) {
                    iVar.f5023b.write(bArr);
                }
                iVar.f5023b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
