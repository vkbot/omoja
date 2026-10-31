package l9;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class g extends j0 {
    public static final c Companion = new c();
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static g head;
    private static final ReentrantLock lock;
    private boolean inQueue;
    private g next;
    private long timeoutAt;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        conditionNewCondition.getClass();
        condition = conditionNewCondition;
        IDLE_TIMEOUT_MILLIS = 60000L;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Condition access$getCondition$cp() {
        return condition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ g access$getHead$cp() {
        return head;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$getIDLE_TIMEOUT_MILLIS$cp() {
        return IDLE_TIMEOUT_MILLIS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$getIDLE_TIMEOUT_NANOS$cp() {
        return IDLE_TIMEOUT_NANOS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ boolean access$getInQueue$p(g gVar) {
        return gVar.inQueue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ ReentrantLock access$getLock$cp() {
        return lock;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ g access$getNext$p(g gVar) {
        return gVar.next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final long access$remainingNanos(g gVar, long j) {
        return gVar.timeoutAt - j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setHead$cp(g gVar) {
        head = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setInQueue$p(g gVar, boolean z) {
        gVar.inQueue = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setNext$p(g gVar, g gVar2) {
        gVar.next = gVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$setTimeoutAt$p(g gVar, long j) {
        gVar.timeoutAt = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            c cVar = Companion;
            cVar.getClass();
            cVar.getClass();
            ReentrantLock reentrantLockAccess$getLock$cp = access$getLock$cp();
            reentrantLockAccess$getLock$cp.lock();
            try {
                if (access$getInQueue$p(this)) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                access$setInQueue$p(this, true);
                if (access$getHead$cp() == null) {
                    access$setHead$cp(new g());
                    d dVar = new d("Okio Watchdog");
                    dVar.setDaemon(true);
                    dVar.start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    access$setTimeoutAt$p(this, Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime);
                } else if (jTimeoutNanos != 0) {
                    access$setTimeoutAt$p(this, jTimeoutNanos + jNanoTime);
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    access$setTimeoutAt$p(this, deadlineNanoTime());
                }
                long jAccess$remainingNanos = access$remainingNanos(this, jNanoTime);
                g gVarAccess$getHead$cp = access$getHead$cp();
                gVarAccess$getHead$cp.getClass();
                while (access$getNext$p(gVarAccess$getHead$cp) != null) {
                    g gVarAccess$getNext$p = access$getNext$p(gVarAccess$getHead$cp);
                    gVarAccess$getNext$p.getClass();
                    if (jAccess$remainingNanos < access$remainingNanos(gVarAccess$getNext$p, jNanoTime)) {
                        break;
                    }
                    gVarAccess$getHead$cp = access$getNext$p(gVarAccess$getHead$cp);
                    gVarAccess$getHead$cp.getClass();
                }
                access$setNext$p(this, access$getNext$p(gVarAccess$getHead$cp));
                access$setNext$p(gVarAccess$getHead$cp, this);
                if (gVarAccess$getHead$cp == access$getHead$cp()) {
                    Companion.getClass();
                    access$getCondition$cp().signal();
                }
                Unit unit = Unit.INSTANCE;
                reentrantLockAccess$getLock$cp.unlock();
            } catch (Throwable th) {
                reentrantLockAccess$getLock$cp.unlock();
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean exit() {
        c cVar = Companion;
        cVar.getClass();
        cVar.getClass();
        ReentrantLock reentrantLockAccess$getLock$cp = access$getLock$cp();
        reentrantLockAccess$getLock$cp.lock();
        try {
            if (!access$getInQueue$p(this)) {
                return false;
            }
            access$setInQueue$p(this, false);
            for (g gVarAccess$getHead$cp = access$getHead$cp(); gVarAccess$getHead$cp != null; gVarAccess$getHead$cp = access$getNext$p(gVarAccess$getHead$cp)) {
                if (access$getNext$p(gVarAccess$getHead$cp) == this) {
                    access$setNext$p(gVarAccess$getHead$cp, access$getNext$p(this));
                    access$setNext$p(this, null);
                    return false;
                }
            }
            return true;
        } finally {
            reentrantLockAccess$getLock$cp.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e0 sink(e0 e0Var) {
        e0Var.getClass();
        return new e(this, e0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g0 source(g0 g0Var) {
        g0Var.getClass();
        return new f(this, g0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <T> T withTimeout(Function0<? extends T> function0) throws IOException {
        function0.getClass();
        enter();
        try {
            try {
                T t = (T) function0.invoke();
                InlineMarker.finallyStart(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                InlineMarker.finallyEnd(1);
                return t;
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
