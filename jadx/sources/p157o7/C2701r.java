package p157o7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p006a5.C0023h;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2530n;
import p232w7.AbstractC3536b;

/* JADX INFO: renamed from: o7.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2701r extends AbstractRunnableC2618d0 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f7734d = 0;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f7735e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701r(C0023h c0023h) {
        super(0, ((C2713t) c0023h.f83e).f7764h);
        this.f7735e = c0023h;
    }

    @Override // p157o7.AbstractRunnableC2618d0
    /* JADX INFO: renamed from: b */
    public final void mo4133b() {
        List list;
        switch (this.f7734d) {
            case 0:
                C0023h c0023h = (C0023h) this.f7735e;
                AbstractC3536b.m5642c();
                try {
                    AbstractC3536b.m5640a();
                    AbstractC3536b.f10507a.getClass();
                    if (((C2508f1) c0023h.f82d) == null) {
                        try {
                            ((AbstractC2503e) c0023h.f81c).mo3910r();
                        } catch (Throwable th) {
                            C2508f1 c2508f1M3934h = C2508f1.f6938f.m3933g(th).m3934h("Failed to call onReady.");
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
            case 1:
                ((C2608b2) this.f7735e).m4127t();
                return;
            default:
                C2648i0 c2648i0 = (C2648i0) this.f7735e;
                c2648i0.getClass();
                List arrayList = new ArrayList();
                while (true) {
                    synchronized (c2648i0) {
                        try {
                            if (c2648i0.f7518d.isEmpty()) {
                                c2648i0.f7518d = null;
                                c2648i0.f7517c = true;
                                return;
                            } else {
                                list = c2648i0.f7518d;
                                c2648i0.f7518d = arrayList;
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                    list.clear();
                    arrayList = list;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701r(C2608b2 c2608b2, C2648i0 c2648i0) {
        super(0, c2608b2.f7313f);
        this.f7735e = c2648i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701r(C2608b2 c2608b2, C2530n c2530n) {
        super(0, c2530n);
        this.f7735e = c2608b2;
    }
}
