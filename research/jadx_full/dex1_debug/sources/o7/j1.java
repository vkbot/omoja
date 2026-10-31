package o7;

import java.text.MessageFormat;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j1 extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n7.a0 f4287b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void m(int i9, String str) {
        n7.a0 a0Var = this.f4287b;
        Level levelF = m.F(i9);
        if (o.c.isLoggable(levelF)) {
            o.a(a0Var, levelF, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void n(int i9, String str, Object... objArr) {
        n7.a0 a0Var = this.f4287b;
        Level levelF = m.F(i9);
        if (o.c.isLoggable(levelF)) {
            o.a(a0Var, levelF, MessageFormat.format(str, objArr));
        }
    }
}
