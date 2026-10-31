package p130l9;

import ai.onnxruntime.AbstractC0074a;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import p099j1.C1929i;

/* JADX INFO: renamed from: l9.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C2240j0 {
    public static final C2238i0 Companion = new C2238i0();

    @JvmField
    public static final C2240j0 NONE = new C2236h0();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public final void awaitSignal(Condition condition) throws InterruptedIOException {
        condition.getClass();
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                condition.await();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                condition.await(jTimeoutNanos, TimeUnit.NANOSECONDS);
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public C2240j0 clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public C2240j0 clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final C2240j0 deadline(long j10, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (j10 > 0) {
            return deadlineNanoTime(timeUnit.toNanos(j10) + System.nanoTime());
        }
        C2237i.m3597d(AbstractC0074a.m157h(j10, "duration <= 0: "));
        return null;
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        C1929i.m3030l("No deadline");
        return 0L;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final <T> T intersectWith(C2240j0 c2240j0, Function0<? extends T> function0) {
        c2240j0.getClass();
        function0.getClass();
        long jTimeoutNanos = timeoutNanos();
        C2238i0 c2238i0 = Companion;
        long jTimeoutNanos2 = c2240j0.timeoutNanos();
        long jTimeoutNanos3 = timeoutNanos();
        c2238i0.getClass();
        if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
            jTimeoutNanos2 = jTimeoutNanos3;
        }
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(jTimeoutNanos2, timeUnit);
        if (!hasDeadline()) {
            if (c2240j0.hasDeadline()) {
                deadlineNanoTime(c2240j0.deadlineNanoTime());
            }
            try {
                return function0.invoke();
            } finally {
                InlineMarker.finallyStart(1);
                timeout(jTimeoutNanos, timeUnit);
                if (c2240j0.hasDeadline()) {
                    clearDeadline();
                }
                InlineMarker.finallyEnd(1);
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (c2240j0.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), c2240j0.deadlineNanoTime()));
        }
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            timeout(jTimeoutNanos, timeUnit);
            if (c2240j0.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public void throwIfReached() {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public C2240j0 timeout(long j10, TimeUnit timeUnit) {
        timeUnit.getClass();
        if (j10 >= 0) {
            this.timeoutNanos = timeUnit.toNanos(j10);
            return this;
        }
        C2237i.m3597d(AbstractC0074a.m157h(j10, "timeout < 0: "));
        return null;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        obj.getClass();
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j10 = jTimeoutNanos / 1000000;
                obj.wait(j10, (int) (jTimeoutNanos - (1000000 * j10)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public C2240j0 deadlineNanoTime(long j10) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j10;
        return this;
    }
}
