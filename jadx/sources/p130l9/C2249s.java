package p130l9;

import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: l9.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2249s extends C2240j0 {

    /* JADX INFO: renamed from: a */
    public C2240j0 f5886a;

    public C2249s(C2240j0 c2240j0) {
        c2240j0.getClass();
        this.f5886a = c2240j0;
    }

    @Override // p130l9.C2240j0
    public final C2240j0 clearDeadline() {
        return this.f5886a.clearDeadline();
    }

    @Override // p130l9.C2240j0
    public final C2240j0 clearTimeout() {
        return this.f5886a.clearTimeout();
    }

    @Override // p130l9.C2240j0
    public final long deadlineNanoTime() {
        return this.f5886a.deadlineNanoTime();
    }

    @Override // p130l9.C2240j0
    public final boolean hasDeadline() {
        return this.f5886a.hasDeadline();
    }

    @Override // p130l9.C2240j0
    public final void throwIfReached() {
        this.f5886a.throwIfReached();
    }

    @Override // p130l9.C2240j0
    public final C2240j0 timeout(long j10, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f5886a.timeout(j10, timeUnit);
    }

    @Override // p130l9.C2240j0
    public final long timeoutNanos() {
        return this.f5886a.timeoutNanos();
    }

    @Override // p130l9.C2240j0
    public final C2240j0 deadlineNanoTime(long j10) {
        return this.f5886a.deadlineNanoTime(j10);
    }
}
