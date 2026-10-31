package a9;

import android.os.StrictMode;
import android.os.StrictMode$ThreadPolicy$Builder;
import android.util.Log;
import java.util.concurrent.Callable;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class i implements Runnable {
    public final /* synthetic */ int b;
    public Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(o7.a aVar, Callable callable) {
        this.b = 5;
        this.c = aVar;
        this.d = callable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:47:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (r1 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        ((java.lang.Runnable) r10.c).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005c, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        u4.i.g.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r10.c), (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        r10.c = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a() {
        Runnable runnable;
        boolean z = false;
        boolean zInterrupted = false;
        while (true) {
            try {
                synchronized (((u4.i) this.d).c) {
                    if (z) {
                        runnable = (Runnable) ((u4.i) this.d).c.poll();
                        this.c = runnable;
                        if (runnable == null) {
                            ((u4.i) this.d).d = 1;
                        }
                    } else {
                        u4.i iVar = (u4.i) this.d;
                        if (iVar.d != 4) {
                            iVar.e++;
                            iVar.d = 4;
                            z = true;
                            runnable = (Runnable) ((u4.i) this.d).c.poll();
                            this.c = runnable;
                            if (runnable == null) {
                                ((u4.i) this.d).d = 1;
                            }
                        }
                    }
                }
                if (zInterrupted) {
                    break;
                } else {
                    return;
                }
                this.c = null;
            } catch (Throwable th) {
                if (zInterrupted) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        Thread.currentThread().interrupt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Exception exc;
        switch (this.b) {
            case 0:
                CoroutineContext coroutineContext = (j) this.d;
                v8.t tVar = coroutineContext.b;
                int i = 0;
                while (true) {
                    try {
                        ((Runnable) this.c).run();
                    } catch (Throwable th) {
                        v8.w.a(th, EmptyCoroutineContext.INSTANCE);
                    }
                    Runnable runnableY = coroutineContext.y();
                    if (runnableY == null) {
                        return;
                    }
                    this.c = runnableY;
                    i++;
                    if (i >= 16 && tVar.isDispatchNeeded(coroutineContext)) {
                        tVar.dispatch(coroutineContext, this);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                m.c cVar = (m.c) this.d;
                if (cVar.e) {
                    StrictMode.setThreadPolicy(new StrictMode$ThreadPolicy$Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.c).run();
                    return;
                } catch (Throwable th2) {
                    cVar.d.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
                        return;
                    }
                    return;
                }
            case 2:
                try {
                    a();
                    return;
                } catch (Error e) {
                    synchronized (((u4.i) this.d).c) {
                        ((u4.i) this.d).d = 1;
                        throw e;
                    }
                }
            case 3:
                synchronized (((z2.e) this.d).c) {
                    z2.a aVar = (z2.a) ((z2.e) this.d).d;
                    o7.a aVar2 = (o7.a) this.c;
                    synchronized (aVar2.b) {
                        exc = (Exception) aVar2.e;
                        break;
                    }
                    r2.a.b(exc);
                    aVar.a(exc);
                }
                return;
            case 4:
                synchronized (((z2.e) this.d).c) {
                    ((z2.b) ((z2.e) this.d).d).c(((o7.a) this.c).d());
                    break;
                }
                return;
            default:
                o7.a aVar3 = (o7.a) this.c;
                try {
                    aVar3.g(((Callable) this.d).call());
                    return;
                } catch (Exception e2) {
                    aVar3.f(e2);
                    return;
                } catch (Throwable th3) {
                    aVar3.f(new RuntimeException(th3));
                    return;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String str;
        switch (this.b) {
            case 2:
                Runnable runnable = (Runnable) this.c;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
                int i = ((u4.i) this.d).d;
                if (i == 1) {
                    str = "IDLE";
                } else if (i == 2) {
                    str = "QUEUING";
                } else if (i != 3) {
                    str = i != 4 ? "null" : "RUNNING";
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

    public /* synthetic */ i(int i, Object obj, Object obj2) {
        this.b = i;
        this.d = obj;
        this.c = obj2;
    }

    public i(u4.i iVar) {
        this.b = 2;
        this.d = iVar;
    }
}
