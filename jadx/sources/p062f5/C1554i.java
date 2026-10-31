package p062f5;

import java.util.LinkedHashSet;
import java.util.Optional;
import p006a5.C0023h;
import p030c5.C0990e;
import p052e5.InterfaceC1495b;
import p072g5.C1619a;
import p204t8.InterfaceC3268a;
import p232w7.C3537c;
import p258z3.C3720f;

/* JADX INFO: renamed from: f5.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1554i implements InterfaceC1495b {

    /* JADX INFO: renamed from: b */
    public final Object f3816b;

    /* JADX INFO: renamed from: c */
    public final Object f3817c;

    /* JADX INFO: renamed from: d */
    public final Object f3818d;

    /* JADX INFO: renamed from: e */
    public final Object f3819e;

    /* JADX INFO: renamed from: f */
    public final Object f3820f;

    /* JADX INFO: renamed from: g */
    public Object f3821g;

    /* JADX INFO: renamed from: h */
    public Object f3822h;

    /* JADX INFO: renamed from: i */
    public Object f3823i;

    public C1554i() {
        this.f3816b = new LinkedHashSet();
        this.f3817c = new LinkedHashSet();
        this.f3818d = new LinkedHashSet();
        this.f3819e = new LinkedHashSet();
        this.f3820f = new LinkedHashSet();
        this.f3822h = Optional.empty();
        this.f3823i = Optional.empty();
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        ((C1619a) this.f3816b).get();
        ((C3720f) this.f3817c).get();
        ((C1619a) this.f3818d).get();
        ((C1619a) this.f3819e).get();
        ((C1619a) this.f3820f).get();
        ((C3537c) this.f3821g).get();
        ((C0023h) this.f3823i).get();
        return new C0990e(6);
    }

    public C1554i(C1619a c1619a, C3720f c3720f, C1619a c1619a2, C1619a c1619a3, C1619a c1619a4, C3537c c3537c, InterfaceC3268a interfaceC3268a, C0023h c0023h) {
        this.f3816b = c1619a;
        this.f3817c = c3720f;
        this.f3818d = c1619a2;
        this.f3819e = c1619a3;
        this.f3820f = c1619a4;
        this.f3821g = c3537c;
        this.f3822h = interfaceC3268a;
        this.f3823i = c0023h;
    }
}
