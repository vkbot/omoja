package x7;

import i8.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements z7.a, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f6041b;
    public final j c;
    public Thread d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(p pVar, j jVar) {
        this.f6041b = pVar;
        this.c = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.d == Thread.currentThread()) {
            j jVar = this.c;
            if (jVar instanceof m8.j) {
                m8.j jVar2 = (m8.j) jVar;
                if (jVar2.c) {
                    return;
                }
                jVar2.c = true;
                jVar2.f3716b.shutdown();
                return;
            }
        }
        this.c.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        this.d = Thread.currentThread();
        try {
            this.f6041b.run();
        } finally {
            dispose();
            this.d = null;
        }
    }
}
