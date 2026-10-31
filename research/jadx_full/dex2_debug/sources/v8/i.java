package v8;

import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class i extends b1 implements h {
    public final h1 f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(h1 h1Var) {
        this.f = h1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h
    public final boolean a(Throwable th) {
        return i().o(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) throws a8.a {
        j((Throwable) obj);
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    @Override // v8.d1
    public final void j(Throwable th) throws a8.a {
        this.f.k(i());
    }
}
