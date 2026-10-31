package k;

import c0.p;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import n.c0;
import n.r;
import n.s;
import n.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3128b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9) {
        switch (i9) {
            case 2:
                this.f3128b = Collections.newSetFromMap(new IdentityHashMap());
                break;
            default:
                char[] cArr = p.f411a;
                this.f3128b = new ArrayDeque(20);
                break;
        }
    }

    public abstract void a();

    public abstract void b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(i iVar) {
        ArrayDeque arrayDeque = (ArrayDeque) this.f3128b;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(iVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(Object obj, boolean z8) {
        Set set = (Set) this.f3128b;
        int size = set.size();
        if (z8) {
            set.add(obj);
            if (size == 0) {
                a();
                return;
            }
            return;
        }
        if (set.remove(obj) && size == 1) {
            b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        return new n.c(2, (c0) this.f3128b);
    }

    public a(c0 c0Var) {
        this.f3128b = c0Var;
    }
}
