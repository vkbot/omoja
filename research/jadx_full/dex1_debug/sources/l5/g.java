package l5;

import com.bumptech.glide.manager.t;
import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f3302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f3303b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(k kVar, p pVar) {
        this.f3302a = kVar;
        this.f3303b = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l5.j
    public final boolean a(m5.b bVar) {
        if (bVar.f3671b != 4 || this.f3302a.a(bVar)) {
            return false;
        }
        String str = bVar.c;
        if (str == null) {
            n0.b.n("Null token");
            return false;
        }
        ((o7.a) this.f3303b.c).g(new a(str, bVar.e, bVar.f3672f));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l5.j
    public final boolean b(Exception exc) {
        o7.a aVar = (o7.a) this.f3303b.c;
        aVar.getClass();
        synchronized (aVar.f4117b) {
            try {
                if (aVar.f4116a) {
                    return true;
                }
                aVar.f4116a = true;
                aVar.e = exc;
                ((t) aVar.c).n(aVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
