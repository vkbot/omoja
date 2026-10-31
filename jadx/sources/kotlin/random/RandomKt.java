package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0005\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u0014\u0010\b\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\tH\u0007\u001a\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0000\u001a\u0014\u0010\f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015H\u0000¨\u0006\u0016"}, m3159d2 = {"Random", "Lkotlin/random/Random;", "seed", "", "", "nextInt", "range", "Lkotlin/ranges/IntRange;", "nextLong", "Lkotlin/ranges/LongRange;", "fastLog2", "value", "takeUpperBits", "bitCount", "checkRangeBounds", "", TypedValues.TransitionType.S_FROM, "until", "", "boundsErrorMessage", "", "", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,387:1\n1#2:388\n*E\n"})
public final class RandomKt {
    @SinceKotlin(version = "1.3")
    public static final Random Random(long j10) {
        return new XorWowRandom((int) j10, (int) (j10 >> 32));
    }

    public static final String boundsErrorMessage(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        return "Random range is empty: [" + obj + ", " + obj2 + ").";
    }

    public static final void checkRangeBounds(long j10, long j11) {
        if (j11 > j10) {
            return;
        }
        C2237i.m3597d(boundsErrorMessage(Long.valueOf(j10), Long.valueOf(j11)));
    }

    public static final int fastLog2(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    @SinceKotlin(version = "1.3")
    public static final int nextInt(Random random, IntRange intRange) {
        random.getClass();
        intRange.getClass();
        if (intRange.isEmpty()) {
            C0674b.m853t(intRange, "Cannot get random in empty range: ");
            return 0;
        }
        if (intRange.getLast() < Integer.MAX_VALUE) {
            return random.nextInt(intRange.getFirst(), intRange.getLast() + 1);
        }
        return intRange.getFirst() > Integer.MIN_VALUE ? random.nextInt(intRange.getFirst() - 1, intRange.getLast()) + 1 : random.nextInt();
    }

    @SinceKotlin(version = "1.3")
    public static final long nextLong(Random random, LongRange longRange) {
        random.getClass();
        longRange.getClass();
        if (longRange.isEmpty()) {
            C0674b.m853t(longRange, "Cannot get random in empty range: ");
            return 0L;
        }
        if (longRange.getLast() < Long.MAX_VALUE) {
            return random.nextLong(longRange.getFirst(), longRange.getLast() + 1);
        }
        return longRange.getFirst() > Long.MIN_VALUE ? random.nextLong(longRange.getFirst() - 1, longRange.getLast()) + 1 : random.nextLong();
    }

    public static final int takeUpperBits(int i10, int i11) {
        return (i10 >>> (32 - i11)) & ((-i11) >> 31);
    }

    @SinceKotlin(version = "1.3")
    public static final Random Random(int i10) {
        return new XorWowRandom(i10, i10 >> 31);
    }

    public static final void checkRangeBounds(int i10, int i11) {
        if (i11 > i10) {
            return;
        }
        C2237i.m3597d(boundsErrorMessage(Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public static final void checkRangeBounds(double d, double d10) {
        if (d10 > d) {
            return;
        }
        C2237i.m3597d(boundsErrorMessage(Double.valueOf(d), Double.valueOf(d10)));
    }
}
