package p157o7;

import p094i7.C1760i;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2708s0 extends C2722u2 {

    /* JADX INFO: renamed from: e */
    public boolean f7747e;

    /* JADX INFO: renamed from: f */
    public final C2508f1 f7748f;

    /* JADX INFO: renamed from: g */
    public final EnumC2725v f7749g;

    /* JADX INFO: renamed from: h */
    public final AbstractC2503e[] f7750h;

    public C2708s0(C2508f1 c2508f1, EnumC2725v enumC2725v, AbstractC2503e[] abstractC2503eArr) {
        super(0);
        AbstractC2587b.m4037d("error must not be OK", !c2508f1.m3932f());
        this.f7748f = c2508f1;
        this.f7749g = enumC2725v;
        this.f7750h = abstractC2503eArr;
    }

    @Override // p157o7.C2722u2, p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public final void mo4093d(InterfaceC2731w interfaceC2731w) {
        AbstractC2587b.m4046m(!this.f7747e, "already started");
        this.f7747e = true;
        AbstractC2503e[] abstractC2503eArr = this.f7750h;
        int length = abstractC2503eArr.length;
        int i10 = 0;
        while (true) {
            C2508f1 c2508f1 = this.f7748f;
            if (i10 >= length) {
                interfaceC2731w.mo68b(c2508f1, this.f7749g, new C2547v0());
                return;
            } else {
                abstractC2503eArr[i10].mo3890B(c2508f1);
                i10++;
            }
        }
    }

    @Override // p157o7.C2722u2, p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public final void mo4094e(C1760i c1760i) {
        c1760i.m2884b(this.f7748f, "error");
        c1760i.m2884b(this.f7749g, "progress");
    }
}
