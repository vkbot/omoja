package p157o7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.EnumC2518j;

/* JADX INFO: renamed from: o7.e3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2627e3 extends AbstractC2519j0 {

    /* JADX INFO: renamed from: f */
    public final AbstractC2503e f7376f;

    /* JADX INFO: renamed from: g */
    public AbstractC2542t f7377g;

    /* JADX INFO: renamed from: h */
    public EnumC2518j f7378h = EnumC2518j.f6971e;

    public C2627e3(AbstractC2503e abstractC2503e) {
        this.f7376f = abstractC2503e;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: a */
    public final C2508f1 mo3944a(C2510g0 c2510g0) {
        Boolean bool;
        List list = c2510g0.f6951a;
        if (list.isEmpty()) {
            C2508f1 c2508f1M3934h = C2508f1.f6945m.m3934h("NameResolver returned no usable address. addrs=" + list + ", attrs=" + c2510g0.f6952b);
            mo3946c(c2508f1M3934h);
            return c2508f1M3934h;
        }
        Object obj = c2510g0.f6953c;
        if ((obj instanceof C2615c3) && (bool = ((C2615c3) obj).f7335a) != null && bool.booleanValue()) {
            ArrayList arrayList = new ArrayList(list);
            Collections.shuffle(arrayList, new Random());
            list = arrayList;
        }
        AbstractC2542t abstractC2542t = this.f7377g;
        if (abstractC2542t == null) {
            C2504e0 c2504e0M3919d = C2504e0.m3919d();
            c2504e0M3919d.m3923e(list);
            C2504e0 c2504e0M3921b = c2504e0M3919d.m3921b();
            AbstractC2503e abstractC2503e = this.f7376f;
            AbstractC2542t abstractC2542tMo3894b = abstractC2503e.mo3894b(c2504e0M3921b);
            abstractC2542tMo3894b.mo3985p(new C2609b3(this, abstractC2542tMo3894b));
            this.f7377g = abstractC2542tMo3894b;
            C2621d3 c2621d3 = new C2621d3(C2507f0.m3926b(abstractC2542tMo3894b, null));
            EnumC2518j enumC2518j = EnumC2518j.f6968b;
            this.f7378h = enumC2518j;
            abstractC2503e.mo3892D(enumC2518j, c2621d3);
            abstractC2542tMo3894b.mo3982l();
        } else {
            abstractC2542t.mo3986q(list);
        }
        return C2508f1.f6937e;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: c */
    public final void mo3946c(C2508f1 c2508f1) {
        AbstractC2542t abstractC2542t = this.f7377g;
        if (abstractC2542t != null) {
            abstractC2542t.mo3983n();
            this.f7377g = null;
        }
        C2621d3 c2621d3 = new C2621d3(C2507f0.m3925a(c2508f1));
        EnumC2518j enumC2518j = EnumC2518j.f6970d;
        this.f7378h = enumC2518j;
        this.f7376f.mo3892D(enumC2518j, c2621d3);
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: e */
    public final void mo3948e() {
        AbstractC2542t abstractC2542t = this.f7377g;
        if (abstractC2542t != null) {
            abstractC2542t.mo3982l();
        }
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: f */
    public final void mo3949f() {
        AbstractC2542t abstractC2542t = this.f7377g;
        if (abstractC2542t != null) {
            abstractC2542t.mo3983n();
        }
    }
}
