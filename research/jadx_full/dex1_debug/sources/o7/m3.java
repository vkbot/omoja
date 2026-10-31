package o7;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4345b;
    public final /* synthetic */ n3 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m3(n3 n3Var, int i9) {
        this.f4345b = i9;
        this.c = n3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4345b) {
            case 0:
                n3 n3Var = this.c;
                if (!n3Var.f4352f) {
                    n3Var.f4353g = null;
                } else {
                    long jA = n3Var.e - n3Var.d.a();
                    if (jA <= 0) {
                        n3Var.f4352f = false;
                        n3Var.f4353g = null;
                        n3Var.c.run();
                    } else {
                        n3Var.f4353g = n3Var.f4350a.schedule(new m3(n3Var, 1), jA, TimeUnit.NANOSECONDS);
                    }
                }
                break;
            default:
                n3 n3Var2 = this.c;
                n3Var2.f4351b.execute(new m3(n3Var2, 0));
                break;
        }
    }
}
