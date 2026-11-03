package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UArraySorting.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class UArraySortingKt {
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m738partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte bM358getw2LRezQ = UByteArray.m358getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM358getw2LRezQ = UByteArray.m358getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = bM358getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(iM358getw2LRezQ, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m358getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte bM358getw2LRezQ2 = UByteArray.m358getw2LRezQ(bArr, i);
                UByteArray.m363setVurrAj0(bArr, i, UByteArray.m358getw2LRezQ(bArr, i2));
                UByteArray.m363setVurrAj0(bArr, i2, bM358getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m742quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int iM738partition4UcCI2c = m738partition4UcCI2c(bArr, i, i2);
        int i3 = iM738partition4UcCI2c - 1;
        if (i < i3) {
            m742quickSort4UcCI2c(bArr, i, i3);
        }
        if (iM738partition4UcCI2c < i2) {
            m742quickSort4UcCI2c(bArr, iM738partition4UcCI2c, i2);
        }
    }

    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m739partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short sM621getMh2AYeg = UShortArray.m621getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int iM621getMh2AYeg = UShortArray.m621getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = sM621getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM621getMh2AYeg, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m621getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short sM621getMh2AYeg2 = UShortArray.m621getMh2AYeg(sArr, i);
                UShortArray.m626set01HTLdE(sArr, i, UShortArray.m621getMh2AYeg(sArr, i2));
                UShortArray.m626set01HTLdE(sArr, i2, sM621getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m743quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int iM739partitionAa5vz7o = m739partitionAa5vz7o(sArr, i, i2);
        int i3 = iM739partitionAa5vz7o - 1;
        if (i < i3) {
            m743quickSortAa5vz7o(sArr, i, i3);
        }
        if (iM739partitionAa5vz7o < i2) {
            m743quickSortAa5vz7o(sArr, iM739partitionAa5vz7o, i2);
        }
    }

    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m740partitionoBK06Vg(int[] iArr, int i, int i2) {
        int iM437getpVg5ArA = UIntArray.m437getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (Integer.compareUnsigned(UIntArray.m437getpVg5ArA(iArr, i), iM437getpVg5ArA) < 0) {
                i++;
            }
            while (Integer.compareUnsigned(UIntArray.m437getpVg5ArA(iArr, i2), iM437getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int iM437getpVg5ArA2 = UIntArray.m437getpVg5ArA(iArr, i);
                UIntArray.m442setVXSXFK8(iArr, i, UIntArray.m437getpVg5ArA(iArr, i2));
                UIntArray.m442setVXSXFK8(iArr, i2, iM437getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m744quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int iM740partitionoBK06Vg = m740partitionoBK06Vg(iArr, i, i2);
        int i3 = iM740partitionoBK06Vg - 1;
        if (i < i3) {
            m744quickSortoBK06Vg(iArr, i, i3);
        }
        if (iM740partitionoBK06Vg < i2) {
            m744quickSortoBK06Vg(iArr, iM740partitionoBK06Vg, i2);
        }
    }

    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m737partitionnroSd4(long[] jArr, int i, int i2) {
        long jM516getsVKNKU = ULongArray.m516getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (Long.compareUnsigned(ULongArray.m516getsVKNKU(jArr, i), jM516getsVKNKU) < 0) {
                i++;
            }
            while (Long.compareUnsigned(ULongArray.m516getsVKNKU(jArr, i2), jM516getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long jM516getsVKNKU2 = ULongArray.m516getsVKNKU(jArr, i);
                ULongArray.m521setk8EXiF4(jArr, i, ULongArray.m516getsVKNKU(jArr, i2));
                ULongArray.m521setk8EXiF4(jArr, i2, jM516getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m741quickSortnroSd4(long[] jArr, int i, int i2) {
        int iM737partitionnroSd4 = m737partitionnroSd4(jArr, i, i2);
        int i3 = iM737partitionnroSd4 - 1;
        if (i < i3) {
            m741quickSortnroSd4(jArr, i, i3);
        }
        if (iM737partitionnroSd4 < i2) {
            m741quickSortnroSd4(jArr, iM737partitionnroSd4, i2);
        }
    }

    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m746sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m742quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m747sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m743quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m748sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m744quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m745sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m741quickSortnroSd4(array, i, i2 - 1);
    }
}
