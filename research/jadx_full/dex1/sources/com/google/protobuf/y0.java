package com.google.protobuf;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y0 {
    public static final y0 c = new y0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f1584b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l0 f1583a = new l0();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b1 a(Class cls) {
        b1 b1VarW;
        Class cls2;
        b0.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f1584b;
        b1 b1Var = (b1) concurrentHashMap.get(cls);
        if (b1Var != null) {
            return b1Var;
        }
        l0 l0Var = this.f1583a;
        l0Var.getClass();
        Class cls3 = c1.f1484a;
        if (!y.class.isAssignableFrom(cls) && (cls2 = c1.f1484a) != null && !cls2.isAssignableFrom(cls)) {
            j1.i.k("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            return null;
        }
        a1 a1VarA = ((k0) l0Var.f1527a).a(cls);
        int i9 = a1VarA.d;
        a aVar = a1VarA.f1467a;
        if ((i9 & 2) == 2) {
            if (y.class.isAssignableFrom(cls)) {
                b1VarW = new u0(c1.c, s.f1547a, aVar);
            } else {
                k1 k1Var = c1.f1485b;
                r rVar = s.f1548b;
                if (rVar == null) {
                    j1.i.l("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                b1VarW = new u0(k1Var, rVar, aVar);
            }
        } else if (y.class.isAssignableFrom(cls)) {
            b1VarW = com.bumptech.glide.g.c(a1VarA.a()) != 1 ? t0.w(a1VarA, w0.f1580b, j0.f1520b, c1.c, s.f1547a, q0.f1545b) : t0.w(a1VarA, w0.f1580b, j0.f1520b, c1.c, null, q0.f1545b);
        } else if (com.bumptech.glide.g.c(a1VarA.a()) != 1) {
            v0 v0Var = w0.f1579a;
            h0 h0Var = j0.f1519a;
            k1 k1Var2 = c1.f1485b;
            r rVar2 = s.f1548b;
            if (rVar2 == null) {
                j1.i.l("Protobuf runtime is not correctly loaded.");
                return null;
            }
            b1VarW = t0.w(a1VarA, v0Var, h0Var, k1Var2, rVar2, q0.f1544a);
        } else {
            b1VarW = t0.w(a1VarA, w0.f1579a, j0.f1519a, c1.f1485b, null, q0.f1544a);
        }
        b1 b1Var2 = (b1) concurrentHashMap.putIfAbsent(cls, b1VarW);
        return b1Var2 != null ? b1Var2 : b1VarW;
    }
}
