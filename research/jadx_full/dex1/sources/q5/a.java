package q5;

import d2.h;
import java.util.concurrent.Executor;
import s4.b;
import s4.d;
import t4.c;
import t4.p;
import v8.s0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements c {
    public static final a c = new a(0);
    public static final a d = new a(1);
    public static final a e = new a(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f4872f = new a(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4873b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9) {
        this.f4873b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.c
    public final Object a(h hVar) {
        switch (this.f4873b) {
            case 0:
                Object objH = hVar.h(new p(s4.a.class, Executor.class));
                objH.getClass();
                return new s0((Executor) objH);
            case 1:
                Object objH2 = hVar.h(new p(s4.c.class, Executor.class));
                objH2.getClass();
                return new s0((Executor) objH2);
            case 2:
                Object objH3 = hVar.h(new p(b.class, Executor.class));
                objH3.getClass();
                return new s0((Executor) objH3);
            default:
                Object objH4 = hVar.h(new p(d.class, Executor.class));
                objH4.getClass();
                return new s0((Executor) objH4);
        }
    }
}
