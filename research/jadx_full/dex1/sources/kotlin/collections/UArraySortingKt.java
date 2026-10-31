package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UArraySortingKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m550partitionnroSd4(long[] jArr, int i9, int i10) {
        long j9;
        long jM329getsVKNKU = ULongArray.m329getsVKNKU(jArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                j9 = jM329getsVKNKU ^ Long.MIN_VALUE;
                if (Long.compare(ULongArray.m329getsVKNKU(jArr, i9) ^ Long.MIN_VALUE, j9) >= 0) {
                    break;
                }
                i9++;
            }
            while (Long.compare(ULongArray.m329getsVKNKU(jArr, i10) ^ Long.MIN_VALUE, j9) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                long jM329getsVKNKU2 = ULongArray.m329getsVKNKU(jArr, i9);
                ULongArray.m334setk8EXiF4(jArr, i9, ULongArray.m329getsVKNKU(jArr, i10));
                ULongArray.m334setk8EXiF4(jArr, i10, jM329getsVKNKU2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m551partition4UcCI2c(byte[] bArr, int i9, int i10) {
        int i11;
        byte bM171getw2LRezQ = UByteArray.m171getw2LRezQ(bArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                int iM171getw2LRezQ = UByteArray.m171getw2LRezQ(bArr, i9) & UByte.MAX_VALUE;
                i11 = bM171getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM171getw2LRezQ, i11) >= 0) {
                    break;
                }
                i9++;
            }
            while (Intrinsics.compare(UByteArray.m171getw2LRezQ(bArr, i10) & UByte.MAX_VALUE, i11) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                byte bM171getw2LRezQ2 = UByteArray.m171getw2LRezQ(bArr, i9);
                UByteArray.m176setVurrAj0(bArr, i9, UByteArray.m171getw2LRezQ(bArr, i10));
                UByteArray.m176setVurrAj0(bArr, i10, bM171getw2LRezQ2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m552partitionAa5vz7o(short[] sArr, int i9, int i10) {
        int i11;
        short sM434getMh2AYeg = UShortArray.m434getMh2AYeg(sArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                int iM434getMh2AYeg = UShortArray.m434getMh2AYeg(sArr, i9) & UShort.MAX_VALUE;
                i11 = sM434getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM434getMh2AYeg, i11) >= 0) {
                    break;
                }
                i9++;
            }
            while (Intrinsics.compare(UShortArray.m434getMh2AYeg(sArr, i10) & UShort.MAX_VALUE, i11) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                short sM434getMh2AYeg2 = UShortArray.m434getMh2AYeg(sArr, i9);
                UShortArray.m439set01HTLdE(sArr, i9, UShortArray.m434getMh2AYeg(sArr, i10));
                UShortArray.m439set01HTLdE(sArr, i10, sM434getMh2AYeg2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m553partitionoBK06Vg(int[] iArr, int i9, int i10) {
        int i11;
        int iM250getpVg5ArA = UIntArray.m250getpVg5ArA(iArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                i11 = iM250getpVg5ArA ^ Integer.MIN_VALUE;
                if (Integer.compare(UIntArray.m250getpVg5ArA(iArr, i9) ^ Integer.MIN_VALUE, i11) >= 0) {
                    break;
                }
                i9++;
            }
            while (Integer.compare(UIntArray.m250getpVg5ArA(iArr, i10) ^ Integer.MIN_VALUE, i11) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                int iM250getpVg5ArA2 = UIntArray.m250getpVg5ArA(iArr, i9);
                UIntArray.m255setVXSXFK8(iArr, i9, UIntArray.m250getpVg5ArA(iArr, i10));
                UIntArray.m255setVXSXFK8(iArr, i10, iM250getpVg5ArA2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m554quickSortnroSd4(long[] jArr, int i9, int i10) {
        int iM550partitionnroSd4 = m550partitionnroSd4(jArr, i9, i10);
        int i11 = iM550partitionnroSd4 - 1;
        if (i9 < i11) {
            m554quickSortnroSd4(jArr, i9, i11);
        }
        if (iM550partitionnroSd4 < i10) {
            m554quickSortnroSd4(jArr, iM550partitionnroSd4, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m555quickSort4UcCI2c(byte[] bArr, int i9, int i10) {
        int iM551partition4UcCI2c = m551partition4UcCI2c(bArr, i9, i10);
        int i11 = iM551partition4UcCI2c - 1;
        if (i9 < i11) {
            m555quickSort4UcCI2c(bArr, i9, i11);
        }
        if (iM551partition4UcCI2c < i10) {
            m555quickSort4UcCI2c(bArr, iM551partition4UcCI2c, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m556quickSortAa5vz7o(short[] sArr, int i9, int i10) {
        int iM552partitionAa5vz7o = m552partitionAa5vz7o(sArr, i9, i10);
        int i11 = iM552partitionAa5vz7o - 1;
        if (i9 < i11) {
            m556quickSortAa5vz7o(sArr, i9, i11);
        }
        if (iM552partitionAa5vz7o < i10) {
            m556quickSortAa5vz7o(sArr, iM552partitionAa5vz7o, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m557quickSortoBK06Vg(int[] iArr, int i9, int i10) {
        int iM553partitionoBK06Vg = m553partitionoBK06Vg(iArr, i9, i10);
        int i11 = iM553partitionoBK06Vg - 1;
        if (i9 < i11) {
            m557quickSortoBK06Vg(iArr, i9, i11);
        }
        if (iM553partitionoBK06Vg < i10) {
            m557quickSortoBK06Vg(iArr, iM553partitionoBK06Vg, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m558sortArraynroSd4(long[] jArr, int i9, int i10) {
        jArr.getClass();
        m554quickSortnroSd4(jArr, i9, i10 - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m559sortArray4UcCI2c(byte[] bArr, int i9, int i10) {
        bArr.getClass();
        m555quickSort4UcCI2c(bArr, i9, i10 - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m560sortArrayAa5vz7o(short[] sArr, int i9, int i10) {
        sArr.getClass();
        m556quickSortAa5vz7o(sArr, i9, i10 - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m561sortArrayoBK06Vg(int[] iArr, int i9, int i10) {
        iArr.getClass();
        m557quickSortoBK06Vg(iArr, i9, i10 - 1);
    }
}
