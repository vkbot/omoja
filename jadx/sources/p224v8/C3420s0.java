package p224v8;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0039c;

/* JADX INFO: renamed from: v8.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3420s0 extends AbstractC3417r0 implements InterfaceC3375d0 {

    /* JADX INFO: renamed from: b */
    public final Executor f9907b;

    public C3420s0(Executor executor) {
        Method method;
        this.f9907b = executor;
        Method method2 = AbstractC0039c.f110a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = AbstractC0039c.f110a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f9907b;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        try {
            this.f9907b.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) coroutineContext.get(C3437y0.f9916b);
            if (interfaceC3439z0 != null) {
                interfaceC3439z0.mo5330c(cancellationException);
            }
            AbstractC3387h0.f9880b.dispatch(coroutineContext, runnable);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3420s0) && ((C3420s0) obj).f9907b == this.f9907b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f9907b);
    }

    @Override // p224v8.AbstractC3422t
    public final String toString() {
        return this.f9907b.toString();
    }
}
