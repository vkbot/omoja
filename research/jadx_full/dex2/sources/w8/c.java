package w8;

import a9.q;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import v8.h0;
import v8.y0;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class c extends d {
    private volatile c _immediate;
    public final Handler b;
    public final boolean c;
    public final c d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Handler handler, boolean z) {
        this.b = handler;
        this.c = z;
        this._immediate = z ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, true);
            this._immediate = cVar;
        }
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (this.b.post(runnable)) {
            return;
        }
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        z0 z0Var = (z0) coroutineContext.get(y0.b);
        if (z0Var != null) {
            z0Var.c(cancellationException);
        }
        h0.b.dispatch(coroutineContext, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).b == this.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return System.identityHashCode(this.b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.c && Intrinsics.areEqual(Looper.myLooper(), this.b.getLooper())) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final String toString() {
        c cVar;
        String str;
        c9.d dVar = h0.a;
        c cVar2 = q.a;
        if (this == cVar2) {
            str = "Dispatchers.Main";
        } else {
            try {
                cVar = cVar2.d;
            } catch (UnsupportedOperationException unused) {
                cVar = null;
            }
            str = this == cVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.b.toString();
        return this.c ? ai.onnxruntime.a.C(string, ".immediate") : string;
    }
}
