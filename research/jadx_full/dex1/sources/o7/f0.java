package o7;

import java.util.HashSet;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4209b;
    public final /* synthetic */ b2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f0(b2 b2Var, int i9) {
        this.f4209b = i9;
        this.c = b2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4209b) {
            case 0:
                this.c.f4161i.k();
                return;
            case 1:
                this.c.f4161i.g();
                return;
            default:
                b2 b2Var = this.c;
                LinkedHashSet linkedHashSet = b2Var.f4169q.d.B;
                if (linkedHashSet != null) {
                    linkedHashSet.remove(b2Var);
                    if (this.c.f4169q.d.B.isEmpty()) {
                        f2 f2Var = this.c.f4169q.d;
                        f2Var.Y.d(f2Var.C, false);
                        f2 f2Var2 = this.c.f4169q.d;
                        f2Var2.B = null;
                        if (f2Var2.G.get()) {
                            b1.m mVar = this.c.f4169q.d.F;
                            n7.f1 f1Var = f2.f4213e0;
                            synchronized (mVar.c) {
                                try {
                                    if (((n7.f1) mVar.e) == null) {
                                        mVar.e = f1Var;
                                        boolean zIsEmpty = ((HashSet) mVar.d).isEmpty();
                                        if (zIsEmpty) {
                                            ((f2) mVar.f270f).E.a(f1Var);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
