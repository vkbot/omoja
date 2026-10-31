package p157o7;

import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.o3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2687o3 implements Thread.UncaughtExceptionHandler {
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        throw C2508f1.m3929e(th).m3934h("Uncaught exception in the SynchronizationContext. Re-thrown.").m3930a();
    }
}
