package p223v7;

import java.util.IdentityHashMap;
import java.util.Map;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.InterfaceC2516i0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: v7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3346g extends AbstractC3341b {

    /* JADX INFO: renamed from: d */
    public final AbstractC2542t f9773d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2516i0 f9774e;

    public C3346g(AbstractC2542t abstractC2542t, InterfaceC2516i0 interfaceC2516i0) {
        AbstractC2587b.m4042i(abstractC2542t, "delegate");
        this.f9773d = abstractC2542t;
        AbstractC2587b.m4042i(interfaceC2516i0, "healthListener");
        this.f9774e = interfaceC2516i0;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: d */
    public final C2494b mo3977d() {
        C2494b c2494bMo3977d = this.f9773d.mo3977d();
        c2494bMo3977d.getClass();
        Boolean bool = Boolean.TRUE;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(AbstractC2519j0.f6976d, bool);
        for (Map.Entry entry : c2494bMo3977d.f6882a.entrySet()) {
            if (!identityHashMap.containsKey(entry.getKey())) {
                identityHashMap.put((C2491a) entry.getKey(), entry.getValue());
            }
        }
        return new C2494b(identityHashMap);
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: p */
    public final void mo3985p(InterfaceC2516i0 interfaceC2516i0) {
        this.f9773d.mo3985p(new C3345f(this, interfaceC2516i0, 0));
    }

    @Override // p223v7.AbstractC3341b
    /* JADX INFO: renamed from: r */
    public final AbstractC2542t mo5258r() {
        return this.f9773d;
    }
}
