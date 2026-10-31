package o7;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h2 extends WeakReference {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f4269f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final RuntimeException f4270g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReferenceQueue f4271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentMap f4272b;
    public final String c;
    public final SoftReference d;
    public final AtomicBoolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
        runtimeException.setStackTrace(new StackTraceElement[0]);
        f4270g = runtimeException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h2(i2 i2Var, f2 f2Var, ReferenceQueue referenceQueue, ConcurrentMap concurrentMap) {
        super(i2Var, referenceQueue);
        this.e = new AtomicBoolean();
        this.d = new SoftReference(f4269f ? new RuntimeException("ManagedChannel allocation site") : f4270g);
        this.c = f2Var.toString();
        this.f4271a = referenceQueue;
        this.f4272b = concurrentMap;
        concurrentMap.put(this, this);
        a(referenceQueue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(ReferenceQueue referenceQueue) {
        while (true) {
            h2 h2Var = (h2) referenceQueue.poll();
            if (h2Var == null) {
                return;
            }
            SoftReference softReference = h2Var.d;
            RuntimeException runtimeException = (RuntimeException) softReference.get();
            super.clear();
            h2Var.f4272b.remove(h2Var);
            softReference.clear();
            if (!h2Var.e.get()) {
                Level level = Level.SEVERE;
                Logger logger = i2.d;
                if (logger.isLoggable(level)) {
                    LogRecord logRecord = new LogRecord(level, "*~*~*~ Previous channel {0} was garbage collected without being shut down! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow()");
                    logRecord.setLoggerName(logger.getName());
                    logRecord.setParameters(new Object[]{h2Var.c});
                    logRecord.setThrown(runtimeException);
                    logger.log(logRecord);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.ref.Reference
    public final void clear() {
        super.clear();
        this.f4272b.remove(this);
        this.d.clear();
        a(this.f4271a);
    }
}
