package h5;

import a5.h;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements e5.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2472b;
    public final h c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(h hVar, int i9) {
        this.f2472b = i9;
        this.c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        switch (this.f2472b) {
            case 0:
                Executor executor = (Executor) this.c.c;
                a.a.e(executor);
                return executor;
            case 1:
                Executor executor2 = (Executor) this.c.d;
                a.a.e(executor2);
                return executor2;
            default:
                Executor executor3 = (Executor) this.c.e;
                a.a.e(executor3);
                return executor3;
        }
    }
}
