package v7;

import java.util.concurrent.atomic.AtomicLong;
import n7.f1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f5565b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(r rVar) {
        this.f5565b = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void B(f1 f1Var) {
        k kVar = this.f5565b.f5566a;
        boolean zF = f1Var.f();
        o oVar = kVar.f5552a;
        if (oVar.e == null && oVar.f5562f == null) {
            return;
        }
        l.d dVar = kVar.f5553b;
        if (zF) {
            ((AtomicLong) dVar.c).getAndIncrement();
        } else {
            ((AtomicLong) dVar.d).getAndIncrement();
        }
    }
}
