package p010a9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import p224v8.AbstractC3372c0;
import p224v8.AbstractC3422t;
import p224v8.InterfaceC3375d0;

/* JADX INFO: renamed from: a9.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0048j extends AbstractC3422t implements InterfaceC3375d0 {

    /* JADX INFO: renamed from: f */
    public static final AtomicIntegerFieldUpdater f128f = AtomicIntegerFieldUpdater.newUpdater(C0048j.class, "runningWorkers");

    /* JADX INFO: renamed from: b */
    public final AbstractC3422t f129b;

    /* JADX INFO: renamed from: c */
    public final int f130c;

    /* JADX INFO: renamed from: d */
    public final C0052n f131d;

    /* JADX INFO: renamed from: e */
    public final Object f132e;

    @Volatile
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public C0048j(AbstractC3422t abstractC3422t, int i10) {
        this.f129b = abstractC3422t;
        this.f130c = i10;
        if ((abstractC3422t instanceof InterfaceC3375d0 ? (InterfaceC3375d0) abstractC3422t : null) == null) {
            int i11 = AbstractC3372c0.f9855a;
        }
        this.f131d = new C0052n();
        this.f132e = new Object();
    }

    /* JADX INFO: renamed from: S */
    public final boolean m117S() {
        synchronized (this.f132e) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f128f;
            if (atomicIntegerFieldUpdater.get(this) >= this.f130c) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableM118y;
        this.f131d.m124a(runnable);
        if (f128f.get(this) >= this.f130c || !m117S() || (runnableM118y = m118y()) == null) {
            return;
        }
        this.f129b.dispatch(this, new RunnableC0047i(0, this, runnableM118y));
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableM118y;
        this.f131d.m124a(runnable);
        if (f128f.get(this) >= this.f130c || !m117S() || (runnableM118y = m118y()) == null) {
            return;
        }
        this.f129b.dispatchYield(this, new RunnableC0047i(0, this, runnableM118y));
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        AbstractC0035a.m94a(i10);
        return i10 >= this.f130c ? this : super.limitedParallelism(i10);
    }

    /* JADX INFO: renamed from: y */
    public final Runnable m118y() {
        while (true) {
            Runnable runnable = (Runnable) this.f131d.m127d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f132e) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f128f;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f131d.m126c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
