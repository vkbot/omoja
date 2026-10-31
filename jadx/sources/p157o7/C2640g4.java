package p157o7;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import p062f5.RunnableC1556j;
import p099j1.C1929i;
import p148n7.AbstractC2542t;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2553y0;
import p148n7.C2555z0;

/* JADX INFO: renamed from: o7.g4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2640g4 extends AbstractC2542t {

    /* JADX INFO: renamed from: d */
    public final AbstractC2542t f7491d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2646h4 f7492e;

    public C2640g4(C2646h4 c2646h4, AbstractC2542t abstractC2542t) {
        this.f7492e = c2646h4;
        this.f7491d = abstractC2542t;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: i */
    public final void mo3980i(C2508f1 c2508f1) {
        this.f7491d.mo3980i(c2508f1);
        this.f7492e.f7515d.execute(new RunnableC1556j(11, this));
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: j */
    public final void mo3981j(C2555z0 c2555z0) {
        C2494b c2494b = c2555z0.f7064b;
        IdentityHashMap identityHashMap = c2494b.f6882a;
        C2491a c2491a = C2646h4.f7512e;
        if (identityHashMap.get(c2491a) != null) {
            C1929i.m3030l("RetryingNameResolver can only be used once to wrap a NameResolver");
            return;
        }
        List list = Collections.EMPTY_LIST;
        C2494b c2494b2 = C2494b.f6881b;
        List list2 = c2555z0.f7063a;
        C2553y0 c2553y0 = c2555z0.f7065c;
        c2494b.getClass();
        C2634f4 c2634f4 = new C2634f4(this.f7492e);
        IdentityHashMap identityHashMap2 = new IdentityHashMap(1);
        identityHashMap2.put(c2491a, c2634f4);
        for (Map.Entry entry : c2494b.f6882a.entrySet()) {
            if (!identityHashMap2.containsKey(entry.getKey())) {
                identityHashMap2.put((C2491a) entry.getKey(), entry.getValue());
            }
        }
        this.f7491d.mo3981j(new C2555z0(list2, new C2494b(identityHashMap2), c2553y0));
    }
}
