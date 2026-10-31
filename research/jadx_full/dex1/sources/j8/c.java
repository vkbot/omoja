package j8;

import a9.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends a {
    public final /* synthetic */ int c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(x7.g gVar, Object obj, int i9) {
        super(gVar);
        this.c = i9;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.g
    public final void d(x7.h hVar) {
        switch (this.c) {
            case 0:
                this.f3101b.c(new b(hVar, (w) this.d, 0));
                break;
            default:
                this.f3101b.c(new j(hVar, (e0.g) this.d));
                break;
        }
    }
}
