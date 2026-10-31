package p157o7;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: renamed from: o7.h2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2644h2 extends WeakReference {

    /* JADX INFO: renamed from: f */
    public static final boolean f7499f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));

    /* JADX INFO: renamed from: g */
    public static final RuntimeException f7500g;

    /* JADX INFO: renamed from: a */
    public final ReferenceQueue f7501a;

    /* JADX INFO: renamed from: b */
    public final ConcurrentMap f7502b;

    /* JADX INFO: renamed from: c */
    public final String f7503c;

    /* JADX INFO: renamed from: d */
    public final SoftReference f7504d;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f7505e;

    static {
        RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
        runtimeException.setStackTrace(new StackTraceElement[0]);
        f7500g = runtimeException;
    }

    public C2644h2(C2650i2 c2650i2, C2632f2 c2632f2, ReferenceQueue referenceQueue, ConcurrentMap concurrentMap) {
        super(c2650i2, referenceQueue);
        this.f7505e = new AtomicBoolean();
        this.f7504d = new SoftReference(f7499f ? new RuntimeException("ManagedChannel allocation site") : f7500g);
        this.f7503c = c2632f2.toString();
        this.f7501a = referenceQueue;
        this.f7502b = concurrentMap;
        concurrentMap.put(this, this);
        m4164a(referenceQueue);
    }

    /* JADX INFO: renamed from: a */
    public static void m4164a(ReferenceQueue referenceQueue) {
        while (true) {
            C2644h2 c2644h2 = (C2644h2) referenceQueue.poll();
            if (c2644h2 == null) {
                return;
            }
            SoftReference softReference = c2644h2.f7504d;
            RuntimeException runtimeException = (RuntimeException) softReference.get();
            super.clear();
            c2644h2.f7502b.remove(c2644h2);
            softReference.clear();
            if (!c2644h2.f7505e.get()) {
                Level level = Level.SEVERE;
                Logger logger = C2650i2.f7523d;
                if (logger.isLoggable(level)) {
                    LogRecord logRecord = new LogRecord(level, "*~*~*~ Previous channel {0} was garbage collected without being shut down! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow()");
                    logRecord.setLoggerName(logger.getName());
                    logRecord.setParameters(new Object[]{c2644h2.f7503c});
                    logRecord.setThrown(runtimeException);
                    logger.log(logRecord);
                }
            }
        }
    }

    @Override // java.lang.ref.Reference
    public final void clear() {
        super.clear();
        this.f7502b.remove(this);
        this.f7504d.clear();
        m4164a(this.f7501a);
    }
}
