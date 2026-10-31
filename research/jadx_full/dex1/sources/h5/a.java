package h5;

import a5.h;
import f5.l0;
import l5.e;
import o4.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements e5.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2470b;
    public final h c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(h hVar, int i9) {
        this.f2470b = i9;
        this.c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        switch (this.f2470b) {
            case 0:
                return (f) this.c.c;
            case 1:
                e eVar = (e) this.c.d;
                a.a.e(eVar);
                return eVar;
            default:
                return new l0((f) this.c.c);
        }
    }
}
