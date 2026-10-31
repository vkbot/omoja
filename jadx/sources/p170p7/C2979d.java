package p170p7;

import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p120l.C2187d;
import p130l9.C2242l;
import p130l9.C2245o;
import p186r7.C3117i;
import p186r7.EnumC3109a;

/* JADX INFO: renamed from: p7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2979d implements Closeable {

    /* JADX INFO: renamed from: e */
    public static final Logger f8301e = Logger.getLogger(C2989n.class.getName());

    /* JADX INFO: renamed from: b */
    public final C2989n f8302b;

    /* JADX INFO: renamed from: c */
    public final C2977b f8303c;

    /* JADX INFO: renamed from: d */
    public final C2187d f8304d;

    public C2979d(C2989n c2989n, C2977b c2977b) {
        Level level = Level.FINE;
        this.f8304d = new C2187d(6);
        this.f8302b = c2989n;
        this.f8303c = c2977b;
    }

    /* JADX INFO: renamed from: S */
    public final void m4774S(int i10, EnumC3109a enumC3109a) {
        this.f8304d.m3464E(2, i10, enumC3109a);
        try {
            this.f8303c.m4767V(i10, enumC3109a);
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m4775V(int i10, long j10) {
        this.f8304d.m3466G(j10, 2, i10);
        try {
            this.f8303c.m4771d0(i10, j10);
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m4776b(boolean z9, int i10, C2242l c2242l, int i11) {
        C2187d c2187d = this.f8304d;
        c2242l.getClass();
        c2187d.m3461B(2, i10, c2242l, i11, z9);
        try {
            C3117i c3117i = this.f8303c.f8286b;
            synchronized (c3117i) {
                if (c3117i.f8927f) {
                    throw new IOException("closed");
                }
                c3117i.m4965b(i10, i11, (byte) 0, z9 ? (byte) 1 : (byte) 0);
                if (i11 > 0) {
                    c3117i.f8923b.write(c2242l, i11);
                }
            }
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4777c(EnumC3109a enumC3109a, byte[] bArr) {
        C2977b c2977b = this.f8303c;
        this.f8304d.m3462C(2, 0, enumC3109a, C2245o.m3635g(bArr));
        try {
            c2977b.m4772y(enumC3109a, bArr);
            c2977b.flush();
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f8303c.close();
        } catch (IOException e) {
            f8301e.log(e.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "Failed closing connection", (Throwable) e);
        }
    }

    public final void flush() {
        try {
            this.f8303c.flush();
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m4778y(boolean z9, int i10, int i11) {
        C2187d c2187d = this.f8304d;
        if (z9) {
            long j10 = (4294967295L & ((long) i11)) | (((long) i10) << 32);
            if (c2187d.m3497z()) {
                ((Logger) c2187d.f5705c).log((Level) c2187d.f5706d, "OUTBOUND PING: ack=true bytes=" + j10);
            }
        } else {
            c2187d.m3463D(2, (4294967295L & ((long) i11)) | (((long) i10) << 32));
        }
        try {
            this.f8303c.m4766S(z9, i10, i11);
        } catch (IOException e) {
            this.f8302b.m4796n(e);
        }
    }
}
