package t4;

import f5.b0;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface b {
    n a(p pVar);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Object b(Class cls) {
        return h(p.a(cls));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default k5.b c(Class cls) {
        return g(p.a(cls));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default n d() {
        return a(p.a(b0.class));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Set e(p pVar) {
        return (Set) f(pVar).get();
    }

    k5.b f(p pVar);

    k5.b g(p pVar);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Object h(p pVar) {
        k5.b bVarG = g(pVar);
        if (bVarG == null) {
            return null;
        }
        return bVarG.get();
    }
}
