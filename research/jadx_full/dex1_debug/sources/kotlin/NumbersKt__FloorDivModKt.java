package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\b¨\u0006\t"}, d2 = {"floorDiv", "", "", "other", "mod", "", "", "", "", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/NumbersKt")
class NumbersKt__FloorDivModKt extends NumbersKt__BigIntegersKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(byte b9, long j9) {
        long j10 = b9;
        long j11 = j10 / j9;
        return ((j10 ^ j9) >= 0 || j9 * j11 == j10) ? j11 : j11 - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(float f8, double d) {
        double d9 = ((double) f8) % d;
        return (d9 == 0.0d || Math.signum(d9) == Math.signum(d)) ? d9 : d9 + d;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b9, short s5) {
        int i9 = b9 / s5;
        return ((b9 ^ s5) >= 0 || s5 * i9 == b9) ? i9 : i9 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b9, int i9) {
        int i10 = b9 / i9;
        return ((b9 ^ i9) >= 0 || i9 * i10 == b9) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b9, byte b10) {
        int i9 = b9 / b10;
        return ((b9 ^ b10) >= 0 || b10 * i9 == b9) ? i9 : i9 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, byte b9) {
        int i9 = s5 / b9;
        return ((s5 ^ b9) >= 0 || b9 * i9 == s5) ? i9 : i9 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, short s9) {
        int i9 = s5 / s9;
        return ((s5 ^ s9) >= 0 || s9 * i9 == s5) ? i9 : i9 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(byte b9, short s5) {
        int i9 = b9 % s5;
        return (short) (i9 + (s5 & (((i9 ^ s5) & ((-i9) | i9)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, int i9) {
        int i10 = s5 / i9;
        return ((s5 ^ i9) >= 0 || i9 * i10 == s5) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(byte b9, int i9) {
        int i10 = b9 % i9;
        return i10 + (i9 & (((i10 ^ i9) & ((-i10) | i10)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(short s5, long j9) {
        long j10 = s5;
        long j11 = j10 / j9;
        return ((j10 ^ j9) >= 0 || j9 * j11 == j10) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(byte b9, long j9) {
        long j10 = ((long) b9) % j9;
        return j10 + (j9 & (((j10 ^ j9) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i9, byte b9) {
        int i10 = i9 / b9;
        return ((i9 ^ b9) >= 0 || b9 * i10 == i9) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(short s5, byte b9) {
        int i9 = s5 % b9;
        return (byte) (i9 + (b9 & (((i9 ^ b9) & ((-i9) | i9)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i9, short s5) {
        int i10 = i9 / s5;
        return ((i9 ^ s5) >= 0 || s5 * i10 == i9) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(short s5, short s9) {
        int i9 = s5 % s9;
        return (short) (i9 + (s9 & (((i9 ^ s9) & ((-i9) | i9)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i9, int i10) {
        int i11 = i9 / i10;
        return ((i9 ^ i10) >= 0 || i10 * i11 == i9) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(short s5, int i9) {
        int i10 = s5 % i9;
        return i10 + (i9 & (((i10 ^ i9) & ((-i10) | i10)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(int i9, long j9) {
        long j10 = i9;
        long j11 = j10 / j9;
        return ((j10 ^ j9) >= 0 || j9 * j11 == j10) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(short s5, long j9) {
        long j10 = ((long) s5) % j9;
        return j10 + (j9 & (((j10 ^ j9) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j9, byte b9) {
        long j10 = b9;
        long j11 = j9 / j10;
        return ((j9 ^ j10) >= 0 || j10 * j11 == j9) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(int i9, byte b9) {
        int i10 = i9 % b9;
        return (byte) (i10 + (b9 & (((i10 ^ b9) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j9, short s5) {
        long j10 = s5;
        long j11 = j9 / j10;
        return ((j9 ^ j10) >= 0 || j10 * j11 == j9) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(int i9, short s5) {
        int i10 = i9 % s5;
        return (short) (i10 + (s5 & (((i10 ^ s5) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j9, int i9) {
        long j10 = i9;
        long j11 = j9 / j10;
        return ((j9 ^ j10) >= 0 || j10 * j11 == j9) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(int i9, int i10) {
        int i11 = i9 % i10;
        return i11 + (i10 & (((i11 ^ i10) & ((-i11) | i11)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j9, long j10) {
        long j11 = j9 / j10;
        return ((j9 ^ j10) >= 0 || j10 * j11 == j9) ? j11 : j11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(int i9, long j9) {
        long j10 = ((long) i9) % j9;
        return j10 + (j9 & (((j10 ^ j9) & ((-j10) | j10)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(long j9, byte b9) {
        long j10 = b9;
        long j11 = j9 % j10;
        return (byte) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(long j9, short s5) {
        long j10 = s5;
        long j11 = j9 % j10;
        return (short) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(long j9, int i9) {
        long j10 = i9;
        long j11 = j9 % j10;
        return (int) (j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(long j9, long j10) {
        long j11 = j9 % j10;
        return j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final float mod(float f8, float f9) {
        float f10 = f8 % f9;
        return (f10 == 0.0f || Math.signum(f10) == Math.signum(f9)) ? f10 : f10 + f9;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(byte b9, byte b10) {
        int i9 = b9 % b10;
        return (byte) (i9 + (b10 & (((i9 ^ b10) & ((-i9) | i9)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d, float f8) {
        double d9 = f8;
        double d10 = d % d9;
        return (d10 == 0.0d || Math.signum(d10) == Math.signum(d9)) ? d10 : d10 + d9;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d, double d9) {
        double d10 = d % d9;
        return (d10 == 0.0d || Math.signum(d10) == Math.signum(d9)) ? d10 : d10 + d9;
    }
}
