package p130l9;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: renamed from: l9.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C2233g extends C2240j0 {
    public static final C2225c Companion = new C2225c();
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static C2233g head;
    private static final ReentrantLock lock;
    private boolean inQueue;
    private C2233g next;
    private long timeoutAt;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        conditionNewCondition.getClass();
        condition = conditionNewCondition;
        IDLE_TIMEOUT_MILLIS = 60000L;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    public static final long access$remainingNanos(C2233g c2233g, long j10) {
        return c2233g.timeoutAt - j10;
    }

    @PublishedApi
    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            C2225c c2225c = Companion;
            c2225c.getClass();
            c2225c.getClass();
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.inQueue) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.inQueue = true;
                if (head == null) {
                    head = new C2233g();
                    C2227d c2227d = new C2227d("Okio Watchdog");
                    c2227d.setDaemon(true);
                    c2227d.start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    this.timeoutAt = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (jTimeoutNanos != 0) {
                    this.timeoutAt = jTimeoutNanos + jNanoTime;
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    this.timeoutAt = deadlineNanoTime();
                }
                long jAccess$remainingNanos = access$remainingNanos(this, jNanoTime);
                C2233g c2233g = head;
                c2233g.getClass();
                while (c2233g.next != null) {
                    C2233g c2233g2 = c2233g.next;
                    c2233g2.getClass();
                    if (jAccess$remainingNanos < access$remainingNanos(c2233g2, jNanoTime)) {
                        break;
                    }
                    c2233g = c2233g.next;
                    c2233g.getClass();
                }
                this.next = c2233g.next;
                c2233g.next = this;
                if (c2233g == head) {
                    Companion.getClass();
                    condition.signal();
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean exit() {
        C2225c c2225c = Companion;
        c2225c.getClass();
        c2225c.getClass();
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            if (!this.inQueue) {
                return false;
            }
            this.inQueue = false;
            for (C2233g c2233g = head; c2233g != null; c2233g = c2233g.next) {
                if (c2233g.next == this) {
                    c2233g.next = this.next;
                    this.next = null;
                    return false;
                }
            }
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final InterfaceC2230e0 sink(InterfaceC2230e0 interfaceC2230e0) {
        interfaceC2230e0.getClass();
        return new C2229e(this, interfaceC2230e0);
    }

    public final InterfaceC2234g0 source(InterfaceC2234g0 interfaceC2234g0) {
        interfaceC2234g0.getClass();
        return new C2231f(this, interfaceC2234g0);
    }

    public final <T> T withTimeout(Function0<? extends T> function0) throws IOException {
        function0.getClass();
        enter();
        try {
            try {
                T tInvoke = function0.invoke();
                InlineMarker.finallyStart(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                InlineMarker.finallyEnd(1);
                return tInvoke;
            } catch (IOException e) {
                if (exit()) {
                    throw access$newTimeoutException(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            exit();
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }

    public void timedOut() {
    }
}
