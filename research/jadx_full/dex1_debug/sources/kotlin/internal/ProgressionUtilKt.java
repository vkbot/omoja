package kotlin.internal;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.PublishedApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a \u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a \u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u001a \u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0001\u001a \u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0001¨\u0006\u000b"}, d2 = {"mod", "", "a", "b", "", "differenceModulo", "c", "getProgressionLastElement", "start", "end", "step", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ProgressionUtilKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int differenceModulo(int i9, int i10, int i11) {
        return mod(mod(i9, i11) - mod(i10, i11), i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public static final long getProgressionLastElement(long j9, long j10, long j11) {
        if (j11 > 0) {
            return j9 >= j10 ? j10 : j10 - differenceModulo(j10, j9, j11);
        }
        if (j11 < 0) {
            return j9 <= j10 ? j10 : j10 + differenceModulo(j9, j10, -j11);
        }
        i.k("Step is zero.");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long mod(long j9, long j10) {
        long j11 = j9 % j10;
        return j11 >= 0 ? j11 : j11 + j10;
    }

    private static final int mod(int i9, int i10) {
        int i11 = i9 % i10;
        return i11 >= 0 ? i11 : i11 + i10;
    }

    private static final long differenceModulo(long j9, long j10, long j11) {
        return mod(mod(j9, j11) - mod(j10, j11), j11);
    }

    @PublishedApi
    public static final int getProgressionLastElement(int i9, int i10, int i11) {
        if (i11 > 0) {
            if (i9 < i10) {
                return i10 - differenceModulo(i10, i9, i11);
            }
        } else {
            if (i11 >= 0) {
                i.k("Step is zero.");
                return 0;
            }
            if (i9 > i10) {
                return i10 + differenceModulo(i9, i10, -i11);
            }
        }
        return i10;
    }
}
