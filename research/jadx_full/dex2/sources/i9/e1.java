package i9;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class e1 extends Lambda implements Function0 {
    public final /* synthetic */ int b;
    public final /* synthetic */ f1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e1(f1 f1Var, int i) {
        super(0);
        this.b = i;
        this.c = f1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke() {
        int i = this.b;
        f1 f1Var = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(d1.e(f1Var, (g9.e[]) f1Var.j.getValue()));
            case 1:
                i0 i0Var = f1Var.b;
                return i0Var != null ? new e9.b[]{i0Var.a} : d1.b;
            default:
                return d1.c(f1Var.b != null ? new ArrayList(0) : null);
        }
    }
}
