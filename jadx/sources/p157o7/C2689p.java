package p157o7;

import java.io.InputStream;
import java.util.logging.Logger;
import p006a5.C0023h;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p232w7.AbstractC3536b;
import p232w7.C3535a;

/* JADX INFO: renamed from: o7.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2689p extends AbstractRunnableC2618d0 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f7656d = 0;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C0023h f7657e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f7658f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689p(C0023h c0023h, C2547v0 c2547v0) {
        super(0, ((C2713t) c0023h.f83e).f7764h);
        this.f7657e = c0023h;
        this.f7658f = c2547v0;
    }

    @Override // p157o7.AbstractRunnableC2618d0
    /* JADX INFO: renamed from: b */
    public final void mo4133b() {
        switch (this.f7656d) {
            case 0:
                C0023h c0023h = this.f7657e;
                AbstractC3536b.m5642c();
                try {
                    AbstractC3536b.m5640a();
                    AbstractC3536b.f10507a.getClass();
                    if (((C2508f1) c0023h.f82d) == null) {
                        try {
                            ((AbstractC2503e) c0023h.f81c).mo3908p((C2547v0) this.f7658f);
                        } catch (Throwable th) {
                            C2508f1 c2508f1M3934h = C2508f1.f6938f.m3933g(th).m3934h("Failed to read headers");
                            c0023h.f82d = c2508f1M3934h;
                            ((C2713t) c0023h.f83e).f7768l.mo4097h(c2508f1M3934h);
                        }
                        break;
                    }
                    AbstractC3536b.f10507a.getClass();
                    return;
                } catch (Throwable th2) {
                    try {
                        AbstractC3536b.f10507a.getClass();
                        break;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            default:
                AbstractC3536b.m5642c();
                try {
                    AbstractC3536b.m5640a();
                    C3535a c3535a = AbstractC3536b.f10507a;
                    c3535a.getClass();
                    m4197c();
                    c3535a.getClass();
                    return;
                } catch (Throwable th4) {
                    try {
                        AbstractC3536b.f10507a.getClass();
                        break;
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m4197c() {
        C2686o2 c2686o2 = (C2686o2) this.f7658f;
        C0023h c0023h = this.f7657e;
        C2713t c2713t = (C2713t) c0023h.f83e;
        if (((C2508f1) c0023h.f82d) != null) {
            Logger logger = AbstractC2743y0.f7875a;
            while (true) {
                InputStream inputStreamM4194a = c2686o2.m4194a();
                if (inputStreamM4194a == null) {
                    return;
                } else {
                    AbstractC2743y0.m4258b(inputStreamM4194a);
                }
            }
        } else {
            while (true) {
                try {
                    InputStream inputStreamM4194a2 = c2686o2.m4194a();
                    if (inputStreamM4194a2 == null) {
                        return;
                    }
                    try {
                        ((AbstractC2503e) c0023h.f81c).mo3909q(c2713t.f7760d.m3993b(inputStreamM4194a2));
                        inputStreamM4194a2.close();
                    } catch (Throwable th) {
                        AbstractC2743y0.m4258b(inputStreamM4194a2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Logger logger2 = AbstractC2743y0.f7875a;
                    while (true) {
                        InputStream inputStreamM4194a3 = c2686o2.m4194a();
                        if (inputStreamM4194a3 == null) {
                            C2508f1 c2508f1M3934h = C2508f1.f6938f.m3933g(th2).m3934h("Failed to read message.");
                            c0023h.f82d = c2508f1M3934h;
                            c2713t.f7768l.mo4097h(c2508f1M3934h);
                            return;
                        }
                        AbstractC2743y0.m4258b(inputStreamM4194a3);
                    }
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689p(C0023h c0023h, C2686o2 c2686o2) {
        super(0, ((C2713t) c0023h.f83e).f7764h);
        this.f7657e = c0023h;
        this.f7658f = c2686o2;
    }
}
