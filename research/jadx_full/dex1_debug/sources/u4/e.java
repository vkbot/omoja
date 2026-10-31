package u4;

import java.util.concurrent.Callable;
import n.p;
import s1.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f5465b;
    public final /* synthetic */ Callable c;
    public final /* synthetic */ p d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(f fVar, Callable callable, p pVar) {
        this.f5465b = fVar;
        this.c = callable;
        this.d = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f5465b.f5466b.submit(new x0(8, this.c, this.d));
    }
}
