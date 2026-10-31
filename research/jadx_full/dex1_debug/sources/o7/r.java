package o7;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r extends d0 {
    public final /* synthetic */ int d = 0;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(a5.h hVar) {
        super(0, ((t) hVar.e).f4432h);
        this.e = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.d0
    public final void b() {
        List list;
        switch (this.d) {
            case 0:
                a5.h hVar = (a5.h) this.e;
                w7.b.c();
                try {
                    w7.b.a();
                    w7.b.f5947a.getClass();
                    if (((n7.f1) hVar.d) == null) {
                        try {
                            ((n7.e) hVar.c).r();
                        } catch (Throwable th) {
                            n7.f1 f1VarH = n7.f1.f3923f.g(th).h("Failed to call onReady.");
                            hVar.d = f1VarH;
                            ((t) hVar.e).f4436l.h(f1VarH);
                        }
                        break;
                    }
                    w7.b.f5947a.getClass();
                    return;
                } catch (Throwable th2) {
                    try {
                        w7.b.f5947a.getClass();
                        break;
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            case 1:
                ((b2) this.e).t();
                return;
            default:
                i0 i0Var = (i0) this.e;
                i0Var.getClass();
                List arrayList = new ArrayList();
                while (true) {
                    synchronized (i0Var) {
                        try {
                            if (i0Var.d.isEmpty()) {
                                i0Var.d = null;
                                i0Var.c = true;
                                return;
                            } else {
                                list = i0Var.d;
                                i0Var.d = arrayList;
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
    public r(b2 b2Var, i0 i0Var) {
        super(0, b2Var.f4158f);
        this.e = i0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(b2 b2Var, n7.n nVar) {
        super(0, nVar);
        this.e = b2Var;
    }
}
