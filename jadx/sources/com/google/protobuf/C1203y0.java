package com.google.protobuf;

import com.bumptech.glide.AbstractC1034g;
import java.util.concurrent.ConcurrentHashMap;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1203y0 {

    /* JADX INFO: renamed from: c */
    public static final C1203y0 f2795c = new C1203y0();

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f2797b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    public final C1164l0 f2796a = new C1164l0();

    /* JADX INFO: renamed from: a */
    public final InterfaceC1134b1 m2179a(Class cls) {
        InterfaceC1134b1 interfaceC1134b1M2128w;
        Class cls2;
        AbstractC1133b0.m1899a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f2797b;
        InterfaceC1134b1 interfaceC1134b1 = (InterfaceC1134b1) concurrentHashMap.get(cls);
        if (interfaceC1134b1 != null) {
            return interfaceC1134b1;
        }
        C1164l0 c1164l0 = this.f2796a;
        c1164l0.getClass();
        Class cls3 = AbstractC1138c1.f2648a;
        if (!AbstractC1202y.class.isAssignableFrom(cls) && (cls2 = AbstractC1138c1.f2648a) != null && !cls2.isAssignableFrom(cls)) {
            C1929i.m3029k("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            return null;
        }
        C1130a1 c1130a1Mo2033a = ((C1161k0) c1164l0.f2720a).mo2033a(cls);
        int i10 = c1130a1Mo2033a.f2626d;
        AbstractC1128a abstractC1128a = c1130a1Mo2033a.f2623a;
        if ((i10 & 2) == 2) {
            if (AbstractC1202y.class.isAssignableFrom(cls)) {
                interfaceC1134b1M2128w = new C1191u0(AbstractC1138c1.f2650c, AbstractC1184s.f2746a, abstractC1128a);
            } else {
                C1162k1 c1162k1 = AbstractC1138c1.f2649b;
                C1181r c1181r = AbstractC1184s.f2747b;
                if (c1181r == null) {
                    C1929i.m3030l("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                interfaceC1134b1M2128w = new C1191u0(c1162k1, c1181r, abstractC1128a);
            }
        } else if (AbstractC1202y.class.isAssignableFrom(cls)) {
            interfaceC1134b1M2128w = AbstractC1034g.m1296c(c1130a1Mo2033a.m1897a()) != 1 ? C1188t0.m2128w(c1130a1Mo2033a, AbstractC1197w0.f2792b, AbstractC1158j0.f2708b, AbstractC1138c1.f2650c, AbstractC1184s.f2746a, AbstractC1179q0.f2744b) : C1188t0.m2128w(c1130a1Mo2033a, AbstractC1197w0.f2792b, AbstractC1158j0.f2708b, AbstractC1138c1.f2650c, null, AbstractC1179q0.f2744b);
        } else if (AbstractC1034g.m1296c(c1130a1Mo2033a.m1897a()) != 1) {
            C1194v0 c1194v0 = AbstractC1197w0.f2791a;
            C1152h0 c1152h0 = AbstractC1158j0.f2707a;
            C1162k1 c1162k2 = AbstractC1138c1.f2649b;
            C1181r c1181r2 = AbstractC1184s.f2747b;
            if (c1181r2 == null) {
                C1929i.m3030l("Protobuf runtime is not correctly loaded.");
                return null;
            }
            interfaceC1134b1M2128w = C1188t0.m2128w(c1130a1Mo2033a, c1194v0, c1152h0, c1162k2, c1181r2, AbstractC1179q0.f2743a);
        } else {
            interfaceC1134b1M2128w = C1188t0.m2128w(c1130a1Mo2033a, AbstractC1197w0.f2791a, AbstractC1158j0.f2707a, AbstractC1138c1.f2649b, null, AbstractC1179q0.f2743a);
        }
        InterfaceC1134b1 interfaceC1134b2 = (InterfaceC1134b1) concurrentHashMap.putIfAbsent(cls, interfaceC1134b1M2128w);
        return interfaceC1134b2 != null ? interfaceC1134b2 : interfaceC1134b1M2128w;
    }
}
