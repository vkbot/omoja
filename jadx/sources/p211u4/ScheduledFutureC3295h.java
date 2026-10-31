package p211u4;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p141n.C2455p;

/* JADX INFO: renamed from: u4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ScheduledFutureC3295h extends AbstractResolvableFuture implements ScheduledFuture {

    /* JADX INFO: renamed from: b */
    public final ScheduledFuture f9643b;

    public ScheduledFutureC3295h(InterfaceC3294g interfaceC3294g) {
        this.f9643b = interfaceC3294g.mo3050a(new C2455p(12, this));
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public final void afterDone() {
        this.f9643b.cancel(wasInterrupted());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Delayed delayed) {
        return this.f9643b.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f9643b.getDelay(timeUnit);
    }
}
