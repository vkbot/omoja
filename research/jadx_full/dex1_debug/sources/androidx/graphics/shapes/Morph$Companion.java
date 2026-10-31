package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Landroidx/graphics/shapes/Morph$Companion;", "", "()V", "match", "", "Lkotlin/Pair;", "Landroidx/graphics/shapes/Cubic;", "p1", "Landroidx/graphics/shapes/RoundedPolygon;", "p2", "match$graphics_shapes_release", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,342:1\n108#2,4:343\n108#2,4:347\n108#2,4:351\n108#2,4:355\n108#2,4:359\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n*L\n239#1:343,4\n284#1:347,4\n290#1:351,4\n297#1:355,4\n304#1:359,4\n*E\n"})
public final class Morph$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Morph$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final List<Pair<Cubic, Cubic>> match$graphics_shapes_release(RoundedPolygon p1, RoundedPolygon p9) {
        Pair<MeasuredPolygon$MeasuredCubic, MeasuredPolygon$MeasuredCubic> pairCutAtProgress;
        Pair<MeasuredPolygon$MeasuredCubic, MeasuredPolygon$MeasuredCubic> pairCutAtProgress2;
        p1.getClass();
        p9.getClass();
        MeasuredPolygon$Companion measuredPolygon$Companion = MeasuredPolygon.Companion;
        MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release = measuredPolygon$Companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p1.getCenterX(), p1.getCenterY()), p1);
        MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release2 = measuredPolygon$Companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p9.getCenterX(), p9.getCenterY()), p9);
        DoubleMapper doubleMapperFeatureMapper = FeatureMappingKt.featureMapper(measuredPolygonMeasurePolygon$graphics_shapes_release.getFeatures(), measuredPolygonMeasurePolygon$graphics_shapes_release2.getFeatures());
        float map = doubleMapperFeatureMapper.map(0.0f);
        MorphKt.access$getLOG_TAG$p();
        MeasuredPolygon measuredPolygonCutAndShift = measuredPolygonMeasurePolygon$graphics_shapes_release2.cutAndShift(map);
        ArrayList arrayList = new ArrayList();
        MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent2 = (MeasuredPolygon$MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, 0);
        MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent3 = (MeasuredPolygon$MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonCutAndShift, 0);
        int i9 = 1;
        int i10 = 1;
        while (measuredPolygon$MeasuredCubicComponent2 != null && measuredPolygon$MeasuredCubicComponent3 != null) {
            float endOutlineProgress = i9 == measuredPolygonMeasurePolygon$graphics_shapes_release.size() ? 1.0f : measuredPolygon$MeasuredCubicComponent2.getEndOutlineProgress();
            float fMapBack = i10 == measuredPolygonCutAndShift.size() ? 1.0f : doubleMapperFeatureMapper.mapBack(Utils.positiveModulo(measuredPolygon$MeasuredCubicComponent3.getEndOutlineProgress() + map, 1.0f));
            float fMin = Math.min(endOutlineProgress, fMapBack);
            MorphKt.access$getLOG_TAG$p();
            float f8 = 1.0E-6f + fMin;
            if (endOutlineProgress > f8) {
                MorphKt.access$getLOG_TAG$p();
                pairCutAtProgress = measuredPolygon$MeasuredCubicComponent2.cutAtProgress(fMin);
            } else {
                pairCutAtProgress = TuplesKt.to(measuredPolygon$MeasuredCubicComponent2, CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, i9));
                i9++;
            }
            MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent1 = pairCutAtProgress.component1();
            measuredPolygon$MeasuredCubicComponent2 = pairCutAtProgress.component2();
            if (fMapBack > f8) {
                MorphKt.access$getLOG_TAG$p();
                pairCutAtProgress2 = measuredPolygon$MeasuredCubicComponent3.cutAtProgress(Utils.positiveModulo(doubleMapperFeatureMapper.map(fMin) - map, 1.0f));
            } else {
                pairCutAtProgress2 = TuplesKt.to(measuredPolygon$MeasuredCubicComponent3, CollectionsKt.getOrNull(measuredPolygonCutAndShift, i10));
                i10++;
            }
            MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent4 = pairCutAtProgress2.component1();
            measuredPolygon$MeasuredCubicComponent3 = pairCutAtProgress2.component2();
            MorphKt.access$getLOG_TAG$p();
            arrayList.add(TuplesKt.to(measuredPolygon$MeasuredCubicComponent1.getCubic(), measuredPolygon$MeasuredCubicComponent4.getCubic()));
        }
        if (measuredPolygon$MeasuredCubicComponent2 == null && measuredPolygon$MeasuredCubicComponent3 == null) {
            return arrayList;
        }
        i.k("Expected both Polygon's Cubic to be fully matched");
        return null;
    }

    private Morph$Companion() {
    }
}
