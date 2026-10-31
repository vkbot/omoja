package v7;

import n7.i0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i0 f5544b;
    public final /* synthetic */ b c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(b bVar, i0 i0Var, int i9) {
        this.f5543a = i9;
        this.c = bVar;
        this.f5544b = i0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.i0
    public final void a(n7.k kVar) {
        switch (this.f5543a) {
            case 0:
                this.f5544b.a(kVar);
                ((g) this.c).e.a(kVar);
                break;
            default:
                s sVar = (s) this.c;
                sVar.f5569g = kVar;
                if (!sVar.f5568f) {
                    this.f5544b.a(kVar);
                }
                break;
        }
    }
}
