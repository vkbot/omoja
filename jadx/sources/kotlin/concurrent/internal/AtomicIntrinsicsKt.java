package kotlin.concurrent.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00008\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0001\u001a\u001c\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a\u001c\u0010\u0000\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0001\u001a-\u0010\u0000\u001a\u0002H\t\"\u0004\b\u0000\u0010\t*\b\u0012\u0004\u0012\u0002H\t0\n2\u0006\u0010\u0003\u001a\u0002H\t2\u0006\u0010\u0004\u001a\u0002H\tH\u0001¢\u0006\u0002\u0010\u000b\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\f2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0001\u001a$\u0010\u0000\u001a\u00020\u0005*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a5\u0010\u0000\u001a\u0002H\t\"\u0004\b\u0000\u0010\t*\b\u0012\u0004\u0012\u0002H\t0\u000f2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u0002H\t2\u0006\u0010\u0004\u001a\u0002H\tH\u0001¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, m3159d2 = {"compareAndExchange", "", "Ljava/util/concurrent/atomic/AtomicInteger;", "expected", "newValue", "", "Ljava/util/concurrent/atomic/AtomicLong;", "", "Ljava/util/concurrent/atomic/AtomicBoolean;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/atomic/AtomicReference;", "(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Ljava/util/concurrent/atomic/AtomicIntegerArray;", "index", "Ljava/util/concurrent/atomic/AtomicLongArray;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AtomicIntrinsicsKt {
    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final <T> T compareAndExchange(AtomicReference<T> atomicReference, T t, T t3) {
        atomicReference.getClass();
        while (true) {
            T t9 = atomicReference.get();
            if (t != t9) {
                return t9;
            }
            while (!atomicReference.compareAndSet(t, t3)) {
                if (atomicReference.get() != t) {
                }
            }
            return t;
        }
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final long compareAndExchange(AtomicLong atomicLong, long j10, long j11) {
        atomicLong.getClass();
        do {
            long j12 = atomicLong.get();
            if (j10 != j12) {
                return j12;
            }
        } while (!atomicLong.compareAndSet(j10, j11));
        return j10;
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final boolean compareAndExchange(AtomicBoolean atomicBoolean, boolean z9, boolean z10) {
        atomicBoolean.getClass();
        do {
            boolean z11 = atomicBoolean.get();
            if (z9 != z11) {
                return z11;
            }
        } while (!atomicBoolean.compareAndSet(z9, z10));
        return z9;
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final int compareAndExchange(AtomicInteger atomicInteger, int i10, int i11) {
        atomicInteger.getClass();
        do {
            int i12 = atomicInteger.get();
            if (i10 != i12) {
                return i12;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final int compareAndExchange(AtomicIntegerArray atomicIntegerArray, int i10, int i11, int i12) {
        atomicIntegerArray.getClass();
        do {
            int i13 = atomicIntegerArray.get(i10);
            if (i11 != i13) {
                return i13;
            }
        } while (!atomicIntegerArray.compareAndSet(i10, i11, i12));
        return i11;
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final long compareAndExchange(AtomicLongArray atomicLongArray, int i10, long j10, long j11) {
        atomicLongArray.getClass();
        do {
            long j12 = atomicLongArray.get(i10);
            if (j10 != j12) {
                return j12;
            }
        } while (!atomicLongArray.compareAndSet(i10, j10, j11));
        return j10;
    }

    @SinceKotlin(version = "2.1")
    @PublishedApi
    public static final <T> T compareAndExchange(AtomicReferenceArray<T> atomicReferenceArray, int i10, T t, T t3) {
        atomicReferenceArray.getClass();
        while (true) {
            T t9 = atomicReferenceArray.get(i10);
            if (t != t9) {
                return t9;
            }
            while (!atomicReferenceArray.compareAndSet(i10, t, t3)) {
                if (atomicReferenceArray.get(i10) != t) {
                }
            }
            return t;
        }
    }
}
