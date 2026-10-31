package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import com.google.protobuf.q;
import java.util.Collection;
import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.JvmName;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007¢\u0006\u0002\u0010\u0004\u001a\u0017\u0010\u0005\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0017\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0007¢\u0006\u0002\u0010\f\u001a\u0017\u0010\r\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\u000f0\u0002H\u0007¢\u0006\u0002\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0019\u0010\u0011\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u000b0\u0012H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0007¢\u0006\u0004\b\u0017\u0010\u0014\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0007¢\u0006\u0004\b\u0018\u0010\u0014¨\u0006\u0019"}, d2 = {"toUByteArray", "Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "(Ljava/util/Collection;)[B", "toUIntArray", "Lkotlin/UIntArray;", "Lkotlin/UInt;", "(Ljava/util/Collection;)[I", "toULongArray", "Lkotlin/ULongArray;", "Lkotlin/ULong;", "(Ljava/util/Collection;)[J", "toUShortArray", "Lkotlin/UShortArray;", "Lkotlin/UShort;", "(Ljava/util/Collection;)[S", "sum", "", "sumOfUInt", "(Ljava/lang/Iterable;)I", "sumOfULong", "(Ljava/lang/Iterable;)J", "sumOfUByte", "sumOfUShort", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/collections/UCollectionsKt")
class UCollectionsKt___UCollectionsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(Iterable<UByte> iterable) {
        iterable.getClass();
        Iterator<UByte> it = iterable.iterator();
        int iM190constructorimpl = 0;
        while (it.hasNext()) {
            iM190constructorimpl = UInt.m190constructorimpl(UInt.m190constructorimpl(it.next().getData() & UByte.MAX_VALUE) + iM190constructorimpl);
        }
        return iM190constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(Iterable<UInt> iterable) {
        iterable.getClass();
        Iterator<UInt> it = iterable.iterator();
        int iB = 0;
        while (it.hasNext()) {
            iB = q.b(it.next(), iB);
        }
        return iB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(Iterable<ULong> iterable) {
        iterable.getClass();
        Iterator<ULong> it = iterable.iterator();
        long jM269constructorimpl = 0;
        while (it.hasNext()) {
            jM269constructorimpl = ULong.m269constructorimpl(it.next().getData() + jM269constructorimpl);
        }
        return jM269constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(Iterable<UShort> iterable) {
        iterable.getClass();
        Iterator<UShort> it = iterable.iterator();
        int iM190constructorimpl = 0;
        while (it.hasNext()) {
            iM190constructorimpl = UInt.m190constructorimpl(UInt.m190constructorimpl(it.next().getData() & UShort.MAX_VALUE) + iM190constructorimpl);
        }
        return iM190constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte[] toUByteArray(Collection<UByte> collection) {
        collection.getClass();
        byte[] bArrM165constructorimpl = UByteArray.m165constructorimpl(collection.size());
        Iterator<UByte> it = collection.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            UByteArray.m176setVurrAj0(bArrM165constructorimpl, i9, it.next().getData());
            i9++;
        }
        return bArrM165constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int[] toUIntArray(Collection<UInt> collection) {
        collection.getClass();
        int[] iArrM244constructorimpl = UIntArray.m244constructorimpl(collection.size());
        Iterator<UInt> it = collection.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            UIntArray.m255setVXSXFK8(iArrM244constructorimpl, i9, it.next().getData());
            i9++;
        }
        return iArrM244constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long[] toULongArray(Collection<ULong> collection) {
        collection.getClass();
        long[] jArrM323constructorimpl = ULongArray.m323constructorimpl(collection.size());
        Iterator<ULong> it = collection.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            ULongArray.m334setk8EXiF4(jArrM323constructorimpl, i9, it.next().getData());
            i9++;
        }
        return jArrM323constructorimpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final short[] toUShortArray(Collection<UShort> collection) {
        collection.getClass();
        short[] sArrM428constructorimpl = UShortArray.m428constructorimpl(collection.size());
        Iterator<UShort> it = collection.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            UShortArray.m439set01HTLdE(sArrM428constructorimpl, i9, it.next().getData());
            i9++;
        }
        return sArrM428constructorimpl;
    }
}
