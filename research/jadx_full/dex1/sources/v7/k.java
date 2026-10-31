package v7;

import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f5552a;
    public Long d;
    public int e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile l.d f5553b = new l.d(20);
    public l.d c = new l.d(20);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f5554f = new HashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(o oVar) {
        this.f5552a = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(s sVar) {
        if (d() && !sVar.f5568f) {
            sVar.s();
        } else if (!d() && sVar.f5568f) {
            sVar.f5568f = false;
            n7.k kVar = sVar.f5569g;
            if (kVar != null) {
                sVar.f5570h.a(kVar);
                sVar.f5571i.n(2, "Subchannel unejected: {0}", sVar);
            }
        }
        sVar.e = this;
        this.f5554f.add(sVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(long j9) {
        this.d = Long.valueOf(j9);
        this.e++;
        Iterator it = this.f5554f.iterator();
        while (it.hasNext()) {
            ((s) it.next()).s();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long c() {
        return ((AtomicLong) this.c.d).get() + ((AtomicLong) this.c.c).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        return this.d != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        o4.b.m(this.d != null, "not currently ejected");
        this.d = null;
        for (s sVar : this.f5554f) {
            sVar.f5568f = false;
            n7.k kVar = sVar.f5569g;
            if (kVar != null) {
                sVar.f5570h.a(kVar);
                sVar.f5571i.n(2, "Subchannel unejected: {0}", sVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "AddressTracker{subchannels=" + this.f5554f + '}';
    }
}
