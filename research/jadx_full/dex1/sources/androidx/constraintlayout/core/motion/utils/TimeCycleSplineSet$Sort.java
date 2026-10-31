package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TimeCycleSplineSet$Sort {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void doubleQuickSort(int[] iArr, float[][] fArr, int i9, int i10) {
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i10;
        iArr2[1] = i9;
        int i11 = 2;
        while (i11 > 0) {
            int i12 = iArr2[i11 - 1];
            int i13 = i11 - 2;
            int i14 = iArr2[i13];
            if (i12 < i14) {
                int iPartition = partition(iArr, fArr, i12, i14);
                iArr2[i13] = iPartition - 1;
                iArr2[i11 - 1] = i12;
                int i15 = i11 + 1;
                iArr2[i11] = i14;
                i11 += 2;
                iArr2[i15] = iPartition + 1;
            } else {
                i11 = i13;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int partition(int[] iArr, float[][] fArr, int i9, int i10) {
        int i11 = iArr[i10];
        int i12 = i9;
        while (i9 < i10) {
            if (iArr[i9] <= i11) {
                swap(iArr, fArr, i12, i9);
                i12++;
            }
            i9++;
        }
        swap(iArr, fArr, i12, i10);
        return i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void swap(int[] iArr, float[][] fArr, int i9, int i10) {
        int i11 = iArr[i9];
        iArr[i9] = iArr[i10];
        iArr[i10] = i11;
        float[] fArr2 = fArr[i9];
        fArr[i9] = fArr[i10];
        fArr[i10] = fArr2;
    }
}
