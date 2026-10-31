package androidx.graphics.shapes;

import androidx.annotation.FloatRange;
import androidx.collection.FloatList;
import androidx.collection.MutableFloatList;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00182\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\u0018\u0019B3\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u0015\u0010\u0016\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0010H\u0096\u0002R\u0018\u0010\b\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, m3159d2 = {"Landroidx/graphics/shapes/MeasuredPolygon;", "Lkotlin/collections/AbstractList;", "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", "measurer", "Landroidx/graphics/shapes/Measurer;", "features", "", "Landroidx/graphics/shapes/ProgressableFeature;", "cubics", "Landroidx/graphics/shapes/Cubic;", "outlineProgress", "Landroidx/collection/FloatList;", "(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;)V", "getFeatures", "()Ljava/util/List;", "size", "", "getSize", "()I", "cutAndShift", "cuttingPoint", "", "get", "index", "Companion", "MeasuredCubic", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n350#3,7:355\n108#4,4:362\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n*L\n169#1:355,7\n182#1:362,4\n*E\n"})
public final class MeasuredPolygon extends AbstractList<MeasuredCubic> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<MeasuredCubic> cubics;
    private final List<ProgressableFeature> features;
    private final Measurer measurer;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\"\u0010\u0010\u001a\u0016\u0012\b\u0012\u00060\u0000R\u00020\u0012\u0012\b\u0012\u00060\u0000R\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u0014\u001a\u00020\u0015H\u0016J!\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\f¨\u0006\u0019"}, m3159d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", "", "cubic", "Landroidx/graphics/shapes/Cubic;", "startOutlineProgress", "", "endOutlineProgress", "(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V", "getCubic", "()Landroidx/graphics/shapes/Cubic;", "<set-?>", "getEndOutlineProgress", "()F", "measuredSize", "getMeasuredSize", "getStartOutlineProgress", "cutAtProgress", "Lkotlin/Pair;", "Landroidx/graphics/shapes/MeasuredPolygon;", "cutOutlineProgress", "toString", "", "updateProgressRange", "", "updateProgressRange$graphics_shapes_release", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n108#3,4:355\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n*L\n128#1:355,4\n*E\n"})
    public final class MeasuredCubic {
        private final Cubic cubic;
        private float endOutlineProgress;
        private final float measuredSize;
        private float startOutlineProgress;
        final /* synthetic */ MeasuredPolygon this$0;

        public MeasuredCubic(MeasuredPolygon measuredPolygon, @FloatRange(from = 0.0d, m378to = 1.0d) Cubic cubic, @FloatRange(from = 0.0d, m378to = 1.0d) float f8, float f10) {
            cubic.getClass();
            this.this$0 = measuredPolygon;
            this.cubic = cubic;
            if (f10 < f8) {
                C1929i.m3029k("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
                throw null;
            }
            this.measuredSize = measuredPolygon.measurer.measureCubic(cubic);
            this.startOutlineProgress = f8;
            this.endOutlineProgress = f10;
        }

        public static /* synthetic */ void updateProgressRange$graphics_shapes_release$default(MeasuredCubic measuredCubic, float f8, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f8 = measuredCubic.startOutlineProgress;
            }
            if ((i10 & 2) != 0) {
                f10 = measuredCubic.endOutlineProgress;
            }
            measuredCubic.updateProgressRange$graphics_shapes_release(f8, f10);
        }

        public final Pair<MeasuredCubic, MeasuredCubic> cutAtProgress(float cutOutlineProgress) {
            float fCoerceIn = RangesKt.coerceIn(cutOutlineProgress, this.startOutlineProgress, this.endOutlineProgress);
            float f8 = this.endOutlineProgress;
            float f10 = this.startOutlineProgress;
            float fFindCubicCutPoint = this.this$0.measurer.findCubicCutPoint(this.cubic, ((fCoerceIn - f10) / (f8 - f10)) * this.measuredSize);
            if (0.0f > fFindCubicCutPoint || fFindCubicCutPoint > 1.0f) {
                C1929i.m3029k("Cubic cut point is expected to be between 0 and 1");
                return null;
            }
            String unused = PolygonMeasureKt.LOG_TAG;
            Pair<Cubic, Cubic> pairSplit = this.cubic.split(fFindCubicCutPoint);
            return TuplesKt.m3166to(new MeasuredCubic(this.this$0, pairSplit.component1(), this.startOutlineProgress, fCoerceIn), new MeasuredCubic(this.this$0, pairSplit.component2(), fCoerceIn, this.endOutlineProgress));
        }

        public final Cubic getCubic() {
            return this.cubic;
        }

        public final float getEndOutlineProgress() {
            return this.endOutlineProgress;
        }

        public final float getMeasuredSize() {
            return this.measuredSize;
        }

        public final float getStartOutlineProgress() {
            return this.startOutlineProgress;
        }

        public String toString() {
            return "MeasuredCubic(outlineProgress=[" + this.startOutlineProgress + " .. " + this.endOutlineProgress + "], size=" + this.measuredSize + ", cubic=" + this.cubic + ')';
        }

        public final void updateProgressRange$graphics_shapes_release(float startOutlineProgress, float endOutlineProgress) {
            if (endOutlineProgress < startOutlineProgress) {
                C1929i.m3029k("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
            } else {
                this.startOutlineProgress = startOutlineProgress;
                this.endOutlineProgress = endOutlineProgress;
            }
        }
    }

    private MeasuredPolygon(Measurer measurer, List<ProgressableFeature> list, List<? extends Cubic> list2, FloatList floatList) {
        if (floatList.getSize() != list2.size() + 1) {
            C1929i.m3029k("Outline progress size is expected to be the cubics size + 1");
            throw null;
        }
        if (floatList.first() != 0.0f) {
            C1929i.m3029k("First outline progress value is expected to be zero");
            throw null;
        }
        if (floatList.last() != 1.0f) {
            C1929i.m3029k("Last outline progress value is expected to be one");
            throw null;
        }
        this.measurer = measurer;
        this.features = list;
        ArrayList arrayList = new ArrayList();
        int size = list2.size();
        int i10 = 0;
        float f8 = 0.0f;
        while (i10 < size) {
            int i11 = i10 + 1;
            if (floatList.get(i11) - floatList.get(i10) > 1.0E-4f) {
                arrayList.add(new MeasuredCubic(this, list2.get(i10), f8, floatList.get(i11)));
                f8 = floatList.get(i11);
            }
            i10 = i11;
        }
        MeasuredCubic.updateProgressRange$graphics_shapes_release$default((MeasuredCubic) arrayList.get(CollectionsKt.getLastIndex(arrayList)), 0.0f, 1.0f, 1, null);
        this.cubics = arrayList;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return contains((MeasuredCubic) obj);
        }
        return false;
    }

    public final MeasuredPolygon cutAndShift(float cuttingPoint) {
        float fPositiveModulo;
        if (0.0f > cuttingPoint || cuttingPoint > 1.0f) {
            C1929i.m3029k("Cutting point is expected to be between 0 and 1");
            return null;
        }
        if (cuttingPoint < 1.0E-4f) {
            return this;
        }
        Iterator<MeasuredCubic> it = this.cubics.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            MeasuredCubic next = it.next();
            float startOutlineProgress = next.getStartOutlineProgress();
            if (cuttingPoint <= next.getEndOutlineProgress() && startOutlineProgress <= cuttingPoint) {
                break;
            }
            i10++;
        }
        Pair<MeasuredCubic, MeasuredCubic> pairCutAtProgress = this.cubics.get(i10).cutAtProgress(cuttingPoint);
        MeasuredCubic measuredCubicComponent1 = pairCutAtProgress.component1();
        MeasuredCubic measuredCubicComponent2 = pairCutAtProgress.component2();
        String unused = PolygonMeasureKt.LOG_TAG;
        List listMutableListOf = CollectionsKt.mutableListOf(measuredCubicComponent2.getCubic());
        int size = this.cubics.size();
        for (int i11 = 1; i11 < size; i11++) {
            List<MeasuredCubic> list = this.cubics;
            listMutableListOf.add(list.get((i11 + i10) % list.size()).getCubic());
        }
        listMutableListOf.add(measuredCubicComponent1.getCubic());
        MutableFloatList mutableFloatList = new MutableFloatList(this.cubics.size() + 2);
        int size2 = this.cubics.size() + 2;
        for (int i12 = 0; i12 < size2; i12++) {
            if (i12 == 0) {
                fPositiveModulo = 0.0f;
            } else if (i12 == this.cubics.size() + 1) {
                fPositiveModulo = 1.0f;
            } else {
                fPositiveModulo = Utils.positiveModulo(this.cubics.get(((i10 + i12) - 1) % this.cubics.size()).getEndOutlineProgress() - cuttingPoint, 1.0f);
            }
            mutableFloatList.add(fPositiveModulo);
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size3 = this.features.size();
        for (int i13 = 0; i13 < size3; i13++) {
            listCreateListBuilder.add(new ProgressableFeature(Utils.positiveModulo(this.features.get(i13).getProgress() - cuttingPoint, 1.0f), this.features.get(i13).getFeature()));
        }
        return new MeasuredPolygon(this.measurer, CollectionsKt.build(listCreateListBuilder), listMutableListOf, mutableFloatList);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public MeasuredCubic get(int index) {
        return this.cubics.get(index);
    }

    public final List<ProgressableFeature> getFeatures() {
        return this.features;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.cubics.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return indexOf((MeasuredCubic) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return lastIndexOf((MeasuredCubic) obj);
        }
        return -1;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\t¨\u0006\n"}, m3159d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$Companion;", "", "()V", "measurePolygon", "Landroidx/graphics/shapes/MeasuredPolygon;", "measurer", "Landroidx/graphics/shapes/Measurer;", "polygon", "Landroidx/graphics/shapes/RoundedPolygon;", "measurePolygon$graphics_shapes_release", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n2949#2:354\n2847#2,3:355\n2850#2,6:359\n1#3:358\n108#4,4:365\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n*L\n259#1:354\n259#1:355,3\n259#1:359,6\n259#1:358\n275#1:365,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeasuredPolygon measurePolygon$graphics_shapes_release(Measurer measurer, RoundedPolygon polygon) {
            List listListOf;
            measurer.getClass();
            polygon.getClass();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = polygon.getFeatures$graphics_shapes_release().size();
            for (int i10 = 0; i10 < size; i10++) {
                Feature feature = polygon.getFeatures$graphics_shapes_release().get(i10);
                int size2 = feature.getCubics().size();
                for (int i11 = 0; i11 < size2; i11++) {
                    if ((feature instanceof Feature.Corner) && i11 == feature.getCubics().size() / 2) {
                        arrayList2.add(TuplesKt.m3166to(feature, Integer.valueOf(arrayList.size())));
                    }
                    arrayList.add(feature.getCubics().get(i11));
                }
            }
            Float fValueOf = Float.valueOf(0.0f);
            int iCollectionSizeOrDefault = CollectionsKt.collectionSizeOrDefault(arrayList, 9);
            if (iCollectionSizeOrDefault == 0) {
                listListOf = CollectionsKt.listOf(fValueOf);
            } else {
                ArrayList arrayList3 = new ArrayList(iCollectionSizeOrDefault + 1);
                arrayList3.add(fValueOf);
                int size3 = arrayList.size();
                int i12 = 0;
                while (i12 < size3) {
                    Object obj = arrayList.get(i12);
                    i12++;
                    float fFloatValue = fValueOf.floatValue();
                    float fMeasureCubic = measurer.measureCubic((Cubic) obj);
                    if (fMeasureCubic < 0.0f) {
                        C1929i.m3029k("Measured cubic is expected to be greater or equal to zero");
                        return null;
                    }
                    Unit unit = Unit.INSTANCE;
                    fValueOf = Float.valueOf(fFloatValue + fMeasureCubic);
                    arrayList3.add(fValueOf);
                }
                listListOf = arrayList3;
            }
            float fFloatValue2 = ((Number) CollectionsKt.last(listListOf)).floatValue();
            MutableFloatList mutableFloatList = new MutableFloatList(listListOf.size());
            int size4 = listListOf.size();
            for (int i13 = 0; i13 < size4; i13++) {
                mutableFloatList.add(((Number) listListOf.get(i13)).floatValue() / fFloatValue2);
            }
            String unused = PolygonMeasureKt.LOG_TAG;
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size5 = arrayList2.size();
            for (int i14 = 0; i14 < size5; i14++) {
                int iIntValue = ((Number) ((Pair) arrayList2.get(i14)).getSecond()).intValue();
                listCreateListBuilder.add(new ProgressableFeature((mutableFloatList.get(iIntValue + 1) + mutableFloatList.get(iIntValue)) / 2, (Feature) ((Pair) arrayList2.get(i14)).getFirst()));
            }
            return new MeasuredPolygon(measurer, CollectionsKt.build(listCreateListBuilder), arrayList, mutableFloatList, null);
        }

        private Companion() {
        }
    }

    public /* bridge */ boolean contains(MeasuredCubic measuredCubic) {
        return super.contains((Object) measuredCubic);
    }

    public /* bridge */ int indexOf(MeasuredCubic measuredCubic) {
        return super.indexOf((Object) measuredCubic);
    }

    public /* bridge */ int lastIndexOf(MeasuredCubic measuredCubic) {
        return super.lastIndexOf((Object) measuredCubic);
    }

    public /* synthetic */ MeasuredPolygon(Measurer measurer, List list, List list2, FloatList floatList, DefaultConstructorMarker defaultConstructorMarker) {
        this(measurer, list, list2, floatList);
    }
}
