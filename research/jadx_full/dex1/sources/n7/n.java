package n7;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f3958a = Logger.getLogger(n.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n f3959b = new n();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n b() {
        ((l1) l.f3952a).getClass();
        n nVar = (n) l1.f3956b.get();
        n nVar2 = f3959b;
        if (nVar == null) {
            nVar = nVar2;
        }
        return nVar == null ? nVar2 : nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n a() {
        ((l1) l.f3952a).getClass();
        ThreadLocal threadLocal = l1.f3956b;
        n nVar = (n) threadLocal.get();
        n nVar2 = f3959b;
        if (nVar == null) {
            nVar = nVar2;
        }
        threadLocal.set(this);
        return nVar == null ? nVar2 : nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(n nVar) {
        if (nVar == null) {
            n0.b.n("toAttach");
            return;
        }
        l1 l1Var = (l1) l.f3952a;
        ThreadLocal threadLocal = l1.f3956b;
        l1Var.getClass();
        n nVar2 = (n) threadLocal.get();
        n nVar3 = f3959b;
        if (nVar2 == null) {
            nVar2 = nVar3;
        }
        if (nVar2 != this) {
            l1.f3955a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (nVar != nVar3) {
            threadLocal.set(nVar);
        } else {
            threadLocal.set(null);
        }
    }
}
