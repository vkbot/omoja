package p010a9;

import android.os.StrictMode;
import android.util.Log;
import java.util.concurrent.Callable;
import kotlin.coroutines.EmptyCoroutineContext;
import p131m.ThreadFactoryC2259c;
import p157o7.C2599a;
import p181r2.AbstractC3093a;
import p211u4.ExecutorC3296i;
import p224v8.AbstractC3422t;
import p224v8.AbstractC3431w;
import p257z2.C3709e;
import p257z2.InterfaceC3705a;
import p257z2.InterfaceC3706b;

/* JADX INFO: renamed from: a9.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC0047i implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f125b;

    /* JADX INFO: renamed from: c */
    public Object f126c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f127d;

    public RunnableC0047i(C2599a c2599a, Callable callable) {
        this.f125b = 5;
        this.f126c = c2599a;
        this.f127d = callable;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (r1 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        ((java.lang.Runnable) r10.f126c).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        p211u4.ExecutorC3296i.f9644g.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r10.f126c), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        r10.f126c = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m116a() {
        /*
            r10 = this;
            r0 = 0
            r1 = r0
        L2:
            java.lang.Object r2 = r10.f127d     // Catch: java.lang.Throwable -> L58
            u4.i r2 = (p211u4.ExecutorC3296i) r2     // Catch: java.lang.Throwable -> L58
            java.util.ArrayDeque r2 = r2.f9646c     // Catch: java.lang.Throwable -> L58
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L58
            r3 = 1
            if (r0 != 0) goto L2c
            java.lang.Object r0 = r10.f127d     // Catch: java.lang.Throwable -> L20
            u4.i r0 = (p211u4.ExecutorC3296i) r0     // Catch: java.lang.Throwable -> L20
            int r4 = r0.f9647d     // Catch: java.lang.Throwable -> L20
            r5 = 4
            if (r4 != r5) goto L22
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
        L18:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L46
        L20:
            r0 = move-exception
            goto L7d
        L22:
            long r6 = r0.f9648e     // Catch: java.lang.Throwable -> L20
            r8 = 1
            long r6 = r6 + r8
            r0.f9648e = r6     // Catch: java.lang.Throwable -> L20
            r0.f9647d = r5     // Catch: java.lang.Throwable -> L20
            r0 = r3
        L2c:
            java.lang.Object r4 = r10.f127d     // Catch: java.lang.Throwable -> L20
            u4.i r4 = (p211u4.ExecutorC3296i) r4     // Catch: java.lang.Throwable -> L20
            java.util.ArrayDeque r4 = r4.f9646c     // Catch: java.lang.Throwable -> L20
            java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L20
            java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L20
            r10.f126c = r4     // Catch: java.lang.Throwable -> L20
            if (r4 != 0) goto L47
            java.lang.Object r0 = r10.f127d     // Catch: java.lang.Throwable -> L20
            u4.i r0 = (p211u4.ExecutorC3296i) r0     // Catch: java.lang.Throwable -> L20
            r0.f9647d = r3     // Catch: java.lang.Throwable -> L20
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L46
            goto L18
        L46:
            return
        L47:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L58
            r1 = r1 | r2
            r2 = 0
            java.lang.Object r3 = r10.f126c     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
            r3.run()     // Catch: java.lang.Throwable -> L5a java.lang.RuntimeException -> L5c
        L55:
            r10.f126c = r2     // Catch: java.lang.Throwable -> L58
            goto L2
        L58:
            r0 = move-exception
            goto L7f
        L5a:
            r0 = move-exception
            goto L7a
        L5c:
            r3 = move-exception
            java.util.logging.Logger r4 = p211u4.ExecutorC3296i.f9644g     // Catch: java.lang.Throwable -> L5a
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r6.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r7 = "Exception while executing runnable "
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r7 = r10.f126c     // Catch: java.lang.Throwable -> L5a
            java.lang.Runnable r7 = (java.lang.Runnable) r7     // Catch: java.lang.Throwable -> L5a
            r6.append(r7)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5a
            r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5a
            goto L55
        L7a:
            r10.f126c = r2     // Catch: java.lang.Throwable -> L58
            throw r0     // Catch: java.lang.Throwable -> L58
        L7d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
            throw r0     // Catch: java.lang.Throwable -> L58
        L7f:
            if (r1 == 0) goto L88
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L88:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p010a9.RunnableC0047i.m116a():void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception exc;
        switch (this.f125b) {
            case 0:
                C0048j c0048j = (C0048j) this.f127d;
                AbstractC3422t abstractC3422t = c0048j.f129b;
                int i10 = 0;
                while (true) {
                    try {
                        ((Runnable) this.f126c).run();
                    } catch (Throwable th) {
                        AbstractC3431w.m5357a(th, EmptyCoroutineContext.INSTANCE);
                    }
                    Runnable runnableM118y = c0048j.m118y();
                    if (runnableM118y == null) {
                        return;
                    }
                    this.f126c = runnableM118y;
                    i10++;
                    if (i10 >= 16 && abstractC3422t.isDispatchNeeded(c0048j)) {
                        abstractC3422t.dispatch(c0048j, this);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                ThreadFactoryC2259c threadFactoryC2259c = (ThreadFactoryC2259c) this.f127d;
                if (threadFactoryC2259c.f5915e) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f126c).run();
                    return;
                } catch (Throwable th2) {
                    threadFactoryC2259c.f5914d.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
                        return;
                    }
                    return;
                }
            case 2:
                try {
                    m116a();
                    return;
                } catch (Error e) {
                    synchronized (((ExecutorC3296i) this.f127d).f9646c) {
                        ((ExecutorC3296i) this.f127d).f9647d = 1;
                        throw e;
                    }
                }
            case 3:
                synchronized (((C3709e) this.f127d).f10995c) {
                    InterfaceC3705a interfaceC3705a = (InterfaceC3705a) ((C3709e) this.f127d).f10996d;
                    C2599a c2599a = (C2599a) this.f126c;
                    synchronized (c2599a.f7252b) {
                        exc = (Exception) c2599a.f7255e;
                        break;
                    }
                    AbstractC3093a.m4926b(exc);
                    interfaceC3705a.mo2646a(exc);
                }
                return;
            case 4:
                synchronized (((C3709e) this.f127d).f10995c) {
                    ((InterfaceC3706b) ((C3709e) this.f127d).f10996d).mo860c(((C2599a) this.f126c).m4079d());
                    break;
                }
                return;
            default:
                C2599a c2599a2 = (C2599a) this.f126c;
                try {
                    c2599a2.m4082g(((Callable) this.f127d).call());
                    return;
                } catch (Exception e6) {
                    c2599a2.m4081f(e6);
                    return;
                } catch (Throwable th3) {
                    c2599a2.m4081f(new RuntimeException(th3));
                    return;
                }
        }
    }

    public String toString() {
        String str;
        switch (this.f125b) {
            case 2:
                Runnable runnable = (Runnable) this.f126c;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
                int i10 = ((ExecutorC3296i) this.f127d).f9647d;
                if (i10 == 1) {
                    str = "IDLE";
                } else if (i10 == 2) {
                    str = "QUEUING";
                } else if (i10 != 3) {
                    str = i10 != 4 ? "null" : "RUNNING";
                } else {
                    str = "QUEUED";
                }
                sb.append(str);
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ RunnableC0047i(int i10, Object obj, Object obj2) {
        this.f125b = i10;
        this.f127d = obj;
        this.f126c = obj2;
    }

    public RunnableC0047i(ExecutorC3296i executorC3296i) {
        this.f125b = 2;
        this.f127d = executorC3296i;
    }
}
