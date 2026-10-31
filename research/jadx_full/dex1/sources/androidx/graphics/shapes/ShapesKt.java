package androidx.graphics.shapes;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u001aH\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002\u001a0\u0010\f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002\u001a4\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\b\b\u0003\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001a>\u0010\u0012\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001a\u0084\u0001\u0010\u0014\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0003\u0010\b\u001a\u00020\u00052\b\b\u0003\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001aN\u0010\u001b\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u001ad\u0010\u001c\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007¨\u0006\u001d"}, d2 = {"pillStarVerticesFromNumVerts", "", "numVerticesPerRadius", "", "width", "", "height", "innerRadius", "vertexSpacing", "startLocation", "centerX", "centerY", "starVerticesFromNumVerts", "radius", "circle", "Landroidx/graphics/shapes/RoundedPolygon;", "Landroidx/graphics/shapes/RoundedPolygon$Companion;", "numVertices", "pill", "smoothing", "pillStar", "innerRadiusRatio", "rounding", "Landroidx/graphics/shapes/CornerRounding;", "innerRounding", "perVertexRounding", "", "rectangle", "star", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1360#2:460\n1446#2,5:461\n1360#2:466\n1446#2,5:467\n*S KotlinDebug\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n*L\n155#1:460\n155#1:461,5\n294#1:466\n294#1:467,5\n*E\n"})
public final class ShapesKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon$Companion roundedPolygon$Companion, @IntRange(from = 3) int i9, float f8, float f9, float f10) {
        roundedPolygon$Companion.getClass();
        if (i9 >= 3) {
            return RoundedPolygonKt.RoundedPolygon$default(i9, f8 / ((float) Math.cos(Utils.getFloatPi() / i9)), f9, f10, new CornerRounding(f8, 0.0f, 2, null), null, 32, null);
        }
        i.k("Circle must have at least three vertices");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon circle$default(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 8;
        }
        if ((i10 & 2) != 0) {
            f8 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            f9 = 0.0f;
        }
        if ((i10 & 8) != 0) {
            f10 = 0.0f;
        }
        return circle(roundedPolygon$Companion, i9, f8, f9, f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, float f10, float f11, float f12) {
        roundedPolygon$Companion.getClass();
        if (f8 <= 0.0f || f9 <= 0.0f) {
            i.k("Pill shapes must have positive width and height");
            return null;
        }
        float f13 = 2;
        float f14 = f8 / f13;
        float f15 = f9 / f13;
        float f16 = f14 + f11;
        float f17 = f15 + f12;
        float f18 = (-f14) + f11;
        float f19 = (-f15) + f12;
        return RoundedPolygonKt.RoundedPolygon$default(new float[]{f16, f17, f18, f17, f18, f19, f16, f19}, new CornerRounding(Math.min(f14, f15), f10), null, f11, f12, 4, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon pill$default(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, float f10, float f11, float f12, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i9 & 2) != 0) {
            f9 = 1.0f;
        }
        if ((i9 & 4) != 0) {
            f10 = 0.0f;
        }
        if ((i9 & 8) != 0) {
            f11 = 0.0f;
        }
        return pill(roundedPolygon$Companion, f8, f9, f10, f11, (i9 & 16) != 0 ? 0.0f : f12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, float f13, float f14) {
        List<CornerRounding> arrayList;
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        if (f8 <= 0.0f || f9 <= 0.0f) {
            i.k("Pill shapes must have positive width and height");
            return null;
        }
        if (f10 <= 0.0f || f10 > 1.0f) {
            i.k("innerRadius must be between 0 and 1");
            return null;
        }
        if (list != null || cornerRounding2 == null) {
            arrayList = list;
        } else {
            kotlin.ranges.IntRange intRangeUntil = RangesKt.until(0, i9);
            arrayList = new ArrayList<>();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                CollectionsKt.c(arrayList, CollectionsKt.listOf((Object[]) new CornerRounding[]{cornerRounding, cornerRounding2}));
            }
        }
        return RoundedPolygonKt.RoundedPolygon(pillStarVerticesFromNumVerts(i9, f8, f9, f10, f11, f12, f13, f14), cornerRounding, arrayList, f13, f14);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon pillStar$default(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f11, float f12, float f13, float f14, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i10 & 2) != 0) {
            f9 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            i9 = 8;
        }
        if ((i10 & 8) != 0) {
            f10 = 0.5f;
        }
        if ((i10 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i10 & 32) != 0) {
            cornerRounding2 = null;
        }
        if ((i10 & 64) != 0) {
            list = null;
        }
        if ((i10 & 128) != 0) {
            f11 = 0.5f;
        }
        if ((i10 & 256) != 0) {
            f12 = 0.0f;
        }
        if ((i10 & 512) != 0) {
            f13 = 0.0f;
        }
        return pillStar(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, list, f11, f12, f13, (i10 & 1024) != 0 ? 0.0f : f14);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final float[] pillStarVerticesFromNumVerts(int i9, float f8, float f9, float f10, float f11, float f12, float f13, float f14) {
        float f15;
        long jM3constructorimpl;
        float fMin = Math.min(f8, f9);
        float fA = RangesKt.a(f9 - f8);
        float fA2 = RangesKt.a(f8 - f9);
        float f16 = 2;
        float f17 = fA / f16;
        float f18 = fA2 / f16;
        float fInterpolate = Utils.interpolate(f10, 1.0f, f11) * Utils.getTwoPi() * fMin;
        float f19 = (f16 * fA) + (f16 * fA2) + fInterpolate;
        float f20 = fInterpolate / 4;
        float f21 = f17 + f20;
        float f22 = f21 + fA2;
        float f23 = f22 + f20;
        float f24 = f23 + fA;
        float f25 = f24 + f20;
        float f26 = f25 + fA2;
        float f27 = f26 + f20;
        float f28 = 0.0f;
        float[] fArr = {0.0f, f17, f21, f22, f23, f24, f25, f26, f27, f27 + f17, f19};
        int i10 = i9 * 2;
        float f29 = f19 / i10;
        float f30 = f12 * f19;
        float[] fArr2 = new float[i9 * 4];
        long jM3constructorimpl2 = FloatFloatPair.m3constructorimpl(f18, f17);
        float f31 = -f18;
        long jM3constructorimpl3 = FloatFloatPair.m3constructorimpl(f31, f17);
        float f32 = -f17;
        long jM3constructorimpl4 = FloatFloatPair.m3constructorimpl(f31, f32);
        long jM3constructorimpl5 = FloatFloatPair.m3constructorimpl(f18, f32);
        int i11 = 0;
        boolean z8 = false;
        int i12 = 0;
        int i13 = 0;
        float f33 = f17;
        while (i11 < i10) {
            float f34 = f30 % f19;
            if (f34 < f28) {
                i12 = 0;
            }
            while (true) {
                int i14 = (i12 + 1) % 11;
                float f35 = fArr[i14];
                if (f34 >= f35) {
                    f33 = fArr[(i14 + 1) % 11];
                    i12 = i14;
                    f28 = f35;
                } else {
                    float f36 = (f34 - f28) / (f33 - f28);
                    float f37 = z8 ? fMin * f10 : fMin;
                    switch (i12) {
                        case 0:
                            f15 = f18;
                            jM3constructorimpl = FloatFloatPair.m3constructorimpl(f37, f36 * f17);
                            break;
                        case 1:
                            f15 = f18;
                            jM3constructorimpl = PointKt.m54plusybeJwSQ(Utils.m70radialToCartesianL6JJ3z0$default(f37, (Utils.getFloatPi() * f36) / f16, 0L, 4, null), jM3constructorimpl2);
                            break;
                        case 2:
                            f15 = f18;
                            jM3constructorimpl = FloatFloatPair.m3constructorimpl(f15 - (f36 * fA2), f37);
                            break;
                        case 3:
                            f15 = f18;
                            jM3constructorimpl = PointKt.m54plusybeJwSQ(Utils.m70radialToCartesianL6JJ3z0$default(f37, ((Utils.getFloatPi() * f36) / f16) + (Utils.getFloatPi() / f16), 0L, 4, null), jM3constructorimpl3);
                            break;
                        case 4:
                            f15 = f18;
                            jM3constructorimpl = FloatFloatPair.m3constructorimpl(-f37, f17 - (f36 * fA));
                            break;
                        case 5:
                            f15 = f18;
                            jM3constructorimpl = PointKt.m54plusybeJwSQ(Utils.m70radialToCartesianL6JJ3z0$default(f37, ((Utils.getFloatPi() * f36) / f16) + Utils.getFloatPi(), 0L, 4, null), jM3constructorimpl4);
                            break;
                        case 6:
                            f15 = f18;
                            jM3constructorimpl = FloatFloatPair.m3constructorimpl((f36 * fA2) + f31, -f37);
                            break;
                        case 7:
                            f15 = f18;
                            jM3constructorimpl = PointKt.m54plusybeJwSQ(Utils.m70radialToCartesianL6JJ3z0$default(f37, ((Utils.getFloatPi() * f36) / f16) + (Utils.getFloatPi() * 1.5f), 0L, 4, null), jM3constructorimpl5);
                            break;
                        default:
                            f15 = f18;
                            jM3constructorimpl = FloatFloatPair.m3constructorimpl(f37, (f36 * f17) + f32);
                            break;
                    }
                    int i15 = i13 + 1;
                    fArr2[i13] = PointKt.m50getXDnnuFBc(jM3constructorimpl) + f13;
                    i13 += 2;
                    fArr2[i15] = PointKt.m51getYDnnuFBc(jM3constructorimpl) + f14;
                    f30 += f29;
                    z8 = !z8;
                    fArr = fArr;
                    i11++;
                    f18 = f15;
                }
            }
        }
        return fArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final RoundedPolygon rectangle(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, CornerRounding cornerRounding, List<CornerRounding> list, float f10, float f11) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        float f12 = 2;
        float f13 = f8 / f12;
        float f14 = f10 - f13;
        float f15 = f9 / f12;
        float f16 = f11 - f15;
        float f17 = f13 + f10;
        float f18 = f15 + f11;
        return RoundedPolygonKt.RoundedPolygon(new float[]{f17, f18, f14, f18, f14, f16, f17, f16}, cornerRounding, list, f10, f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon rectangle$default(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, CornerRounding cornerRounding, List list, float f10, float f11, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i9 & 2) != 0) {
            f9 = 2.0f;
        }
        if ((i9 & 4) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i9 & 8) != 0) {
            list = null;
        }
        if ((i9 & 16) != 0) {
            f10 = 0.0f;
        }
        if ((i9 & 32) != 0) {
            f11 = 0.0f;
        }
        return rectangle(roundedPolygon$Companion, f8, f9, cornerRounding, list, f10, f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f10, float f11) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        if (f8 <= 0.0f || f9 <= 0.0f) {
            i.k("Star radii must both be greater than 0");
            return null;
        }
        if (f9 >= f8) {
            i.k("innerRadius must be less than radius");
            return null;
        }
        if (list == null && cornerRounding2 != null) {
            kotlin.ranges.IntRange intRangeUntil = RangesKt.until(0, i9);
            list = new ArrayList<>();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                CollectionsKt.c(list, CollectionsKt.listOf((Object[]) new CornerRounding[]{cornerRounding, cornerRounding2}));
            }
        }
        return RoundedPolygonKt.RoundedPolygon(starVerticesFromNumVerts(i9, f8, f9, f10, f11), cornerRounding, list, f10, f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon star$default(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f10, float f11, int i10, Object obj) {
        return star(roundedPolygon$Companion, i9, (i10 & 2) != 0 ? 1.0f : f8, (i10 & 4) != 0 ? 0.5f : f9, (i10 & 8) != 0 ? CornerRounding.Unrounded : cornerRounding, (i10 & 16) != 0 ? null : cornerRounding2, (i10 & 32) == 0 ? list : null, (i10 & 64) != 0 ? 0.0f : f10, (i10 & 128) != 0 ? 0.0f : f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final float[] starVerticesFromNumVerts(int i9, float f8, float f9, float f10, float f11) {
        float[] fArr = new float[i9 * 4];
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            float f12 = i9;
            long jM70radialToCartesianL6JJ3z0$default = Utils.m70radialToCartesianL6JJ3z0$default(f8, (Utils.getFloatPi() / f12) * 2 * i11, 0L, 4, null);
            fArr[i10] = PointKt.m50getXDnnuFBc(jM70radialToCartesianL6JJ3z0$default) + f10;
            fArr[i10 + 1] = PointKt.m51getYDnnuFBc(jM70radialToCartesianL6JJ3z0$default) + f11;
            long jM70radialToCartesianL6JJ3z0$default2 = Utils.m70radialToCartesianL6JJ3z0$default(f9, (Utils.getFloatPi() / f12) * ((i11 * 2) + 1), 0L, 4, null);
            int i12 = i10 + 3;
            fArr[i10 + 2] = PointKt.m50getXDnnuFBc(jM70radialToCartesianL6JJ3z0$default2) + f10;
            i10 += 4;
            fArr[i12] = PointKt.m51getYDnnuFBc(jM70radialToCartesianL6JJ3z0$default2) + f11;
        }
        return fArr;
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8) {
        roundedPolygon$Companion.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2046, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9) {
        roundedPolygon$Companion.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2044, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9) {
        roundedPolygon$Companion.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2040, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10) {
        roundedPolygon$Companion.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2032, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2016, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 0.0f, 0.0f, 1984, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, 0.0f, 0.0f, 1920, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, list, f11, 0.0f, 0.0f, 0.0f, 1792, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, list, f11, f12, 0.0f, 0.0f, 1536, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, int i9, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d, toInclusive = false) float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, to = 1.0d) float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12, float f13) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(roundedPolygon$Companion, f8, f9, i9, f10, cornerRounding, cornerRounding2, list, f11, f12, f13, 0.0f, 1024, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon$Companion roundedPolygon$Companion) {
        roundedPolygon$Companion.getClass();
        return pillStar$default(roundedPolygon$Companion, 0.0f, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2047, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon$Companion roundedPolygon$Companion, @IntRange(from = 3) int i9) {
        roundedPolygon$Companion.getClass();
        return circle$default(roundedPolygon$Companion, i9, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon$Companion roundedPolygon$Companion, @IntRange(from = 3) int i9, float f8) {
        roundedPolygon$Companion.getClass();
        return circle$default(roundedPolygon$Companion, i9, f8, 0.0f, 0.0f, 12, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon$Companion roundedPolygon$Companion, @IntRange(from = 3) int i9, float f8, float f9) {
        roundedPolygon$Companion.getClass();
        return circle$default(roundedPolygon$Companion, i9, f8, f9, 0.0f, 8, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon$Companion roundedPolygon$Companion) {
        roundedPolygon$Companion.getClass();
        return circle$default(roundedPolygon$Companion, 0, 0.0f, 0.0f, 0.0f, 15, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8) {
        roundedPolygon$Companion.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, 0.0f, null, null, null, 0.0f, 0.0f, 252, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion, float f8) {
        roundedPolygon$Companion.getClass();
        return pill$default(roundedPolygon$Companion, f8, 0.0f, 0.0f, 0.0f, 0.0f, 30, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9) {
        roundedPolygon$Companion.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, f9, null, null, null, 0.0f, 0.0f, 248, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9) {
        roundedPolygon$Companion.getClass();
        return pill$default(roundedPolygon$Companion, f8, f9, 0.0f, 0.0f, 0.0f, 28, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, f9, cornerRounding, null, null, 0.0f, 0.0f, 240, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, float f10) {
        roundedPolygon$Companion.getClass();
        return pill$default(roundedPolygon$Companion, f8, f9, f10, 0.0f, 0.0f, 24, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, f9, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 224, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion, float f8, float f9, float f10, float f11) {
        roundedPolygon$Companion.getClass();
        return pill$default(roundedPolygon$Companion, f8, f9, f10, f11, 0.0f, 16, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, f9, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, 192, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon$Companion roundedPolygon$Companion) {
        roundedPolygon$Companion.getClass();
        return pill$default(roundedPolygon$Companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 31, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9, float f8, float f9, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f10) {
        roundedPolygon$Companion.getClass();
        cornerRounding.getClass();
        return star$default(roundedPolygon$Companion, i9, f8, f9, cornerRounding, cornerRounding2, list, f10, 0.0f, 128, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon$Companion roundedPolygon$Companion, int i9) {
        roundedPolygon$Companion.getClass();
        return star$default(roundedPolygon$Companion, i9, 0.0f, 0.0f, null, null, null, 0.0f, 0.0f, 254, null);
    }
}
