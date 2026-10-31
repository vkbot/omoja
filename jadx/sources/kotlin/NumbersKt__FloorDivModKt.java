package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\bH\u0087\b¨\u0006\t"}, m3159d2 = {"floorDiv", "", "", "other", "mod", "", "", "", "", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/NumbersKt")
class NumbersKt__FloorDivModKt extends NumbersKt__BigIntegersKt {
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(byte b10, long j10) {
        long j11 = b10;
        long j12 = j11 / j10;
        return ((j11 ^ j10) >= 0 || j10 * j12 == j11) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(float f8, double d) {
        double d10 = ((double) f8) % d;
        return (d10 == 0.0d || Math.signum(d10) == Math.signum(d)) ? d10 : d10 + d;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b10, short s5) {
        int i10 = b10 / s5;
        return ((b10 ^ s5) >= 0 || s5 * i10 == b10) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b10, int i10) {
        int i11 = b10 / i10;
        return ((b10 ^ i10) >= 0 || i10 * i11 == b10) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(byte b10, byte b11) {
        int i10 = b10 / b11;
        return ((b10 ^ b11) >= 0 || b11 * i10 == b10) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, byte b10) {
        int i10 = s5 / b10;
        return ((s5 ^ b10) >= 0 || b10 * i10 == s5) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, short s9) {
        int i10 = s5 / s9;
        return ((s5 ^ s9) >= 0 || s9 * i10 == s5) ? i10 : i10 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(byte b10, short s5) {
        int i10 = b10 % s5;
        return (short) (i10 + (s5 & (((i10 ^ s5) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(short s5, int i10) {
        int i11 = s5 / i10;
        return ((s5 ^ i10) >= 0 || i10 * i11 == s5) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(byte b10, int i10) {
        int i11 = b10 % i10;
        return i11 + (i10 & (((i11 ^ i10) & ((-i11) | i11)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(short s5, long j10) {
        long j11 = s5;
        long j12 = j11 / j10;
        return ((j11 ^ j10) >= 0 || j10 * j12 == j11) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(byte b10, long j10) {
        long j11 = ((long) b10) % j10;
        return j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i10, byte b10) {
        int i11 = i10 / b10;
        return ((i10 ^ b10) >= 0 || b10 * i11 == i10) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(short s5, byte b10) {
        int i10 = s5 % b10;
        return (byte) (i10 + (b10 & (((i10 ^ b10) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i10, short s5) {
        int i11 = i10 / s5;
        return ((i10 ^ s5) >= 0 || s5 * i11 == i10) ? i11 : i11 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(short s5, short s9) {
        int i10 = s5 % s9;
        return (short) (i10 + (s9 & (((i10 ^ s9) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int floorDiv(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(short s5, int i10) {
        int i11 = s5 % i10;
        return i11 + (i10 & (((i11 ^ i10) & ((-i11) | i11)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(int i10, long j10) {
        long j11 = i10;
        long j12 = j11 / j10;
        return ((j11 ^ j10) >= 0 || j10 * j12 == j11) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(short s5, long j10) {
        long j11 = ((long) s5) % j10;
        return j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j10, byte b10) {
        long j11 = b10;
        long j12 = j10 / j11;
        return ((j10 ^ j11) >= 0 || j11 * j12 == j10) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(int i10, byte b10) {
        int i11 = i10 % b10;
        return (byte) (i11 + (b10 & (((i11 ^ b10) & ((-i11) | i11)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j10, short s5) {
        long j11 = s5;
        long j12 = j10 / j11;
        return ((j10 ^ j11) >= 0 || j11 * j12 == j10) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(int i10, short s5) {
        int i11 = i10 % s5;
        return (short) (i11 + (s5 & (((i11 ^ s5) & ((-i11) | i11)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j10, int i10) {
        long j11 = i10;
        long j12 = j10 / j11;
        return ((j10 ^ j11) >= 0 || j11 * j12 == j10) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(int i10, int i11) {
        int i12 = i10 % i11;
        return i12 + (i11 & (((i12 ^ i11) & ((-i12) | i12)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long floorDiv(long j10, long j11) {
        long j12 = j10 / j11;
        return ((j10 ^ j11) >= 0 || j11 * j12 == j10) ? j12 : j12 - 1;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(int i10, long j10) {
        long j11 = ((long) i10) % j10;
        return j11 + (j10 & (((j11 ^ j10) & ((-j11) | j11)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(long j10, byte b10) {
        long j11 = b10;
        long j12 = j10 % j11;
        return (byte) (j12 + (j11 & (((j12 ^ j11) & ((-j12) | j12)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final short mod(long j10, short s5) {
        long j11 = s5;
        long j12 = j10 % j11;
        return (short) (j12 + (j11 & (((j12 ^ j11) & ((-j12) | j12)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int mod(long j10, int i10) {
        long j11 = i10;
        long j12 = j10 % j11;
        return (int) (j12 + (j11 & (((j12 ^ j11) & ((-j12) | j12)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long mod(long j10, long j11) {
        long j12 = j10 % j11;
        return j12 + (j11 & (((j12 ^ j11) & ((-j12) | j12)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final float mod(float f8, float f10) {
        float f11 = f8 % f10;
        return (f11 == 0.0f || Math.signum(f11) == Math.signum(f10)) ? f11 : f11 + f10;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final byte mod(byte b10, byte b11) {
        int i10 = b10 % b11;
        return (byte) (i10 + (b11 & (((i10 ^ b11) & ((-i10) | i10)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d, float f8) {
        double d10 = f8;
        double d11 = d % d10;
        return (d11 == 0.0d || Math.signum(d11) == Math.signum(d10)) ? d11 : d11 + d10;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final double mod(double d, double d10) {
        double d11 = d % d10;
        return (d11 == 0.0d || Math.signum(d11) == Math.signum(d10)) ? d11 : d11 + d10;
    }
}
