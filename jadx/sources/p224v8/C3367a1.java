package p224v8;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: v8.a1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3367a1 extends CancellationException {

    /* JADX INFO: renamed from: b */
    public final transient InterfaceC3439z0 f9850b;

    public C3367a1(String str, Throwable th, C3388h1 c3388h1) {
        super(str);
        this.f9850b = c3388h1;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3367a1)) {
            return false;
        }
        C3367a1 c3367a1 = (C3367a1) obj;
        return Intrinsics.areEqual(c3367a1.getMessage(), getMessage()) && Intrinsics.areEqual(c3367a1.f9850b, this.f9850b) && Intrinsics.areEqual(c3367a1.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        message.getClass();
        int iHashCode = (this.f9850b.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f9850b;
    }
}
