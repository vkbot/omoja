package com.google.firebase.inappmessaging;

import android.app.Application;
import android.content.Context;
import android.support.v4.media.C0090h;
import androidx.annotation.Keep;
import androidx.fragment.app.C0566h;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import p003a2.InterfaceC0006c;
import p006a5.C0023h;
import p016b1.AbstractC0880u;
import p016b1.C0872m;
import p020b5.InterfaceC0903b;
import p027c2.C0961k;
import p030c5.C0990e;
import p042d5.C1289j;
import p047e0.C1421s3;
import p052e5.C1494a;
import p052e5.C1496c;
import p062f5.C1538a;
import p062f5.C1541b0;
import p062f5.C1554i;
import p062f5.C1561l0;
import p062f5.C1562m;
import p062f5.C1571u;
import p062f5.C1573w;
import p063f6.C1580d;
import p072g5.C1619a;
import p072g5.C1620b;
import p082h5.C1666a;
import p092i5.C1750a;
import p099j1.C1929i;
import p126l5.InterfaceC2210e;
import p155o4.C2591f;
import p165p2.C2962e;
import p167p4.C2971c;
import p176q4.C3061a;
import p184r5.C3105c;
import p193s4.InterfaceC3205a;
import p193s4.InterfaceC3206b;
import p193s4.InterfaceC3207c;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3253n;
import p200t4.C3255p;
import p200t4.InterfaceC3241b;
import p204t8.InterfaceC3268a;
import p220v4.InterfaceC3336a;
import p232w7.C3537c;
import p258z3.C3720f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInAppMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fiam";
    private C3255p backgroundExecutor = new C3255p(InterfaceC3205a.class, Executor.class);
    private C3255p blockingExecutor = new C3255p(InterfaceC3206b.class, Executor.class);
    private C3255p lightWeightExecutor = new C3255p(InterfaceC3207c.class, Executor.class);
    private C3255p legacyTransportFactory = new C3255p(InterfaceC3336a.class, InterfaceC0006c.class);

    /* JADX INFO: Access modifiers changed from: private */
    public C1289j providesFirebaseInAppMessaging(InterfaceC3241b interfaceC3241b) {
        C2971c c2971c;
        C2591f c2591f = (C2591f) interfaceC3241b.mo2240b(C2591f.class);
        InterfaceC2210e interfaceC2210e = (InterfaceC2210e) interfaceC3241b.mo2240b(InterfaceC2210e.class);
        C3253n c3253nMo2242d = interfaceC3241b.mo2242d();
        InterfaceC0903b interfaceC0903b = (InterfaceC0903b) interfaceC3241b.mo2240b(InterfaceC0903b.class);
        c2591f.m4064a();
        C3105c c3105c = new C3105c(15, (Application) c2591f.f7208a);
        C0090h c0090h = new C0090h(c3253nMo2242d, interfaceC0903b);
        C3720f c3720f = new C3720f(7);
        C1573w c1573w = new C1573w();
        C3105c c3105c2 = new C3105c(18, false);
        c3105c2.f8867c = c1573w;
        C0023h c0023h = new C0023h((Executor) interfaceC3241b.mo2246h(this.lightWeightExecutor), (Executor) interfaceC3241b.mo2246h(this.backgroundExecutor), (Executor) interfaceC3241b.mo2246h(this.blockingExecutor), 8, false);
        int i10 = 8;
        C1620b c1620b = new C1620b(new C2962e(8), new C2962e(9), c3105c, new C0990e(i10), c3105c2, c3720f, new C3720f(i10), new C2962e(10), new C0990e(9), c0090h, c0023h);
        C3061a c3061a = (C3061a) interfaceC3241b.mo2240b(C3061a.class);
        synchronized (c3061a) {
            try {
                if (!c3061a.f8679a.containsKey("fiam")) {
                    c3061a.f8679a.put("fiam", new C2971c(c3061a.f8680b));
                }
                c2971c = (C2971c) c3061a.f8679a.get("fiam");
            } catch (Throwable th) {
                throw th;
            }
        }
        C1538a c1538a = new C1538a(c2971c, (Executor) interfaceC3241b.mo2246h(this.blockingExecutor));
        C0023h c0023h2 = new C0023h(c2591f, interfaceC2210e, new C1750a(), 6);
        C1561l0 c1561l0 = new C1561l0(c2591f);
        InterfaceC0006c interfaceC0006c = (InterfaceC0006c) interfaceC3241b.mo2246h(this.legacyTransportFactory);
        interfaceC0006c.getClass();
        C1619a c1619a = new C1619a(c1620b, 2);
        C1619a c1619a2 = new C1619a(c1620b, 11);
        C1619a c1619a3 = new C1619a(c1620b, 5);
        C3720f c3720f2 = new C3720f(6, c1620b);
        InterfaceC3268a interfaceC3268aM2578a = C1494a.m2578a(new C0872m(5, c0023h2, C1494a.m2578a(new C1562m(C1494a.m2578a(new C0090h(c1561l0, new C1619a(c1620b, 8), new C3105c(17, c1561l0), 15)), 0)), new C1619a(c1620b, 3), new C1619a(c1620b, 13)));
        C1619a c1619a4 = new C1619a(c1620b, 1);
        C1619a c1619a5 = new C1619a(c1620b, 15);
        C1619a c1619a6 = new C1619a(c1620b, 9);
        C1619a c1619a7 = new C1619a(c1620b, 14);
        C3537c c3537c = new C3537c(6, c1620b);
        C1666a c1666a = new C1666a(c0023h2, 2);
        C3105c c3105c3 = new C3105c(c0023h2, c1666a);
        C1666a c1666a2 = new C1666a(c0023h2, 1);
        C0023h c0023h3 = new C0023h(c0023h2, c1666a, new C1619a(c1620b, 7), 7);
        C1496c c1496c = new C1496c(0, c1538a);
        C1619a c1619a8 = new C1619a(c1620b, 4);
        InterfaceC3268a interfaceC3268aM2578a2 = C1494a.m2578a(new C1571u(c1619a, c1619a2, c1619a3, c3720f2, interfaceC3268aM2578a, c1619a4, c1619a5, c1619a6, c1619a7, c3537c, c3105c3, c1666a2, c0023h3, c1496c, c1619a8));
        C1619a c1619a9 = new C1619a(c1620b, 12);
        C1666a c1666a3 = new C1666a(c0023h2, 0);
        C1496c c1496c2 = new C1496c(0, interfaceC0006c);
        C1619a c1619a10 = new C1619a(c1620b, 0);
        C1619a c1619a11 = new C1619a(c1620b, 6);
        return (C1289j) C1494a.m2578a(new C0961k(interfaceC3268aM2578a2, c1619a9, c0023h3, c1666a2, new C1554i(c1619a6, c3720f2, c1619a5, c1619a7, c1619a3, c3537c, C1494a.m2578a(new C1421s3(c1666a3, c1496c2, c1619a10, c1666a2, c3720f2, c1619a11, c1619a8)), c0023h3), c1619a11, new C1619a(c1620b, 10), 1)).get();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<C3240a> getComponents() {
        C1580d c1580dM5180a = C3240a.m5180a(C1289j.class);
        c1580dM5180a.f3909a = LIBRARY_NAME;
        c1580dM5180a.m2664a(C3247h.m5187a(Context.class));
        c1580dM5180a.m2664a(C3247h.m5187a(InterfaceC2210e.class));
        c1580dM5180a.m2664a(C3247h.m5187a(C2591f.class));
        c1580dM5180a.m2664a(C3247h.m5187a(C3061a.class));
        c1580dM5180a.m2664a(new C3247h(0, 2, C1541b0.class));
        c1580dM5180a.m2664a(new C3247h(this.legacyTransportFactory, 1, 0));
        c1580dM5180a.m2664a(C3247h.m5187a(InterfaceC0903b.class));
        c1580dM5180a.m2664a(new C3247h(this.backgroundExecutor, 1, 0));
        c1580dM5180a.m2664a(new C3247h(this.blockingExecutor, 1, 0));
        c1580dM5180a.m2664a(new C3247h(this.lightWeightExecutor, 1, 0));
        c1580dM5180a.f3914f = new C0566h(5, this);
        if (c1580dM5180a.f3910b == 0) {
            c1580dM5180a.f3910b = 2;
            return Arrays.asList(c1580dM5180a.m2665b(), AbstractC0880u.m997d(LIBRARY_NAME, "21.0.1"));
        }
        C1929i.m3030l("Instantiation type has already been set.");
        return null;
    }
}
