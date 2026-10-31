package com.google.firebase.installations;

import androidx.annotation.Keep;
import b1.u;
import com.google.firebase.components.ComponentRegistrar;
import d2.h;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import l5.d;
import l5.e;
import o4.f;
import s4.a;
import t4.b;
import t4.p;
import u4.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ e a(h hVar) {
        return lambda$getComponents$0(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static e lambda$getComponents$0(b bVar) {
        return new d((f) bVar.b(f.class), bVar.c(c5.f.class), (ExecutorService) bVar.h(new p(a.class, ExecutorService.class)), new i((Executor) bVar.h(new p(s4.b.class, Executor.class))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<t4.a> getComponents() {
        f6.d dVarA = t4.a.a(e.class);
        dVarA.f2261a = LIBRARY_NAME;
        dVarA.a(t4.h.a(f.class));
        dVarA.a(new t4.h(0, 1, c5.f.class));
        dVarA.a(new t4.h(new p(a.class, ExecutorService.class), 1, 0));
        dVarA.a(new t4.h(new p(s4.b.class, Executor.class), 1, 0));
        dVarA.f2263f = new j1.i(25);
        t4.a aVarB = dVarA.b();
        c5.e eVar = new c5.e(0);
        f6.d dVarA2 = t4.a.a(c5.e.class);
        dVarA2.c = 1;
        dVarA2.f2263f = new q0.f(4, eVar);
        return Arrays.asList(aVarB, dVarA2.b(), u.d(LIBRARY_NAME, "17.2.0"));
    }
}
