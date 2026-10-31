package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B%\b\u0000\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u001c\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0012J\u0013\u0010\u0017\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001b\u001a\u00020\u0000J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\""}, d2 = {"Landroidx/graphics/shapes/RoundedPolygon;", "", "features", "", "Landroidx/graphics/shapes/Feature;", "centerX", "", "centerY", "(Ljava/util/List;FF)V", "getCenterX", "()F", "getCenterY", "cubics", "Landroidx/graphics/shapes/Cubic;", "getCubics", "()Ljava/util/List;", "getFeatures$graphics_shapes_release", "calculateBounds", "", "bounds", "approximate", "", "calculateMaxBounds", "equals", "other", "hashCode", "", "normalized", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,686:1\n108#2,4:687\n108#2,4:691\n108#2,4:695\n1#3:699\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n*L\n93#1:687,4\n96#1:691,4\n101#1:695,4\n*E\n"})
public final class RoundedPolygon {
    public static final RoundedPolygon$Companion Companion = new RoundedPolygon$Companion(null);
    private final float centerX;
    private final float centerY;
    private final List<Cubic> cubics;
    private final List<Feature> features;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r18v0, resolved type: java.util.List<? extends androidx.graphics.shapes.Feature> */
    /* JADX WARN: Multi-variable type inference failed */
    public RoundedPolygon(List<? extends Feature> list, float f8, float f9) {
        List<Cubic> listMutableListOf;
        List<Cubic> listMutableListOf2;
        Cubic cubic;
        List<Cubic> cubics;
        list.getClass();
        this.features = list;
        this.centerX = f8;
        this.centerY = f9;
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int i9 = 0;
        Cubic cubic2 = null;
        if (list.size() <= 0 || ((Feature) list.get(0)).getCubics().size() != 3) {
            listMutableListOf = null;
            listMutableListOf2 = null;
        } else {
            Pair<Cubic, Cubic> pairSplit = ((Feature) list.get(0)).getCubics().get(1).split(0.5f);
            Cubic cubicComponent1 = pairSplit.component1();
            Cubic cubicComponent2 = pairSplit.component2();
            listMutableListOf2 = CollectionsKt.mutableListOf(((Feature) list.get(0)).getCubics().get(0), cubicComponent1);
            listMutableListOf = CollectionsKt.mutableListOf(cubicComponent2, ((Feature) list.get(0)).getCubics().get(2));
        }
        int size = list.size();
        if (size >= 0) {
            int i10 = 0;
            Cubic cubic3 = null;
            while (true) {
                if (i10 == 0 && listMutableListOf != null) {
                    cubics = listMutableListOf;
                } else if (i10 != this.features.size()) {
                    cubics = this.features.get(i10).getCubics();
                } else if (listMutableListOf2 == null) {
                    break;
                } else {
                    cubics = listMutableListOf2;
                }
                int size2 = cubics.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    Cubic cubic4 = cubics.get(i11);
                    if (!cubic4.zeroLength$graphics_shapes_release()) {
                        if (cubic3 != null) {
                            listCreateListBuilder.add(cubic3);
                        }
                        if (cubic2 == null) {
                            cubic2 = cubic4;
                            cubic3 = cubic2;
                        } else {
                            cubic3 = cubic4;
                        }
                    } else if (cubic3 != null) {
                        cubic3.getPoints()[6] = cubic4.getAnchor1X();
                        cubic3.getPoints()[7] = cubic4.getAnchor1Y();
                    }
                }
                if (i10 == size) {
                    break;
                } else {
                    i10++;
                }
            }
            cubic = cubic2;
            cubic2 = cubic3;
        } else {
            cubic = null;
        }
        if (cubic2 != null && cubic != null) {
            listCreateListBuilder.add(CubicKt.Cubic(cubic2.getAnchor0X(), cubic2.getAnchor0Y(), cubic2.getControl0X(), cubic2.getControl0Y(), cubic2.getControl1X(), cubic2.getControl1Y(), cubic.getAnchor0X(), cubic.getAnchor0Y()));
        }
        List<Cubic> listBuild = CollectionsKt.build(listCreateListBuilder);
        this.cubics = listBuild;
        Cubic cubic5 = listBuild.get(listBuild.size() - 1);
        int size3 = listBuild.size();
        while (i9 < size3) {
            Cubic cubic6 = this.cubics.get(i9);
            Cubic cubic7 = cubic5;
            if (Math.abs(cubic6.getAnchor0X() - cubic7.getAnchor1X()) > 1.0E-4f || Math.abs(cubic6.getAnchor0Y() - cubic7.getAnchor1Y()) > 1.0E-4f) {
                i.k("RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics");
                throw null;
            }
            i9++;
            cubic5 = cubic6;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float[] calculateBounds$default(RoundedPolygon roundedPolygon, float[] fArr, boolean z8, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            fArr = new float[4];
        }
        if ((i9 & 2) != 0) {
            z8 = true;
        }
        return roundedPolygon.calculateBounds(fArr, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float[] calculateMaxBounds$default(RoundedPolygon roundedPolygon, float[] fArr, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            fArr = new float[4];
        }
        return roundedPolygon.calculateMaxBounds(fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final float[] calculateBounds(float[] bounds, boolean approximate) {
        bounds.getClass();
        if (bounds.length < 4) {
            i.k("Required bounds size of 4");
            return null;
        }
        int size = this.cubics.size();
        float fMax = Float.MIN_VALUE;
        float fMin = Float.MAX_VALUE;
        float fMin2 = Float.MAX_VALUE;
        float fMax2 = Float.MIN_VALUE;
        for (int i9 = 0; i9 < size; i9++) {
            this.cubics.get(i9).calculateBounds$graphics_shapes_release(bounds, approximate);
            fMin = Math.min(fMin, bounds[0]);
            fMin2 = Math.min(fMin2, bounds[1]);
            fMax = Math.max(fMax, bounds[2]);
            fMax2 = Math.max(fMax2, bounds[3]);
        }
        bounds[0] = fMin;
        bounds[1] = fMin2;
        bounds[2] = fMax;
        bounds[3] = fMax2;
        return bounds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float[] calculateMaxBounds(float[] bounds) {
        bounds.getClass();
        if (bounds.length < 4) {
            i.k("Required bounds size of 4");
            return null;
        }
        int size = this.cubics.size();
        float fMax = 0.0f;
        for (int i9 = 0; i9 < size; i9++) {
            Cubic cubic = this.cubics.get(i9);
            float fDistanceSquared = Utils.distanceSquared(cubic.getAnchor0X() - this.centerX, cubic.getAnchor0Y() - this.centerY);
            long jM38pointOnCurveOOQOV4g$graphics_shapes_release = cubic.m38pointOnCurveOOQOV4g$graphics_shapes_release(0.5f);
            fMax = Math.max(fMax, Math.max(fDistanceSquared, Utils.distanceSquared(PointKt.m50getXDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerX, PointKt.m51getYDnnuFBc(jM38pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerY)));
        }
        float fSqrt = (float) Math.sqrt(fMax);
        float f8 = this.centerX;
        bounds[0] = f8 - fSqrt;
        float f9 = this.centerY;
        bounds[1] = f9 - fSqrt;
        bounds[2] = f8 + fSqrt;
        bounds[3] = f9 + fSqrt;
        return bounds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof RoundedPolygon) {
            return Intrinsics.areEqual(this.features, ((RoundedPolygon) other).features);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getCenterX() {
        return this.centerX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getCenterY() {
        return this.centerY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Cubic> getCubics() {
        return this.cubics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Feature> getFeatures$graphics_shapes_release() {
        return this.features;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.features.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RoundedPolygon normalized() {
        float[] fArrCalculateBounds$default = calculateBounds$default(this, null, false, 3, null);
        float f8 = fArrCalculateBounds$default[2] - fArrCalculateBounds$default[0];
        float f9 = fArrCalculateBounds$default[3] - fArrCalculateBounds$default[1];
        float fMax = Math.max(f8, f9);
        float f10 = 2;
        return transformed(new RoundedPolygon$normalized$1(((fMax - f8) / f10) - fArrCalculateBounds$default[0], fMax, ((fMax - f9) / f10) - fArrCalculateBounds$default[1]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "[RoundedPolygon. Cubics = " + CollectionsKt.l(this.cubics, null, null, null, null, 63) + " || Features = " + CollectionsKt.l(this.features, null, null, null, null, 63) + " || Center = (" + this.centerX + ", " + this.centerY + ")]";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RoundedPolygon transformed(PointTransformer f8) {
        f8.getClass();
        long jM57transformedso9K2fw = PointKt.m57transformedso9K2fw(FloatFloatPair.m3constructorimpl(this.centerX, this.centerY), f8);
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = this.features.size();
        for (int i9 = 0; i9 < size; i9++) {
            listCreateListBuilder.add(this.features.get(i9).transformed$graphics_shapes_release(f8));
        }
        return new RoundedPolygon(CollectionsKt.build(listCreateListBuilder), PointKt.m50getXDnnuFBc(jM57transformedso9K2fw), PointKt.m51getYDnnuFBc(jM57transformedso9K2fw));
    }

    @JvmOverloads
    public final float[] calculateBounds(float[] fArr) {
        fArr.getClass();
        return calculateBounds$default(this, fArr, false, 2, null);
    }

    @JvmOverloads
    public final float[] calculateBounds() {
        return calculateBounds$default(this, null, false, 3, null);
    }
}
