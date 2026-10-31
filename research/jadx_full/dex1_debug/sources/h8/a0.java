package h8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 extends a {
    public final /* synthetic */ int d = 1;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f2513f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a0(x7.b bVar, b8.c cVar) {
        super(bVar);
        this.f2513f = cVar;
        this.e = Integer.MAX_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: x7.b */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.b
    public final void e(x7.d dVar) {
        switch (this.d) {
            case 0:
                this.c.d(new z(dVar, (b8.c) this.f2513f, this.e));
                break;
            case 1:
                c5.e eVar = (c5.e) this.f2513f;
                x7.b bVar = this.c;
                if (!(bVar instanceof Callable)) {
                    bVar.d(new b0(dVar, eVar, this.e));
                } else {
                    try {
                        Object objCall = ((Callable) bVar).call();
                        if (objCall == null) {
                            o8.d.a(dVar);
                        } else {
                            try {
                                eVar.getClass();
                                l.f(dVar, ((Iterable) objCall).iterator());
                            } catch (Throwable th) {
                                com.bumptech.glide.d.v(th);
                                o8.d.b(th, dVar);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        com.bumptech.glide.d.v(th2);
                        o8.d.b(th2, dVar);
                        return;
                    }
                }
                break;
            default:
                x7.j jVarA = ((x7.k) this.f2513f).a();
                boolean z8 = dVar instanceof e8.a;
                int i9 = this.e;
                x7.b bVar2 = this.c;
                if (!z8) {
                    bVar2.d(new j0(dVar, jVarA, i9));
                } else {
                    bVar2.d(new i0((e8.a) dVar, jVarA, i9));
                }
                break;
        }
    }

    public a0(x7.b bVar, x7.k kVar, int i9) {
        super(bVar);
        this.f2513f = kVar;
        this.e = i9;
    }

    public a0(w wVar, int i9) {
        super(wVar);
        this.f2513f = d8.b.f1795a;
        this.e = i9;
    }
}
