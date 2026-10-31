package com.google.protobuf;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.protobuf.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1164l0 {

    /* JADX INFO: renamed from: b */
    public static final C1193v f2719b = new C1193v(1);

    /* JADX INFO: renamed from: a */
    public final Object f2720a;

    public C1164l0() {
        InterfaceC1182r0 interfaceC1182r0;
        try {
            interfaceC1182r0 = (InterfaceC1182r0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            interfaceC1182r0 = f2719b;
        }
        InterfaceC1182r0[] interfaceC1182r0Arr = {C1193v.f2786b, interfaceC1182r0};
        C1161k0 c1161k0 = new C1161k0();
        c1161k0.f2718a = interfaceC1182r0Arr;
        Charset charset = AbstractC1133b0.f2634a;
        this.f2720a = c1161k0;
    }

    /* JADX INFO: renamed from: a */
    public void m2037a(int i10, Object obj, InterfaceC1134b1 interfaceC1134b1) {
        AbstractC1169n abstractC1169n = (AbstractC1169n) this.f2720a;
        abstractC1169n.mo2029w(i10, 3);
        interfaceC1134b1.mo1901a((AbstractC1128a) obj, abstractC1169n.f2732a);
        abstractC1169n.mo2029w(i10, 4);
    }

    public C1164l0(AbstractC1169n abstractC1169n) {
        AbstractC1133b0.m1899a(abstractC1169n, "output");
        this.f2720a = abstractC1169n;
        abstractC1169n.f2732a = this;
    }
}
