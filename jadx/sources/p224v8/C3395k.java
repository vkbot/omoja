package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: v8.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C3395k {

    /* JADX INFO: renamed from: b */
    public static final AtomicIntegerFieldUpdater f9891b = AtomicIntegerFieldUpdater.newUpdater(C3395k.class, "_handled");

    @Volatile
    private volatile int _handled;

    /* JADX INFO: renamed from: a */
    public final Throwable f9892a;

    public C3395k(boolean z9, Throwable th) {
        this.f9892a = th;
        this._handled = z9 ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f9892a + ']';
    }
}
