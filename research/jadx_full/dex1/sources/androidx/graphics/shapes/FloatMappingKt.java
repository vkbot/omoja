package androidx.graphics.shapes;

import androidx.collection.FloatList;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H\u0000¨\u0006\u000e"}, d2 = {"linearMap", "", "xValues", "Landroidx/collection/FloatList;", "yValues", "x", "progressInRange", "", "progress", "progressFrom", "progressTo", "validateProgress", "", "p", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"})
public final class FloatMappingKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final float linearMap(FloatList floatList, FloatList floatList2, float f8) {
        floatList.getClass();
        floatList2.getClass();
        if (0.0f > f8 || f8 > 1.0f) {
            throw new IllegalArgumentException(("Invalid progress: " + f8).toString());
        }
        Iterator<Integer> it = RangesKt.until(0, floatList._size).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i9 = iNextInt + 1;
            if (progressInRange(f8, floatList.get(iNextInt), floatList.get(i9 % floatList.getSize()))) {
                int size = i9 % floatList.getSize();
                float fPositiveModulo = Utils.positiveModulo(floatList.get(size) - floatList.get(iNextInt), 1.0f);
                return Utils.positiveModulo((Utils.positiveModulo(floatList2.get(size) - floatList2.get(iNextInt), 1.0f) * (fPositiveModulo < 0.001f ? 0.5f : Utils.positiveModulo(f8 - floatList.get(iNextInt), 1.0f) / fPositiveModulo)) + floatList2.get(iNextInt), 1.0f);
            }
        }
        i.g("Collection contains no element matching the predicate.");
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean progressInRange(float f8, float f9, float f10) {
        if (f10 >= f9) {
            return f9 <= f8 && f8 <= f10;
        }
        return f8 >= f9 || f8 <= f10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void validateProgress(FloatList floatList) {
        int i9;
        floatList.getClass();
        Boolean boolValueOf = Boolean.TRUE;
        float[] fArr = floatList.content;
        int i10 = floatList._size;
        int i11 = 0;
        while (true) {
            boolean z8 = true;
            if (i11 >= i10) {
                break;
            }
            float f8 = fArr[i11];
            if (!boolValueOf.booleanValue() || 0.0f > f8 || f8 > 1.0f) {
                z8 = false;
            }
            boolValueOf = Boolean.valueOf(z8);
            i11++;
        }
        if (!boolValueOf.booleanValue()) {
            l9.i.e(FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null), "FloatMapping - Progress outside of range: ");
            return;
        }
        Iterable iterableUntil = RangesKt.until(1, floatList.getSize());
        if ((iterableUntil instanceof Collection) && ((Collection) iterableUntil).isEmpty()) {
            i9 = 0;
        } else {
            Iterator it = iterableUntil.iterator();
            i9 = 0;
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                if (floatList.get(iNextInt) < floatList.get(iNextInt - 1) && (i9 = i9 + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        if (i9 <= 1) {
            return;
        }
        l9.i.e(FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null), "FloatMapping - Progress wraps more than once: ");
    }
}
