package l5;

import com.bumptech.glide.manager.t;
import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f3304a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(p pVar) {
        this.f3304a = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l5.j
    public final boolean a(m5.b bVar) {
        int i9 = bVar.f3671b;
        if (i9 != 3 && i9 != 4 && i9 != 5) {
            return false;
        }
        p pVar = this.f3304a;
        String str = bVar.f3670a;
        o7.a aVar = (o7.a) pVar.c;
        synchronized (aVar.f4117b) {
            try {
                if (aVar.f4116a) {
                    return true;
                }
                aVar.f4116a = true;
                aVar.d = str;
                ((t) aVar.c).n(aVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l5.j
    public final boolean b(Exception exc) {
        return false;
    }
}
