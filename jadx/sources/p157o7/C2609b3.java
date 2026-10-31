package p157o7;

import androidx.navigation.C0674b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2542t;
import p148n7.C2507f0;
import p148n7.C2521k;
import p148n7.EnumC2518j;
import p148n7.InterfaceC2516i0;

/* JADX INFO: renamed from: o7.b3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2609b3 implements InterfaceC2516i0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC2542t f7325a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2627e3 f7326b;

    public C2609b3(C2627e3 c2627e3, AbstractC2542t abstractC2542t) {
        this.f7326b = c2627e3;
        this.f7325a = abstractC2542t;
    }

    @Override // p148n7.InterfaceC2516i0
    /* JADX INFO: renamed from: a */
    public final void mo3943a(C2521k c2521k) {
        AbstractC2513h0 c2621d3;
        C2627e3 c2627e3 = this.f7326b;
        AbstractC2503e abstractC2503e = c2627e3.f7376f;
        EnumC2518j enumC2518j = c2521k.f6982a;
        if (enumC2518j == EnumC2518j.f6972f) {
            return;
        }
        EnumC2518j enumC2518j2 = EnumC2518j.f6971e;
        EnumC2518j enumC2518j3 = EnumC2518j.f6970d;
        if (enumC2518j == enumC2518j3 || enumC2518j == enumC2518j2) {
            abstractC2503e.mo3917y();
        }
        if (c2627e3.f7378h == enumC2518j3) {
            if (enumC2518j == EnumC2518j.f6968b) {
                return;
            }
            if (enumC2518j == enumC2518j2) {
                c2627e3.mo3948e();
                return;
            }
        }
        int iOrdinal = enumC2518j.ordinal();
        if (iOrdinal != 0) {
            AbstractC2542t abstractC2542t = this.f7325a;
            if (iOrdinal == 1) {
                c2621d3 = new C2621d3(C2507f0.m3926b(abstractC2542t, null));
            } else if (iOrdinal == 2) {
                c2621d3 = new C2621d3(C2507f0.m3925a(c2521k.f6983b));
            } else {
                if (iOrdinal != 3) {
                    C0674b.m853t(enumC2518j, "Unsupported state:");
                    return;
                }
                c2621d3 = new C2745y2(c2627e3, abstractC2542t);
            }
        } else {
            c2621d3 = new C2621d3(C2507f0.f6931e);
        }
        c2627e3.f7378h = enumC2518j;
        abstractC2503e.mo3892D(enumC2518j, c2621d3);
    }
}
