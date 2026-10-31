package p010a9;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import p224v8.InterfaceC3400l1;

/* JADX INFO: renamed from: a9.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0059u extends AbstractC0043e implements InterfaceC3400l1 {

    /* JADX INFO: renamed from: e */
    public static final AtomicIntegerFieldUpdater f148e = AtomicIntegerFieldUpdater.newUpdater(AbstractC0059u.class, "cleanedAndPointers");

    @Volatile
    private volatile int cleanedAndPointers;

    /* JADX INFO: renamed from: d */
    public final long f149d;

    public AbstractC0059u(long j10, AbstractC0059u abstractC0059u, int i10) {
        super(abstractC0059u);
        this.f149d = j10;
        this.cleanedAndPointers = i10 << 16;
    }

    @Override // p010a9.AbstractC0043e
    /* JADX INFO: renamed from: c */
    public final boolean mo111c() {
        return f148e.get(this) == mo139f() && m110b() != null;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m138e() {
        return f148e.addAndGet(this, SupportMenu.CATEGORY_MASK) == mo139f() && m110b() != null;
    }

    /* JADX INFO: renamed from: f */
    public abstract int mo139f();

    /* JADX INFO: renamed from: g */
    public abstract void mo140g(int i10, CoroutineContext coroutineContext);

    /* JADX INFO: renamed from: h */
    public final void m141h() {
        if (f148e.incrementAndGet(this) == mo139f()) {
            m112d();
        }
    }

    /* JADX INFO: renamed from: i */
    public final boolean m142i() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i10;
        do {
            atomicIntegerFieldUpdater = f148e;
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == mo139f() && m110b() != null) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
