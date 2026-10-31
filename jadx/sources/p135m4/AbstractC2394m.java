package p135m4;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1030c;
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
import p091i4.AbstractC1746d;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: m4.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2394m implements InterfaceFutureC2396o {

    /* JADX INFO: renamed from: e */
    public static final boolean f6470e;

    /* JADX INFO: renamed from: f */
    public static final Logger f6471f;

    /* JADX INFO: renamed from: g */
    public static final AbstractC1030c f6472g;

    /* JADX INFO: renamed from: h */
    public static final Object f6473h;

    /* JADX INFO: renamed from: b */
    public volatile Object f6474b;

    /* JADX INFO: renamed from: c */
    public volatile C2385d f6475c;

    /* JADX INFO: renamed from: d */
    public volatile C2393l f6476d;

    static {
        boolean z9;
        Throwable th;
        AbstractC1030c c2387f;
        try {
            z9 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z9 = false;
        }
        f6470e = z9;
        f6471f = Logger.getLogger(AbstractC2394m.class.getName());
        Throwable th2 = null;
        try {
            c2387f = new C2392k();
            th = null;
        } catch (Error | RuntimeException e) {
            th = e;
            try {
                c2387f = new C2386e(AtomicReferenceFieldUpdater.newUpdater(C2393l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C2393l.class, C2393l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2394m.class, C2393l.class, "d"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2394m.class, C2385d.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractC2394m.class, Object.class, "b"));
            } catch (Error | RuntimeException e6) {
                th2 = e6;
                c2387f = new C2387f();
            }
        }
        f6472g = c2387f;
        if (th2 != null) {
            Logger logger = f6471f;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        f6473h = new Object();
    }

    /* JADX INFO: renamed from: c */
    public static void m3753c(AbstractC2394m abstractC2394m, boolean z9) {
        for (C2393l c2393lMo1268l = f6472g.mo1268l(abstractC2394m); c2393lMo1268l != null; c2393lMo1268l = c2393lMo1268l.f6469b) {
            Thread thread = c2393lMo1268l.f6468a;
            if (thread != null) {
                c2393lMo1268l.f6468a = null;
                LockSupport.unpark(thread);
            }
        }
        if (z9) {
            abstractC2394m.mo3759g();
        }
        C2385d c2385dMo1267k = f6472g.mo1267k(abstractC2394m);
        C2385d c2385d = null;
        while (c2385dMo1267k != null) {
            C2385d c2385d2 = c2385dMo1267k.f6455c;
            c2385dMo1267k.f6455c = c2385d;
            c2385d = c2385dMo1267k;
            c2385dMo1267k = c2385d2;
        }
        while (c2385d != null) {
            C2385d c2385d3 = c2385d.f6455c;
            Runnable runnable = c2385d.f6453a;
            Objects.requireNonNull(runnable);
            Executor executor = c2385d.f6454b;
            Objects.requireNonNull(executor);
            m3754d(runnable, executor);
            c2385d = c2385d3;
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m3754d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f6471f.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* JADX INFO: renamed from: e */
    public static Object m3755e(Object obj) throws ExecutionException {
        if (obj instanceof C2382a) {
            Throwable th = ((C2382a) obj).f6450a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof C2384c) {
            throw new ExecutionException(((C2384c) obj).f6451a);
        }
        if (obj == f6473h) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: renamed from: f */
    public static Object m3756f(AbstractC2394m abstractC2394m) {
        Object obj;
        boolean z9 = false;
        while (true) {
            try {
                obj = abstractC2394m.get();
                break;
            } catch (InterruptedException unused) {
                z9 = true;
            } catch (Throwable th) {
                if (z9) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    /* JADX INFO: renamed from: a */
    public final void m3757a(StringBuilder sb) {
        try {
            Object objM3756f = m3756f(this);
            sb.append("SUCCESS, result=[");
            m3758b(sb, objM3756f);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e6) {
            sb.append("FAILURE, cause=[");
            sb.append(e6.getCause());
            sb.append("]");
        }
    }

    @Override // p135m4.InterfaceFutureC2396o
    public final void addListener(Runnable runnable, Executor executor) {
        C2385d c2385d;
        C2385d c2385d2 = C2385d.f6452d;
        AbstractC2587b.m4042i(executor, "Executor was null.");
        if (!isDone() && (c2385d = this.f6475c) != c2385d2) {
            C2385d c2385d3 = new C2385d(runnable, executor);
            do {
                c2385d3.f6455c = c2385d;
                if (f6472g.mo1264c(this, c2385d, c2385d3)) {
                    return;
                } else {
                    c2385d = this.f6475c;
                }
            } while (c2385d != c2385d2);
        }
        m3754d(runnable, executor);
    }

    /* JADX INFO: renamed from: b */
    public final void m3758b(StringBuilder sb, Object obj) {
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

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z9) {
        C2382a c2382a;
        Object obj = this.f6474b;
        if (obj != null) {
            return false;
        }
        if (f6470e) {
            c2382a = new C2382a(z9, new CancellationException("Future.cancel() was called."));
        } else {
            c2382a = z9 ? C2382a.f6448b : C2382a.f6449c;
            Objects.requireNonNull(c2382a);
        }
        if (!f6472g.mo1265d(this, obj, c2382a)) {
            return false;
        }
        m3753c(this, z9);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long j11;
        C2393l c2393l = C2393l.f6467c;
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f6474b;
        if (obj != null) {
            return m3755e(obj);
        }
        long j12 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            C2393l c2393l2 = this.f6476d;
            if (c2393l2 != c2393l) {
                C2393l c2393l3 = new C2393l();
                while (true) {
                    AbstractC1030c abstractC1030c = f6472g;
                    abstractC1030c.mo1269q(c2393l3, c2393l2);
                    if (abstractC1030c.mo1266e(this, c2393l2, c2393l3)) {
                        j11 = j12;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                m3761i(c2393l3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f6474b;
                            if (obj2 != null) {
                                return m3755e(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        m3761i(c2393l3);
                        break;
                    }
                    long j13 = j12;
                    c2393l2 = this.f6476d;
                    if (c2393l2 != c2393l) {
                        j12 = j13;
                    }
                }
            }
            Object obj3 = this.f6474b;
            Objects.requireNonNull(obj3);
            return m3755e(obj3);
        }
        j11 = 0;
        while (nanos > j11) {
            Object obj4 = this.f6474b;
            if (obj4 != null) {
                return m3755e(obj4);
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
        String strConcat = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < j11) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j14 = -nanos;
            long jConvert = timeUnit.convert(j14, TimeUnit.NANOSECONDS);
            long nanos2 = j14 - timeUnit.toNanos(jConvert);
            boolean z9 = jConvert == j11 || nanos2 > 1000;
            if (jConvert > j11) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z9) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z9) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(AbstractC0074a.m149D(strConcat, " for ", string));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: h */
    public String mo3760h() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX INFO: renamed from: i */
    public final void m3761i(C2393l c2393l) {
        c2393l.f6468a = null;
        while (true) {
            C2393l c2393l2 = this.f6476d;
            if (c2393l2 == C2393l.f6467c) {
                return;
            }
            C2393l c2393l3 = null;
            while (c2393l2 != null) {
                C2393l c2393l4 = c2393l2.f6469b;
                if (c2393l2.f6468a != null) {
                    c2393l3 = c2393l2;
                } else if (c2393l3 != null) {
                    c2393l3.f6469b = c2393l4;
                    if (c2393l3.f6468a == null) {
                    }
                } else if (!f6472g.mo1266e(this, c2393l2, c2393l4)) {
                }
                c2393l2 = c2393l4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f6474b instanceof C2382a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f6474b != null;
    }

    public final String toString() {
        String strMo3760h;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f6474b instanceof C2382a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m3757a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            try {
                strMo3760h = mo3760h();
                if (AbstractC1746d.m2871a(strMo3760h)) {
                    strMo3760h = null;
                }
            } catch (RuntimeException | StackOverflowError e) {
                strMo3760h = "Exception thrown from implementation: " + e.getClass();
            }
            if (strMo3760h != null) {
                sb.append(", info=[");
                sb.append(strMo3760h);
                sb.append("]");
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                m3757a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: renamed from: g */
    public void mo3759g() {
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        C2393l c2393l = C2393l.f6467c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f6474b;
            if (obj2 != null) {
                return m3755e(obj2);
            }
            C2393l c2393l2 = this.f6476d;
            if (c2393l2 != c2393l) {
                C2393l c2393l3 = new C2393l();
                do {
                    AbstractC1030c abstractC1030c = f6472g;
                    abstractC1030c.mo1269q(c2393l3, c2393l2);
                    if (abstractC1030c.mo1266e(this, c2393l2, c2393l3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f6474b;
                            } else {
                                m3761i(c2393l3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return m3755e(obj);
                    }
                    c2393l2 = this.f6476d;
                } while (c2393l2 != c2393l);
            }
            Object obj3 = this.f6474b;
            Objects.requireNonNull(obj3);
            return m3755e(obj3);
        }
        throw new InterruptedException();
    }
}
