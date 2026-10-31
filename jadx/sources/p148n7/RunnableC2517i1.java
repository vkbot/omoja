package p148n7;

import ai.onnxruntime.AbstractC0074a;
import p028c3.RunnableC0979e;

/* JADX INFO: renamed from: n7.i1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2517i1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ RunnableC2520j1 f6964b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ RunnableC0979e f6965c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ long f6966d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ ExecutorC2523k1 f6967e;

    public RunnableC2517i1(ExecutorC2523k1 executorC2523k1, RunnableC2520j1 runnableC2520j1, RunnableC0979e runnableC0979e, long j10) {
        this.f6967e = executorC2523k1;
        this.f6964b = runnableC2520j1;
        this.f6965c = runnableC0979e;
        this.f6966d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6967e.execute(this.f6964b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6965c.toString());
        sb.append("(scheduled in SynchronizationContext with delay of ");
        return AbstractC0074a.m163n(sb, this.f6966d, ")");
    }
}
