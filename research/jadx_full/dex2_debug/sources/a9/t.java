package a9;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class t extends v8.a implements CoroutineStackFrame {
    public final Continuation e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(Continuation continuation, CoroutineContext coroutineContext) {
        super(coroutineContext, true);
        this.e = continuation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final boolean A() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineStackFrame getCallerFrame() {
        CoroutineStackFrame coroutineStackFrame = this.e;
        if (coroutineStackFrame instanceof CoroutineStackFrame) {
            return coroutineStackFrame;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public void i(Object obj) {
        a.g(v8.m.a(obj), IntrinsicsKt.intercepted(this.e));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public void j(Object obj) {
        this.e.resumeWith(v8.m.a(obj));
    }
}
