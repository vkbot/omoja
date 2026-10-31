package kotlin.collections;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u0006\u001a\u001d\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\b\u001a\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u0002\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0002\u001a#\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\n0\u000b\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u000bH\u0007¢\u0006\u0002\b\f¨\u0006\r"}, m3159d2 = {"reverseElementIndex", "", "", "index", "reverseElementIndex$CollectionsKt__ReversedViewsKt", "reversePositionIndex", "reversePositionIndex$CollectionsKt__ReversedViewsKt", "reverseIteratorIndex", "reverseIteratorIndex$CollectionsKt__ReversedViewsKt", "asReversed", ExifInterface.GPS_DIRECTION_TRUE, "", "asReversedMutable", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/collections/CollectionsKt")
public class CollectionsKt__ReversedViewsKt extends CollectionsKt__MutableCollectionsKt {
    public static <T> List<T> asReversed(List<? extends T> list) {
        list.getClass();
        return new ReversedListReadOnly(list);
    }

    @JvmName(name = "asReversedMutable")
    public static final <T> List<T> asReversedMutable(List<T> list) {
        list.getClass();
        return new ReversedList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int reverseElementIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= CollectionsKt__CollectionsKt.getLastIndex(list)) {
            return CollectionsKt__CollectionsKt.getLastIndex(list) - i10;
        }
        StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Element index ", " must be in range [");
        sbM166q.append(new IntRange(0, CollectionsKt__CollectionsKt.getLastIndex(list)));
        sbM166q.append("].");
        throw new IndexOutOfBoundsException(sbM166q.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int reverseIteratorIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i10) {
        return CollectionsKt__CollectionsKt.getLastIndex(list) - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int reversePositionIndex$CollectionsKt__ReversedViewsKt(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= list.size()) {
            return list.size() - i10;
        }
        StringBuilder sbM166q = AbstractC0074a.m166q(i10, "Position index ", " must be in range [");
        sbM166q.append(new IntRange(0, list.size()));
        sbM166q.append("].");
        throw new IndexOutOfBoundsException(sbM166q.toString());
    }
}
