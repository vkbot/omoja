package p171p8;

import java.util.concurrent.atomic.AtomicReference;
import p009a8.C0031c;

/* JADX INFO: renamed from: p8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3002d {

    /* JADX INFO: renamed from: a */
    public static final C3001c f8445a = new C3001c("No further exceptions");

    /* JADX INFO: renamed from: a */
    public static boolean m4813a(AtomicReference atomicReference, Throwable th) {
        while (true) {
            Throwable th2 = (Throwable) atomicReference.get();
            if (th2 == f8445a) {
                return false;
            }
            Throwable c0031c = th2 == null ? th : new C0031c(th2, th);
            while (!atomicReference.compareAndSet(th2, c0031c)) {
                if (atomicReference.get() != th2) {
                }
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: b */
    public static Throwable m4814b(AtomicReference atomicReference) {
        Throwable th = (Throwable) atomicReference.get();
        C3001c c3001c = f8445a;
        return th != c3001c ? (Throwable) atomicReference.getAndSet(c3001c) : th;
    }

    /* JADX INFO: renamed from: c */
    public static RuntimeException m4815c(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }
}
