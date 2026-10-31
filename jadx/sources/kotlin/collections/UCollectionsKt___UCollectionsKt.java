package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.protobuf.AbstractC1178q;
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
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007¢\u0006\u0002\u0010\u0004\u001a\u0017\u0010\u0005\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0017\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0007¢\u0006\u0002\u0010\f\u001a\u0017\u0010\r\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\u000f0\u0002H\u0007¢\u0006\u0002\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0019\u0010\u0011\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u000b0\u0012H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0007¢\u0006\u0004\b\u0017\u0010\u0014\u001a\u0019\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0007¢\u0006\u0004\b\u0018\u0010\u0014¨\u0006\u0019"}, m3159d2 = {"toUByteArray", "Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "(Ljava/util/Collection;)[B", "toUIntArray", "Lkotlin/UIntArray;", "Lkotlin/UInt;", "(Ljava/util/Collection;)[I", "toULongArray", "Lkotlin/ULongArray;", "Lkotlin/ULong;", "(Ljava/util/Collection;)[J", "toUShortArray", "Lkotlin/UShortArray;", "Lkotlin/UShort;", "(Ljava/util/Collection;)[S", "sum", "", "sumOfUInt", "(Ljava/lang/Iterable;)I", "sumOfULong", "(Ljava/lang/Iterable;)J", "sumOfUByte", "sumOfUShort", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/collections/UCollectionsKt")
class UCollectionsKt___UCollectionsKt {
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(Iterable<UByte> iterable) {
        iterable.getClass();
        Iterator<UByte> it = iterable.iterator();
        int iM6183constructorimpl = 0;
        while (it.hasNext()) {
            iM6183constructorimpl = UInt.m6183constructorimpl(UInt.m6183constructorimpl(it.next().getData() & UByte.MAX_VALUE) + iM6183constructorimpl);
        }
        return iM6183constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(Iterable<UInt> iterable) {
        iterable.getClass();
        Iterator<UInt> it = iterable.iterator();
        int iM2068b = 0;
        while (it.hasNext()) {
            iM2068b = AbstractC1178q.m2068b(it.next(), iM2068b);
        }
        return iM2068b;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(Iterable<ULong> iterable) {
        iterable.getClass();
        Iterator<ULong> it = iterable.iterator();
        long jM6262constructorimpl = 0;
        while (it.hasNext()) {
            jM6262constructorimpl = ULong.m6262constructorimpl(it.next().getData() + jM6262constructorimpl);
        }
        return jM6262constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(Iterable<UShort> iterable) {
        iterable.getClass();
        Iterator<UShort> it = iterable.iterator();
        int iM6183constructorimpl = 0;
        while (it.hasNext()) {
            iM6183constructorimpl = UInt.m6183constructorimpl(UInt.m6183constructorimpl(it.next().getData() & UShort.MAX_VALUE) + iM6183constructorimpl);
        }
        return iM6183constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte[] toUByteArray(Collection<UByte> collection) {
        collection.getClass();
        byte[] bArrM6158constructorimpl = UByteArray.m6158constructorimpl(collection.size());
        Iterator<UByte> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            UByteArray.m6169setVurrAj0(bArrM6158constructorimpl, i10, it.next().getData());
            i10++;
        }
        return bArrM6158constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int[] toUIntArray(Collection<UInt> collection) {
        collection.getClass();
        int[] iArrM6237constructorimpl = UIntArray.m6237constructorimpl(collection.size());
        Iterator<UInt> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            UIntArray.m6248setVXSXFK8(iArrM6237constructorimpl, i10, it.next().getData());
            i10++;
        }
        return iArrM6237constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long[] toULongArray(Collection<ULong> collection) {
        collection.getClass();
        long[] jArrM6316constructorimpl = ULongArray.m6316constructorimpl(collection.size());
        Iterator<ULong> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            ULongArray.m6327setk8EXiF4(jArrM6316constructorimpl, i10, it.next().getData());
            i10++;
        }
        return jArrM6316constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final short[] toUShortArray(Collection<UShort> collection) {
        collection.getClass();
        short[] sArrM6421constructorimpl = UShortArray.m6421constructorimpl(collection.size());
        Iterator<UShort> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            UShortArray.m6432set01HTLdE(sArrM6421constructorimpl, i10, it.next().getData());
            i10++;
        }
        return sArrM6421constructorimpl;
    }
}
