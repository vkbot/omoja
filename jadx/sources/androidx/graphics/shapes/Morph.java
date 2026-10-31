package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013J2\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00190\u001dH\u0087\bø\u0001\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u00078@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, m3159d2 = {"Landroidx/graphics/shapes/Morph;", "", "start", "Landroidx/graphics/shapes/RoundedPolygon;", "end", "(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V", "_morphMatch", "", "Lkotlin/Pair;", "Landroidx/graphics/shapes/Cubic;", "morphMatch", "getMorphMatch$annotations", "()V", "getMorphMatch", "()Ljava/util/List;", "asCubics", "progress", "", "calculateBounds", "", "bounds", "approximate", "", "calculateMaxBounds", "forEachCubic", "", "mutableCubic", "Landroidx/graphics/shapes/MutableCubic;", Callback.METHOD_NAME, "Lkotlin/Function1;", "Companion", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n1#1,342:1\n173#1,10:343\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n-1#1:343,10\n*E\n"})
public final class Morph {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<Pair<Cubic, Cubic>> _morphMatch;
    private final RoundedPolygon end;
    private final RoundedPolygon start;

    public Morph(RoundedPolygon roundedPolygon, RoundedPolygon roundedPolygon2) {
        roundedPolygon.getClass();
        roundedPolygon2.getClass();
        this.start = roundedPolygon;
        this.end = roundedPolygon2;
        this._morphMatch = INSTANCE.match$graphics_shapes_release(roundedPolygon, roundedPolygon2);
    }

    public static /* synthetic */ float[] calculateBounds$default(Morph morph, float[] fArr, boolean z9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fArr = new float[4];
        }
        if ((i10 & 2) != 0) {
            z9 = true;
        }
        return morph.calculateBounds(fArr, z9);
    }

    public static /* synthetic */ float[] calculateMaxBounds$default(Morph morph, float[] fArr, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fArr = new float[4];
        }
        return morph.calculateMaxBounds(fArr);
    }

    public static /* synthetic */ void forEachCubic$default(Morph morph, float f8, MutableCubic mutableCubic, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            mutableCubic = new MutableCubic();
        }
        mutableCubic.getClass();
        function1.getClass();
        int size = morph.getMorphMatch().size();
        for (int i11 = 0; i11 < size; i11++) {
            mutableCubic.interpolate(morph.getMorphMatch().get(i11).getFirst(), morph.getMorphMatch().get(i11).getSecond(), f8);
            function1.invoke(mutableCubic);
        }
    }

    public final List<Cubic> asCubics(float progress) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = this._morphMatch.size();
        Cubic cubic = null;
        Cubic cubic2 = null;
        int i10 = 0;
        while (i10 < size) {
            float[] fArr = new float[8];
            for (int i11 = 0; i11 < 8; i11++) {
                fArr[i11] = Utils.interpolate(this._morphMatch.get(i10).getFirst().getPoints()[i11], this._morphMatch.get(i10).getSecond().getPoints()[i11], progress);
            }
            Cubic cubic3 = new Cubic(fArr);
            if (cubic2 == null) {
                cubic2 = cubic3;
            }
            if (cubic != null) {
                listCreateListBuilder.add(cubic);
            }
            i10++;
            cubic = cubic3;
        }
        if (cubic != null && cubic2 != null) {
            listCreateListBuilder.add(CubicKt.Cubic(cubic.getAnchor0X(), cubic.getAnchor0Y(), cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic2.getAnchor0X(), cubic2.getAnchor0Y()));
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    @JvmOverloads
    public final float[] calculateBounds(float[] bounds, boolean approximate) {
        bounds.getClass();
        this.start.calculateBounds(bounds, approximate);
        float f8 = bounds[0];
        float f10 = bounds[1];
        float f11 = bounds[2];
        float f12 = bounds[3];
        this.end.calculateBounds(bounds, approximate);
        bounds[0] = Math.min(f8, bounds[0]);
        bounds[1] = Math.min(f10, bounds[1]);
        bounds[2] = Math.max(f11, bounds[2]);
        bounds[3] = Math.max(f12, bounds[3]);
        return bounds;
    }

    public final float[] calculateMaxBounds(float[] bounds) {
        bounds.getClass();
        this.start.calculateMaxBounds(bounds);
        float f8 = bounds[0];
        float f10 = bounds[1];
        float f11 = bounds[2];
        float f12 = bounds[3];
        this.end.calculateMaxBounds(bounds);
        bounds[0] = Math.min(f8, bounds[0]);
        bounds[1] = Math.min(f10, bounds[1]);
        bounds[2] = Math.max(f11, bounds[2]);
        bounds[3] = Math.max(f12, bounds[3]);
        return bounds;
    }

    @JvmOverloads
    public final void forEachCubic(float f8, Function1<? super MutableCubic, Unit> function1) {
        function1.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        int size = getMorphMatch().size();
        for (int i10 = 0; i10 < size; i10++) {
            mutableCubic.interpolate(getMorphMatch().get(i10).getFirst(), getMorphMatch().get(i10).getSecond(), f8);
            function1.invoke(mutableCubic);
        }
    }

    public final List<Pair<Cubic, Cubic>> getMorphMatch() {
        return this._morphMatch;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J/\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0001¢\u0006\u0002\b\n¨\u0006\u000b"}, m3159d2 = {"Landroidx/graphics/shapes/Morph$Companion;", "", "()V", "match", "", "Lkotlin/Pair;", "Landroidx/graphics/shapes/Cubic;", "p1", "Landroidx/graphics/shapes/RoundedPolygon;", "p2", "match$graphics_shapes_release", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,342:1\n108#2,4:343\n108#2,4:347\n108#2,4:351\n108#2,4:355\n108#2,4:359\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph$Companion\n*L\n239#1:343,4\n284#1:347,4\n290#1:351,4\n297#1:355,4\n304#1:359,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final List<Pair<Cubic, Cubic>> match$graphics_shapes_release(RoundedPolygon p1, RoundedPolygon p9) {
            Pair<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> pairM3166to;
            Pair<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> pairM3166to2;
            p1.getClass();
            p9.getClass();
            MeasuredPolygon.Companion companion = MeasuredPolygon.INSTANCE;
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p1.getCenterX(), p1.getCenterY()), p1);
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release2 = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p9.getCenterX(), p9.getCenterY()), p9);
            DoubleMapper doubleMapperFeatureMapper = FeatureMappingKt.featureMapper(measuredPolygonMeasurePolygon$graphics_shapes_release.getFeatures(), measuredPolygonMeasurePolygon$graphics_shapes_release2.getFeatures());
            float map = doubleMapperFeatureMapper.map(0.0f);
            String unused = MorphKt.LOG_TAG;
            MeasuredPolygon measuredPolygonCutAndShift = measuredPolygonMeasurePolygon$graphics_shapes_release2.cutAndShift(map);
            ArrayList arrayList = new ArrayList();
            MeasuredPolygon.MeasuredCubic measuredCubicComponent2 = (MeasuredPolygon.MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, 0);
            MeasuredPolygon.MeasuredCubic measuredCubicComponent3 = (MeasuredPolygon.MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonCutAndShift, 0);
            int i10 = 1;
            int i11 = 1;
            while (measuredCubicComponent2 != null && measuredCubicComponent3 != null) {
                float endOutlineProgress = i10 == measuredPolygonMeasurePolygon$graphics_shapes_release.size() ? 1.0f : measuredCubicComponent2.getEndOutlineProgress();
                float fMapBack = i11 == measuredPolygonCutAndShift.size() ? 1.0f : doubleMapperFeatureMapper.mapBack(Utils.positiveModulo(measuredCubicComponent3.getEndOutlineProgress() + map, 1.0f));
                float fMin = Math.min(endOutlineProgress, fMapBack);
                String unused2 = MorphKt.LOG_TAG;
                float f8 = 1.0E-6f + fMin;
                if (endOutlineProgress > f8) {
                    String unused3 = MorphKt.LOG_TAG;
                    pairM3166to = measuredCubicComponent2.cutAtProgress(fMin);
                } else {
                    pairM3166to = TuplesKt.m3166to(measuredCubicComponent2, CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, i10));
                    i10++;
                }
                MeasuredPolygon.MeasuredCubic measuredCubicComponent1 = pairM3166to.component1();
                measuredCubicComponent2 = pairM3166to.component2();
                if (fMapBack > f8) {
                    String unused4 = MorphKt.LOG_TAG;
                    pairM3166to2 = measuredCubicComponent3.cutAtProgress(Utils.positiveModulo(doubleMapperFeatureMapper.map(fMin) - map, 1.0f));
                } else {
                    pairM3166to2 = TuplesKt.m3166to(measuredCubicComponent3, CollectionsKt.getOrNull(measuredPolygonCutAndShift, i11));
                    i11++;
                }
                MeasuredPolygon.MeasuredCubic measuredCubicComponent4 = pairM3166to2.component1();
                measuredCubicComponent3 = pairM3166to2.component2();
                String unused5 = MorphKt.LOG_TAG;
                arrayList.add(TuplesKt.m3166to(measuredCubicComponent1.getCubic(), measuredCubicComponent4.getCubic()));
            }
            if (measuredCubicComponent2 == null && measuredCubicComponent3 == null) {
                return arrayList;
            }
            C1929i.m3029k("Expected both Polygon's Cubic to be fully matched");
            return null;
        }

        private Companion() {
        }
    }

    @PublishedApi
    public static /* synthetic */ void getMorphMatch$annotations() {
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

    @JvmOverloads
    public final void forEachCubic(float progress, MutableCubic mutableCubic, Function1<? super MutableCubic, Unit> callback) {
        mutableCubic.getClass();
        callback.getClass();
        int size = getMorphMatch().size();
        for (int i10 = 0; i10 < size; i10++) {
            mutableCubic.interpolate(getMorphMatch().get(i10).getFirst(), getMorphMatch().get(i10).getSecond(), progress);
            callback.invoke(mutableCubic);
        }
    }
}
