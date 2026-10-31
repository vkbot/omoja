package p7;

import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Closeable {
    public static final Logger e = Logger.getLogger(n.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f4618b;
    public final b c;
    public final l.d d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(n nVar, b bVar) {
        Level level = Level.FINE;
        this.d = new l.d(6);
        this.f4618b = nVar;
        this.c = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(int i9, r7.a aVar) {
        this.d.E(2, i9, aVar);
        try {
            this.c.V(i9, aVar);
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(int i9, long j9) {
        this.d.G(j9, 2, i9);
        try {
            this.c.d0(i9, j9);
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(boolean z8, int i9, l9.l lVar, int i10) {
        l.d dVar = this.d;
        lVar.getClass();
        dVar.B(2, i9, lVar, i10, z8);
        try {
            r7.i iVar = this.c.f4607b;
            synchronized (iVar) {
                if (iVar.f5024f) {
                    throw new IOException("closed");
                }
                iVar.b(i9, i10, (byte) 0, z8 ? (byte) 1 : (byte) 0);
                if (i10 > 0) {
                    iVar.f5023b.write(lVar, i10);
                }
            }
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(r7.a aVar, byte[] bArr) {
        b bVar = this.c;
        this.d.C(2, 0, aVar, l9.o.g(bArr));
        try {
            bVar.y(aVar, bArr);
            bVar.flush();
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.c.close();
        } catch (IOException e6) {
            e.log(e6.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "Failed closing connection", (Throwable) e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void flush() {
        try {
            this.c.flush();
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(boolean z8, int i9, int i10) {
        l.d dVar = this.d;
        if (z8) {
            long j9 = (4294967295L & ((long) i10)) | (((long) i9) << 32);
            if (dVar.z()) {
                ((Logger) dVar.c).log((Level) dVar.d, "OUTBOUND PING: ack=true bytes=" + j9);
            }
        } else {
            dVar.D(2, (4294967295L & ((long) i10)) | (((long) i9) << 32));
        }
        try {
            this.c.S(z8, i9, i10);
        } catch (IOException e6) {
            this.f4618b.n(e6);
        }
    }
}
