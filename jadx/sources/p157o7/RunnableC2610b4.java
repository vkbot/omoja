package p157o7;

import p006a5.C0023h;
import p148n7.C2508f1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: o7.b4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2610b4 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7327b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2736w4 f7328c;

    public /* synthetic */ RunnableC2610b4(C2736w4 c2736w4, int i10) {
        this.f7327b = i10;
        this.f7328c = c2736w4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7327b) {
            case 0:
                C2727v1 c2727v1 = (C2727v1) this.f7328c.f7860d;
                c2727v1.f7810A = true;
                InterfaceC2731w interfaceC2731w = c2727v1.f7835v;
                C0023h c0023h = c2727v1.f7833t;
                interfaceC2731w.mo68b((C2508f1) c0023h.f81c, (EnumC2725v) c0023h.f82d, (C2547v0) c0023h.f83e);
                break;
            default:
                C2727v1 c2727v2 = (C2727v1) this.f7328c.f7860d;
                if (!c2727v2.f7810A) {
                    c2727v2.f7835v.mo75j();
                }
                break;
        }
    }
}
