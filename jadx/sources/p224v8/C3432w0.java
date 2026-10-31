package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: v8.w0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3432w0 extends AbstractC3370b1 {

    /* JADX INFO: renamed from: g */
    public static final AtomicIntegerFieldUpdater f9913g = AtomicIntegerFieldUpdater.newUpdater(C3432w0.class, "_invoked");

    @Volatile
    private volatile int _invoked;

    /* JADX INFO: renamed from: f */
    public final Function1 f9914f;

    public C3432w0(Function1 function1) {
        this.f9914f = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        mo5295j((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // p224v8.AbstractC3376d1
    /* JADX INFO: renamed from: j */
    public final void mo5295j(Throwable th) {
        if (f9913g.compareAndSet(this, 0, 1)) {
            this.f9914f.invoke(th);
        }
    }
}
