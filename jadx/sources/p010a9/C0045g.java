package p010a9;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: a9.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0045g extends RuntimeException {

    /* JADX INFO: renamed from: b */
    public final transient CoroutineContext f119b;

    public C0045g(CoroutineContext coroutineContext) {
        this.f119b = coroutineContext;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f119b.toString();
    }
}
