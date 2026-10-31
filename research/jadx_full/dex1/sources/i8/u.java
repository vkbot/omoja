package i8;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends x7.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2746b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ u(int i9, Object obj) {
        this.f2746b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.g
    public final void d(x7.h hVar) {
        switch (this.f2746b) {
            case 0:
                ((x7.e) this.c).c(new t(hVar));
                break;
            default:
                z7.a aVar = c8.b.f543b;
                try {
                    Iterator it = ((Iterable) this.c).iterator();
                    try {
                        if (!it.hasNext()) {
                            hVar.b(aVar);
                            hVar.a();
                        } else {
                            j8.i iVar = new j8.i(hVar, it);
                            hVar.b(iVar);
                            if (!iVar.e) {
                                while (!iVar.d) {
                                    try {
                                        Object next = iVar.c.next();
                                        d8.b.a(next, "The iterator returned a null value");
                                        iVar.f3122b.e(next);
                                        if (iVar.d) {
                                            break;
                                        } else {
                                            try {
                                                if (!iVar.c.hasNext()) {
                                                    if (!iVar.d) {
                                                        iVar.f3122b.a();
                                                    }
                                                    break;
                                                }
                                            } catch (Throwable th) {
                                                com.bumptech.glide.d.v(th);
                                                iVar.f3122b.onError(th);
                                                return;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        com.bumptech.glide.d.v(th2);
                                        iVar.f3122b.onError(th2);
                                        return;
                                    }
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        com.bumptech.glide.d.v(th3);
                        hVar.b(aVar);
                        hVar.onError(th3);
                        return;
                    }
                } catch (Throwable th4) {
                    com.bumptech.glide.d.v(th4);
                    hVar.b(aVar);
                    hVar.onError(th4);
                }
                break;
        }
    }
}
