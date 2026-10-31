package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.Volatile;
import p010a9.AbstractC0035a;
import p010a9.C0058t;
import p099j1.C1929i;

/* JADX INFO: renamed from: v8.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3378e0 extends C0058t {

    /* JADX INFO: renamed from: f */
    public static final AtomicIntegerFieldUpdater f9863f = AtomicIntegerFieldUpdater.newUpdater(C3378e0.class, "_decision");

    @Volatile
    @JvmField
    private volatile int _decision;

    @Override // p010a9.C0058t, p224v8.C3388h1
    /* JADX INFO: renamed from: i */
    public final void mo136i(Object obj) {
        mo137j(obj);
    }

    @Override // p010a9.C0058t, p224v8.C3388h1
    /* JADX INFO: renamed from: j */
    public final void mo137j(Object obj) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = f9863f;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 1) {
                    C1929i.m3030l("Already resumed");
                    return;
                } else {
                    AbstractC0035a.m99f(AbstractC3401m.m5349a(obj), IntrinsicsKt.intercepted(this.f147e));
                    return;
                }
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 2));
    }
}
