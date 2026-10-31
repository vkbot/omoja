package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$Companion;", "", "()V", "measurePolygon", "Landroidx/graphics/shapes/MeasuredPolygon;", "measurer", "Landroidx/graphics/shapes/Measurer;", "polygon", "Landroidx/graphics/shapes/RoundedPolygon;", "measurePolygon$graphics_shapes_release", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n2949#2:354\n2847#2,3:355\n2850#2,6:359\n1#3:358\n108#4,4:365\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n*L\n259#1:354\n259#1:355,3\n259#1:359,6\n259#1:358\n275#1:365,4\n*E\n"})
public final class MeasuredPolygon$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ MeasuredPolygon$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MeasuredPolygon measurePolygon$graphics_shapes_release(Measurer measurer, RoundedPolygon polygon) {
        List listListOf;
        measurer.getClass();
        polygon.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = polygon.getFeatures$graphics_shapes_release().size();
        for (int i9 = 0; i9 < size; i9++) {
            Feature feature = polygon.getFeatures$graphics_shapes_release().get(i9);
            int size2 = feature.getCubics().size();
            for (int i10 = 0; i10 < size2; i10++) {
                if ((feature instanceof Feature$Corner) && i10 == feature.getCubics().size() / 2) {
                    arrayList2.add(TuplesKt.to(feature, Integer.valueOf(arrayList.size())));
                }
                arrayList.add(feature.getCubics().get(i10));
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
            int i11 = 0;
            while (i11 < size3) {
                Object obj = arrayList.get(i11);
                i11++;
                float fFloatValue = fValueOf.floatValue();
                float fMeasureCubic = measurer.measureCubic((Cubic) obj);
                if (fMeasureCubic < 0.0f) {
                    i.k("Measured cubic is expected to be greater or equal to zero");
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
        for (int i12 = 0; i12 < size4; i12++) {
            mutableFloatList.add(((Number) listListOf.get(i12)).floatValue() / fFloatValue2);
        }
        PolygonMeasureKt.access$getLOG_TAG$p();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size5 = arrayList2.size();
        for (int i13 = 0; i13 < size5; i13++) {
            int iIntValue = ((Number) ((Pair) arrayList2.get(i13)).getSecond()).intValue();
            listCreateListBuilder.add(new ProgressableFeature((mutableFloatList.get(iIntValue + 1) + mutableFloatList.get(iIntValue)) / 2, (Feature) ((Pair) arrayList2.get(i13)).getFirst()));
        }
        return new MeasuredPolygon(measurer, CollectionsKt.build(listCreateListBuilder), arrayList, mutableFloatList, null);
    }

    private MeasuredPolygon$Companion() {
    }
}
