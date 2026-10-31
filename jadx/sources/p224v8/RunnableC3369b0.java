package p224v8;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: v8.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC3369b0 extends AbstractC3405n0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: h */
    public static final RunnableC3369b0 f9852h;

    /* JADX INFO: renamed from: i */
    public static final long f9853i;

    static {
        Long l10;
        RunnableC3369b0 runnableC3369b0 = new RunnableC3369b0();
        f9852h = runnableC3369b0;
        runnableC3369b0.m5346S(false);
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f9853i = TimeUnit.MILLISECONDS.toNanos(l10.longValue());
    }

    @Override // p224v8.AbstractC3408o0
    /* JADX INFO: renamed from: c0 */
    public final Thread mo5287c0() {
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

    @Override // p224v8.AbstractC3405n0
    /* JADX INFO: renamed from: d0 */
    public final void mo5288d0(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.mo5288d0(runnable);
    }

    /* JADX INFO: renamed from: g0 */
    public final synchronized void m5289g0() {
        int i10 = debugStatus;
        if (i10 == 2 || i10 == 3) {
            debugStatus = 3;
            AbstractC3405n0.f9899e.set(this, null);
            AbstractC3405n0.f9900f.set(this, null);
            notifyAll();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x009c */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            r18 = this;
            r1 = r18
            java.lang.ThreadLocal r0 = p224v8.AbstractC3415q1.f9904a
            r0.set(r1)
            r2 = 0
            monitor-enter(r18)     // Catch: java.lang.Throwable -> L4f
            int r0 = p224v8.RunnableC3369b0.debugStatus     // Catch: java.lang.Throwable -> L97
            r4 = 3
            r5 = 2
            r6 = 1
            if (r0 == r5) goto L15
            if (r0 != r4) goto L13
            goto L15
        L13:
            r0 = 0
            goto L16
        L15:
            r0 = r6
        L16:
            if (r0 == 0) goto L28
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L4f
            p224v8.RunnableC3369b0._thread = r2
            r1.m5289g0()
            boolean r0 = r1.m5350e0()
            if (r0 != 0) goto L90
            r1.mo5287c0()
            return
        L28:
            p224v8.RunnableC3369b0.debugStatus = r6     // Catch: java.lang.Throwable -> L97
            r1.notifyAll()     // Catch: java.lang.Throwable -> L97
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L4f
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r7
        L34:
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L4f
            long r11 = r1.m5351f0()     // Catch: java.lang.Throwable -> L4f
            int r0 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            r13 = 0
            if (r0 != 0) goto L6f
            long r15 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L4f
            int r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r0 != 0) goto L4c
            long r9 = p224v8.RunnableC3369b0.f9853i     // Catch: java.lang.Throwable -> L4f
            long r9 = r9 + r15
        L4c:
            r17 = r2
            goto L53
        L4f:
            r0 = move-exception
            r17 = r2
            goto L9e
        L53:
            long r2 = r9 - r15
            int r15 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r15 > 0) goto L68
            p224v8.RunnableC3369b0._thread = r17
            r1.m5289g0()
            boolean r0 = r1.m5350e0()
            if (r0 != 0) goto L90
            r1.mo5287c0()
            return
        L68:
            long r11 = kotlin.ranges.RangesKt.coerceAtMost(r11, r2)     // Catch: java.lang.Throwable -> L6d
            goto L72
        L6d:
            r0 = move-exception
            goto L9e
        L6f:
            r17 = r2
            r9 = r7
        L72:
            int r2 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r2 <= 0) goto L94
            int r2 = p224v8.RunnableC3369b0.debugStatus     // Catch: java.lang.Throwable -> L6d
            if (r2 == r5) goto L7f
            if (r2 != r4) goto L7d
            goto L7f
        L7d:
            r2 = 0
            goto L80
        L7f:
            r2 = r6
        L80:
            if (r2 == 0) goto L91
            p224v8.RunnableC3369b0._thread = r17
            r1.m5289g0()
            boolean r0 = r1.m5350e0()
            if (r0 != 0) goto L90
            r1.mo5287c0()
        L90:
            return
        L91:
            java.util.concurrent.locks.LockSupport.parkNanos(r1, r11)     // Catch: java.lang.Throwable -> L6d
        L94:
            r2 = r17
            goto L34
        L97:
            r0 = move-exception
            r17 = r2
        L9a:
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L9c
            throw r0     // Catch: java.lang.Throwable -> L6d
        L9c:
            r0 = move-exception
            goto L9a
        L9e:
            p224v8.RunnableC3369b0._thread = r17
            r1.m5289g0()
            boolean r2 = r1.m5350e0()
            if (r2 != 0) goto Lac
            r1.mo5287c0()
        Lac:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p224v8.RunnableC3369b0.run():void");
    }

    @Override // p224v8.AbstractC3405n0, p224v8.AbstractC3399l0
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
