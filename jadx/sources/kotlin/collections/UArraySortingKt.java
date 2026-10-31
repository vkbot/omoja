package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout;
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
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, m3159d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, m3160k = 2, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m6543partitionnroSd4(long[] jArr, int i10, int i11) {
        long j10;
        long jM6322getsVKNKU = ULongArray.m6322getsVKNKU(jArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                j10 = jM6322getsVKNKU ^ Long.MIN_VALUE;
                if (Long.compare(ULongArray.m6322getsVKNKU(jArr, i10) ^ Long.MIN_VALUE, j10) >= 0) {
                    break;
                }
                i10++;
            }
            while (Long.compare(ULongArray.m6322getsVKNKU(jArr, i11) ^ Long.MIN_VALUE, j10) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                long jM6322getsVKNKU2 = ULongArray.m6322getsVKNKU(jArr, i10);
                ULongArray.m6327setk8EXiF4(jArr, i10, ULongArray.m6322getsVKNKU(jArr, i11));
                ULongArray.m6327setk8EXiF4(jArr, i11, jM6322getsVKNKU2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m6544partition4UcCI2c(byte[] bArr, int i10, int i11) {
        int i12;
        byte bM6164getw2LRezQ = UByteArray.m6164getw2LRezQ(bArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                int iM6164getw2LRezQ = UByteArray.m6164getw2LRezQ(bArr, i10) & UByte.MAX_VALUE;
                i12 = bM6164getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM6164getw2LRezQ, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (Intrinsics.compare(UByteArray.m6164getw2LRezQ(bArr, i11) & UByte.MAX_VALUE, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                byte bM6164getw2LRezQ2 = UByteArray.m6164getw2LRezQ(bArr, i10);
                UByteArray.m6169setVurrAj0(bArr, i10, UByteArray.m6164getw2LRezQ(bArr, i11));
                UByteArray.m6169setVurrAj0(bArr, i11, bM6164getw2LRezQ2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m6545partitionAa5vz7o(short[] sArr, int i10, int i11) {
        int i12;
        short sM6427getMh2AYeg = UShortArray.m6427getMh2AYeg(sArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                int iM6427getMh2AYeg = UShortArray.m6427getMh2AYeg(sArr, i10) & UShort.MAX_VALUE;
                i12 = sM6427getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM6427getMh2AYeg, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (Intrinsics.compare(UShortArray.m6427getMh2AYeg(sArr, i11) & UShort.MAX_VALUE, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                short sM6427getMh2AYeg2 = UShortArray.m6427getMh2AYeg(sArr, i10);
                UShortArray.m6432set01HTLdE(sArr, i10, UShortArray.m6427getMh2AYeg(sArr, i11));
                UShortArray.m6432set01HTLdE(sArr, i11, sM6427getMh2AYeg2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m6546partitionoBK06Vg(int[] iArr, int i10, int i11) {
        int i12;
        int iM6243getpVg5ArA = UIntArray.m6243getpVg5ArA(iArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                i12 = iM6243getpVg5ArA ^ Integer.MIN_VALUE;
                if (Integer.compare(UIntArray.m6243getpVg5ArA(iArr, i10) ^ Integer.MIN_VALUE, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (Integer.compare(UIntArray.m6243getpVg5ArA(iArr, i11) ^ Integer.MIN_VALUE, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                int iM6243getpVg5ArA2 = UIntArray.m6243getpVg5ArA(iArr, i10);
                UIntArray.m6248setVXSXFK8(iArr, i10, UIntArray.m6243getpVg5ArA(iArr, i11));
                UIntArray.m6248setVXSXFK8(iArr, i11, iM6243getpVg5ArA2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m6547quickSortnroSd4(long[] jArr, int i10, int i11) {
        int iM6543partitionnroSd4 = m6543partitionnroSd4(jArr, i10, i11);
        int i12 = iM6543partitionnroSd4 - 1;
        if (i10 < i12) {
            m6547quickSortnroSd4(jArr, i10, i12);
        }
        if (iM6543partitionnroSd4 < i11) {
            m6547quickSortnroSd4(jArr, iM6543partitionnroSd4, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m6548quickSort4UcCI2c(byte[] bArr, int i10, int i11) {
        int iM6544partition4UcCI2c = m6544partition4UcCI2c(bArr, i10, i11);
        int i12 = iM6544partition4UcCI2c - 1;
        if (i10 < i12) {
            m6548quickSort4UcCI2c(bArr, i10, i12);
        }
        if (iM6544partition4UcCI2c < i11) {
            m6548quickSort4UcCI2c(bArr, iM6544partition4UcCI2c, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m6549quickSortAa5vz7o(short[] sArr, int i10, int i11) {
        int iM6545partitionAa5vz7o = m6545partitionAa5vz7o(sArr, i10, i11);
        int i12 = iM6545partitionAa5vz7o - 1;
        if (i10 < i12) {
            m6549quickSortAa5vz7o(sArr, i10, i12);
        }
        if (iM6545partitionAa5vz7o < i11) {
            m6549quickSortAa5vz7o(sArr, iM6545partitionAa5vz7o, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m6550quickSortoBK06Vg(int[] iArr, int i10, int i11) {
        int iM6546partitionoBK06Vg = m6546partitionoBK06Vg(iArr, i10, i11);
        int i12 = iM6546partitionoBK06Vg - 1;
        if (i10 < i12) {
            m6550quickSortoBK06Vg(iArr, i10, i12);
        }
        if (iM6546partitionoBK06Vg < i11) {
            m6550quickSortoBK06Vg(iArr, iM6546partitionoBK06Vg, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m6551sortArraynroSd4(long[] jArr, int i10, int i11) {
        jArr.getClass();
        m6547quickSortnroSd4(jArr, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m6552sortArray4UcCI2c(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        m6548quickSort4UcCI2c(bArr, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m6553sortArrayAa5vz7o(short[] sArr, int i10, int i11) {
        sArr.getClass();
        m6549quickSortAa5vz7o(sArr, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m6554sortArrayoBK06Vg(int[] iArr, int i10, int i11) {
        iArr.getClass();
        m6550quickSortoBK06Vg(iArr, i10, i11 - 1);
    }
}
