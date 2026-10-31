package androidx.core.content.res;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class GrowingArrayUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private GrowingArrayUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> T[] append(T[] tArr, int i9, T t) {
        if (i9 + 1 > tArr.length) {
            Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i9));
            System.arraycopy(tArr, 0, objArr, 0, i9);
            tArr = (T[]) objArr;
        }
        tArr[i9] = t;
        return tArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int growSize(int i9) {
        if (i9 <= 4) {
            return 8;
        }
        return i9 * 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> T[] insert(T[] tArr, int i9, int i10, T t) {
        if (i9 + 1 <= tArr.length) {
            System.arraycopy(tArr, i10, tArr, i10 + 1, i9 - i10);
            tArr[i10] = t;
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(i9)));
        System.arraycopy(tArr, 0, tArr2, 0, i10);
        tArr2[i10] = t;
        System.arraycopy(tArr, i10, tArr2, i10 + 1, tArr.length - i10);
        return tArr2;
    }

    public static int[] append(int[] iArr, int i9, int i10) {
        if (i9 + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i9)];
            System.arraycopy(iArr, 0, iArr2, 0, i9);
            iArr = iArr2;
        }
        iArr[i9] = i10;
        return iArr;
    }

    public static long[] append(long[] jArr, int i9, long j9) {
        if (i9 + 1 > jArr.length) {
            long[] jArr2 = new long[growSize(i9)];
            System.arraycopy(jArr, 0, jArr2, 0, i9);
            jArr = jArr2;
        }
        jArr[i9] = j9;
        return jArr;
    }

    public static boolean[] append(boolean[] zArr, int i9, boolean z8) {
        if (i9 + 1 > zArr.length) {
            boolean[] zArr2 = new boolean[growSize(i9)];
            System.arraycopy(zArr, 0, zArr2, 0, i9);
            zArr = zArr2;
        }
        zArr[i9] = z8;
        return zArr;
    }

    public static int[] insert(int[] iArr, int i9, int i10, int i11) {
        if (i9 + 1 <= iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i9 - i10);
            iArr[i10] = i11;
            return iArr;
        }
        int[] iArr2 = new int[growSize(i9)];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        iArr2[i10] = i11;
        System.arraycopy(iArr, i10, iArr2, i10 + 1, iArr.length - i10);
        return iArr2;
    }

    public static long[] insert(long[] jArr, int i9, int i10, long j9) {
        if (i9 + 1 <= jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i9 - i10);
            jArr[i10] = j9;
            return jArr;
        }
        long[] jArr2 = new long[growSize(i9)];
        System.arraycopy(jArr, 0, jArr2, 0, i10);
        jArr2[i10] = j9;
        System.arraycopy(jArr, i10, jArr2, i10 + 1, jArr.length - i10);
        return jArr2;
    }

    public static boolean[] insert(boolean[] zArr, int i9, int i10, boolean z8) {
        if (i9 + 1 <= zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i9 - i10);
            zArr[i10] = z8;
            return zArr;
        }
        boolean[] zArr2 = new boolean[growSize(i9)];
        System.arraycopy(zArr, 0, zArr2, 0, i10);
        zArr2[i10] = z8;
        System.arraycopy(zArr, i10, zArr2, i10 + 1, zArr.length - i10);
        return zArr2;
    }
}
