package kotlin.concurrent.atomics;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.SinceKotlin;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0002\u0010\u0005\u001a\u001a\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0002\u0010\u0005\u001a\u0011\u0010\u0007\u001a\u00020\u0004*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0011\u0010\t\u001a\u00020\u0004*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0011\u0010\n\u001a\u00020\u0004*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0011\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u0003\u001a\u00020\rH\u0087\u0002¢\u0006\u0002\u0010\u000e\u001a\u001a\u0010\u0006\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u0003\u001a\u00020\rH\u0087\u0002¢\u0006\u0002\u0010\u000e\u001a\u0011\u0010\u0007\u001a\u00020\r*\u00020\fH\u0007¢\u0006\u0002\u0010\u000f\u001a\u0011\u0010\t\u001a\u00020\r*\u00020\fH\u0007¢\u0006\u0002\u0010\u000f\u001a\u0011\u0010\n\u001a\u00020\r*\u00020\fH\u0007¢\u0006\u0002\u0010\u000f\u001a\u0011\u0010\u000b\u001a\u00020\r*\u00020\fH\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, m3159d2 = {"plusAssign", "", "Lkotlin/concurrent/atomics/AtomicInt;", "delta", "", "(Ljava/util/concurrent/atomic/AtomicInteger;I)V", "minusAssign", "fetchAndIncrement", "(Ljava/util/concurrent/atomic/AtomicInteger;)I", "incrementAndFetch", "decrementAndFetch", "fetchAndDecrement", "Lkotlin/concurrent/atomics/AtomicLong;", "", "(Ljava/util/concurrent/atomic/AtomicLong;J)V", "(Ljava/util/concurrent/atomic/AtomicLong;)J", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/concurrent/atomics/AtomicsKt")
class AtomicsKt__Atomics_commonKt {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long decrementAndFetch(AtomicLong atomicLong) {
        atomicLong.getClass();
        return atomicLong.addAndGet(-1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndDecrement(AtomicLong atomicLong) {
        atomicLong.getClass();
        return atomicLong.getAndAdd(-1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndIncrement(AtomicLong atomicLong) {
        atomicLong.getClass();
        return atomicLong.getAndAdd(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long incrementAndFetch(AtomicLong atomicLong) {
        atomicLong.getClass();
        return atomicLong.addAndGet(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(AtomicInteger atomicInteger, int i10) {
        atomicInteger.getClass();
        atomicInteger.addAndGet(-i10);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(AtomicInteger atomicInteger, int i10) {
        atomicInteger.getClass();
        atomicInteger.addAndGet(i10);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(AtomicLong atomicLong, long j10) {
        atomicLong.getClass();
        atomicLong.addAndGet(j10);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(AtomicLong atomicLong, long j10) {
        atomicLong.getClass();
        atomicLong.addAndGet(-j10);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int decrementAndFetch(AtomicInteger atomicInteger) {
        atomicInteger.getClass();
        return atomicInteger.addAndGet(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndDecrement(AtomicInteger atomicInteger) {
        atomicInteger.getClass();
        return atomicInteger.getAndAdd(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndIncrement(AtomicInteger atomicInteger) {
        atomicInteger.getClass();
        return atomicInteger.getAndAdd(1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int incrementAndFetch(AtomicInteger atomicInteger) {
        atomicInteger.getClass();
        return atomicInteger.addAndGet(1);
    }
}
