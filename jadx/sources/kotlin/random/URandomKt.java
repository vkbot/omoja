package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\u0010\f\u001a\u0011\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a#\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0019\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0015\u001a\u001b\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0019\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a/\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u001e\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u001cH\u0007¢\u0006\u0004\b \u0010!\u001a\u001f\u0010\"\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b$\u0010%\u001a\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0000¢\u0006\u0004\b'\u0010(¨\u0006)"}, m3159d2 = {"nextUInt", "Lkotlin/UInt;", "Lkotlin/random/Random;", "(Lkotlin/random/Random;)I", "until", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", TypedValues.TransitionType.S_FROM, "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", "range", "Lkotlin/ranges/UIntRange;", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "nextULong", "Lkotlin/ULong;", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "nextUBytes", "Lkotlin/UByteArray;", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "size", "", "(Lkotlin/random/Random;I)[B", "fromIndex", "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "checkUIntRangeBounds", "", "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkULongRangeBounds", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"})
public final class URandomKt {
    /* JADX INFO: renamed from: checkUIntRangeBounds-J1ME1BU, reason: not valid java name */
    public static final void m7301checkUIntRangeBoundsJ1ME1BU(int i10, int i11) {
        if (Integer.compare(i11 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i10) > 0) {
            return;
        }
        C2237i.m3597d(RandomKt.boundsErrorMessage(UInt.m6177boximpl(i10), UInt.m6177boximpl(i11)));
    }

    /* JADX INFO: renamed from: checkULongRangeBounds-eb3DHEI, reason: not valid java name */
    public static final void m7302checkULongRangeBoundseb3DHEI(long j10, long j11) {
        if (Long.compare(j11 ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j10) > 0) {
            return;
        }
        C2237i.m3597d(RandomKt.boundsErrorMessage(ULong.m6256boximpl(j10), ULong.m6256boximpl(j11)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte[] nextUBytes(Random random, int i10) {
        random.getClass();
        return UByteArray.m6159constructorimpl(random.nextBytes(i10));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: nextUBytes-EVgfTAA, reason: not valid java name */
    public static final byte[] m7303nextUBytesEVgfTAA(Random random, byte[] bArr) {
        random.getClass();
        bArr.getClass();
        random.nextBytes(bArr);
        return bArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: nextUBytes-Wvrt4B4, reason: not valid java name */
    public static final byte[] m7304nextUBytesWvrt4B4(Random random, byte[] bArr, int i10, int i11) {
        random.getClass();
        bArr.getClass();
        random.nextBytes(bArr, i10, i11);
        return bArr;
    }

    /* JADX INFO: renamed from: nextUBytes-Wvrt4B4$default, reason: not valid java name */
    public static /* synthetic */ byte[] m7305nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = UByteArray.m6165getSizeimpl(bArr);
        }
        return m7304nextUBytesWvrt4B4(random, bArr, i10, i11);
    }

    @SinceKotlin(version = "1.5")
    public static final int nextUInt(Random random, UIntRange uIntRange) {
        random.getClass();
        uIntRange.getClass();
        if (uIntRange.isEmpty()) {
            C0674b.m853t(uIntRange, "Cannot get random in empty range: ");
            return 0;
        }
        if (Integer.compare(uIntRange.getLast() ^ Integer.MIN_VALUE, Integer.MAX_VALUE) < 0) {
            return m7306nextUInta8DCA5k(random, uIntRange.getFirst(), UInt.m6183constructorimpl(uIntRange.getLast() + 1));
        }
        return Integer.compare(uIntRange.getFirst() ^ Integer.MIN_VALUE, Integer.MIN_VALUE) > 0 ? UInt.m6183constructorimpl(m7306nextUInta8DCA5k(random, UInt.m6183constructorimpl(uIntRange.getFirst() - 1), uIntRange.getLast()) + 1) : nextUInt(random);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextUInt-a8DCA5k, reason: not valid java name */
    public static final int m7306nextUInta8DCA5k(Random random, int i10, int i11) {
        random.getClass();
        m7301checkUIntRangeBoundsJ1ME1BU(i10, i11);
        return UInt.m6183constructorimpl(random.nextInt(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextUInt-qCasIEU, reason: not valid java name */
    public static final int m7307nextUIntqCasIEU(Random random, int i10) {
        random.getClass();
        return m7306nextUInta8DCA5k(random, 0, i10);
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(Random random, ULongRange uLongRange) {
        random.getClass();
        uLongRange.getClass();
        if (uLongRange.isEmpty()) {
            C0674b.m853t(uLongRange, "Cannot get random in empty range: ");
            return 0L;
        }
        if (Long.compare(uLongRange.getLast() ^ Long.MIN_VALUE, Long.MAX_VALUE) < 0) {
            return m7309nextULongjmpaWc(random, uLongRange.getFirst(), ULong.m6262constructorimpl(ULong.m6262constructorimpl(((long) 1) & 4294967295L) + uLongRange.getLast()));
        }
        if (Long.compare(uLongRange.getFirst() ^ Long.MIN_VALUE, Long.MIN_VALUE) <= 0) {
            return nextULong(random);
        }
        long j10 = ((long) 1) & 4294967295L;
        return ULong.m6262constructorimpl(ULong.m6262constructorimpl(j10) + m7309nextULongjmpaWc(random, ULong.m6262constructorimpl(uLongRange.getFirst() - ULong.m6262constructorimpl(j10)), uLongRange.getLast()));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextULong-V1Xi4fY, reason: not valid java name */
    public static final long m7308nextULongV1Xi4fY(Random random, long j10) {
        random.getClass();
        return m7309nextULongjmpaWc(random, 0L, j10);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: nextULong-jmpaW-c, reason: not valid java name */
    public static final long m7309nextULongjmpaWc(Random random, long j10, long j11) {
        random.getClass();
        m7302checkULongRangeBoundseb3DHEI(j10, j11);
        return ULong.m6262constructorimpl(random.nextLong(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    public static final int nextUInt(Random random) {
        random.getClass();
        return UInt.m6183constructorimpl(random.nextInt());
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(Random random) {
        random.getClass();
        return ULong.m6262constructorimpl(random.nextLong());
    }
}
