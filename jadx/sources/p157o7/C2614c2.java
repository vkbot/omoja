package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicReference;
import p148n7.AbstractC2500d;
import p148n7.AbstractC2542t;
import p148n7.AbstractC2552y;
import p148n7.C2497c;
import p148n7.C2530n;
import p148n7.C2551x0;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.c2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2614c2 extends AbstractC2500d {

    /* JADX INFO: renamed from: b */
    public final String f7332b;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2632f2 f7334d;

    /* JADX INFO: renamed from: a */
    public final AtomicReference f7331a = new AtomicReference(C2632f2.f7395h0);

    /* JADX INFO: renamed from: c */
    public final C2602a2 f7333c = new C2602a2(this);

    public C2614c2(C2632f2 c2632f2, String str) {
        this.f7334d = c2632f2;
        AbstractC2587b.m4042i(str, "authority");
        this.f7332b = str;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: e */
    public final String mo3887e() {
        return this.f7332b;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: f */
    public final AbstractC2542t mo3888f(C2551x0 c2551x0, C2497c c2497c) {
        C2632f2 c2632f2 = this.f7334d;
        ExecutorC2523k1 executorC2523k1 = c2632f2.f7437m;
        AtomicReference atomicReference = this.f7331a;
        Object obj = atomicReference.get();
        C2709s1 c2709s1 = C2632f2.f7395h0;
        if (obj != c2709s1) {
            return m4130g(c2551x0, c2497c);
        }
        executorC2523k1.execute(new RunnableC1054m(16, this));
        if (atomicReference.get() != c2709s1) {
            return m4130g(c2551x0, c2497c);
        }
        if (c2632f2.f7403G.get()) {
            return new C2636g0(2);
        }
        C2608b2 c2608b2 = new C2608b2(this, C2530n.m3961b(), c2551x0, c2497c);
        executorC2523k1.execute(new RunnableC2624e0(this, c2608b2));
        return c2608b2;
    }

    /* JADX INFO: renamed from: g */
    public final AbstractC2542t m4130g(C2551x0 c2551x0, C2497c c2497c) {
        AbstractC2552y abstractC2552y = (AbstractC2552y) this.f7331a.get();
        C2602a2 c2602a2 = this.f7333c;
        if (abstractC2552y == null) {
            return c2602a2.mo3888f(c2551x0, c2497c);
        }
        if (!(abstractC2552y instanceof C2662k2)) {
            return new C2733w1(abstractC2552y, c2602a2, this.f7334d.f7432h, c2551x0, c2497c);
        }
        C2668l2 c2668l2 = ((C2662k2) abstractC2552y).f7592b;
        C2656j2 c2656j2 = (C2656j2) c2668l2.f7609b.get(c2551x0.f7055b);
        if (c2656j2 == null) {
            c2656j2 = (C2656j2) c2668l2.f7610c.get(c2551x0.f7056c);
        }
        if (c2656j2 == null) {
            c2656j2 = c2668l2.f7608a;
        }
        if (c2656j2 != null) {
            c2497c = c2497c.m3886c(C2656j2.f7538g, c2656j2);
        }
        return c2602a2.mo3888f(c2551x0, c2497c);
    }

    /* JADX INFO: renamed from: h */
    public final void m4131h(AbstractC2552y abstractC2552y) {
        LinkedHashSet linkedHashSet;
        AtomicReference atomicReference = this.f7331a;
        AbstractC2552y abstractC2552y2 = (AbstractC2552y) atomicReference.get();
        atomicReference.set(abstractC2552y);
        if (abstractC2552y2 != C2632f2.f7395h0 || (linkedHashSet = this.f7334d.f7398B) == null) {
            return;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            ((C2608b2) it.next()).m4128u();
        }
    }
}
