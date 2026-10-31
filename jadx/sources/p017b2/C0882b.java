package p017b2;

import java.net.URL;
import java.util.regex.Pattern;
import p126l5.C2216k;
import p232w7.C3537c;

/* JADX INFO: renamed from: b2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0882b {

    /* JADX INFO: renamed from: a */
    public long f651a;

    /* JADX INFO: renamed from: b */
    public int f652b;

    /* JADX INFO: renamed from: c */
    public final Object f653c;

    public C0882b() {
        if (C3537c.f10508c == null) {
            Pattern pattern = C2216k.f5821b;
            C3537c.f10508c = new C3537c(15);
        }
        C3537c c3537c = C3537c.f10508c;
        if (C2216k.f5822c == null) {
            C2216k.f5822c = new C2216k(c3537c);
        }
        this.f653c = C2216k.f5822c;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    /* JADX INFO: renamed from: a */
    public synchronized boolean m1012a() {
        boolean z9;
        if (this.f652b != 0) {
            ((C2216k) this.f653c).f5823a.getClass();
            if (System.currentTimeMillis() > this.f651a) {
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            z9 = true;
        }
        return z9;
    }

    /* JADX INFO: renamed from: b */
    public synchronized void m1013b(int i10) {
        long jMin;
        if ((i10 >= 200 && i10 < 300) || i10 == 401 || i10 == 404) {
            synchronized (this) {
                this.f652b = 0;
            }
            return;
        }
        this.f652b++;
        synchronized (this) {
            if (i10 == 429 || (i10 >= 500 && i10 < 600)) {
                double dPow = Math.pow(2.0d, this.f652b);
                ((C2216k) this.f653c).getClass();
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), 1800000L);
            } else {
                jMin = 86400000;
            }
            ((C2216k) this.f653c).f5823a.getClass();
            this.f651a = System.currentTimeMillis() + jMin;
        }
        return;
        throw th;
    }

    public C0882b(int i10, URL url, long j10) {
        this.f652b = i10;
        this.f653c = url;
        this.f651a = j10;
    }
}
