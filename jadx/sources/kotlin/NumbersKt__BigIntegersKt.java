package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\r\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\f\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\f\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0010H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0013H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0015*\u00020\u0001H\u0087\b\u001a!\u0010\u0014\u001a\u00020\u0015*\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u00102\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0087\b¨\u0006\u0019"}, m3159d2 = {"plus", "Ljava/math/BigInteger;", "other", "minus", "times", "div", "rem", "unaryMinus", "inc", "dec", "inv", "and", "or", "xor", "shl", "n", "", "shr", "toBigInteger", "", "toBigDecimal", "Ljava/math/BigDecimal;", "scale", "mathContext", "Ljava/math/MathContext;", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/NumbersKt")
class NumbersKt__BigIntegersKt extends NumbersKt__BigDecimalsKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger and(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerAnd = bigInteger.and(bigInteger2);
        bigIntegerAnd.getClass();
        return bigIntegerAnd;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger dec(BigInteger bigInteger) {
        bigInteger.getClass();
        BigInteger bigIntegerSubtract = bigInteger.subtract(BigInteger.ONE);
        bigIntegerSubtract.getClass();
        return bigIntegerSubtract;
    }

    @InlineOnly
    private static final BigInteger div(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerDivide = bigInteger.divide(bigInteger2);
        bigIntegerDivide.getClass();
        return bigIntegerDivide;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger inc(BigInteger bigInteger) {
        bigInteger.getClass();
        BigInteger bigIntegerAdd = bigInteger.add(BigInteger.ONE);
        bigIntegerAdd.getClass();
        return bigIntegerAdd;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger inv(BigInteger bigInteger) {
        bigInteger.getClass();
        BigInteger bigIntegerNot = bigInteger.not();
        bigIntegerNot.getClass();
        return bigIntegerNot;
    }

    @InlineOnly
    private static final BigInteger minus(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
        bigIntegerSubtract.getClass();
        return bigIntegerSubtract;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    /* JADX INFO: renamed from: or */
    private static final BigInteger m3165or(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerOr = bigInteger.or(bigInteger2);
        bigIntegerOr.getClass();
        return bigIntegerOr;
    }

    @InlineOnly
    private static final BigInteger plus(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
        bigIntegerAdd.getClass();
        return bigIntegerAdd;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final BigInteger rem(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerRemainder = bigInteger.remainder(bigInteger2);
        bigIntegerRemainder.getClass();
        return bigIntegerRemainder;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger shl(BigInteger bigInteger, int i10) {
        bigInteger.getClass();
        BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(i10);
        bigIntegerShiftLeft.getClass();
        return bigIntegerShiftLeft;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger shr(BigInteger bigInteger, int i10) {
        bigInteger.getClass();
        BigInteger bigIntegerShiftRight = bigInteger.shiftRight(i10);
        bigIntegerShiftRight.getClass();
        return bigIntegerShiftRight;
    }

    @InlineOnly
    private static final BigInteger times(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger2);
        bigIntegerMultiply.getClass();
        return bigIntegerMultiply;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(BigInteger bigInteger, int i10, MathContext mathContext) {
        bigInteger.getClass();
        mathContext.getClass();
        return new BigDecimal(bigInteger, i10, mathContext);
    }

    public static /* synthetic */ BigDecimal toBigDecimal$default(BigInteger bigInteger, int i10, MathContext mathContext, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            mathContext = MathContext.UNLIMITED;
            mathContext.getClass();
        }
        bigInteger.getClass();
        mathContext.getClass();
        return new BigDecimal(bigInteger, i10, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(int i10) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(i10);
        bigIntegerValueOf.getClass();
        return bigIntegerValueOf;
    }

    @InlineOnly
    private static final BigInteger unaryMinus(BigInteger bigInteger) {
        bigInteger.getClass();
        BigInteger bigIntegerNegate = bigInteger.negate();
        bigIntegerNegate.getClass();
        return bigIntegerNegate;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger xor(BigInteger bigInteger, BigInteger bigInteger2) {
        bigInteger.getClass();
        bigInteger2.getClass();
        BigInteger bigIntegerXor = bigInteger.xor(bigInteger2);
        bigIntegerXor.getClass();
        return bigIntegerXor;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(long j10) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(j10);
        bigIntegerValueOf.getClass();
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(BigInteger bigInteger) {
        bigInteger.getClass();
        return new BigDecimal(bigInteger);
    }
}
