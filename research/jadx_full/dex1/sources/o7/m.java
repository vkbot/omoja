package o7;

import java.text.MessageFormat;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f4342b;
    public final u2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(o oVar, u2 u2Var) {
        this.f4342b = oVar;
        o4.b.i(u2Var, "time");
        this.c = u2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Level F(int i9) {
        int iC = com.bumptech.glide.g.c(i9);
        if (iC != 1) {
            return (iC == 2 || iC == 3) ? Level.FINE : Level.FINEST;
        }
        return Level.FINER;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean E(int i9) {
        if (i9 == 1) {
            return false;
        }
        synchronized (this.f4342b.f4356a) {
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void m(int i9, String str) {
        n7.v vVar;
        o oVar = this.f4342b;
        n7.a0 a0Var = oVar.f4357b;
        Level levelF = F(i9);
        if (o.c.isLoggable(levelF)) {
            o.a(a0Var, levelF, str);
        }
        if (!E(i9) || i9 == 1) {
            return;
        }
        int iC = com.bumptech.glide.g.c(i9);
        if (iC != 2) {
            vVar = iC != 3 ? n7.v.f3976b : n7.v.d;
        } else {
            vVar = n7.v.c;
        }
        n7.v vVar2 = vVar;
        long jQ = this.c.q();
        o4.b.i(str, "description");
        new n7.w(str, vVar2, jQ, null);
        synchronized (oVar.f4356a) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void n(int i9, String str, Object... objArr) {
        m(i9, (E(i9) || o.c.isLoggable(F(i9))) ? MessageFormat.format(str, objArr) : null);
    }
}
