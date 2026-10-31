package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p016b1.C0872m;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2492a0;
import p148n7.C2494b;
import p148n7.C2504e0;
import p148n7.C2548w;
import p148n7.C2550x;
import p148n7.EnumC2546v;
import p148n7.ExecutorC2523k1;
import p148n7.InterfaceC2516i0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.e2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2626e2 extends AbstractC2542t {

    /* JADX INFO: renamed from: d */
    public final C2504e0 f7366d;

    /* JADX INFO: renamed from: e */
    public final C2492a0 f7367e;

    /* JADX INFO: renamed from: f */
    public final C2671m f7368f;

    /* JADX INFO: renamed from: g */
    public final C2683o f7369g;

    /* JADX INFO: renamed from: h */
    public List f7370h;

    /* JADX INFO: renamed from: i */
    public C2661k1 f7371i;

    /* JADX INFO: renamed from: j */
    public boolean f7372j;

    /* JADX INFO: renamed from: k */
    public boolean f7373k;

    /* JADX INFO: renamed from: l */
    public C2187d f7374l;

    /* JADX INFO: renamed from: m */
    public final /* synthetic */ C2632f2 f7375m;

    public C2626e2(C2632f2 c2632f2, C2504e0 c2504e0) {
        this.f7375m = c2632f2;
        List list = c2504e0.f6906b;
        this.f7370h = list;
        C2722u2 c2722u2 = c2632f2.f7436l;
        this.f7366d = c2504e0;
        C2492a0 c2492a0 = new C2492a0(C2492a0.f6877d.incrementAndGet(), "Subchannel", c2632f2.f7444t.mo3887e());
        this.f7367e = c2492a0;
        C2683o c2683o = new C2683o(c2492a0, c2722u2.m4245q(), "Subchannel for " + list);
        this.f7369g = c2683o;
        this.f7368f = new C2671m(c2683o, c2722u2);
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: c */
    public final List mo3976c() {
        this.f7375m.f7437m.m3957d();
        AbstractC2587b.m4046m(this.f7372j, "not started");
        return this.f7370h;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: d */
    public final C2494b mo3977d() {
        return this.f7366d.f6907c;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: e */
    public final AbstractC2503e mo3978e() {
        return this.f7368f;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: f */
    public final Object mo3979f() {
        AbstractC2587b.m4046m(this.f7372j, "Subchannel is not started");
        return this.f7371i;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: l */
    public final void mo3982l() {
        this.f7375m.f7437m.m3957d();
        AbstractC2587b.m4046m(this.f7372j, "not started");
        C2661k1 c2661k1 = this.f7371i;
        if (c2661k1.f7589v != null) {
            return;
        }
        c2661k1.f7578k.execute(new RunnableC2631f1(c2661k1, 1));
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: n */
    public final void mo3983n() {
        C2187d c2187d;
        C2632f2 c2632f2 = this.f7375m;
        c2632f2.f7437m.m3957d();
        if (this.f7371i == null) {
            this.f7373k = true;
            return;
        }
        if (!this.f7373k) {
            this.f7373k = true;
        } else {
            if (!c2632f2.f7404H || (c2187d = this.f7374l) == null) {
                return;
            }
            c2187d.m3482j();
            this.f7374l = null;
        }
        if (!c2632f2.f7404H) {
            this.f7374l = c2632f2.f7437m.m3956c(new RunnableC2697q1(new RunnableC1054m(17, this)), 5L, TimeUnit.SECONDS, c2632f2.f7430f.f7595b.f8315e);
        } else {
            C2661k1 c2661k1 = this.f7371i;
            c2661k1.f7578k.execute(new RunnableC2624e0(15, c2661k1, C2632f2.f7392e0));
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: p */
    public final void mo3985p(InterfaceC2516i0 interfaceC2516i0) {
        C2632f2 c2632f2 = this.f7375m;
        c2632f2.f7437m.m3957d();
        AbstractC2587b.m4046m(!this.f7372j, "already started");
        AbstractC2587b.m4046m(!this.f7373k, "already shutdown");
        AbstractC2587b.m4046m(!c2632f2.f7404H, "Channel is being terminated");
        this.f7372j = true;
        List list = this.f7366d.f6906b;
        String strMo3887e = c2632f2.f7444t.mo3887e();
        C2722u2 c2722u2 = c2632f2.f7443s;
        C2665l c2665l = c2632f2.f7430f;
        ScheduledExecutorService scheduledExecutorService = c2665l.f7595b.f8315e;
        C2722u2 c2722u3 = c2632f2.f7440p;
        ExecutorC2523k1 executorC2523k1 = c2632f2.f7437m;
        C2736w4 c2736w4 = new C2736w4(4, this, interfaceC2516i0);
        C2550x c2550x = c2632f2.f7411O;
        c2632f2.f7407K.getClass();
        C2661k1 c2661k1 = new C2661k1(list, strMo3887e, c2722u2, c2665l, scheduledExecutorService, c2722u3, executorC2523k1, c2736w4, c2550x, new C0872m(11), this.f7369g, this.f7367e, this.f7368f, c2632f2.f7445u);
        c2632f2.f7409M.m4192b(new C2548w("Child Subchannel started", EnumC2546v.f7033b, c2632f2.f7436l.m4245q(), c2661k1));
        this.f7371i = c2661k1;
        c2632f2.f7397A.add(c2661k1);
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: q */
    public final void mo3986q(List list) {
        this.f7375m.f7437m.m3957d();
        this.f7370h = list;
        C2661k1 c2661k1 = this.f7371i;
        c2661k1.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC2587b.m4042i(it.next(), "newAddressGroups contains null entry");
        }
        AbstractC2587b.m4037d("newAddressGroups is empty", !list.isEmpty());
        c2661k1.f7578k.execute(new RunnableC2624e0(14, c2661k1, Collections.unmodifiableList(new ArrayList(list))));
    }

    public final String toString() {
        return this.f7367e.toString();
    }
}
