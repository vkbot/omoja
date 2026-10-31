package kotlin.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import p099j1.C1929i;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0006\n\u0002\b%\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\b\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0010\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0019\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0018\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010#\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010$\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010%\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010%\u001a\u00020\u0001*\u00020\u00012\u0006\u0010&\u001a\u00020'H\u0087\b\u001a\u0015\u0010(\u001a\u00020\u0001*\u00020\u00012\u0006\u0010)\u001a\u00020\u0001H\u0087\b\u001a\u0015\u00101\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u0001H\u0087\b\u001a\u0015\u00101\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001f\u001a\u00020'H\u0087\b\u001a\r\u00105\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\r\u00106\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00012\u0006\u00108\u001a\u00020\u0001H\u0087\b\u001a\f\u00109\u001a\u00020'*\u00020\u0001H\u0007\u001a\f\u0010:\u001a\u00020;*\u00020\u0001H\u0007\u001a\u0011\u0010\u0000\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0004\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0005\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0006\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0019\u0010\b\u001a\u00020<2\u0006\u0010\t\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\n\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u000b\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\f\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\r\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u000e\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u000f\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0019\u0010\u0010\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<2\u0006\u0010\t\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0011\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0012\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0013\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0018\u0010\u0014\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020<H\u0007\u001a\u0011\u0010\u0016\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u0017\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0010\u0010\u0018\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0007\u001a\u0011\u0010\u0019\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u001a\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u001b\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0010\u0010\u001c\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0007\u001a\u0011\u0010\u001d\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0011\u0010\u001f\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0019\u0010 \u001a\u00020<2\u0006\u0010!\u001a\u00020<2\u0006\u0010\"\u001a\u00020<H\u0087\b\u001a\u0019\u0010#\u001a\u00020<2\u0006\u0010!\u001a\u00020<2\u0006\u0010\"\u001a\u00020<H\u0087\b\u001a\u0011\u0010$\u001a\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0015\u0010%\u001a\u00020<*\u00020<2\u0006\u0010\u0002\u001a\u00020<H\u0087\b\u001a\u0015\u0010%\u001a\u00020<*\u00020<2\u0006\u0010&\u001a\u00020'H\u0087\b\u001a\u0015\u0010(\u001a\u00020<*\u00020<2\u0006\u0010)\u001a\u00020<H\u0087\b\u001a\u0015\u00101\u001a\u00020<*\u00020<2\u0006\u0010\u001f\u001a\u00020<H\u0087\b\u001a\u0015\u00101\u001a\u00020<*\u00020<2\u0006\u0010\u001f\u001a\u00020'H\u0087\b\u001a\r\u00105\u001a\u00020<*\u00020<H\u0087\b\u001a\r\u00106\u001a\u00020<*\u00020<H\u0087\b\u001a\u0015\u00107\u001a\u00020<*\u00020<2\u0006\u00108\u001a\u00020<H\u0087\b\u001a\f\u00109\u001a\u00020'*\u00020<H\u0007\u001a\f\u0010:\u001a\u00020;*\u00020<H\u0007\u001a\u0011\u0010\u001e\u001a\u00020'2\u0006\u0010&\u001a\u00020'H\u0087\b\u001a\u0019\u0010 \u001a\u00020'2\u0006\u0010!\u001a\u00020'2\u0006\u0010\"\u001a\u00020'H\u0087\b\u001a\u0019\u0010#\u001a\u00020'2\u0006\u0010!\u001a\u00020'2\u0006\u0010\"\u001a\u00020'H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020;2\u0006\u0010&\u001a\u00020;H\u0087\b\u001a\u0019\u0010 \u001a\u00020;2\u0006\u0010!\u001a\u00020;2\u0006\u0010\"\u001a\u00020;H\u0087\b\u001a\u0019\u0010#\u001a\u00020;2\u0006\u0010!\u001a\u00020;2\u0006\u0010\"\u001a\u00020;H\u0087\b\"\u001f\u0010*\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u001f\u0010\u001f\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010,\u001a\u0004\b0\u0010.\"\u001f\u00102\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010,\u001a\u0004\b4\u0010.\"\u001f\u0010*\u001a\u00020<*\u00020<8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010=\u001a\u0004\b-\u0010>\"\u001f\u0010\u001f\u001a\u00020<*\u00020<8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010=\u001a\u0004\b0\u0010>\"\u001f\u00102\u001a\u00020<*\u00020<8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010=\u001a\u0004\b4\u0010>\"\u001f\u0010*\u001a\u00020'*\u00020'8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010?\u001a\u0004\b-\u0010@\"\u001e\u0010\u001f\u001a\u00020'*\u00020'8FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010?\u001a\u0004\b0\u0010@\"\u001f\u0010*\u001a\u00020;*\u00020;8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010A\u001a\u0004\b-\u0010B\"\u001e\u0010\u001f\u001a\u00020'*\u00020;8FX\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010A\u001a\u0004\b0\u0010C¨\u0006D"}, m3159d2 = {"sin", "", "x", "cos", "tan", "asin", "acos", "atan", "atan2", "y", "sinh", "cosh", "tanh", "asinh", "acosh", "atanh", "hypot", "sqrt", "exp", "expm1", "log", "base", "ln", "log10", "log2", "ln1p", "ceil", "floor", "truncate", "round", "abs", "sign", "min", "a", "b", "max", "cbrt", "pow", "n", "", "IEEErem", "divisor", "absoluteValue", "getAbsoluteValue$annotations", "(D)V", "getAbsoluteValue", "(D)D", "getSign$annotations", "getSign", "withSign", "ulp", "getUlp$annotations", "getUlp", "nextUp", "nextDown", "nextTowards", TypedValues.TransitionType.S_TO, "roundToInt", "roundToLong", "", "", "(F)V", "(F)F", "(I)V", "(I)I", "(J)V", "(J)J", "(J)I", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/math/MathKt")
public class MathKt__MathJVMKt extends MathKt__MathHKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float IEEErem(float f8, float f10) {
        return (float) Math.IEEEremainder(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double abs(double d) {
        return Math.abs(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acos(float f8) {
        return (float) Math.acos(f8);
    }

    @SinceKotlin(version = "1.2")
    public static final double acosh(double d) {
        if (d < 1.0d) {
            return Double.NaN;
        }
        if (d > Constants.upper_taylor_2_bound) {
            return Math.log(d) + Constants.LN2;
        }
        double d10 = 1;
        double d11 = d - d10;
        if (d11 >= Constants.taylor_n_bound) {
            return Math.log(Math.sqrt((d * d) - d10) + d);
        }
        double dSqrt = Math.sqrt(d11);
        if (dSqrt >= Constants.taylor_2_bound) {
            dSqrt -= ((dSqrt * dSqrt) * dSqrt) / ((double) 12);
        }
        return Math.sqrt(2.0d) * dSqrt;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asin(float f8) {
        return (float) Math.asin(f8);
    }

    @SinceKotlin(version = "1.2")
    public static final double asinh(double d) {
        double d10 = Constants.taylor_n_bound;
        if (d < d10) {
            if (d <= (-d10)) {
                return -asinh(-d);
            }
            return Math.abs(d) >= Constants.taylor_2_bound ? d - (((d * d) * d) / ((double) 6)) : d;
        }
        if (d <= Constants.upper_taylor_n_bound) {
            return Math.log(Math.sqrt((d * d) + ((double) 1)) + d);
        }
        if (d > Constants.upper_taylor_2_bound) {
            return Math.log(d) + Constants.LN2;
        }
        double d11 = d * ((double) 2);
        return Math.log((((double) 1) / d11) + d11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan(float f8) {
        return (float) Math.atan(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan2(float f8, float f10) {
        return (float) Math.atan2(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    public static final double atanh(double d) {
        if (Math.abs(d) < Constants.taylor_n_bound) {
            return Math.abs(d) > Constants.taylor_2_bound ? (((d * d) * d) / ((double) 3)) + d : d;
        }
        double d10 = 1;
        return Math.log((d10 + d) / (d10 - d)) / ((double) 2);
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final float cbrt(float f8) {
        return (float) Math.cbrt(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ceil(float f8) {
        return (float) Math.ceil(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cos(float f8) {
        return (float) Math.cos(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cosh(float f8) {
        return (float) Math.cosh(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float exp(float f8) {
        return (float) Math.exp(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float expm1(float f8) {
        return (float) Math.expm1(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float floor(float f8) {
        return (float) Math.floor(f8);
    }

    private static final double getAbsoluteValue(double d) {
        return Math.abs(d);
    }

    private static final double getSign(double d) {
        return Math.signum(d);
    }

    private static final double getUlp(double d) {
        return Math.ulp(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float hypot(float f8, float f10) {
        return (float) Math.hypot(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    /* JADX INFO: renamed from: ln */
    private static final float m3368ln(float f8) {
        return (float) Math.log(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ln1p(float f8) {
        return (float) Math.log1p(f8);
    }

    @SinceKotlin(version = "1.2")
    public static final float log(float f8, float f10) {
        if (f10 <= 0.0f || f10 == 1.0f) {
            return Float.NaN;
        }
        return (float) (Math.log(f8) / Math.log(f10));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float log10(float f8) {
        return (float) Math.log10(f8);
    }

    @SinceKotlin(version = "1.2")
    public static final float log2(float f8) {
        return (float) (Math.log(f8) / Constants.LN2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double max(double d, double d10) {
        return Math.max(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double min(double d, double d10) {
        return Math.min(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextDown(double d) {
        return Math.nextAfter(d, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextTowards(float f8, float f10) {
        return Math.nextAfter(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextUp(double d) {
        return Math.nextUp(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f8, float f10) {
        return (float) Math.pow(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float round(float f8) {
        return (float) Math.rint(f8);
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            C1929i.m3029k("Cannot round NaN value.");
            return 0;
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    @SinceKotlin(version = "1.2")
    public static long roundToLong(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        C1929i.m3029k("Cannot round NaN value.");
        return 0L;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sign(double d) {
        return Math.signum(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sin(float f8) {
        return (float) Math.sin(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sinh(float f8) {
        return (float) Math.sinh(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sqrt(float f8) {
        return (float) Math.sqrt(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tan(float f8) {
        return (float) Math.tan(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tanh(float f8) {
        return (float) Math.tanh(f8);
    }

    @SinceKotlin(version = "1.2")
    public static final float truncate(float f8) {
        if (Float.isNaN(f8) || Float.isInfinite(f8)) {
            return f8;
        }
        return (float) (f8 > 0.0f ? Math.floor(f8) : Math.ceil(f8));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d, int i10) {
        return Math.copySign(d, i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(float f8) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(float f8) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(float f8) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(int i10) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(int i10) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(long j10) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(long j10) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float abs(float f8) {
        return Math.abs(f8);
    }

    private static final float getAbsoluteValue(float f8) {
        return Math.abs(f8);
    }

    private static final float getSign(float f8) {
        return Math.signum(f8);
    }

    private static final float getUlp(float f8) {
        return Math.ulp(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float max(float f8, float f10) {
        return Math.max(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float min(float f8, float f10) {
        return Math.min(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextUp(float f8) {
        return Math.nextUp(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sign(float f8) {
        return Math.signum(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int abs(int i10) {
        return Math.abs(i10);
    }

    private static final int getAbsoluteValue(int i10) {
        return Math.abs(i10);
    }

    public static int getSign(int i10) {
        return Integer.signum(i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int max(int i10, int i11) {
        return Math.max(i10, i11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int min(int i10, int i11) {
        return Math.min(i10, i11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextTowards(double d, double d10) {
        return Math.nextAfter(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d, double d10) {
        return Math.copySign(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long abs(long j10) {
        return Math.abs(j10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double acos(double d) {
        return Math.acos(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double asin(double d) {
        return Math.asin(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan(double d) {
        return Math.atan(d);
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final double cbrt(double d) {
        return Math.cbrt(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ceil(double d) {
        return Math.ceil(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cos(double d) {
        return Math.cos(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cosh(double d) {
        return Math.cosh(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double exp(double d) {
        return Math.exp(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double expm1(double d) {
        return Math.expm1(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double floor(double d) {
        return Math.floor(d);
    }

    private static final long getAbsoluteValue(long j10) {
        return Math.abs(j10);
    }

    public static int getSign(long j10) {
        return Long.signum(j10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    /* JADX INFO: renamed from: ln */
    private static final double m3367ln(double d) {
        return Math.log(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ln1p(double d) {
        return Math.log1p(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double log10(double d) {
        return Math.log10(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long max(long j10, long j11) {
        return Math.max(j10, j11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long min(long j10, long j11) {
        return Math.min(j10, j11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextDown(float f8) {
        return Math.nextAfter(f8, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double round(double d) {
        return Math.rint(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sin(double d) {
        return Math.sin(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sinh(double d) {
        return Math.sinh(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sqrt(double d) {
        return Math.sqrt(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tan(double d) {
        return Math.tan(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tanh(double d) {
        return Math.tanh(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f8, float f10) {
        return Math.copySign(f8, f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double IEEErem(double d, double d10) {
        return Math.IEEEremainder(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan2(double d, double d10) {
        return Math.atan2(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double hypot(double d, double d10) {
        return Math.hypot(d, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d, int i10) {
        return Math.pow(d, i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f8, int i10) {
        return Math.copySign(f8, i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d, double d10) {
        return Math.pow(d, d10);
    }

    @SinceKotlin(version = "1.2")
    public static final double log2(double d) {
        return Math.log(d) / Constants.LN2;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f8, int i10) {
        return (float) Math.pow(f8, i10);
    }

    @SinceKotlin(version = "1.2")
    public static final long roundToLong(float f8) {
        return roundToLong(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    public static final double log(double d, double d10) {
        if (d10 <= 0.0d || d10 == 1.0d) {
            return Double.NaN;
        }
        return Math.log(d) / Math.log(d10);
    }

    @SinceKotlin(version = "1.2")
    public static final double truncate(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return d;
        }
        if (d > 0.0d) {
            return Math.floor(d);
        }
        return Math.ceil(d);
    }

    @SinceKotlin(version = "1.2")
    public static final int roundToInt(float f8) {
        if (!Float.isNaN(f8)) {
            return Math.round(f8);
        }
        C1929i.m3029k("Cannot round NaN value.");
        return 0;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atanh(float f8) {
        return (float) atanh(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acosh(float f8) {
        return (float) acosh(f8);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asinh(float f8) {
        return (float) asinh(f8);
    }
}
