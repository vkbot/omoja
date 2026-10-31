package b2;

import java.net.URL;
import java.util.regex.Pattern;
import l5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f300b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b() {
        if (w7.c.c == null) {
            Pattern pattern = k.f3307b;
            w7.c.c = new w7.c(15);
        }
        w7.c cVar = w7.c.c;
        if (k.c == null) {
            k.c = new k(cVar);
        }
        this.c = k.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    public synchronized boolean a() {
        boolean z8;
        if (this.f300b != 0) {
            ((k) this.c).f3308a.getClass();
            if (System.currentTimeMillis() > this.f299a) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = true;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void b(int i9) {
        long jMin;
        if ((i9 >= 200 && i9 < 300) || i9 == 401 || i9 == 404) {
            synchronized (this) {
                this.f300b = 0;
            }
            return;
        }
        this.f300b++;
        synchronized (this) {
            if (i9 == 429 || (i9 >= 500 && i9 < 600)) {
                double dPow = Math.pow(2.0d, this.f300b);
                ((k) this.c).getClass();
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), 1800000L);
            } else {
                jMin = 86400000;
            }
            ((k) this.c).f3308a.getClass();
            this.f299a = System.currentTimeMillis() + jMin;
        }
        return;
        throw th;
    }

    public b(int i9, URL url, long j9) {
        this.f300b = i9;
        this.c = url;
        this.f299a = j9;
    }
}
