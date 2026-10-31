package androidx.core.math;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MathUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MathUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long addExact(long j9, long j10) {
        long j11 = j9 + j10;
        if ((j9 >= 0) == (j10 >= 0)) {
            if ((j9 >= 0) != (j11 >= 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double clamp(double d, double d9, double d10) {
        if (d < d9) {
            return d9;
        }
        return d > d10 ? d10 : d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long decrementExact(long j9) {
        if (j9 != Long.MIN_VALUE) {
            return j9 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long incrementExact(long j9) {
        if (j9 != Long.MAX_VALUE) {
            return j9 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long multiplyExact(long j9, long j10) {
        long j11 = j9 * j10;
        if (j9 == 0 || j10 == 0 || (j11 / j9 == j10 && j11 / j10 == j9)) {
            return j11;
        }
        throw new ArithmeticException("integer overflow");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long negateExact(long j9) {
        if (j9 != Long.MIN_VALUE) {
            return -j9;
        }
        throw new ArithmeticException("integer overflow");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long subtractExact(long j9, long j10) {
        long j11 = j9 - j10;
        if ((j9 < 0) != (j10 < 0)) {
            if ((j9 < 0) != (j11 < 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toIntExact(long j9) {
        if (j9 > 2147483647L || j9 < -2147483648L) {
            throw new ArithmeticException("integer overflow");
        }
        return (int) j9;
    }

    public static float clamp(float f8, float f9, float f10) {
        if (f8 < f9) {
            return f9;
        }
        return f8 > f10 ? f10 : f8;
    }

    public static int clamp(int i9, int i10, int i11) {
        if (i9 < i10) {
            return i10;
        }
        return i9 > i11 ? i11 : i9;
    }

    public static long clamp(long j9, long j10, long j11) {
        if (j9 < j10) {
            return j10;
        }
        return j9 > j11 ? j11 : j9;
    }

    public static int negateExact(int i9) {
        if (i9 != Integer.MIN_VALUE) {
            return -i9;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int decrementExact(int i9) {
        if (i9 != Integer.MIN_VALUE) {
            return i9 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int incrementExact(int i9) {
        if (i9 != Integer.MAX_VALUE) {
            return i9 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int multiplyExact(int i9, int i10) {
        int i11 = i9 * i10;
        if (i9 == 0 || i10 == 0 || (i11 / i9 == i10 && i11 / i10 == i9)) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int addExact(int i9, int i10) {
        int i11 = i9 + i10;
        if ((i9 >= 0) == (i10 >= 0)) {
            if ((i9 >= 0) != (i11 >= 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return i11;
    }

    public static int subtractExact(int i9, int i10) {
        int i11 = i9 - i10;
        if ((i9 < 0) != (i10 < 0)) {
            if ((i9 < 0) != (i11 < 0)) {
                throw new ArithmeticException("integer overflow");
            }
        }
        return i11;
    }
}
