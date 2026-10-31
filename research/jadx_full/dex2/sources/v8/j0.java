package v8;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class j0 implements l1, Function1 {
    public final /* synthetic */ int b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j0(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Throwable th) {
        switch (this.b) {
            case 0:
                ((y8.o) this.c).dispose();
                break;
            default:
                ((Function1) this.c).invoke(th);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                a((Throwable) obj);
                break;
            default:
                a((Throwable) obj);
                break;
        }
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        switch (this.b) {
            case 0:
                return "DisposeOnCancel[" + ((y8.o) this.c) + ']';
            default:
                return "InvokeOnCancel[" + ((Function1) this.c).getClass().getSimpleName() + '@' + a0.a(this) + ']';
        }
    }
}
