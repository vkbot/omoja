package p082h5;

import p000a.AbstractC0000a;
import p006a5.C0023h;
import p052e5.InterfaceC1495b;
import p062f5.C1561l0;
import p126l5.InterfaceC2210e;
import p155o4.C2591f;

/* JADX INFO: renamed from: h5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1666a implements InterfaceC1495b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4265b;

    /* JADX INFO: renamed from: c */
    public final C0023h f4266c;

    public /* synthetic */ C1666a(C0023h c0023h, int i10) {
        this.f4265b = i10;
        this.f4266c = c0023h;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        switch (this.f4265b) {
            case 0:
                return (C2591f) this.f4266c.f81c;
            case 1:
                InterfaceC2210e interfaceC2210e = (InterfaceC2210e) this.f4266c.f82d;
                AbstractC0000a.m5e(interfaceC2210e);
                return interfaceC2210e;
            default:
                return new C1561l0((C2591f) this.f4266c.f81c);
        }
    }
}
