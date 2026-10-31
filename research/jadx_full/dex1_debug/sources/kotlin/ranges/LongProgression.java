package kotlin.ranges;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\b\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/LongProgression;", "", "", "start", "endInclusive", "step", "<init>", "(JJJ)V", "first", "getFirst", "()J", "last", "getLast", "getStep", "iterator", "Lkotlin/collections/LongIterator;", "isEmpty", "", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class LongProgression implements Iterable<Long>, KMappedMarker {
    public static final LongProgression$Companion Companion = new LongProgression$Companion(null);
    private final long first;
    private final long last;
    private final long step;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LongProgression(long j9, long j10, long j11) {
        if (j11 == 0) {
            i.k("Step must be non-zero.");
            throw null;
        }
        if (j11 == Long.MIN_VALUE) {
            i.k("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.first = j9;
        this.last = ProgressionUtilKt.getProgressionLastElement(j9, j10, j11);
        this.step = j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (!(other instanceof LongProgression)) {
            return false;
        }
        if (isEmpty() && ((LongProgression) other).isEmpty()) {
            return true;
        }
        LongProgression longProgression = (LongProgression) other;
        return this.first == longProgression.first && this.last == longProgression.last && this.step == longProgression.step;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getFirst() {
        return this.first;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getLast() {
        return this.last;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getStep() {
        return this.step;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j9 = 31;
        long j10 = this.first;
        long j11 = this.last;
        long j12 = (((j10 ^ (j10 >>> 32)) * j9) + (j11 ^ (j11 >>> 32))) * j9;
        long j13 = this.step;
        return (int) (j12 + (j13 ^ (j13 >>> 32)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEmpty() {
        long j9 = this.step;
        long j10 = this.first;
        long j11 = this.last;
        if (j9 > 0) {
            return j10 > j11;
        }
        return j10 < j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'kotlin.collections.LongIterator' to match base method */
    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: iterator, reason: avoid collision after fix types in other method */
    public Iterator<Long> iterator2() {
        return new LongProgressionIterator(this.first, this.last, this.step);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb;
        long j9;
        long j10 = this.step;
        long j11 = this.first;
        if (j10 > 0) {
            sb = new StringBuilder();
            sb.append(j11);
            sb.append("..");
            sb.append(this.last);
            sb.append(" step ");
            j9 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(j11);
            sb.append(" downTo ");
            sb.append(this.last);
            sb.append(" step ");
            j9 = -this.step;
        }
        sb.append(j9);
        return sb.toString();
    }

    /* JADX DEBUG: Return type fixed from 'java.util.Iterator' to match base method */
    @Override // java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator<Long> iterator() {
        return iterator2();
    }
}
