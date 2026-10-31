package y7;

import android.os.Handler;
import i8.p;
import java.util.concurrent.TimeUnit;
import x7.j;
import x7.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f6144a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Handler handler) {
        this.f6144a = handler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final j a() {
        return new c(this.f6144a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final z7.a c(p pVar) {
        if (TimeUnit.NANOSECONDS == null) {
            n0.b.n("unit == null");
            return null;
        }
        Handler handler = this.f6144a;
        d dVar = new d(handler, pVar);
        handler.postDelayed(dVar, 0L);
        return dVar;
    }
}
