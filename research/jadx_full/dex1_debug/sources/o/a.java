package o;

import com.bumptech.glide.load.data.l;
import h.g;
import h.h;
import java.util.ArrayDeque;
import n.n;
import n.o;
import n.p;
import n.q;
import n.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f4000b = g.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f4001a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(p pVar) {
        this.f4001a = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.r
    public final q b(Object obj, int i9, int i10, h hVar) {
        n.g gVar = (n.g) obj;
        p pVar = this.f4001a;
        if (pVar != null) {
            n nVar = (n) pVar.c;
            o oVarA = o.a(gVar);
            Object objA = nVar.a(oVarA);
            ArrayDeque arrayDeque = o.f3757b;
            synchronized (arrayDeque) {
                arrayDeque.offer(oVarA);
            }
            n.g gVar2 = (n.g) objA;
            if (gVar2 == null) {
                nVar.d(o.a(gVar), gVar);
            } else {
                gVar = gVar2;
            }
        }
        return new q(gVar, new l(gVar, ((Integer) hVar.c(f4000b)).intValue()));
    }
}
