package p211u4;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import p010a9.RunnableC0047i;
import p039d2.RunnableC1259o;
import p181r2.AbstractC3093a;

/* JADX INFO: renamed from: u4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC3296i implements Executor {

    /* JADX INFO: renamed from: g */
    public static final Logger f9644g = Logger.getLogger(ExecutorC3296i.class.getName());

    /* JADX INFO: renamed from: b */
    public final Executor f9645b;

    /* JADX INFO: renamed from: c */
    public final ArrayDeque f9646c = new ArrayDeque();

    /* JADX INFO: renamed from: d */
    public int f9647d = 1;

    /* JADX INFO: renamed from: e */
    public long f9648e = 0;

    /* JADX INFO: renamed from: f */
    public final RunnableC0047i f9649f = new RunnableC0047i(this);

    public ExecutorC3296i(Executor executor) {
        AbstractC3093a.m4926b(executor);
        this.f9645b = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        AbstractC3093a.m4926b(runnable);
        synchronized (this.f9646c) {
            int i10 = this.f9647d;
            if (i10 != 4 && i10 != 3) {
                long j10 = this.f9648e;
                RunnableC1259o runnableC1259o = new RunnableC1259o(runnable, 2);
                this.f9646c.add(runnableC1259o);
                this.f9647d = 2;
                try {
                    this.f9645b.execute(this.f9649f);
                    if (this.f9647d != 2) {
                        return;
                    }
                    synchronized (this.f9646c) {
                        try {
                            if (this.f9648e == j10 && this.f9647d == 2) {
                                this.f9647d = 3;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f9646c) {
                        try {
                            int i11 = this.f9647d;
                            boolean z9 = true;
                            if ((i11 != 1 && i11 != 2) || !this.f9646c.removeLastOccurrence(runnableC1259o)) {
                                z9 = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z9) {
                                throw e;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                }
            }
            this.f9646c.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f9645b + "}";
    }
}
