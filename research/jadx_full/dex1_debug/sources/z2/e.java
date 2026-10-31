package z2;

import a9.i;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f6195b;
    public final Object d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6194a = 0;
    public final Object c = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Executor executor, a aVar) {
        this.f6195b = executor;
        this.d = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z2.f
    public final void a(o7.a aVar) {
        switch (this.f6194a) {
            case 0:
                if (aVar.e()) {
                    return;
                }
                synchronized (this.c) {
                    break;
                }
                this.f6195b.execute(new i(3, this, aVar));
                return;
            default:
                if (aVar.e()) {
                    synchronized (this.c) {
                        break;
                    }
                    this.f6195b.execute(new i(4, this, aVar));
                    return;
                }
                return;
        }
    }

    public e(Executor executor, b bVar) {
        this.f6195b = executor;
        this.d = bVar;
    }
}
