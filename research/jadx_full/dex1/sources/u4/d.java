package u4;

import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5464b;
    public final /* synthetic */ f c;
    public final /* synthetic */ Runnable d;
    public final /* synthetic */ p e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(f fVar, Runnable runnable, p pVar, int i9) {
        this.f5464b = i9;
        this.c = fVar;
        this.d = runnable;
        this.e = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5464b) {
            case 0:
                this.c.f5466b.execute(new b(this.d, this.e, 0));
                break;
            case 1:
                this.c.f5466b.execute(new b(this.d, this.e, 2));
                break;
            default:
                this.c.f5466b.execute(new b(this.d, this.e, 1));
                break;
        }
    }
}
