package kotlin.sequences;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.protobuf.AbstractC1178q;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.JvmName;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0019\u0010\u0000\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\b0\u0002H\u0007¢\u0006\u0004\b\t\u0010\u0004\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0002H\u0007¢\u0006\u0004\b\u000b\u0010\u0004¨\u0006\f"}, m3159d2 = {"sum", "Lkotlin/UInt;", "Lkotlin/sequences/Sequence;", "sumOfUInt", "(Lkotlin/sequences/Sequence;)I", "Lkotlin/ULong;", "sumOfULong", "(Lkotlin/sequences/Sequence;)J", "Lkotlin/UByte;", "sumOfUByte", "Lkotlin/UShort;", "sumOfUShort", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/sequences/USequencesKt")
class USequencesKt___USequencesKt {
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(Sequence<UByte> sequence) {
        sequence.getClass();
        Iterator<UByte> it = sequence.iterator();
        int iM6183constructorimpl = 0;
        while (it.hasNext()) {
            iM6183constructorimpl = UInt.m6183constructorimpl(UInt.m6183constructorimpl(it.next().getData() & UByte.MAX_VALUE) + iM6183constructorimpl);
        }
        return iM6183constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(Sequence<UInt> sequence) {
        sequence.getClass();
        Iterator<UInt> it = sequence.iterator();
        int iM2068b = 0;
        while (it.hasNext()) {
            iM2068b = AbstractC1178q.m2068b(it.next(), iM2068b);
        }
        return iM2068b;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(Sequence<ULong> sequence) {
        sequence.getClass();
        Iterator<ULong> it = sequence.iterator();
        long jM6262constructorimpl = 0;
        while (it.hasNext()) {
            jM6262constructorimpl = ULong.m6262constructorimpl(it.next().getData() + jM6262constructorimpl);
        }
        return jM6262constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(Sequence<UShort> sequence) {
        sequence.getClass();
        Iterator<UShort> it = sequence.iterator();
        int iM6183constructorimpl = 0;
        while (it.hasNext()) {
            iM6183constructorimpl = UInt.m6183constructorimpl(UInt.m6183constructorimpl(it.next().getData() & UShort.MAX_VALUE) + iM6183constructorimpl);
        }
        return iM6183constructorimpl;
    }
}
