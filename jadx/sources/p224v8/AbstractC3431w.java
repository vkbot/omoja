package p224v8;

import kotlin.ExceptionsKt;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0035a;
import p233w8.C3539b;

/* JADX INFO: renamed from: v8.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3431w {
    /* JADX INFO: renamed from: a */
    public static final void m5357a(Throwable th, CoroutineContext coroutineContext) {
        try {
            InterfaceC3428v interfaceC3428v = (InterfaceC3428v) coroutineContext.get(C3425u.f9911b);
            if (interfaceC3428v != null) {
                ((C3539b) interfaceC3428v).m5652y(th);
            } else {
                AbstractC0035a.m96c(th, coroutineContext);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                ExceptionsKt.addSuppressed(runtimeException, th);
                th = runtimeException;
            }
            AbstractC0035a.m96c(th, coroutineContext);
        }
    }
}
