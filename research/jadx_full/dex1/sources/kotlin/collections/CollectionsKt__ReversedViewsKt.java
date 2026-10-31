package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u0006\u001a\u001d\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\b\u001a\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0002\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0002\u001a#\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u000b\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u000bH\u0007¢\u0006\u0002\b\f¨\u0006\r"}, d2 = {"reverseElementIndex", "", "", "index", "reverseElementIndex$CollectionsKt__ReversedViewsKt", "reversePositionIndex", "reversePositionIndex$CollectionsKt__ReversedViewsKt", "reverseIteratorIndex", "reverseIteratorIndex$CollectionsKt__ReversedViewsKt", "asReversed", ExifInterface.GPS_DIRECTION_TRUE, "", "asReversedMutable", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/collections/CollectionsKt")
public class CollectionsKt__ReversedViewsKt extends CollectionsKt__MutableCollectionsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$reverseElementIndex(List list, int i9) {
        return reverseElementIndex$CollectionsKt__ReversedViewsKt(list, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$reverseIteratorIndex(List list, int i9) {
        return reverseIteratorIndex$CollectionsKt__ReversedViewsKt(list, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$reversePositionIndex(List list, int i9) {
        return reversePositionIndex$CollectionsKt__ReversedViewsKt(list, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> List<T> asReversed(List<? extends T> list) {
        list.getClass();
        return new ReversedListReadOnly(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "asReversedMutable")
    public static final <T> List<T> asReversedMutable(List<T> list) {
        list.getClass();
        return new ReversedList(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int reverseElementIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i9) {
        if (i9 >= 0 && i9 <= CollectionsKt__CollectionsKt.getLastIndex(list)) {
            return CollectionsKt__CollectionsKt.getLastIndex(list) - i9;
        }
        StringBuilder sbQ = ai.onnxruntime.a.q(i9, "Element index ", " must be in range [");
        sbQ.append(new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(list)));
        sbQ.append("].");
        throw new IndexOutOfBoundsException(sbQ.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int reverseIteratorIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i9) {
        return CollectionsKt__CollectionsKt.getLastIndex(list) - i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int reversePositionIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i9) {
        if (i9 >= 0 && i9 <= list.size()) {
            return list.size() - i9;
        }
        StringBuilder sbQ = ai.onnxruntime.a.q(i9, "Position index ", " must be in range [");
        sbQ.append(new IntRange(0, list.size()));
        sbQ.append("].");
        throw new IndexOutOfBoundsException(sbQ.toString());
    }
}
