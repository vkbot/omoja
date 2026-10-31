package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class i1 extends u {
    public final h1 b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(e9.b bVar) {
        super(bVar);
        bVar.getClass();
        this.b = new h1(bVar.a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return this.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, e9.h
    public final void b(h9.b bVar, Object obj) {
        int iH = h(obj);
        h1 h1Var = this.b;
        h9.d dVarBeginCollection = bVar.beginCollection(h1Var, iH);
        p(dVarBeginCollection, obj, iH);
        dVarBeginCollection.endStructure(h1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a, e9.a
    public final Object c(RouteDecoder routeDecoder) {
        return i(routeDecoder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object d() {
        return (g1) l(o());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int e(Object obj) {
        g1 g1Var = (g1) obj;
        g1Var.getClass();
        return g1Var.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final void f(int i, Object obj) {
        g1 g1Var = (g1) obj;
        g1Var.getClass();
        g1Var.b(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Iterator g(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object m(Object obj) {
        g1 g1Var = (g1) obj;
        g1Var.getClass();
        return g1Var.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u
    public final void n(int i, Object obj, Object obj2) {
        ((g1) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    public abstract Object o();

    public abstract void p(h9.d dVar, Object obj, int i);
}
