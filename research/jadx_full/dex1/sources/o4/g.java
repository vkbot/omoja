package o4;

import java.util.concurrent.Executor;
import t4.p;
import v8.s0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements t4.c {
    public static final g c = new g(0);
    public static final g d = new g(1);
    public static final g e = new g(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final g f4094f = new g(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4095b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(int i9) {
        this.f4095b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.c
    public final Object a(d2.h hVar) {
        switch (this.f4095b) {
            case 0:
                Object objH = hVar.h(new p(s4.a.class, Executor.class));
                objH.getClass();
                return new s0((Executor) objH);
            case 1:
                Object objH2 = hVar.h(new p(s4.c.class, Executor.class));
                objH2.getClass();
                return new s0((Executor) objH2);
            case 2:
                Object objH3 = hVar.h(new p(s4.b.class, Executor.class));
                objH3.getClass();
                return new s0((Executor) objH3);
            default:
                Object objH4 = hVar.h(new p(s4.d.class, Executor.class));
                objH4.getClass();
                return new s0((Executor) objH4);
        }
    }
}
