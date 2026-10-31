package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.internal.InlineOnly;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0087\b¨\u0006\u0011"}, m3159d2 = {"plus", "Ljava/math/BigDecimal;", "other", "minus", "times", "div", "rem", "unaryMinus", "inc", "dec", "toBigDecimal", "", "mathContext", "Ljava/math/MathContext;", "", "", "", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/NumbersKt")
class NumbersKt__BigDecimalsKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal dec(BigDecimal bigDecimal) {
        bigDecimal.getClass();
        BigDecimal bigDecimalSubtract = bigDecimal.subtract(BigDecimal.ONE);
        bigDecimalSubtract.getClass();
        return bigDecimalSubtract;
    }

    @InlineOnly
    private static final BigDecimal div(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        bigDecimal.getClass();
        bigDecimal2.getClass();
        BigDecimal bigDecimalDivide = bigDecimal.divide(bigDecimal2, RoundingMode.HALF_EVEN);
        bigDecimalDivide.getClass();
        return bigDecimalDivide;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal inc(BigDecimal bigDecimal) {
        bigDecimal.getClass();
        BigDecimal bigDecimalAdd = bigDecimal.add(BigDecimal.ONE);
        bigDecimalAdd.getClass();
        return bigDecimalAdd;
    }

    @InlineOnly
    private static final BigDecimal minus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        bigDecimal.getClass();
        bigDecimal2.getClass();
        BigDecimal bigDecimalSubtract = bigDecimal.subtract(bigDecimal2);
        bigDecimalSubtract.getClass();
        return bigDecimalSubtract;
    }

    @InlineOnly
    private static final BigDecimal plus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        bigDecimal.getClass();
        bigDecimal2.getClass();
        BigDecimal bigDecimalAdd = bigDecimal.add(bigDecimal2);
        bigDecimalAdd.getClass();
        return bigDecimalAdd;
    }

    @InlineOnly
    private static final BigDecimal rem(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        bigDecimal.getClass();
        bigDecimal2.getClass();
        BigDecimal bigDecimalRemainder = bigDecimal.remainder(bigDecimal2);
        bigDecimalRemainder.getClass();
        return bigDecimalRemainder;
    }

    @InlineOnly
    private static final BigDecimal times(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        bigDecimal.getClass();
        bigDecimal2.getClass();
        BigDecimal bigDecimalMultiply = bigDecimal.multiply(bigDecimal2);
        bigDecimalMultiply.getClass();
        return bigDecimalMultiply;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f8, MathContext mathContext) {
        mathContext.getClass();
        return new BigDecimal(String.valueOf(f8), mathContext);
    }

    @InlineOnly
    private static final BigDecimal unaryMinus(BigDecimal bigDecimal) {
        bigDecimal.getClass();
        BigDecimal bigDecimalNegate = bigDecimal.negate();
        bigDecimalNegate.getClass();
        return bigDecimalNegate;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i10, MathContext mathContext) {
        mathContext.getClass();
        return new BigDecimal(i10, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j10) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(j10);
        bigDecimalValueOf.getClass();
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j10, MathContext mathContext) {
        mathContext.getClass();
        return new BigDecimal(j10, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f8) {
        return new BigDecimal(String.valueOf(f8));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i10) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(i10);
        bigDecimalValueOf.getClass();
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d, MathContext mathContext) {
        mathContext.getClass();
        return new BigDecimal(String.valueOf(d), mathContext);
    }
}
