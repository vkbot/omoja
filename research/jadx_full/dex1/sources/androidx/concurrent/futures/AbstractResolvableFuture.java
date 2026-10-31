package androidx.concurrent.futures;

import ai.onnxruntime.a;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import m4.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public abstract class AbstractResolvableFuture<V> implements o {
    static final AbstractResolvableFuture$AtomicHelper ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;

    @Nullable
    volatile AbstractResolvableFuture$Listener listeners;

    @Nullable
    volatile Object value;

    @Nullable
    volatile AbstractResolvableFuture$Waiter waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger log = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        AbstractResolvableFuture$AtomicHelper abstractResolvableFuture$SynchronizedHelper;
        try {
            abstractResolvableFuture$SynchronizedHelper = new AbstractResolvableFuture$SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture$Waiter.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture$Waiter.class, AbstractResolvableFuture$Waiter.class, "next"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, AbstractResolvableFuture$Waiter.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, AbstractResolvableFuture$Listener.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "value"));
            th = null;
        } catch (Throwable th) {
            th = th;
            abstractResolvableFuture$SynchronizedHelper = new AbstractResolvableFuture$SynchronizedHelper();
        }
        ATOMIC_HELPER = abstractResolvableFuture$SynchronizedHelper;
        if (th != null) {
            log.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addDoneString(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            sb.append(userObjectToString(uninterruptibly));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static CancellationException cancellationExceptionWithCause(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T> T checkNotNull(@Nullable T t) {
        t.getClass();
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AbstractResolvableFuture$Listener clearListeners(AbstractResolvableFuture$Listener abstractResolvableFuture$Listener) {
        AbstractResolvableFuture$Listener abstractResolvableFuture$Listener2;
        do {
            abstractResolvableFuture$Listener2 = this.listeners;
        } while (!ATOMIC_HELPER.casListeners(this, abstractResolvableFuture$Listener2, AbstractResolvableFuture$Listener.TOMBSTONE));
        AbstractResolvableFuture$Listener abstractResolvableFuture$Listener3 = abstractResolvableFuture$Listener;
        AbstractResolvableFuture$Listener abstractResolvableFuture$Listener4 = abstractResolvableFuture$Listener2;
        while (abstractResolvableFuture$Listener4 != null) {
            AbstractResolvableFuture$Listener abstractResolvableFuture$Listener5 = abstractResolvableFuture$Listener4.next;
            abstractResolvableFuture$Listener4.next = abstractResolvableFuture$Listener3;
            abstractResolvableFuture$Listener3 = abstractResolvableFuture$Listener4;
            abstractResolvableFuture$Listener4 = abstractResolvableFuture$Listener5;
        }
        return abstractResolvableFuture$Listener3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void complete(AbstractResolvableFuture<?> abstractResolvableFuture) {
        AbstractResolvableFuture$Listener abstractResolvableFuture$Listener = null;
        while (true) {
            abstractResolvableFuture.releaseWaiters();
            abstractResolvableFuture.afterDone();
            AbstractResolvableFuture$Listener abstractResolvableFuture$ListenerClearListeners = abstractResolvableFuture.clearListeners(abstractResolvableFuture$Listener);
            while (abstractResolvableFuture$ListenerClearListeners != null) {
                abstractResolvableFuture$Listener = abstractResolvableFuture$ListenerClearListeners.next;
                Runnable runnable = abstractResolvableFuture$ListenerClearListeners.task;
                if (runnable instanceof AbstractResolvableFuture$SetFuture) {
                    AbstractResolvableFuture$SetFuture abstractResolvableFuture$SetFuture = (AbstractResolvableFuture$SetFuture) runnable;
                    abstractResolvableFuture = abstractResolvableFuture$SetFuture.owner;
                    if (abstractResolvableFuture.value == abstractResolvableFuture$SetFuture) {
                        if (ATOMIC_HELPER.casValue(abstractResolvableFuture, abstractResolvableFuture$SetFuture, getFutureValue(abstractResolvableFuture$SetFuture.future))) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    executeListener(runnable, abstractResolvableFuture$ListenerClearListeners.executor);
                }
                abstractResolvableFuture$ListenerClearListeners = abstractResolvableFuture$Listener;
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private V getDoneValue(Object obj) throws ExecutionException {
        if (obj instanceof AbstractResolvableFuture$Cancellation) {
            throw cancellationExceptionWithCause("Task was cancelled.", ((AbstractResolvableFuture$Cancellation) obj).cause);
        }
        if (obj instanceof AbstractResolvableFuture$Failure) {
            throw new ExecutionException(((AbstractResolvableFuture$Failure) obj).exception);
        }
        if (obj == NULL) {
            return null;
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object getFutureValue(o oVar) {
        if (oVar instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) oVar).value;
            if (!(obj instanceof AbstractResolvableFuture$Cancellation)) {
                return obj;
            }
            AbstractResolvableFuture$Cancellation abstractResolvableFuture$Cancellation = (AbstractResolvableFuture$Cancellation) obj;
            if (abstractResolvableFuture$Cancellation.wasInterrupted) {
                return abstractResolvableFuture$Cancellation.cause != null ? new AbstractResolvableFuture$Cancellation(false, abstractResolvableFuture$Cancellation.cause) : AbstractResolvableFuture$Cancellation.CAUSELESS_CANCELLED;
            }
            return obj;
        }
        boolean zIsCancelled = oVar.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            return AbstractResolvableFuture$Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object uninterruptibly = getUninterruptibly(oVar);
            return uninterruptibly == null ? NULL : uninterruptibly;
        } catch (CancellationException e) {
            if (zIsCancelled) {
                return new AbstractResolvableFuture$Cancellation(false, e);
            }
            return new AbstractResolvableFuture$Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + oVar, e));
        } catch (ExecutionException e6) {
            return new AbstractResolvableFuture$Failure(e6.getCause());
        } catch (Throwable th) {
            return new AbstractResolvableFuture$Failure(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static <V> V getUninterruptibly(Future<V> future) {
        V v8;
        boolean z8 = false;
        while (true) {
            try {
                v8 = future.get();
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
        return v8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void releaseWaiters() {
        AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter;
        do {
            abstractResolvableFuture$Waiter = this.waiters;
        } while (!ATOMIC_HELPER.casWaiters(this, abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter.TOMBSTONE));
        while (abstractResolvableFuture$Waiter != null) {
            abstractResolvableFuture$Waiter.unpark();
            abstractResolvableFuture$Waiter = abstractResolvableFuture$Waiter.next;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeWaiter(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter) {
        abstractResolvableFuture$Waiter.thread = null;
        while (true) {
            AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2 = this.waiters;
            if (abstractResolvableFuture$Waiter2 == AbstractResolvableFuture$Waiter.TOMBSTONE) {
                return;
            }
            AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter3 = null;
            while (abstractResolvableFuture$Waiter2 != null) {
                AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter4 = abstractResolvableFuture$Waiter2.next;
                if (abstractResolvableFuture$Waiter2.thread != null) {
                    abstractResolvableFuture$Waiter3 = abstractResolvableFuture$Waiter2;
                } else if (abstractResolvableFuture$Waiter3 != null) {
                    abstractResolvableFuture$Waiter3.next = abstractResolvableFuture$Waiter4;
                    if (abstractResolvableFuture$Waiter3.thread == null) {
                    }
                } else if (!ATOMIC_HELPER.casWaiters(this, abstractResolvableFuture$Waiter2, abstractResolvableFuture$Waiter4)) {
                }
                abstractResolvableFuture$Waiter2 = abstractResolvableFuture$Waiter4;
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String userObjectToString(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m4.o
    public final void addListener(Runnable runnable, Executor executor) {
        checkNotNull(runnable);
        checkNotNull(executor);
        AbstractResolvableFuture$Listener abstractResolvableFuture$Listener = this.listeners;
        if (abstractResolvableFuture$Listener != AbstractResolvableFuture$Listener.TOMBSTONE) {
            AbstractResolvableFuture$Listener abstractResolvableFuture$Listener2 = new AbstractResolvableFuture$Listener(runnable, executor);
            do {
                abstractResolvableFuture$Listener2.next = abstractResolvableFuture$Listener;
                if (ATOMIC_HELPER.casListeners(this, abstractResolvableFuture$Listener, abstractResolvableFuture$Listener2)) {
                    return;
                } else {
                    abstractResolvableFuture$Listener = this.listeners;
                }
            } while (abstractResolvableFuture$Listener != AbstractResolvableFuture$Listener.TOMBSTONE);
        }
        executeListener(runnable, executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z8) {
        AbstractResolvableFuture$Cancellation abstractResolvableFuture$Cancellation;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof AbstractResolvableFuture$SetFuture)) {
            return false;
        }
        if (GENERATE_CANCELLATION_CAUSES) {
            abstractResolvableFuture$Cancellation = new AbstractResolvableFuture$Cancellation(z8, new CancellationException("Future.cancel() was called."));
        } else {
            abstractResolvableFuture$Cancellation = z8 ? AbstractResolvableFuture$Cancellation.CAUSELESS_INTERRUPTED : AbstractResolvableFuture$Cancellation.CAUSELESS_CANCELLED;
        }
        AbstractResolvableFuture<V> abstractResolvableFuture = this;
        boolean z9 = false;
        while (true) {
            if (ATOMIC_HELPER.casValue(abstractResolvableFuture, obj, abstractResolvableFuture$Cancellation)) {
                if (z8) {
                    abstractResolvableFuture.interruptTask();
                }
                complete(abstractResolvableFuture);
                if (obj instanceof AbstractResolvableFuture$SetFuture) {
                    o oVar = ((AbstractResolvableFuture$SetFuture) obj).future;
                    if (oVar instanceof AbstractResolvableFuture) {
                        abstractResolvableFuture = (AbstractResolvableFuture) oVar;
                        obj = abstractResolvableFuture.value;
                        if ((obj == null) | (obj instanceof AbstractResolvableFuture$SetFuture)) {
                            z9 = true;
                        }
                    } else {
                        oVar.cancel(z8);
                    }
                }
                return true;
            }
            obj = abstractResolvableFuture.value;
            if (!(obj instanceof AbstractResolvableFuture$SetFuture)) {
                return z9;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final V get(long j9, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j9);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof AbstractResolvableFuture$SetFuture))) {
            return getDoneValue(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= SPIN_THRESHOLD_NANOS) {
            AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter = this.waiters;
            if (abstractResolvableFuture$Waiter != AbstractResolvableFuture$Waiter.TOMBSTONE) {
                AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2 = new AbstractResolvableFuture$Waiter();
                while (true) {
                    abstractResolvableFuture$Waiter2.setNext(abstractResolvableFuture$Waiter);
                    if (ATOMIC_HELPER.casWaiters(this, abstractResolvableFuture$Waiter, abstractResolvableFuture$Waiter2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                removeWaiter(abstractResolvableFuture$Waiter2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof AbstractResolvableFuture$SetFuture))) {
                                return getDoneValue(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= SPIN_THRESHOLD_NANOS);
                        removeWaiter(abstractResolvableFuture$Waiter2);
                        break;
                    }
                    abstractResolvableFuture$Waiter = this.waiters;
                    if (abstractResolvableFuture$Waiter == AbstractResolvableFuture$Waiter.TOMBSTONE) {
                    }
                }
            }
            return getDoneValue(this.value);
        }
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null) && (!(obj3 instanceof AbstractResolvableFuture$SetFuture))) {
                return getDoneValue(obj3);
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
        if (nanos + SPIN_THRESHOLD_NANOS < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j10 = -nanos;
            long jConvert = timeUnit.convert(j10, TimeUnit.NANOSECONDS);
            long nanos2 = j10 - timeUnit.toNanos(jConvert);
            boolean z8 = jConvert == 0 || nanos2 > SPIN_THRESHOLD_NANOS;
            if (jConvert > 0) {
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
        throw new TimeoutException(a.D(strConcat, " for ", string));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof AbstractResolvableFuture$Cancellation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof AbstractResolvableFuture$SetFuture)) & (obj != null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void maybePropagateCancellationTo(@Nullable Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: androidx.concurrent.futures.AbstractResolvableFuture<V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public String pendingToString() {
        Object obj = this.value;
        if (obj instanceof AbstractResolvableFuture$SetFuture) {
            return a.p(new StringBuilder("setFuture=["), userObjectToString(((AbstractResolvableFuture$SetFuture) obj).future), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean set(@Nullable V v8) {
        if (v8 == null) {
            v8 = (V) NULL;
        }
        if (!ATOMIC_HELPER.casValue(this, null, v8)) {
            return false;
        }
        complete(this);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setException(Throwable th) {
        if (!ATOMIC_HELPER.casValue(this, null, new AbstractResolvableFuture$Failure((Throwable) checkNotNull(th)))) {
            return false;
        }
        complete(this);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setFuture(o oVar) {
        AbstractResolvableFuture$Failure abstractResolvableFuture$Failure;
        checkNotNull(oVar);
        Object obj = this.value;
        if (obj == null) {
            if (oVar.isDone()) {
                if (!ATOMIC_HELPER.casValue(this, null, getFutureValue(oVar))) {
                    return false;
                }
                complete(this);
                return true;
            }
            AbstractResolvableFuture$SetFuture abstractResolvableFuture$SetFuture = new AbstractResolvableFuture$SetFuture(this, oVar);
            if (ATOMIC_HELPER.casValue(this, null, abstractResolvableFuture$SetFuture)) {
                try {
                    oVar.addListener(abstractResolvableFuture$SetFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        abstractResolvableFuture$Failure = new AbstractResolvableFuture$Failure(th);
                    } catch (Throwable unused) {
                        abstractResolvableFuture$Failure = AbstractResolvableFuture$Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.casValue(this, abstractResolvableFuture$SetFuture, abstractResolvableFuture$Failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof AbstractResolvableFuture$Cancellation) {
            oVar.cancel(((AbstractResolvableFuture$Cancellation) obj).wasInterrupted);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String strPendingToString;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            addDoneString(sb);
        } else {
            try {
                strPendingToString = pendingToString();
            } catch (RuntimeException e) {
                strPendingToString = "Exception thrown from implementation: " + e.getClass();
            }
            if (strPendingToString != null && !strPendingToString.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strPendingToString);
                sb.append("]");
            } else if (isDone()) {
                addDoneString(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof AbstractResolvableFuture$Cancellation) && ((AbstractResolvableFuture$Cancellation) obj).wasInterrupted;
    }

    public void afterDone() {
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof AbstractResolvableFuture$SetFuture))) {
                return getDoneValue(obj2);
            }
            AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter = this.waiters;
            if (abstractResolvableFuture$Waiter != AbstractResolvableFuture$Waiter.TOMBSTONE) {
                AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2 = new AbstractResolvableFuture$Waiter();
                do {
                    abstractResolvableFuture$Waiter2.setNext(abstractResolvableFuture$Waiter);
                    if (ATOMIC_HELPER.casWaiters(this, abstractResolvableFuture$Waiter, abstractResolvableFuture$Waiter2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                removeWaiter(abstractResolvableFuture$Waiter2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof AbstractResolvableFuture$SetFuture))));
                        return getDoneValue(obj);
                    }
                    abstractResolvableFuture$Waiter = this.waiters;
                } while (abstractResolvableFuture$Waiter != AbstractResolvableFuture$Waiter.TOMBSTONE);
            }
            return getDoneValue(this.value);
        }
        throw new InterruptedException();
    }
}
