package p224v8;

import kotlin.Unit;

/* JADX INFO: renamed from: v8.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3379e1 extends AbstractC3376d1 {

    /* JADX INFO: renamed from: f */
    public final C3388h1 f9864f;

    /* JADX INFO: renamed from: g */
    public final C3382f1 f9865g;

    /* JADX INFO: renamed from: h */
    public final C3389i f9866h;

    /* JADX INFO: renamed from: i */
    public final Object f9867i;

    public C3379e1(C3388h1 c3388h1, C3382f1 c3382f1, C3389i c3389i, Object obj) {
        this.f9864f = c3388h1;
        this.f9865g = c3382f1;
        this.f9866h = c3389i;
        this.f9867i = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        mo5295j((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // p224v8.AbstractC3376d1
    /* JADX INFO: renamed from: j */
    public final void mo5295j(Throwable th) {
        C3389i c3389iM5322C = C3388h1.m5322C(this.f9866h);
        C3388h1 c3388h1 = this.f9864f;
        C3382f1 c3382f1 = this.f9865g;
        Object obj = this.f9867i;
        if (c3389iM5322C != null) {
            while (AbstractC3435x0.m5358a(c3389iM5322C.f9883f, new C3379e1(c3388h1, c3382f1, c3389iM5322C, obj), 1) == C3397k1.f9894b) {
                c3389iM5322C = C3388h1.m5322C(c3389iM5322C);
                if (c3389iM5322C == null) {
                }
            }
            return;
        }
        c3388h1.mo136i(c3388h1.m5338r(c3382f1, obj));
    }
}
