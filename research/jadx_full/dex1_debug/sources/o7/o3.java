package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o3 implements Thread$UncaughtExceptionHandler {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread$UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        throw n7.f1.e(th).h("Uncaught exception in the SynchronizationContext. Re-thrown.").a();
    }
}
