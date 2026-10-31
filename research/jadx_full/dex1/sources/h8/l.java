package h8;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends x7.b {
    public final /* synthetic */ int c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(int i9, Object obj) {
        this.c = i9;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(x7.d dVar, Iterator it) {
        try {
            if (!it.hasNext()) {
                o8.d.a(dVar);
            } else if (dVar instanceof e8.a) {
                dVar.f(new d0((e8.a) dVar, it, 0));
            } else {
                dVar.f(new d0(dVar, it, 1));
            }
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            o8.d.b(th, dVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        h kVar;
        switch (this.c) {
            case 0:
                int iC = com.bumptech.glide.g.c(3);
                if (iC == 0) {
                    kVar = new k(dVar);
                } else if (iC == 1 || iC == 3) {
                    kVar = new j(dVar);
                } else {
                    kVar = iC != 4 ? new i(dVar, x7.b.f6040b) : new i(dVar);
                }
                dVar.f(kVar);
                try {
                    ((x7.c) this.d).d();
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    if (kVar.f(th)) {
                        return;
                    }
                    a.a.s(th);
                    return;
                }
                break;
            case 1:
                Object[] objArr = (Object[]) this.d;
                if (!(dVar instanceof e8.a)) {
                    dVar.f(new c0(dVar, objArr, 1));
                } else {
                    dVar.f(new c0((e8.a) dVar, objArr, 0));
                }
                break;
            case 2:
                try {
                    f(dVar, ((com.google.protobuf.a0) this.d).iterator());
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    o8.d.b(th2, dVar);
                    return;
                }
                break;
            case 3:
                ((x7.g) this.d).c(new e0(dVar));
                break;
            default:
                ((x7.e) this.d).c(new i8.s(dVar));
                break;
        }
    }
}
