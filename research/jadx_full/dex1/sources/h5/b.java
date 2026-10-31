package h5;

import android.support.v4.media.h;
import f5.b0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements e5.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2471b;
    public final h c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(h hVar, int i9) {
        this.f2471b = i9;
        this.c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        switch (this.f2471b) {
            case 0:
                b0 b0Var = (b0) this.c.c;
                a.a.e(b0Var);
                return b0Var;
            default:
                b5.b bVar = (b5.b) this.c.d;
                a.a.e(bVar);
                return bVar;
        }
    }
}
