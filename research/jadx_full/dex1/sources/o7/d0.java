package o7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class d0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4181b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d0(int i9, Object obj) {
        this.f4181b = i9;
        this.c = obj;
    }

    public abstract void a();

    public abstract void b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4181b) {
            case 0:
                n7.n nVar = (n7.n) this.c;
                n7.n nVarA = nVar.a();
                try {
                    b();
                    return;
                } finally {
                    nVar.c(nVarA);
                }
            default:
                p7.c cVar = (p7.c) this.c;
                try {
                    if (cVar.f4613j == null) {
                        throw new IOException("Unable to perform write due to unavailable sink.");
                    }
                    a();
                    return;
                } catch (Exception e) {
                    cVar.e.n(e);
                    return;
                }
        }
    }
}
