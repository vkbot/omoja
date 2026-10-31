package m4;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class m implements o {
    public static final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f3659f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final com.bumptech.glide.c f3660g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f3661h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f3662b;
    public volatile d c;
    public volatile l d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        boolean z8;
        Throwable th;
        com.bumptech.glide.c fVar;
        try {
            z8 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z8 = false;
        }
        e = z8;
        f3659f = Logger.getLogger(m.class.getName());
        Throwable th2 = null;
        try {
            fVar = new k();
            th = null;
        } catch (Error | RuntimeException e6) {
            th = e6;
            try {
                fVar = new e(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(m.class, l.class, "d"), AtomicReferenceFieldUpdater.newUpdater(m.class, d.class, "c"), AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "b"));
            } catch (Error | RuntimeException e9) {
                th2 = e9;
                fVar = new f();
            }
        }
        f3660g = fVar;
        if (th2 != null) {
            Logger logger = f3659f;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        f3661h = new Object();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(m mVar, boolean z8) {
        for (l lVarL = f3660g.l(mVar); lVarL != null; lVarL = lVarL.f3658b) {
            Thread thread = lVarL.f3657a;
            if (thread != null) {
                lVarL.f3657a = null;
                LockSupport.unpark(thread);
            }
        }
        if (z8) {
            mVar.g();
        }
        d dVarK = f3660g.k(mVar);
        d dVar = null;
        while (dVarK != null) {
            d dVar2 = dVarK.c;
            dVarK.c = dVar;
            dVar = dVarK;
            dVarK = dVar2;
        }
        while (dVar != null) {
            d dVar3 = dVar.c;
            Runnable runnable = dVar.f3650a;
            Objects.requireNonNull(runnable);
            Executor executor = dVar.f3651b;
            Objects.requireNonNull(executor);
            d(runnable, executor);
            dVar = dVar3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e6) {
            f3659f.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object e(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            Throwable th = ((a) obj).f3648a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f3649a);
        }
        if (obj == f3661h) {
            return null;
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object f(m mVar) {
        Object obj;
        boolean z8 = false;
        while (true) {
            try {
                obj = mVar.get();
                break;
            } catch (InterruptedException unused) {
                z8 = true;
            } catch (Throwable th) {
                if (z8) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z8) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(StringBuilder sb) {
        try {
            Object objF = f(this);
            sb.append("SUCCESS, result=[");
            b(sb, objF);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e6) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e6.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e9) {
            sb.append("FAILURE, cause=[");
            sb.append(e9.getCause());
            sb.append("]");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m4.o
    public final void addListener(Runnable runnable, Executor executor) {
        d dVar;
        d dVar2 = d.d;
        o4.b.i(executor, "Executor was null.");
        if (!isDone() && (dVar = this.c) != dVar2) {
            d dVar3 = new d(runnable, executor);
            do {
                dVar3.c = dVar;
                if (f3660g.c(this, dVar, dVar3)) {
                    return;
                } else {
                    dVar = this.c;
                }
            } while (dVar != dVar2);
        }
        d(runnable, executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z8) {
        a aVar;
        Object obj = this.f3662b;
        if (obj != null) {
            return false;
        }
        if (e) {
            aVar = new a(z8, new CancellationException("Future.cancel() was called."));
        } else {
            aVar = z8 ? a.f3647b : a.c;
            Objects.requireNonNull(aVar);
        }
        if (!f3660g.d(this, obj, aVar)) {
            return false;
        }
        c(this, z8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final Object get(long j9, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long j10;
        l lVar = l.c;
        long nanos = timeUnit.toNanos(j9);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f3662b;
        if (obj != null) {
            return e(obj);
        }
        long j11 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar2 = this.d;
            if (lVar2 != lVar) {
                l lVar3 = new l();
                while (true) {
                    com.bumptech.glide.c cVar = f3660g;
                    cVar.q(lVar3, lVar2);
                    if (cVar.e(this, lVar2, lVar3)) {
                        j10 = j11;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                i(lVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f3662b;
                            if (obj2 != null) {
                                return e(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        i(lVar3);
                        break;
                    }
                    long j12 = j11;
                    lVar2 = this.d;
                    if (lVar2 != lVar) {
                        j11 = j12;
                    }
                }
            }
            Object obj3 = this.f3662b;
            Objects.requireNonNull(obj3);
            return e(obj3);
        }
        j10 = 0;
        while (nanos > j10) {
            Object obj4 = this.f3662b;
            if (obj4 != null) {
                return e(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strConcat = "Waited " + j9 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < j10) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j13 = -nanos;
            long jConvert = timeUnit.convert(j13, TimeUnit.NANOSECONDS);
            long nanos2 = j13 - timeUnit.toNanos(jConvert);
            boolean z8 = jConvert == j10 || nanos2 > 1000;
            if (jConvert > j10) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z8) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z8) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(ai.onnxruntime.a.D(strConcat, " for ", string));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: m4.m */
    /* JADX WARN: Multi-variable type inference failed */
    public String h() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(l lVar) {
        lVar.f3657a = null;
        while (true) {
            l lVar2 = this.d;
            if (lVar2 == l.c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f3658b;
                if (lVar2.f3657a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f3658b = lVar4;
                    if (lVar3.f3657a == null) {
                    }
                } else if (!f3660g.e(this, lVar2, lVar4)) {
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f3662b instanceof a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f3662b != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String strH;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f3662b instanceof a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            try {
                strH = h();
                if (i4.d.a(strH)) {
                    strH = null;
                }
            } catch (RuntimeException | StackOverflowError e6) {
                strH = "Exception thrown from implementation: " + e6.getClass();
            }
            if (strH != null) {
                sb.append(", info=[");
                sb.append(strH);
                sb.append("]");
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void g() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        l lVar = l.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f3662b;
            if (obj2 != null) {
                return e(obj2);
            }
            l lVar2 = this.d;
            if (lVar2 != lVar) {
                l lVar3 = new l();
                do {
                    com.bumptech.glide.c cVar = f3660g;
                    cVar.q(lVar3, lVar2);
                    if (cVar.e(this, lVar2, lVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f3662b;
                            } else {
                                i(lVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return e(obj);
                    }
                    lVar2 = this.d;
                } while (lVar2 != lVar);
            }
            Object obj3 = this.f3662b;
            Objects.requireNonNull(obj3);
            return e(obj3);
        }
        throw new InterruptedException();
    }
}
