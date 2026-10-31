package p186r7;

import ai.onnxruntime.AbstractC0074a;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import p099j1.C1929i;
import p130l9.C2242l;
import p130l9.C2245o;
import p130l9.C2256z;
import p142n0.C2467b;

/* JADX INFO: renamed from: r7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3117i implements Closeable {

    /* JADX INFO: renamed from: b */
    public final C2256z f8923b;

    /* JADX INFO: renamed from: c */
    public final C2242l f8924c;

    /* JADX INFO: renamed from: d */
    public final C3112d f8925d;

    /* JADX INFO: renamed from: e */
    public int f8926e;

    /* JADX INFO: renamed from: f */
    public boolean f8927f;

    public C3117i(C2256z c2256z) {
        this.f8923b = c2256z;
        C2242l c2242l = new C2242l();
        this.f8924c = c2242l;
        this.f8925d = new C3112d(c2242l);
        this.f8926e = 16384;
    }

    /* JADX INFO: renamed from: b */
    public final void m4965b(int i10, int i11, byte b10, byte b11) {
        Logger logger = C3118j.f8928a;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(AbstractC3115g.m4957a(false, i10, i11, b10, b11));
        }
        int i12 = this.f8926e;
        if (i11 > i12) {
            Locale locale = Locale.US;
            C1929i.m3029k(AbstractC0074a.m156g(i12, "FRAME_SIZE_ERROR length > ", ": ", i11));
            return;
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            Locale locale2 = Locale.US;
            C1929i.m3029k(AbstractC0074a.m154e(i10, "reserved bit set: "));
            return;
        }
        C2256z c2256z = this.f8923b;
        c2256z.writeByte((i11 >>> 16) & 255);
        c2256z.writeByte((i11 >>> 8) & 255);
        c2256z.writeByte(i11 & 255);
        c2256z.writeByte(b10 & UByte.MAX_VALUE);
        c2256z.writeByte(b11 & UByte.MAX_VALUE);
        c2256z.writeInt(i10 & Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    /* JADX INFO: renamed from: c */
    public final void m4966c(boolean z9, int i10, List list) throws IOException {
        int length;
        int length2;
        if (this.f8927f) {
            C2467b.m3820A("closed");
            return;
        }
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            C3110b c3110b = (C3110b) list.get(i11);
            C2245o c2245oMo3591j = c3110b.f8892a.mo3591j();
            C2245o c2245o = c3110b.f8893b;
            Integer num = (Integer) AbstractC3113e.f8910c.get(c2245oMo3591j);
            if (num != null) {
                int iIntValue = num.intValue();
                length2 = iIntValue + 1;
                if (length2 < 2 || length2 > 7) {
                    length = length2;
                    length2 = -1;
                } else {
                    C3110b[] c3110bArr = AbstractC3113e.f8909b;
                    if (c3110bArr[iIntValue].f8893b.equals(c2245o)) {
                        length = length2;
                    } else if (c3110bArr[length2].f8893b.equals(c2245o)) {
                        length2 = iIntValue + 2;
                        length = length2;
                    } else {
                        length = length2;
                        length2 = -1;
                    }
                }
            } else {
                length = -1;
                length2 = -1;
            }
            C3112d c3112d = this.f8925d;
            if (length2 == -1) {
                int i12 = c3112d.f8906d + 1;
                while (true) {
                    C3110b[] c3110bArr2 = c3112d.f8904b;
                    if (i12 >= c3110bArr2.length) {
                        break;
                    }
                    if (c3110bArr2[i12].f8892a.equals(c2245oMo3591j)) {
                        if (c3112d.f8904b[i12].f8893b.equals(c2245o)) {
                            length2 = (i12 - c3112d.f8906d) + AbstractC3113e.f8909b.length;
                            break;
                        } else if (length == -1) {
                            length = (i12 - c3112d.f8906d) + AbstractC3113e.f8909b.length;
                        }
                    }
                    i12++;
                }
            }
            if (length2 != -1) {
                c3112d.m4955c(length2, 127, 128);
            } else if (length == -1) {
                c3112d.f8903a.m3621m0(64);
                c3112d.m4954b(c2245oMo3591j);
                c3112d.m4954b(c2245o);
                c3112d.m4953a(c3110b);
            } else {
                C2245o c2245o2 = AbstractC3113e.f8908a;
                c2245oMo3591j.getClass();
                c2245o2.getClass();
                if (!c2245oMo3591j.mo3590i(c2245o2, c2245o2.mo3585c()) || C3110b.f8891h.equals(c2245oMo3591j)) {
                    c3112d.m4955c(length, 63, 64);
                    c3112d.m4954b(c2245o);
                    c3112d.m4953a(c3110b);
                } else {
                    c3112d.m4955c(length, 15, 0);
                    c3112d.m4954b(c2245o);
                }
            }
        }
        C2242l c2242l = this.f8924c;
        long j10 = c2242l.f5878c;
        int iMin = (int) Math.min(this.f8926e, j10);
        long j11 = iMin;
        byte b10 = j10 == j11 ? (byte) 4 : (byte) 0;
        if (z9) {
            b10 = (byte) (b10 | 1);
        }
        m4965b(i10, iMin, (byte) 1, b10);
        C2256z c2256z = this.f8923b;
        c2256z.write(c2242l, j11);
        if (j10 > j11) {
            long j12 = j10 - j11;
            while (j12 > 0) {
                int iMin2 = (int) Math.min(this.f8926e, j12);
                long j13 = iMin2;
                j12 -= j13;
                m4965b(i10, iMin2, (byte) 9, j12 == 0 ? (byte) 4 : (byte) 0);
                c2256z.write(c2242l, j13);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f8927f = true;
        this.f8923b.close();
    }
}
