package k4;

import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] a(ArrayDeque arrayDeque, int i9) {
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i9) {
            return bArr;
        }
        int length = i9 - bArr.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i9);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int iMin = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, bArrCopyOf, i9 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] b(t7.a aVar) {
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i9 = 0;
        while (i9 < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i9);
            byte[] bArr = new byte[iMin2];
            arrayDeque.add(bArr);
            int i10 = 0;
            while (i10 < iMin2) {
                int i11 = aVar.read(bArr, i10, iMin2 - i10);
                if (i11 == -1) {
                    return a(arrayDeque, i9);
                }
                i10 += i11;
                i9 += i11;
            }
            long j9 = ((long) iMin) * ((long) (iMin < 4096 ? 4 : 2));
            if (j9 > 2147483647L) {
                iMin = Integer.MAX_VALUE;
            } else {
                iMin = j9 < -2147483648L ? Integer.MIN_VALUE : (int) j9;
            }
        }
        if (aVar.read() == -1) {
            return a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
