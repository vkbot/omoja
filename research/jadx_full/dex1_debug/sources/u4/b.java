package u4;

import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5460b;
    public final /* synthetic */ Runnable c;
    public final /* synthetic */ p d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(Runnable runnable, p pVar, int i9) {
        this.f5460b = i9;
        this.c = runnable;
        this.d = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() throws Exception {
        switch (this.f5460b) {
            case 0:
                try {
                    this.c.run();
                    return;
                } catch (Exception e) {
                    ((h) this.d.c).setException(e);
                    throw e;
                }
            case 1:
                try {
                    this.c.run();
                    return;
                } catch (Exception e6) {
                    ((h) this.d.c).setException(e6);
                    return;
                }
            default:
                Runnable runnable = this.c;
                h hVar = (h) this.d.c;
                try {
                    runnable.run();
                    hVar.set(null);
                    return;
                } catch (Exception e9) {
                    hVar.setException(e9);
                    return;
                }
        }
    }
}
