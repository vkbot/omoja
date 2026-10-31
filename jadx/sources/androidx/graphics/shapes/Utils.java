package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\u001a\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018H\u0080\bø\u0001\u0000\u001a\u0019\u0010\u0019\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\u001a\u001a\u00020\u0001H\u0000¢\u0006\u0002\u0010\u001b\u001a!\u0010\u0019\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000¢\u0006\u0002\u0010\u001c\u001a\u0018\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a*\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\b\b\u0002\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020$H\u0000\u001a \u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0000\u001a\u0018\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u0001H\u0000\u001a4\u0010,\u001a\u00060\u000bj\u0002`\f2\u0006\u0010-\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00012\f\b\u0002\u0010.\u001a\u00060\u000bj\u0002`\fH\u0000ø\u0001\u0001¢\u0006\u0004\b/\u00100\u001a\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a\u001e\u00102\u001a\u00060\u000bj\u0002`\f*\u00060\u000bj\u0002`\fH\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00104\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0014\u0010\b\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007\"\u001a\u0010\n\u001a\u00060\u000bj\u0002`\fX\u0080\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u000e\n\u0005\b\u009920\u0001\n\u0005\b¡\u001e0\u0001¨\u00065"}, m3159d2 = {"AngleEpsilon", "", "DEBUG", "", "DistanceEpsilon", "FloatPi", "getFloatPi", "()F", "TwoPi", "getTwoPi", "Zero", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "getZero", "()J", "J", "angle", "x", "y", "debugLog", "", "tag", "", "messageFactory", "Lkotlin/Function0;", "directionVector", "angleRadians", "(F)J", "(FF)J", "distance", "distanceSquared", "findMinimum", "v0", "v1", "tolerance", "f", "Landroidx/graphics/shapes/FindMinimumFunction;", "interpolate", "start", "stop", "fraction", "positiveModulo", "num", "mod", "radialToCartesian", "radius", "center", "radialToCartesian-L6JJ3z0", "(FFJ)J", "square", "rotate90", "rotate90-DnnuFBc", "(J)J", "graphics-shapes_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "Utils")
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
public final class Utils {
    public static final float AngleEpsilon = 1.0E-6f;
    public static final boolean DEBUG = false;
    public static final float DistanceEpsilon = 1.0E-4f;
    private static final long Zero = FloatFloatPair.m5996constructorimpl(0.0f, 0.0f);
    private static final float FloatPi = 3.1415927f;
    private static final float TwoPi = 6.2831855f;

    public static final float angle(float f8, float f10) {
        float fAtan2 = (float) Math.atan2(f10, f8);
        float f11 = TwoPi;
        return (fAtan2 + f11) % f11;
    }

    public static final void debugLog(String str, Function0<String> function0) {
        str.getClass();
        function0.getClass();
    }

    public static final long directionVector(float f8, float f10) {
        float fDistance = distance(f8, f10);
        if (fDistance > 0.0f) {
            return FloatFloatPair.m5996constructorimpl(f8 / fDistance, f10 / fDistance);
        }
        C1929i.m3029k("Required distance greater than zero");
        return 0L;
    }

    public static final float distance(float f8, float f10) {
        return (float) Math.sqrt((f10 * f10) + (f8 * f8));
    }

    public static final float distanceSquared(float f8, float f10) {
        return (f10 * f10) + (f8 * f8);
    }

    public static final float findMinimum(float f8, float f10, float f11, FindMinimumFunction findMinimumFunction) {
        findMinimumFunction.getClass();
        while (f10 - f8 > f11) {
            float f12 = 2;
            float f13 = 3;
            float f14 = ((f12 * f8) + f10) / f13;
            float f15 = ((f12 * f10) + f8) / f13;
            if (findMinimumFunction.invoke(f14) < findMinimumFunction.invoke(f15)) {
                f10 = f15;
            } else {
                f8 = f14;
            }
        }
        return (f8 + f10) / 2;
    }

    public static /* synthetic */ float findMinimum$default(float f8, float f10, float f11, FindMinimumFunction findMinimumFunction, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            f11 = 0.001f;
        }
        return findMinimum(f8, f10, f11, findMinimumFunction);
    }

    public static final float getFloatPi() {
        return FloatPi;
    }

    public static final float getTwoPi() {
        return TwoPi;
    }

    public static final long getZero() {
        return Zero;
    }

    public static final float interpolate(float f8, float f10, float f11) {
        return (f11 * f10) + ((1 - f11) * f8);
    }

    public static final float positiveModulo(float f8, float f10) {
        return ((f8 % f10) + f10) % f10;
    }

    /* JADX INFO: renamed from: radialToCartesian-L6JJ3z0, reason: not valid java name */
    public static final long m6062radialToCartesianL6JJ3z0(float f8, float f10, long j10) {
        return PointKt.m6047plusybeJwSQ(PointKt.m6049timesso9K2fw(directionVector(f10), f8), j10);
    }

    /* JADX INFO: renamed from: radialToCartesian-L6JJ3z0$default, reason: not valid java name */
    public static /* synthetic */ long m6063radialToCartesianL6JJ3z0$default(float f8, float f10, long j10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = Zero;
        }
        return m6062radialToCartesianL6JJ3z0(f8, f10, j10);
    }

    /* JADX INFO: renamed from: rotate90-DnnuFBc, reason: not valid java name */
    public static final long m6064rotate90DnnuFBc(long j10) {
        return FloatFloatPair.m5996constructorimpl(-PointKt.m6044getYDnnuFBc(j10), PointKt.m6043getXDnnuFBc(j10));
    }

    public static final float square(float f8) {
        return f8 * f8;
    }

    public static final long directionVector(float f8) {
        double d = f8;
        return FloatFloatPair.m5996constructorimpl((float) Math.cos(d), (float) Math.sin(d));
    }
}
