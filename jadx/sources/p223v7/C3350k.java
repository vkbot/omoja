package p223v7;

import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import p120l.C2187d;
import p148n7.C2521k;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: v7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3350k {

    /* JADX INFO: renamed from: a */
    public C3354o f9786a;

    /* JADX INFO: renamed from: d */
    public Long f9789d;

    /* JADX INFO: renamed from: e */
    public int f9790e;

    /* JADX INFO: renamed from: b */
    public volatile C2187d f9787b = new C2187d(20);

    /* JADX INFO: renamed from: c */
    public C2187d f9788c = new C2187d(20);

    /* JADX INFO: renamed from: f */
    public final HashSet f9791f = new HashSet();

    public C3350k(C3354o c3354o) {
        this.f9786a = c3354o;
    }

    /* JADX INFO: renamed from: a */
    public final void m5262a(C3358s c3358s) {
        if (m5265d() && !c3358s.f9814f) {
            c3358s.m5268s();
        } else if (!m5265d() && c3358s.f9814f) {
            c3358s.f9814f = false;
            C2521k c2521k = c3358s.f9815g;
            if (c2521k != null) {
                c3358s.f9816h.mo3943a(c2521k);
                c3358s.f9817i.mo3906n(2, "Subchannel unejected: {0}", c3358s);
            }
        }
        c3358s.f9813e = this;
        this.f9791f.add(c3358s);
    }

    /* JADX INFO: renamed from: b */
    public final void m5263b(long j10) {
        this.f9789d = Long.valueOf(j10);
        this.f9790e++;
        Iterator it = this.f9791f.iterator();
        while (it.hasNext()) {
            ((C3358s) it.next()).m5268s();
        }
    }

    /* JADX INFO: renamed from: c */
    public final long m5264c() {
        return ((AtomicLong) this.f9788c.f5706d).get() + ((AtomicLong) this.f9788c.f5705c).get();
    }

    /* JADX INFO: renamed from: d */
    public final boolean m5265d() {
        return this.f9789d != null;
    }

    /* JADX INFO: renamed from: e */
    public final void m5266e() {
        AbstractC2587b.m4046m(this.f9789d != null, "not currently ejected");
        this.f9789d = null;
        for (C3358s c3358s : this.f9791f) {
            c3358s.f9814f = false;
            C2521k c2521k = c3358s.f9815g;
            if (c2521k != null) {
                c3358s.f9816h.mo3943a(c2521k);
                c3358s.f9817i.mo3906n(2, "Subchannel unejected: {0}", c3358s);
            }
        }
    }

    public final String toString() {
        return "AddressTracker{subchannels=" + this.f9791f + '}';
    }
}
