package h5;

import com.google.protobuf.q;
import e0.g;
import f5.w;
import h8.l;
import h8.p0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements e5.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2473b;
    public final r5.c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(r5.c cVar, int i9) {
        this.f2473b = i9;
        this.c = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        int i9 = this.f2473b;
        r5.c cVar = this.c;
        switch (i9) {
            case 0:
                g gVar = new g(cVar);
                int i10 = x7.b.f6040b;
                q.p(3, "mode is null");
                p0 p0VarC = new l(0, gVar).c();
                p0VarC.f();
                return p0VarC;
            default:
                return (w) cVar.c;
        }
    }
}
