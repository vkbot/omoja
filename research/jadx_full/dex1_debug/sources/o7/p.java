package o7;

import java.io.InputStream;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends d0 {
    public final /* synthetic */ int d = 0;
    public final /* synthetic */ a5.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4363f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(a5.h hVar, n7.v0 v0Var) {
        super(0, ((t) hVar.e).f4432h);
        this.e = hVar;
        this.f4363f = v0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.d0
    public final void b() {
        switch (this.d) {
            case 0:
                a5.h hVar = this.e;
                w7.b.c();
                try {
                    w7.b.a();
                    w7.b.f5947a.getClass();
                    if (((n7.f1) hVar.d) == null) {
                        try {
                            ((n7.e) hVar.c).p((n7.v0) this.f4363f);
                        } catch (Throwable th) {
                            n7.f1 f1VarH = n7.f1.f3923f.g(th).h("Failed to read headers");
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
            default:
                w7.b.c();
                try {
                    w7.b.a();
                    w7.a aVar = w7.b.f5947a;
                    aVar.getClass();
                    c();
                    aVar.getClass();
                    return;
                } catch (Throwable th4) {
                    try {
                        w7.b.f5947a.getClass();
                        break;
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0033 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c() {
        o2 o2Var = (o2) this.f4363f;
        a5.h hVar = this.e;
        t tVar = (t) hVar.e;
        if (((n7.f1) hVar.d) != null) {
            Logger logger = y0.f4505a;
            while (true) {
                InputStream inputStreamA = o2Var.a();
                if (inputStreamA == null) {
                    return;
                } else {
                    y0.b(inputStreamA);
                }
            }
        } else {
            while (true) {
                InputStream inputStreamA2 = o2Var.a();
                if (inputStreamA2 == null) {
                    return;
                }
                try {
                    ((n7.e) hVar.c).q(tVar.d.b(inputStreamA2));
                    inputStreamA2.close();
                } catch (Throwable th) {
                    y0.b(inputStreamA2);
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(a5.h hVar, o2 o2Var) {
        super(0, ((t) hVar.e).f4432h);
        this.e = hVar;
        this.f4363f = o2Var;
    }
}
