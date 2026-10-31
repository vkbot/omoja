package p223v7;

import java.lang.reflect.Array;
import java.net.SocketAddress;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2504e0;
import p148n7.C2508f1;
import p148n7.C2521k;
import p148n7.C2538r;
import p148n7.EnumC2518j;
import p148n7.InterfaceC2516i0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: v7.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3358s extends AbstractC3341b {

    /* JADX INFO: renamed from: d */
    public final AbstractC2542t f9812d;

    /* JADX INFO: renamed from: e */
    public C3350k f9813e;

    /* JADX INFO: renamed from: f */
    public boolean f9814f;

    /* JADX INFO: renamed from: g */
    public C2521k f9815g;

    /* JADX INFO: renamed from: h */
    public InterfaceC2516i0 f9816h;

    /* JADX INFO: renamed from: i */
    public final AbstractC2503e f9817i;

    /* JADX INFO: renamed from: j */
    public final /* synthetic */ C3359t f9818j;

    public C3358s(C3359t c3359t, C2504e0 c2504e0, C3347h c3347h) {
        this.f9818j = c3359t;
        InterfaceC2516i0 interfaceC2516i0 = (InterfaceC2516i0) c2504e0.m3922c();
        if (interfaceC2516i0 != null) {
            this.f9816h = interfaceC2516i0;
            C3345f c3345f = new C3345f(this, interfaceC2516i0, 1);
            c2504e0.getClass();
            C2504e0 c2504e0M3919d = C2504e0.m3919d();
            c2504e0M3919d.m3923e(c2504e0.f6906b);
            C2494b c2494b = c2504e0.f6907c;
            AbstractC2587b.m4042i(c2494b, "attrs");
            c2504e0M3919d.f6907c = c2494b;
            Object[][] objArr = c2504e0.f6908d;
            Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length, 2);
            c2504e0M3919d.f6908d = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            c2504e0M3919d.m3920a(c3345f);
            this.f9812d = c3347h.mo3894b(c2504e0M3919d.m3921b());
        } else {
            this.f9812d = c3347h.mo3894b(c2504e0);
        }
        this.f9817i = this.f9812d.mo3978e();
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: d */
    public final C2494b mo3977d() {
        C3350k c3350k = this.f9813e;
        AbstractC2542t abstractC2542t = this.f9812d;
        if (c3350k == null) {
            return abstractC2542t.mo3977d();
        }
        C2494b c2494bMo3977d = abstractC2542t.mo3977d();
        c2494bMo3977d.getClass();
        C3350k c3350k2 = this.f9813e;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(C3359t.f9819n, c3350k2);
        for (Map.Entry entry : c2494bMo3977d.f6882a.entrySet()) {
            if (!identityHashMap.containsKey(entry.getKey())) {
                identityHashMap.put((C2491a) entry.getKey(), entry.getValue());
            }
        }
        return new C2494b(identityHashMap);
    }

    @Override // p223v7.AbstractC3341b, p148n7.AbstractC2542t
    /* JADX INFO: renamed from: n */
    public final void mo3983n() {
        C3350k c3350k = this.f9813e;
        if (c3350k != null) {
            this.f9813e = null;
            c3350k.f9791f.remove(this);
        }
        super.mo3983n();
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: p */
    public final void mo3985p(InterfaceC2516i0 interfaceC2516i0) {
        if (this.f9816h != null) {
            mo5258r().mo3985p(interfaceC2516i0);
            return;
        }
        this.f9816h = interfaceC2516i0;
        mo5258r().mo3985p(new C3345f(this, interfaceC2516i0, 1));
    }

    @Override // p223v7.AbstractC3341b, p148n7.AbstractC2542t
    /* JADX INFO: renamed from: q */
    public final void mo3986q(List list) {
        C3359t c3359t = this.f9818j;
        if (C3359t.m5269g(mo3976c()) && C3359t.m5269g(list)) {
            C3351l c3351l = c3359t.f9820f;
            if (c3351l.f9792b.containsValue(this.f9813e)) {
                C3350k c3350k = this.f9813e;
                c3350k.getClass();
                this.f9813e = null;
                c3350k.f9791f.remove(this);
            }
            SocketAddress socketAddress = (SocketAddress) ((C2538r) list.get(0)).f7017a.get(0);
            if (c3359t.f9820f.f9792b.containsKey(socketAddress)) {
                ((C3350k) c3359t.f9820f.f9792b.get(socketAddress)).m5262a(this);
            }
        } else if (C3359t.m5269g(mo3976c()) && !C3359t.m5269g(list)) {
            C3351l c3351l2 = c3359t.f9820f;
            if (c3351l2.f9792b.containsKey(m3975b().f7017a.get(0))) {
                C3351l c3351l3 = c3359t.f9820f;
                C3350k c3350k2 = (C3350k) c3351l3.f9792b.get(m3975b().f7017a.get(0));
                c3350k2.getClass();
                this.f9813e = null;
                c3350k2.f9791f.remove(this);
                C2187d c2187d = c3350k2.f9787b;
                ((AtomicLong) c2187d.f5705c).set(0L);
                ((AtomicLong) c2187d.f5706d).set(0L);
                C2187d c2187d2 = c3350k2.f9788c;
                ((AtomicLong) c2187d2.f5705c).set(0L);
                ((AtomicLong) c2187d2.f5706d).set(0L);
            }
        } else if (!C3359t.m5269g(mo3976c()) && C3359t.m5269g(list)) {
            SocketAddress socketAddress2 = (SocketAddress) ((C2538r) list.get(0)).f7017a.get(0);
            if (c3359t.f9820f.f9792b.containsKey(socketAddress2)) {
                ((C3350k) c3359t.f9820f.f9792b.get(socketAddress2)).m5262a(this);
            }
        }
        this.f9812d.mo3986q(list);
    }

    @Override // p223v7.AbstractC3341b
    /* JADX INFO: renamed from: r */
    public final AbstractC2542t mo5258r() {
        return this.f9812d;
    }

    /* JADX INFO: renamed from: s */
    public final void m5268s() {
        this.f9814f = true;
        InterfaceC2516i0 interfaceC2516i0 = this.f9816h;
        C2508f1 c2508f1 = C2508f1.f6945m;
        AbstractC2587b.m4037d("The error status must not be OK", true ^ c2508f1.m3932f());
        interfaceC2516i0.mo3943a(new C2521k(EnumC2518j.f6970d, c2508f1));
        this.f9817i.mo3906n(2, "Subchannel ejected: {0}", this);
    }

    @Override // p223v7.AbstractC3341b
    public final String toString() {
        return "OutlierDetectionSubchannel{addresses=" + this.f9812d.mo3976c() + '}';
    }
}
