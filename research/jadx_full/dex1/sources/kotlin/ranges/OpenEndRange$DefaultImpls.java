package kotlin.ranges;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class OpenEndRange$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Comparable<? super T>> boolean contains(OpenEndRange<T> openEndRange, T t) {
        t.getClass();
        return t.compareTo(openEndRange.getStart()) >= 0 && t.compareTo(openEndRange.getEndExclusive()) < 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Comparable<? super T>> boolean isEmpty(OpenEndRange<T> openEndRange) {
        return openEndRange.getStart().compareTo(openEndRange.getEndExclusive()) >= 0;
    }
}
