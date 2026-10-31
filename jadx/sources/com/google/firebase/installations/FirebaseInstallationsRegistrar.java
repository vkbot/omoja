package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p016b1.AbstractC0880u;
import p030c5.C0990e;
import p030c5.InterfaceC0991f;
import p063f6.C1580d;
import p099j1.C1929i;
import p126l5.C2209d;
import p126l5.InterfaceC2210e;
import p155o4.C2591f;
import p173q0.C3042f;
import p193s4.InterfaceC3205a;
import p193s4.InterfaceC3206b;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3255p;
import p200t4.InterfaceC3241b;
import p211u4.ExecutorC3296i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static InterfaceC2210e lambda$getComponents$0(InterfaceC3241b interfaceC3241b) {
        return new C2209d((C2591f) interfaceC3241b.mo2240b(C2591f.class), interfaceC3241b.mo2241c(InterfaceC0991f.class), (ExecutorService) interfaceC3241b.mo2246h(new C3255p(InterfaceC3205a.class, ExecutorService.class)), new ExecutorC3296i((Executor) interfaceC3241b.mo2246h(new C3255p(InterfaceC3206b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C3240a> getComponents() {
        C1580d c1580dM5180a = C3240a.m5180a(InterfaceC2210e.class);
        c1580dM5180a.f3909a = LIBRARY_NAME;
        c1580dM5180a.m2664a(C3247h.m5187a(C2591f.class));
        c1580dM5180a.m2664a(new C3247h(0, 1, InterfaceC0991f.class));
        c1580dM5180a.m2664a(new C3247h(new C3255p(InterfaceC3205a.class, ExecutorService.class), 1, 0));
        c1580dM5180a.m2664a(new C3247h(new C3255p(InterfaceC3206b.class, Executor.class), 1, 0));
        c1580dM5180a.f3914f = new C1929i(25);
        C3240a c3240aM2665b = c1580dM5180a.m2665b();
        C0990e c0990e = new C0990e(0);
        C1580d c1580dM5180a2 = C3240a.m5180a(C0990e.class);
        c1580dM5180a2.f3911c = 1;
        c1580dM5180a2.f3914f = new C3042f(4, c0990e);
        return Arrays.asList(c3240aM2665b, c1580dM5180a2.m2665b(), AbstractC0880u.m997d(LIBRARY_NAME, "17.2.0"));
    }
}
