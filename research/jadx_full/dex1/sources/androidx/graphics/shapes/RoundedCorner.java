package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B5\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0010\u0010'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0011H\u0002Jf\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00112\n\u0010-\u001a\u00060\u0003j\u0002`\u00042\n\u0010.\u001a\u00060\u0003j\u0002`\u00042\n\u0010/\u001a\u00060\u0003j\u0002`\u00042\n\u00100\u001a\u00060\u0003j\u0002`\u00042\n\u00101\u001a\u00060\u0003j\u0002`\u00042\u0006\u00102\u001a\u00020\u0011H\u0002ø\u0001\u0000¢\u0006\u0004\b3\u00104J \u00105\u001a\b\u0012\u0004\u0012\u00020*062\u0006\u00107\u001a\u00020\u00112\b\b\u0002\u00108\u001a\u00020\u0011H\u0007JJ\u00109\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00042\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\n\u0010:\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0016\u001a\u00060\u0003j\u0002`\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b;\u0010<R&\u0010\n\u001a\u00060\u0003j\u0002`\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u001d\u0010\u0016\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0017\u0010\fR\u001d\u0010\u0018\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0019\u0010\fR\u0011\u0010\u001a\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0013R\u0011\u0010\u001c\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u001d\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u001e\u0010\fR\u001d\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u001f\u0010\fR\u001d\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b \u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0013R\u0011\u0010%\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0013\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006="}, d2 = {"Landroidx/graphics/shapes/RoundedCorner;", "", "p0", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "p1", "p2", "rounding", "Landroidx/graphics/shapes/CornerRounding;", "(JJJLandroidx/graphics/shapes/CornerRounding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "center", "getCenter-1ufDz9w", "()J", "setCenter-DnnuFBc", "(J)V", "J", "cornerRadius", "", "getCornerRadius", "()F", "cosAngle", "getCosAngle", "d1", "getD1-1ufDz9w", "d2", "getD2-1ufDz9w", "expectedCut", "getExpectedCut", "expectedRoundCut", "getExpectedRoundCut", "getP0-1ufDz9w", "getP1-1ufDz9w", "getP2-1ufDz9w", "getRounding", "()Landroidx/graphics/shapes/CornerRounding;", "sinAngle", "getSinAngle", "smoothing", "getSmoothing", "calculateActualSmoothingValue", "allowedCut", "computeFlankingCurve", "Landroidx/graphics/shapes/Cubic;", "actualRoundCut", "actualSmoothingValues", "corner", "sideStart", "circleSegmentIntersection", "otherCircleSegmentIntersection", "circleCenter", "actualR", "computeFlankingCurve-oAJzIJU", "(FFJJJJJF)Landroidx/graphics/shapes/Cubic;", "getCubics", "", "allowedCut0", "allowedCut1", "lineIntersection", "d0", "lineIntersection-CBFvKDc", "(JJJJ)Landroidx/collection/FloatFloatPair;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class RoundedCorner {
    private long center;
    private final float cornerRadius;
    private final float cosAngle;
    private final long d1;
    private final long d2;
    private final float expectedRoundCut;
    private final long p0;
    private final long p1;
    private final long p2;
    private final CornerRounding rounding;
    private final float sinAngle;
    private final float smoothing;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RoundedCorner(long j9, long j10, long j11, CornerRounding cornerRounding) {
        this.p0 = j9;
        this.p1 = j10;
        this.p2 = j11;
        this.rounding = cornerRounding;
        long jM47getDirectionDnnuFBc = PointKt.m47getDirectionDnnuFBc(PointKt.m53minusybeJwSQ(j9, j10));
        this.d1 = jM47getDirectionDnnuFBc;
        long jM47getDirectionDnnuFBc2 = PointKt.m47getDirectionDnnuFBc(PointKt.m53minusybeJwSQ(j11, j10));
        this.d2 = jM47getDirectionDnnuFBc2;
        float radius = cornerRounding != null ? cornerRounding.getRadius() : 0.0f;
        this.cornerRadius = radius;
        this.smoothing = cornerRounding != null ? cornerRounding.getSmoothing() : 0.0f;
        float fM46dotProductybeJwSQ = PointKt.m46dotProductybeJwSQ(jM47getDirectionDnnuFBc, jM47getDirectionDnnuFBc2);
        this.cosAngle = fM46dotProductybeJwSQ;
        float f8 = 1;
        float fSqrt = (float) Math.sqrt(f8 - Utils.square(fM46dotProductybeJwSQ));
        this.sinAngle = fSqrt;
        this.expectedRoundCut = ((double) fSqrt) > 0.001d ? ((fM46dotProductybeJwSQ + f8) * radius) / fSqrt : 0.0f;
        this.center = FloatFloatPair.m3constructorimpl(0.0f, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final float calculateActualSmoothingValue(float allowedCut) {
        if (allowedCut > getExpectedCut()) {
            return this.smoothing;
        }
        float f8 = this.expectedRoundCut;
        if (allowedCut <= f8) {
            return 0.0f;
        }
        return ((allowedCut - f8) * this.smoothing) / (getExpectedCut() - this.expectedRoundCut);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: computeFlankingCurve-oAJzIJU, reason: not valid java name */
    private final Cubic m60computeFlankingCurveoAJzIJU(float actualRoundCut, float actualSmoothingValues, long corner, long sideStart, long circleSegmentIntersection, long otherCircleSegmentIntersection, long circleCenter, float actualR) {
        long jM47getDirectionDnnuFBc = PointKt.m47getDirectionDnnuFBc(PointKt.m53minusybeJwSQ(sideStart, corner));
        long jM54plusybeJwSQ = PointKt.m54plusybeJwSQ(corner, PointKt.m56timesso9K2fw(PointKt.m56timesso9K2fw(jM47getDirectionDnnuFBc, actualRoundCut), 1 + actualSmoothingValues));
        long packedValue = circleSegmentIntersection;
        long jM52interpolatedLqxh1s = PointKt.m52interpolatedLqxh1s(packedValue, PointKt.m44divso9K2fw(PointKt.m54plusybeJwSQ(circleSegmentIntersection, otherCircleSegmentIntersection), 2.0f), actualSmoothingValues);
        long jM54plusybeJwSQ2 = PointKt.m54plusybeJwSQ(circleCenter, PointKt.m56timesso9K2fw(Utils.directionVector(PointKt.m50getXDnnuFBc(jM52interpolatedLqxh1s) - PointKt.m50getXDnnuFBc(circleCenter), PointKt.m51getYDnnuFBc(jM52interpolatedLqxh1s) - PointKt.m51getYDnnuFBc(circleCenter)), actualR));
        FloatFloatPair floatFloatPairM61lineIntersectionCBFvKDc = m61lineIntersectionCBFvKDc(sideStart, jM47getDirectionDnnuFBc, jM54plusybeJwSQ2, Utils.m71rotate90DnnuFBc(PointKt.m53minusybeJwSQ(jM54plusybeJwSQ2, circleCenter)));
        if (floatFloatPairM61lineIntersectionCBFvKDc != null) {
            packedValue = floatFloatPairM61lineIntersectionCBFvKDc.getPackedValue();
        }
        return new Cubic(jM54plusybeJwSQ, PointKt.m44divso9K2fw(PointKt.m54plusybeJwSQ(jM54plusybeJwSQ, PointKt.m56timesso9K2fw(packedValue, 2.0f)), 3.0f), packedValue, jM54plusybeJwSQ2, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ List getCubics$default(RoundedCorner roundedCorner, float f8, float f9, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            f9 = f8;
        }
        return roundedCorner.getCubics(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: lineIntersection-CBFvKDc, reason: not valid java name */
    private final FloatFloatPair m61lineIntersectionCBFvKDc(long p1, long d9, long p9, long d10) {
        long jM71rotate90DnnuFBc = Utils.m71rotate90DnnuFBc(d10);
        float fM46dotProductybeJwSQ = PointKt.m46dotProductybeJwSQ(d9, jM71rotate90DnnuFBc);
        if (Math.abs(fM46dotProductybeJwSQ) < 1.0E-4f) {
            return null;
        }
        float fM46dotProductybeJwSQ2 = PointKt.m46dotProductybeJwSQ(PointKt.m53minusybeJwSQ(p9, p1), jM71rotate90DnnuFBc);
        if (Math.abs(fM46dotProductybeJwSQ) < Math.abs(fM46dotProductybeJwSQ2) * 1.0E-4f) {
            return null;
        }
        return FloatFloatPair.m0boximpl(PointKt.m54plusybeJwSQ(p1, PointKt.m56timesso9K2fw(d9, fM46dotProductybeJwSQ2 / fM46dotProductybeJwSQ)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getCenter-1ufDz9w, reason: not valid java name and from getter */
    public final long getCenter() {
        return this.center;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getCosAngle() {
        return this.cosAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final List<Cubic> getCubics(float allowedCut0, float allowedCut1) {
        float fMin = Math.min(allowedCut0, allowedCut1);
        float f8 = this.expectedRoundCut;
        if (f8 < 1.0E-4f || fMin < 1.0E-4f || this.cornerRadius < 1.0E-4f) {
            long j9 = this.p1;
            this.center = j9;
            return CollectionsKt.listOf(Cubic.Companion.straightLine(PointKt.m50getXDnnuFBc(j9), PointKt.m51getYDnnuFBc(this.p1), PointKt.m50getXDnnuFBc(this.p1), PointKt.m51getYDnnuFBc(this.p1)));
        }
        float fMin2 = Math.min(fMin, f8);
        float fCalculateActualSmoothingValue = calculateActualSmoothingValue(allowedCut0);
        float fCalculateActualSmoothingValue2 = calculateActualSmoothingValue(allowedCut1);
        float f9 = (this.cornerRadius * fMin2) / this.expectedRoundCut;
        this.center = PointKt.m54plusybeJwSQ(this.p1, PointKt.m56timesso9K2fw(PointKt.m47getDirectionDnnuFBc(PointKt.m44divso9K2fw(PointKt.m54plusybeJwSQ(this.d1, this.d2), 2.0f)), (float) Math.sqrt(Utils.square(fMin2) + Utils.square(f9))));
        long jM54plusybeJwSQ = PointKt.m54plusybeJwSQ(this.p1, PointKt.m56timesso9K2fw(this.d1, fMin2));
        long jM54plusybeJwSQ2 = PointKt.m54plusybeJwSQ(this.p1, PointKt.m56timesso9K2fw(this.d2, fMin2));
        Cubic cubicM60computeFlankingCurveoAJzIJU = m60computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue, this.p1, this.p0, jM54plusybeJwSQ, jM54plusybeJwSQ2, this.center, f9);
        Cubic cubicReverse = m60computeFlankingCurveoAJzIJU(fMin2, fCalculateActualSmoothingValue2, this.p1, this.p2, jM54plusybeJwSQ2, jM54plusybeJwSQ, this.center, f9).reverse();
        return CollectionsKt.listOf((Object[]) new Cubic[]{cubicM60computeFlankingCurveoAJzIJU, Cubic.Companion.circularArc(PointKt.m50getXDnnuFBc(this.center), PointKt.m51getYDnnuFBc(this.center), cubicM60computeFlankingCurveoAJzIJU.getAnchor1X(), cubicM60computeFlankingCurveoAJzIJU.getAnchor1Y(), cubicReverse.getAnchor0X(), cubicReverse.getAnchor0Y()), cubicReverse});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getD1-1ufDz9w, reason: not valid java name and from getter */
    public final long getD1() {
        return this.d1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getD2-1ufDz9w, reason: not valid java name and from getter */
    public final long getD2() {
        return this.d2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getExpectedCut() {
        return (1 + this.smoothing) * this.expectedRoundCut;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getExpectedRoundCut() {
        return this.expectedRoundCut;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getP0-1ufDz9w, reason: not valid java name and from getter */
    public final long getP0() {
        return this.p0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getP1-1ufDz9w, reason: not valid java name and from getter */
    public final long getP1() {
        return this.p1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getP2-1ufDz9w, reason: not valid java name and from getter */
    public final long getP2() {
        return this.p2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CornerRounding getRounding() {
        return this.rounding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getSinAngle() {
        return this.sinAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getSmoothing() {
        return this.smoothing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: setCenter-DnnuFBc, reason: not valid java name */
    public final void m68setCenterDnnuFBc(long j9) {
        this.center = j9;
    }

    public /* synthetic */ RoundedCorner(long j9, long j10, long j11, CornerRounding cornerRounding, DefaultConstructorMarker defaultConstructorMarker) {
        this(j9, j10, j11, cornerRounding);
    }

    public /* synthetic */ RoundedCorner(long j9, long j10, long j11, CornerRounding cornerRounding, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(j9, j10, j11, (i9 & 8) != 0 ? null : cornerRounding, null);
    }

    @JvmOverloads
    public final List<Cubic> getCubics(float f8) {
        return getCubics$default(this, f8, 0.0f, 2, null);
    }
}
