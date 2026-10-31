package androidx.graphics.shapes;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.net.telnet.TelnetCommand;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\u001aH\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002\u001a0\u0010\f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002\u001a4\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\b\b\u0003\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001a>\u0010\u0012\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001a\u0084\u0001\u0010\u0014\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0003\u0010\b\u001a\u00020\u00052\b\b\u0003\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007\u001aN\u0010\u001b\u001a\u00020\u000f*\u00020\u00102\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u001ad\u0010\u001c\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001a2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005H\u0007¨\u0006\u001d"}, m3159d2 = {"pillStarVerticesFromNumVerts", "", "numVerticesPerRadius", "", "width", "", "height", "innerRadius", "vertexSpacing", "startLocation", "centerX", "centerY", "starVerticesFromNumVerts", "radius", "circle", "Landroidx/graphics/shapes/RoundedPolygon;", "Landroidx/graphics/shapes/RoundedPolygon$Companion;", "numVertices", "pill", "smoothing", "pillStar", "innerRadiusRatio", "rounding", "Landroidx/graphics/shapes/CornerRounding;", "innerRounding", "perVertexRounding", "", "rectangle", "star", "graphics-shapes_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1360#2:460\n1446#2,5:461\n1360#2:466\n1446#2,5:467\n*S KotlinDebug\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n*L\n155#1:460\n155#1:461,5\n294#1:466\n294#1:467,5\n*E\n"})
public final class ShapesKt {
    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, @IntRange(from = 3) int i10, float f8, float f10, float f11) {
        companion.getClass();
        if (i10 >= 3) {
            return RoundedPolygonKt.RoundedPolygon$default(i10, f8 / ((float) Math.cos(Utils.getFloatPi() / i10)), f10, f11, new CornerRounding(f8, 0.0f, 2, null), null, 32, null);
        }
        C1929i.m3029k("Circle must have at least three vertices");
        return null;
    }

    public static /* synthetic */ RoundedPolygon circle$default(RoundedPolygon.Companion companion, int i10, float f8, float f10, float f11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 8;
        }
        if ((i11 & 2) != 0) {
            f8 = 1.0f;
        }
        if ((i11 & 4) != 0) {
            f10 = 0.0f;
        }
        if ((i11 & 8) != 0) {
            f11 = 0.0f;
        }
        return circle(companion, i10, f8, f10, f11);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f8, float f10, float f11, float f12, float f13) {
        companion.getClass();
        if (f8 <= 0.0f || f10 <= 0.0f) {
            C1929i.m3029k("Pill shapes must have positive width and height");
            return null;
        }
        float f14 = 2;
        float f15 = f8 / f14;
        float f16 = f10 / f14;
        float f17 = f15 + f12;
        float f18 = f16 + f13;
        float f19 = (-f15) + f12;
        float f20 = (-f16) + f13;
        return RoundedPolygonKt.RoundedPolygon$default(new float[]{f17, f18, f19, f18, f19, f20, f17, f20}, new CornerRounding(Math.min(f15, f16), f11), null, f12, f13, 4, null);
    }

    public static /* synthetic */ RoundedPolygon pill$default(RoundedPolygon.Companion companion, float f8, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i10 & 2) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 8) != 0) {
            f12 = 0.0f;
        }
        return pill(companion, f8, f10, f11, f12, (i10 & 16) != 0 ? 0.0f : f13);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, m378to = 1.0d) float f12, @FloatRange(from = 0.0d, m378to = 1.0d) float f13, float f14, float f15) {
        List<CornerRounding> arrayList;
        companion.getClass();
        cornerRounding.getClass();
        if (f8 <= 0.0f || f10 <= 0.0f) {
            C1929i.m3029k("Pill shapes must have positive width and height");
            return null;
        }
        if (f11 <= 0.0f || f11 > 1.0f) {
            C1929i.m3029k("innerRadius must be between 0 and 1");
            return null;
        }
        if (list != null || cornerRounding2 == null) {
            arrayList = list;
        } else {
            kotlin.ranges.IntRange intRangeUntil = RangesKt.until(0, i10);
            arrayList = new ArrayList<>();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, CollectionsKt.listOf((Object[]) new CornerRounding[]{cornerRounding, cornerRounding2}));
            }
        }
        return RoundedPolygonKt.RoundedPolygon(pillStarVerticesFromNumVerts(i10, f8, f10, f11, f12, f13, f14, f15), cornerRounding, arrayList, f14, f15);
    }

    public static /* synthetic */ RoundedPolygon pillStar$default(RoundedPolygon.Companion companion, float f8, float f10, int i10, float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f12, float f13, float f14, float f15, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i11 & 2) != 0) {
            f10 = 1.0f;
        }
        if ((i11 & 4) != 0) {
            i10 = 8;
        }
        if ((i11 & 8) != 0) {
            f11 = 0.5f;
        }
        if ((i11 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i11 & 32) != 0) {
            cornerRounding2 = null;
        }
        if ((i11 & 64) != 0) {
            list = null;
        }
        if ((i11 & 128) != 0) {
            f12 = 0.5f;
        }
        if ((i11 & 256) != 0) {
            f13 = 0.0f;
        }
        if ((i11 & 512) != 0) {
            f14 = 0.0f;
        }
        return pillStar(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, list, f12, f13, f14, (i11 & 1024) != 0 ? 0.0f : f15);
    }

    private static final float[] pillStarVerticesFromNumVerts(int i10, float f8, float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16;
        long jM5996constructorimpl;
        float fMin = Math.min(f8, f10);
        float fCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(f10 - f8, 0.0f);
        float fCoerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(f8 - f10, 0.0f);
        float f17 = 2;
        float f18 = fCoerceAtLeast / f17;
        float f19 = fCoerceAtLeast2 / f17;
        float fInterpolate = Utils.interpolate(f11, 1.0f, f12) * Utils.getTwoPi() * fMin;
        float f20 = (f17 * fCoerceAtLeast) + (f17 * fCoerceAtLeast2) + fInterpolate;
        float f21 = fInterpolate / 4;
        float f22 = f18 + f21;
        float f23 = f22 + fCoerceAtLeast2;
        float f24 = f23 + f21;
        float f25 = f24 + fCoerceAtLeast;
        float f26 = f25 + f21;
        float f27 = f26 + fCoerceAtLeast2;
        float f28 = f27 + f21;
        float f29 = 0.0f;
        float[] fArr = {0.0f, f18, f22, f23, f24, f25, f26, f27, f28, f28 + f18, f20};
        int i11 = i10 * 2;
        float f30 = f20 / i11;
        float f31 = f13 * f20;
        float[] fArr2 = new float[i10 * 4];
        long jM5996constructorimpl2 = FloatFloatPair.m5996constructorimpl(f19, f18);
        float f32 = -f19;
        long jM5996constructorimpl3 = FloatFloatPair.m5996constructorimpl(f32, f18);
        float f33 = -f18;
        long jM5996constructorimpl4 = FloatFloatPair.m5996constructorimpl(f32, f33);
        long jM5996constructorimpl5 = FloatFloatPair.m5996constructorimpl(f19, f33);
        int i12 = 0;
        boolean z9 = false;
        int i13 = 0;
        int i14 = 0;
        float f34 = f18;
        while (i12 < i11) {
            float f35 = f31 % f20;
            if (f35 < f29) {
                i13 = 0;
            }
            while (true) {
                int i15 = (i13 + 1) % 11;
                float f36 = fArr[i15];
                if (f35 >= f36) {
                    f34 = fArr[(i15 + 1) % 11];
                    i13 = i15;
                    f29 = f36;
                } else {
                    float f37 = (f35 - f29) / (f34 - f29);
                    float f38 = z9 ? fMin * f11 : fMin;
                    switch (i13) {
                        case 0:
                            f16 = f19;
                            jM5996constructorimpl = FloatFloatPair.m5996constructorimpl(f38, f37 * f18);
                            break;
                        case 1:
                            f16 = f19;
                            jM5996constructorimpl = PointKt.m6047plusybeJwSQ(Utils.m6063radialToCartesianL6JJ3z0$default(f38, (Utils.getFloatPi() * f37) / f17, 0L, 4, null), jM5996constructorimpl2);
                            break;
                        case 2:
                            f16 = f19;
                            jM5996constructorimpl = FloatFloatPair.m5996constructorimpl(f16 - (f37 * fCoerceAtLeast2), f38);
                            break;
                        case 3:
                            f16 = f19;
                            jM5996constructorimpl = PointKt.m6047plusybeJwSQ(Utils.m6063radialToCartesianL6JJ3z0$default(f38, ((Utils.getFloatPi() * f37) / f17) + (Utils.getFloatPi() / f17), 0L, 4, null), jM5996constructorimpl3);
                            break;
                        case 4:
                            f16 = f19;
                            jM5996constructorimpl = FloatFloatPair.m5996constructorimpl(-f38, f18 - (f37 * fCoerceAtLeast));
                            break;
                        case 5:
                            f16 = f19;
                            jM5996constructorimpl = PointKt.m6047plusybeJwSQ(Utils.m6063radialToCartesianL6JJ3z0$default(f38, ((Utils.getFloatPi() * f37) / f17) + Utils.getFloatPi(), 0L, 4, null), jM5996constructorimpl4);
                            break;
                        case 6:
                            f16 = f19;
                            jM5996constructorimpl = FloatFloatPair.m5996constructorimpl((f37 * fCoerceAtLeast2) + f32, -f38);
                            break;
                        case 7:
                            f16 = f19;
                            jM5996constructorimpl = PointKt.m6047plusybeJwSQ(Utils.m6063radialToCartesianL6JJ3z0$default(f38, ((Utils.getFloatPi() * f37) / f17) + (Utils.getFloatPi() * 1.5f), 0L, 4, null), jM5996constructorimpl5);
                            break;
                        default:
                            f16 = f19;
                            jM5996constructorimpl = FloatFloatPair.m5996constructorimpl(f38, (f37 * f18) + f33);
                            break;
                    }
                    int i16 = i14 + 1;
                    fArr2[i14] = PointKt.m6043getXDnnuFBc(jM5996constructorimpl) + f14;
                    i14 += 2;
                    fArr2[i16] = PointKt.m6044getYDnnuFBc(jM5996constructorimpl) + f15;
                    f31 += f30;
                    z9 = !z9;
                    fArr = fArr;
                    i12++;
                    f19 = f16;
                }
            }
        }
        return fArr2;
    }

    public static final RoundedPolygon rectangle(RoundedPolygon.Companion companion, float f8, float f10, CornerRounding cornerRounding, List<CornerRounding> list, float f11, float f12) {
        companion.getClass();
        cornerRounding.getClass();
        float f13 = 2;
        float f14 = f8 / f13;
        float f15 = f11 - f14;
        float f16 = f10 / f13;
        float f17 = f12 - f16;
        float f18 = f14 + f11;
        float f19 = f16 + f12;
        return RoundedPolygonKt.RoundedPolygon(new float[]{f18, f19, f15, f19, f15, f17, f18, f17}, cornerRounding, list, f11, f12);
    }

    public static /* synthetic */ RoundedPolygon rectangle$default(RoundedPolygon.Companion companion, float f8, float f10, CornerRounding cornerRounding, List list, float f11, float f12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f8 = 2.0f;
        }
        if ((i10 & 2) != 0) {
            f10 = 2.0f;
        }
        if ((i10 & 4) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i10 & 8) != 0) {
            list = null;
        }
        if ((i10 & 16) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 32) != 0) {
            f12 = 0.0f;
        }
        return rectangle(companion, f8, f10, cornerRounding, list, f11, f12);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f11, float f12) {
        companion.getClass();
        cornerRounding.getClass();
        if (f8 <= 0.0f || f10 <= 0.0f) {
            C1929i.m3029k("Star radii must both be greater than 0");
            return null;
        }
        if (f10 >= f8) {
            C1929i.m3029k("innerRadius must be less than radius");
            return null;
        }
        if (list == null && cornerRounding2 != null) {
            kotlin.ranges.IntRange intRangeUntil = RangesKt.until(0, i10);
            list = new ArrayList<>();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                ((IntIterator) it).nextInt();
                CollectionsKt__MutableCollectionsKt.addAll(list, CollectionsKt.listOf((Object[]) new CornerRounding[]{cornerRounding, cornerRounding2}));
            }
        }
        return RoundedPolygonKt.RoundedPolygon(starVerticesFromNumVerts(i10, f8, f10, f11, f12), cornerRounding, list, f11, f12);
    }

    public static /* synthetic */ RoundedPolygon star$default(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f11, float f12, int i11, Object obj) {
        return star(companion, i10, (i11 & 2) != 0 ? 1.0f : f8, (i11 & 4) != 0 ? 0.5f : f10, (i11 & 8) != 0 ? CornerRounding.Unrounded : cornerRounding, (i11 & 16) != 0 ? null : cornerRounding2, (i11 & 32) == 0 ? list : null, (i11 & 64) != 0 ? 0.0f : f11, (i11 & 128) != 0 ? 0.0f : f12);
    }

    private static final float[] starVerticesFromNumVerts(int i10, float f8, float f10, float f11, float f12) {
        float[] fArr = new float[i10 * 4];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            float f13 = i10;
            long jM6063radialToCartesianL6JJ3z0$default = Utils.m6063radialToCartesianL6JJ3z0$default(f8, (Utils.getFloatPi() / f13) * 2 * i12, 0L, 4, null);
            fArr[i11] = PointKt.m6043getXDnnuFBc(jM6063radialToCartesianL6JJ3z0$default) + f11;
            fArr[i11 + 1] = PointKt.m6044getYDnnuFBc(jM6063radialToCartesianL6JJ3z0$default) + f12;
            long jM6063radialToCartesianL6JJ3z0$default2 = Utils.m6063radialToCartesianL6JJ3z0$default(f10, (Utils.getFloatPi() / f13) * ((i12 * 2) + 1), 0L, 4, null);
            int i13 = i11 + 3;
            fArr[i11 + 2] = PointKt.m6043getXDnnuFBc(jM6063radialToCartesianL6JJ3z0$default2) + f11;
            i11 += 4;
            fArr[i13] = PointKt.m6044getYDnnuFBc(jM6063radialToCartesianL6JJ3z0$default2) + f12;
        }
        return fArr;
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8) {
        companion.getClass();
        return pillStar$default(companion, f8, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2046, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10) {
        companion.getClass();
        return pillStar$default(companion, f8, f10, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2044, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10) {
        companion.getClass();
        return pillStar$default(companion, f8, f10, i10, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2040, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11) {
        companion.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2032, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2016, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 0.0f, 0.0f, 1984, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, 0.0f, 0.0f, 1920, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, m378to = 1.0d) float f12) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, list, f12, 0.0f, 0.0f, 0.0f, 1792, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, m378to = 1.0d) float f12, @FloatRange(from = 0.0d, m378to = 1.0d) float f13) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, list, f12, f13, 0.0f, 0.0f, 1536, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f8, float f10, int i10, @FloatRange(from = 0.0d, fromInclusive = false, m378to = 1.0d, toInclusive = false) float f11, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, @FloatRange(from = 0.0d, m378to = 1.0d) float f12, @FloatRange(from = 0.0d, m378to = 1.0d) float f13, float f14) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f8, f10, i10, f11, cornerRounding, cornerRounding2, list, f12, f13, f14, 0.0f, 1024, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion) {
        companion.getClass();
        return pillStar$default(companion, 0.0f, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2047, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, @IntRange(from = 3) int i10) {
        companion.getClass();
        return circle$default(companion, i10, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, @IntRange(from = 3) int i10, float f8) {
        companion.getClass();
        return circle$default(companion, i10, f8, 0.0f, 0.0f, 12, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, @IntRange(from = 3) int i10, float f8, float f10) {
        companion.getClass();
        return circle$default(companion, i10, f8, f10, 0.0f, 8, null);
    }

    @JvmOverloads
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion) {
        companion.getClass();
        return circle$default(companion, 0, 0.0f, 0.0f, 0.0f, 15, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8) {
        companion.getClass();
        return star$default(companion, i10, f8, 0.0f, null, null, null, 0.0f, 0.0f, TelnetCommand.WONT, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f8) {
        companion.getClass();
        return pill$default(companion, f8, 0.0f, 0.0f, 0.0f, 0.0f, 30, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10) {
        companion.getClass();
        return star$default(companion, i10, f8, f10, null, null, null, 0.0f, 0.0f, TelnetCommand.f8151EL, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f8, float f10) {
        companion.getClass();
        return pill$default(companion, f8, f10, 0.0f, 0.0f, 0.0f, 28, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i10, f8, f10, cornerRounding, null, null, 0.0f, 0.0f, 240, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f8, float f10, float f11) {
        companion.getClass();
        return pill$default(companion, f8, f10, f11, 0.0f, 0.0f, 24, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i10, f8, f10, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 224, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f8, float f10, float f11, float f12) {
        companion.getClass();
        return pill$default(companion, f8, f10, f11, f12, 0.0f, 16, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i10, f8, f10, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, 192, null);
    }

    @JvmOverloads
    public static final RoundedPolygon pill(RoundedPolygon.Companion companion) {
        companion.getClass();
        return pill$default(companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 31, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10, float f8, float f10, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f11) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i10, f8, f10, cornerRounding, cornerRounding2, list, f11, 0.0f, 128, null);
    }

    @JvmOverloads
    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i10) {
        companion.getClass();
        return star$default(companion, i10, 0.0f, 0.0f, null, null, null, 0.0f, 0.0f, TelnetCommand.DONT, null);
    }
}
