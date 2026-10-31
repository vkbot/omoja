package l;

import c0.p;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f3244a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int i9) {
        switch (i9) {
            case 1:
                char[] cArr = p.f411a;
                this.f3244a = new ArrayDeque(0);
                break;
            default:
                this.f3244a = new ArrayDeque();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void a(g.c cVar) {
        cVar.f2314b = null;
        cVar.c = null;
        this.f3244a.offer(cVar);
    }
}
