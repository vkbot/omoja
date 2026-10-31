package o7;

import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i2 extends n7.m0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ReferenceQueue f4279b = new ReferenceQueue();
    public static final ConcurrentHashMap c = new ConcurrentHashMap();
    public static final Logger d = Logger.getLogger(i2.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f2 f4280a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i2(f2 f2Var) {
        this.f4280a = f2Var;
        new h2(this, f2Var, f4279b, c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final String e() {
        return this.f4280a.t.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final n7.t f(n7.x0 x0Var, n7.c cVar) {
        return this.f4280a.t.f(x0Var, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4280a, "delegate");
        return sVarT.toString();
    }
}
