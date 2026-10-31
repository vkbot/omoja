package kotlin.internal;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UProgressionUtilKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m1300differenceModuloWZ9TVnA(int i9, int i10, int i11) {
        long j9 = ((long) i11) & 4294967295L;
        int i12 = (int) ((((long) i9) & 4294967295L) % j9);
        int i13 = (int) ((((long) i10) & 4294967295L) % j9);
        int iCompare = Integer.compare(i12 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i13);
        int iM190constructorimpl = UInt.m190constructorimpl(i12 - i13);
        return iCompare >= 0 ? iM190constructorimpl : UInt.m190constructorimpl(iM190constructorimpl + i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m1301differenceModulosambcqE(long j9, long j10, long j11) {
        if (j11 < 0) {
            if ((j9 ^ Long.MIN_VALUE) >= (j11 ^ Long.MIN_VALUE)) {
                j9 -= j11;
            }
        } else if (j9 >= 0) {
            j9 %= j11;
        } else {
            long j12 = j9 - ((((j9 >>> 1) / j11) << 1) * j11);
            j9 = j12 - ((j12 ^ Long.MIN_VALUE) >= (j11 ^ Long.MIN_VALUE) ? j11 : 0L);
        }
        if (j11 < 0) {
            if ((j10 ^ Long.MIN_VALUE) >= (j11 ^ Long.MIN_VALUE)) {
                j10 -= j11;
            }
        } else if (j10 >= 0) {
            j10 %= j11;
        } else {
            long j13 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
            j10 = j13 - ((j13 ^ Long.MIN_VALUE) >= (j11 ^ Long.MIN_VALUE) ? j11 : 0L);
        }
        int iCompare = Long.compare(j9 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE);
        long jM269constructorimpl = ULong.m269constructorimpl(j9 - j10);
        return iCompare >= 0 ? jM269constructorimpl : ULong.m269constructorimpl(jM269constructorimpl + j11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1302getProgressionLastElement7ftBX0g(long j9, long j10, long j11) {
        if (j11 > 0) {
            return Long.compare(j9 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE) >= 0 ? j10 : ULong.m269constructorimpl(j10 - m1301differenceModulosambcqE(j10, j9, ULong.m269constructorimpl(j11)));
        }
        if (j11 < 0) {
            return Long.compare(j9 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE) <= 0 ? j10 : ULong.m269constructorimpl(j10 + m1301differenceModulosambcqE(j9, j10, ULong.m269constructorimpl(-j11)));
        }
        i.k("Step is zero.");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1303getProgressionLastElementNkh28Cs(int i9, int i10, int i11) {
        if (i11 > 0) {
            if (Integer.compare(i9 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i10) < 0) {
                return UInt.m190constructorimpl(i10 - m1300differenceModuloWZ9TVnA(i10, i9, UInt.m190constructorimpl(i11)));
            }
        } else {
            if (i11 >= 0) {
                i.k("Step is zero.");
                return 0;
            }
            if (Integer.compare(i9 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i10) > 0) {
                return UInt.m190constructorimpl(i10 + m1300differenceModuloWZ9TVnA(i9, i10, UInt.m190constructorimpl(-i11)));
            }
        }
        return i10;
    }
}
