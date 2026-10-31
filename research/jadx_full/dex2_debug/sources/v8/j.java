package v8;

import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class j {
    public final Object a;
    public final j0 b;
    public final Function1 c;
    public final Object d;
    public final Throwable e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(Object obj, j0 j0Var, Function1 function1, CancellationException cancellationException, int i) {
        this(obj, (i & 2) != 0 ? null : j0Var, (i & 4) != 0 ? null : function1, (Object) null, (i & 16) != 0 ? null : cancellationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j a(j jVar, j0 j0Var, CancellationException cancellationException, int i) {
        Object obj = jVar.a;
        if ((i & 2) != 0) {
            j0Var = jVar.b;
        }
        j0 j0Var2 = j0Var;
        Function1 function1 = jVar.c;
        Object obj2 = jVar.d;
        Throwable th = cancellationException;
        if ((i & 16) != 0) {
            th = jVar.e;
        }
        return new j(obj, j0Var2, function1, obj2, th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return Intrinsics.areEqual(this.a, jVar.a) && Intrinsics.areEqual(this.b, jVar.b) && Intrinsics.areEqual(this.c, jVar.c) && Intrinsics.areEqual(this.d, jVar.d) && Intrinsics.areEqual(this.e, jVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        j0 j0Var = this.b;
        int iHashCode2 = (iHashCode + (j0Var == null ? 0 : j0Var.hashCode())) * 31;
        Function1 function1 = this.c;
        int iHashCode3 = (iHashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public j(Object obj, j0 j0Var, Function1 function1, Object obj2, Throwable th) {
        this.a = obj;
        this.b = j0Var;
        this.c = function1;
        this.d = obj2;
        this.e = th;
    }
}
