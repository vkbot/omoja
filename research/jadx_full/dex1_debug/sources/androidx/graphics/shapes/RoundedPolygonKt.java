package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.collection.MutableFloatList;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007\u001aL\u0010\u0000\u001a\u00020\u00012\b\b\u0001\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\n2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bH\u0007\u001a\u0019\u0010\u000f\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u0012\u001a(\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002¨\u0006\u0014"}, d2 = {"RoundedPolygon", "Landroidx/graphics/shapes/RoundedPolygon;", "source", "vertices", "", "rounding", "Landroidx/graphics/shapes/CornerRounding;", "perVertexRounding", "", "centerX", "", "centerY", "numVertices", "", "radius", "calculateCenter", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "([F)J", "verticesFromNumVerts", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"})
public final class RoundedPolygonKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list, float f8, float f9) {
        CornerRounding cornerRounding2;
        Float fValueOf = Float.valueOf(1.0f);
        fArr.getClass();
        cornerRounding.getClass();
        if (fArr.length < 6) {
            i.k("Polygons must have at least 3 vertices");
            return null;
        }
        int i9 = 2;
        int i10 = 1;
        if (fArr.length % 2 == 1) {
            i.k("The vertices array should have even size");
            return null;
        }
        if (list != null && list.size() * 2 != fArr.length) {
            i.k("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = fArr.length / 2;
        ArrayList arrayList2 = new ArrayList();
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            CornerRounding cornerRounding3 = (list == null || (cornerRounding2 = list.get(i12)) == null) ? cornerRounding : cornerRounding2;
            int i13 = (((i12 + length) - 1) % length) * 2;
            int i14 = i12 + 1;
            int i15 = (i14 % length) * 2;
            int i16 = i12 * 2;
            arrayList2.add(new RoundedCorner(FloatFloatPair.m3constructorimpl(fArr[i13], fArr[i13 + 1]), FloatFloatPair.m3constructorimpl(fArr[i16], fArr[i16 + 1]), FloatFloatPair.m3constructorimpl(fArr[i15], fArr[i15 + 1]), cornerRounding3, null));
            i12 = i14;
        }
        IntRange intRangeUntil = RangesKt.until(0, length);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i17 = (iNextInt + 1) % length;
            float expectedRoundCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedRoundCut() + ((RoundedCorner) arrayList2.get(i17)).getExpectedRoundCut();
            float expectedCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedCut() + ((RoundedCorner) arrayList2.get(i17)).getExpectedCut();
            int i18 = iNextInt * 2;
            int i19 = i17 * 2;
            float fDistance = Utils.distance(fArr[i18] - fArr[i19], fArr[i18 + 1] - fArr[i19 + 1]);
            arrayList3.add(expectedRoundCut > fDistance ? TuplesKt.to(Float.valueOf(fDistance / expectedRoundCut), Float.valueOf(0.0f)) : expectedCut > fDistance ? TuplesKt.to(fValueOf, Float.valueOf((fDistance - expectedRoundCut) / (expectedCut - expectedRoundCut))) : TuplesKt.to(fValueOf, fValueOf));
        }
        for (int i20 = 0; i20 < length; i20++) {
            MutableFloatList mutableFloatList = new MutableFloatList(2);
            for (int i21 = 0; i21 < 2; i21++) {
                Pair pair = (Pair) arrayList3.get((((i20 + length) - 1) + i21) % length);
                mutableFloatList.add(((((RoundedCorner) arrayList2.get(i20)).getExpectedCut() - ((RoundedCorner) arrayList2.get(i20)).getExpectedRoundCut()) * ((Number) pair.component2()).floatValue()) + (((RoundedCorner) arrayList2.get(i20)).getExpectedRoundCut() * ((Number) pair.component1()).floatValue()));
            }
            arrayList.add(((RoundedCorner) arrayList2.get(i20)).getCubics(mutableFloatList.get(0), mutableFloatList.get(1)));
        }
        ArrayList arrayList4 = new ArrayList();
        while (i11 < length) {
            int i22 = i11 + 1;
            int i23 = i22 % length;
            int i24 = i11 * 2;
            long jM3constructorimpl = FloatFloatPair.m3constructorimpl(fArr[i24], fArr[i24 + i10]);
            int i25 = (((i11 + length) - i10) % length) * i9;
            long jM3constructorimpl2 = FloatFloatPair.m3constructorimpl(fArr[i25], fArr[i25 + i10]);
            int i26 = i23 * 2;
            arrayList4.add(new Feature$Corner((List) arrayList.get(i11), jM3constructorimpl, ((RoundedCorner) arrayList2.get(i11)).getCenter(), PointKt.m41clockwiseybeJwSQ(PointKt.m53minusybeJwSQ(jM3constructorimpl, jM3constructorimpl2), PointKt.m53minusybeJwSQ(FloatFloatPair.m3constructorimpl(fArr[i26], fArr[i26 + i10]), jM3constructorimpl)), null));
            arrayList4.add(new Feature$Edge(CollectionsKt.listOf(Cubic.Companion.straightLine(((Cubic) CollectionsKt.last((List) arrayList.get(i11))).getAnchor1X(), ((Cubic) CollectionsKt.last((List) arrayList.get(i11))).getAnchor1Y(), ((Cubic) CollectionsKt.first((List) arrayList.get(i23))).getAnchor0X(), ((Cubic) CollectionsKt.first((List) arrayList.get(i23))).getAnchor0Y()))));
            i11 = i22;
            i9 = 2;
            i10 = 1;
        }
        long jCalculateCenter = (f8 == Float.MIN_VALUE || f9 == Float.MIN_VALUE) ? calculateCenter(fArr) : FloatFloatPair.m3constructorimpl(f8, f9);
        return new RoundedPolygon(arrayList4, Float.intBitsToFloat((int) (jCalculateCenter >> 32)), Float.intBitsToFloat((int) (jCalculateCenter & 4294967295L)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ RoundedPolygon RoundedPolygon$default(int i9, float f8, float f9, float f10, CornerRounding cornerRounding, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f8 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            f9 = 0.0f;
        }
        if ((i10 & 8) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i10 & 32) != 0) {
            list = null;
        }
        List list2 = list;
        return RoundedPolygon(i9, f8, f9, f10, cornerRounding, list2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final long calculateCenter(float[] fArr) {
        float f8 = 0.0f;
        int i9 = 0;
        float f9 = 0.0f;
        while (i9 < fArr.length) {
            int i10 = i9 + 1;
            f8 += fArr[i9];
            i9 += 2;
            f9 += fArr[i10];
        }
        float f10 = 2;
        return FloatFloatPair.m3constructorimpl((f8 / fArr.length) / f10, (f9 / fArr.length) / f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final float[] verticesFromNumVerts(int i9, float f8, float f9, float f10) {
        float[] fArr = new float[i9 * 2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < i9) {
            float f11 = f8;
            long jM54plusybeJwSQ = PointKt.m54plusybeJwSQ(Utils.m70radialToCartesianL6JJ3z0$default(f11, (Utils.getFloatPi() / i9) * 2 * i10, 0L, 4, null), FloatFloatPair.m3constructorimpl(f9, f10));
            int i12 = i11 + 1;
            fArr[i11] = PointKt.m50getXDnnuFBc(jM54plusybeJwSQ);
            i11 += 2;
            fArr[i12] = PointKt.m51getYDnnuFBc(jM54plusybeJwSQ);
            i10++;
            f8 = f11;
        }
        return fArr;
    }

    public static /* synthetic */ RoundedPolygon RoundedPolygon$default(float[] fArr, CornerRounding cornerRounding, List list, float f8, float f9, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i9 & 4) != 0) {
            list = null;
        }
        if ((i9 & 8) != 0) {
            f8 = Float.MIN_VALUE;
        }
        if ((i9 & 16) != 0) {
            f9 = Float.MIN_VALUE;
        }
        return RoundedPolygon(fArr, cornerRounding, (List<CornerRounding>) list, f8, f9);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9, float f8) {
        return RoundedPolygon$default(i9, f8, 0.0f, 0.0f, null, null, 60, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9, float f8, float f9) {
        return RoundedPolygon$default(i9, f8, f9, 0.0f, null, null, 56, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9, float f8, float f9, float f10) {
        return RoundedPolygon$default(i9, f8, f9, f10, null, null, 48, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9, float f8, float f9, float f10, CornerRounding cornerRounding) {
        cornerRounding.getClass();
        return RoundedPolygon$default(i9, f8, f9, f10, cornerRounding, null, 32, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr) {
        fArr.getClass();
        return RoundedPolygon$default(fArr, null, null, 0.0f, 0.0f, 30, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, null, 0.0f, 0.0f, 28, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, list, 0.0f, 0.0f, 24, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list, float f8) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, list, f8, 0.0f, 16, null);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9, float f8, float f9, float f10, CornerRounding cornerRounding, List<CornerRounding> list) {
        cornerRounding.getClass();
        return RoundedPolygon(verticesFromNumVerts(i9, f8, f9, f10), cornerRounding, list, f9, f10);
    }

    public static final RoundedPolygon RoundedPolygon(RoundedPolygon roundedPolygon) {
        roundedPolygon.getClass();
        return new RoundedPolygon(roundedPolygon.getFeatures$graphics_shapes_release(), roundedPolygon.getCenterX(), roundedPolygon.getCenterY());
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(@androidx.annotation.IntRange(from = 3) int i9) {
        return RoundedPolygon$default(i9, 0.0f, 0.0f, 0.0f, null, null, 62, null);
    }
}
