package kotlin.random;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.b;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\b'\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0005H\u0016¨\u0006\u0019"}, d2 = {"Lkotlin/random/Random;", "", "<init>", "()V", "nextBits", "", "bitCount", "nextInt", "until", TypedValues$TransitionType.S_FROM, "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,387:1\n1#2:388\n*E\n"})
public abstract class Random {
    public static final Random$Default Default = new Random$Default(null);
    private static final Random defaultRandom = PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Random access$getDefaultRandom$cp() {
        return defaultRandom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: nextBytes");
            return null;
        }
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = bArr.length;
        }
        return random.nextBytes(bArr, i9, i10);
    }

    public abstract int nextBits(int bitCount);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean nextBoolean() {
        return nextBits(1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] nextBytes(byte[] array, int fromIndex, int toIndex) {
        array.getClass();
        if (fromIndex < 0 || fromIndex > array.length || toIndex < 0 || toIndex > array.length) {
            StringBuilder sbV = a.v("fromIndex (", fromIndex, toIndex, ") or toIndex (", ") are out of range: 0..");
            sbV.append(array.length);
            sbV.append('.');
            throw new IllegalArgumentException(sbV.toString().toString());
        }
        if (fromIndex > toIndex) {
            throw new IllegalArgumentException(("fromIndex (" + fromIndex + ") must be not greater than toIndex (" + toIndex + ").").toString());
        }
        int i9 = (toIndex - fromIndex) / 4;
        for (int i10 = 0; i10 < i9; i10++) {
            int iNextInt = nextInt();
            array[fromIndex] = (byte) iNextInt;
            array[fromIndex + 1] = (byte) (iNextInt >>> 8);
            array[fromIndex + 2] = (byte) (iNextInt >>> 16);
            array[fromIndex + 3] = (byte) (iNextInt >>> 24);
            fromIndex += 4;
        }
        int i11 = toIndex - fromIndex;
        int iNextBits = nextBits(i11 * 8);
        for (int i12 = 0; i12 < i11; i12++) {
            array[fromIndex + i12] = (byte) (iNextBits >>> (i12 * 8));
        }
        return array;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double nextDouble(double from, double until) {
        double dNextDouble;
        RandomKt.checkRangeBounds(from, until);
        double d = until - from;
        if (!Double.isInfinite(d) || Math.abs(from) > Double.MAX_VALUE || Math.abs(until) > Double.MAX_VALUE) {
            dNextDouble = from + (nextDouble() * d);
        } else {
            double d9 = 2;
            double dNextDouble2 = ((until / d9) - (from / d9)) * nextDouble();
            dNextDouble = from + dNextDouble2 + dNextDouble2;
        }
        return dNextDouble >= until ? Math.nextAfter(until, Double.NEGATIVE_INFINITY) : dNextDouble;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float nextFloat() {
        return nextBits(24) / 1.6777216E7f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int nextInt(int from, int until) {
        int iNextInt;
        int i9;
        int iNextBits;
        RandomKt.checkRangeBounds(from, until);
        int i10 = until - from;
        if (i10 > 0 || i10 == Integer.MIN_VALUE) {
            if (((-i10) & i10) == i10) {
                iNextBits = nextBits(RandomKt.fastLog2(i10));
            } else {
                do {
                    iNextInt = nextInt() >>> 1;
                    i9 = iNextInt % i10;
                } while ((i10 - 1) + (iNextInt - i9) < 0);
                iNextBits = i9;
            }
            return from + iNextBits;
        }
        while (true) {
            int iNextInt2 = nextInt();
            if (from <= iNextInt2 && iNextInt2 < until) {
                return iNextInt2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long nextLong(long from, long until) {
        long jNextLong;
        long j9;
        long jNextBits;
        int iNextInt;
        RandomKt.checkRangeBounds(from, until);
        long j10 = until - from;
        if (j10 > 0) {
            if (((-j10) & j10) == j10) {
                int i9 = (int) j10;
                int i10 = (int) (j10 >>> 32);
                if (i9 != 0) {
                    iNextInt = nextBits(RandomKt.fastLog2(i9));
                } else if (i10 == 1) {
                    iNextInt = nextInt();
                } else {
                    jNextBits = (((long) nextBits(RandomKt.fastLog2(i10))) << 32) + (((long) nextInt()) & 4294967295L);
                }
                jNextBits = ((long) iNextInt) & 4294967295L;
            } else {
                do {
                    jNextLong = nextLong() >>> 1;
                    j9 = jNextLong % j10;
                } while ((j10 - 1) + (jNextLong - j9) < 0);
                jNextBits = j9;
            }
            return from + jNextBits;
        }
        while (true) {
            long jNextLong2 = nextLong();
            if (from <= jNextLong2 && jNextLong2 < until) {
                return jNextLong2;
            }
        }
    }

    public int nextInt(int until) {
        return nextInt(0, until);
    }

    public int nextInt() {
        return nextBits(32);
    }

    public double nextDouble(double until) {
        return nextDouble(0.0d, until);
    }

    public double nextDouble() {
        return PlatformRandomKt.doubleFromParts(nextBits(26), nextBits(27));
    }

    public long nextLong(long until) {
        return nextLong(0L, until);
    }

    public long nextLong() {
        return (((long) nextInt()) << 32) + ((long) nextInt());
    }

    public byte[] nextBytes(byte[] array) {
        array.getClass();
        return nextBytes(array, 0, array.length);
    }

    public byte[] nextBytes(int size) {
        return nextBytes(new byte[size]);
    }
}
