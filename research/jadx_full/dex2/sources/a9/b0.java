package a9;

import kotlin.coroutines.CoroutineContext;
import v8.p1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class b0 {
    public static final w a = new w("NO_THREAD_ELEMENTS", 0);
    public static final y b = y.b;
    public static final z c = z.b;
    public static final a0 d = a0.b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj == a) {
            return;
        }
        if (!(obj instanceof d0)) {
            coroutineContext.fold((Object) null, c).getClass();
            n0.b.a();
            return;
        }
        p1[] p1VarArr = ((d0) obj).c;
        int length = p1VarArr.length - 1;
        if (length < 0) {
            return;
        }
        p1 p1Var = p1VarArr[length];
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Object b(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = coroutineContext.fold(0, b);
            obj.getClass();
        }
        if (obj == 0) {
            return a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new d0(((Number) obj).intValue(), coroutineContext), d);
        }
        n0.b.a();
        return null;
    }
}
