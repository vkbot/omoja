package v8;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b0 extends n0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final b0 h;
    public static final long i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Long l;
        b0 b0Var = new b0();
        h = b0Var;
        b0Var.S(false);
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        i = TimeUnit.MILLISECONDS.toNanos(l.longValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.o0
    public final Thread c0() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "v8.b0");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.n0
    public final void d0(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.d0(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g0() {
        int i2 = debugStatus;
        if (i2 == 2 || i2 == 3) {
            debugStatus = 3;
            n0.e.set(this, null);
            n0.f.set(this, null);
            notifyAll();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x009c */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Throwable {
        Thread thread;
        q1.a.set(this);
        Thread thread2 = null;
        try {
            synchronized (this) {
                try {
                    try {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            g0();
                            if (e0()) {
                                return;
                            }
                            c0();
                            return;
                        }
                        debugStatus = 1;
                        notifyAll();
                        long j = Long.MAX_VALUE;
                        while (true) {
                            Thread.interrupted();
                            long jF0 = f0();
                            if (jF0 == Long.MAX_VALUE) {
                                long jNanoTime = System.nanoTime();
                                if (j == Long.MAX_VALUE) {
                                    j = i + jNanoTime;
                                }
                                thread = thread2;
                                long j2 = j - jNanoTime;
                                if (j2 <= 0) {
                                    _thread = thread;
                                    g0();
                                    if (e0()) {
                                        return;
                                    }
                                    c0();
                                    return;
                                }
                                jF0 = RangesKt.coerceAtMost(jF0, j2);
                            } else {
                                thread = thread2;
                                j = Long.MAX_VALUE;
                            }
                            if (jF0 > 0) {
                                int i3 = debugStatus;
                                if (i3 == 2 || i3 == 3) {
                                    _thread = thread;
                                    g0();
                                    if (e0()) {
                                        return;
                                    }
                                    c0();
                                    return;
                                }
                                LockSupport.parkNanos(this, jF0);
                            }
                            thread2 = thread;
                        }
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    _thread = null;
                    g0();
                    if (!e0()) {
                        c0();
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.n0, v8.l0
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
