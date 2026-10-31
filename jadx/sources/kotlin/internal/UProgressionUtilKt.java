package kotlin.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, m3159d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m7293differenceModuloWZ9TVnA(int i10, int i11, int i12) {
        long j10 = ((long) i12) & 4294967295L;
        int i13 = (int) ((((long) i10) & 4294967295L) % j10);
        int i14 = (int) ((((long) i11) & 4294967295L) % j10);
        int iCompare = Integer.compare(i13 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i14);
        int iM6183constructorimpl = UInt.m6183constructorimpl(i13 - i14);
        return iCompare >= 0 ? iM6183constructorimpl : UInt.m6183constructorimpl(iM6183constructorimpl + i12);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m7294differenceModulosambcqE(long j10, long j11, long j12) {
        if (j12 < 0) {
            if ((j10 ^ Long.MIN_VALUE) >= (j12 ^ Long.MIN_VALUE)) {
                j10 -= j12;
            }
        } else if (j10 >= 0) {
            j10 %= j12;
        } else {
            long j13 = j10 - ((((j10 >>> 1) / j12) << 1) * j12);
            j10 = j13 - ((j13 ^ Long.MIN_VALUE) >= (j12 ^ Long.MIN_VALUE) ? j12 : 0L);
        }
        if (j12 < 0) {
            if ((j11 ^ Long.MIN_VALUE) >= (j12 ^ Long.MIN_VALUE)) {
                j11 -= j12;
            }
        } else if (j11 >= 0) {
            j11 %= j12;
        } else {
            long j14 = j11 - ((((j11 >>> 1) / j12) << 1) * j12);
            j11 = j14 - ((j14 ^ Long.MIN_VALUE) >= (j12 ^ Long.MIN_VALUE) ? j12 : 0L);
        }
        int iCompare = Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
        long jM6262constructorimpl = ULong.m6262constructorimpl(j10 - j11);
        return iCompare >= 0 ? jM6262constructorimpl : ULong.m6262constructorimpl(jM6262constructorimpl + j12);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m7295getProgressionLastElement7ftBX0g(long j10, long j11, long j12) {
        if (j12 > 0) {
            return Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) >= 0 ? j11 : ULong.m6262constructorimpl(j11 - m7294differenceModulosambcqE(j11, j10, ULong.m6262constructorimpl(j12)));
        }
        if (j12 < 0) {
            return Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) <= 0 ? j11 : ULong.m6262constructorimpl(j11 + m7294differenceModulosambcqE(j10, j11, ULong.m6262constructorimpl(-j12)));
        }
        C1929i.m3029k("Step is zero.");
        return 0L;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m7296getProgressionLastElementNkh28Cs(int i10, int i11, int i12) {
        if (i12 > 0) {
            if (Integer.compare(i10 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i11) < 0) {
                return UInt.m6183constructorimpl(i11 - m7293differenceModuloWZ9TVnA(i11, i10, UInt.m6183constructorimpl(i12)));
            }
        } else {
            if (i12 >= 0) {
                C1929i.m3029k("Step is zero.");
                return 0;
            }
            if (Integer.compare(i10 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i11) > 0) {
                return UInt.m6183constructorimpl(i11 + m7293differenceModuloWZ9TVnA(i10, i11, UInt.m6183constructorimpl(-i12)));
            }
        }
        return i11;
    }
}
