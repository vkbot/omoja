package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a6\u0010\u0002\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0010\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005H\u0000\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\nH\u0000\u001a,\u0010\u000b\u001a\u00020\f2\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0010\u0010\u000e\u001a\f\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D¢\u0006\u0002\n\u0000*\u0018\b\u0000\u0010\u000f\"\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0012\u0004\u0012\u00020\u00040\u0003¨\u0006\u0010"}, d2 = {"LOG_TAG", "", "doMapping", "", "Landroidx/graphics/shapes/ProgressableFeature;", "Landroidx/graphics/shapes/MeasuredFeatures;", "f1", "f2", "featureDistSquared", "", "Landroidx/graphics/shapes/Feature;", "featureMapper", "Landroidx/graphics/shapes/DoubleMapper;", "features1", "features2", "MeasuredFeatures", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFeatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n108#2,4:132\n108#2,4:138\n108#2,4:142\n37#3,2:136\n2310#4,14:146\n2310#4,14:161\n1#5:160\n*S KotlinDebug\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n*L\n65#1:132,4\n67#1:138,4\n90#1:142,4\n66#1:136,2\n111#1:146,14\n123#1:161,14\n*E\n"})
public final class FeatureMappingKt {
    private static final String LOG_TAG = "FeatureMapping";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final List<ProgressableFeature> doMapping(List<ProgressableFeature> list, List<ProgressableFeature> list2) {
        list.getClass();
        list2.getClass();
        Iterator<Integer> it = CollectionsKt.getIndices(list2).iterator();
        if (!it.hasNext()) {
            b.x();
            return null;
        }
        IntIterator intIterator = (IntIterator) it;
        int iNextInt = intIterator.nextInt();
        if (it.hasNext()) {
            float fFeatureDistSquared = featureDistSquared(list.get(0).getFeature(), list2.get(iNextInt).getFeature());
            do {
                int iNextInt2 = intIterator.nextInt();
                float fFeatureDistSquared2 = featureDistSquared(list.get(0).getFeature(), list2.get(iNextInt2).getFeature());
                if (Float.compare(fFeatureDistSquared, fFeatureDistSquared2) > 0) {
                    iNextInt = iNextInt2;
                    fFeatureDistSquared = fFeatureDistSquared2;
                }
            } while (it.hasNext());
        }
        int size = list.size();
        int size2 = list2.size();
        List<ProgressableFeature> listMutableListOf = CollectionsKt.mutableListOf(list2.get(iNextInt));
        int i9 = iNextInt;
        for (int i10 = 1; i10 < size; i10++) {
            int i11 = iNextInt - (size - i10);
            if (i11 <= i9) {
                i11 += size2;
            }
            Iterator<Integer> it2 = new IntRange(i9 + 1, i11).iterator();
            if (!it2.hasNext()) {
                b.x();
                return null;
            }
            IntIterator intIterator2 = (IntIterator) it2;
            int iNextInt3 = intIterator2.nextInt();
            if (it2.hasNext()) {
                float fFeatureDistSquared3 = featureDistSquared(list.get(i10).getFeature(), list2.get(iNextInt3 % size2).getFeature());
                do {
                    int iNextInt4 = intIterator2.nextInt();
                    float fFeatureDistSquared4 = featureDistSquared(list.get(i10).getFeature(), list2.get(iNextInt4 % size2).getFeature());
                    if (Float.compare(fFeatureDistSquared3, fFeatureDistSquared4) > 0) {
                        iNextInt3 = iNextInt4;
                        fFeatureDistSquared3 = fFeatureDistSquared4;
                    }
                } while (it2.hasNext());
            }
            i9 = iNextInt3;
            listMutableListOf.add(list2.get(i9 % size2));
        }
        return listMutableListOf;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final float featureDistSquared(Feature feature, Feature feature2) {
        feature.getClass();
        feature2.getClass();
        if ((feature instanceof Feature$Corner) && (feature2 instanceof Feature$Corner) && ((Feature$Corner) feature).getConvex() != ((Feature$Corner) feature2).getConvex()) {
            return Float.MAX_VALUE;
        }
        float anchor1X = (((Cubic) CollectionsKt.last((List) feature.getCubics())).getAnchor1X() + ((Cubic) CollectionsKt.first((List) feature.getCubics())).getAnchor0X()) / 2.0f;
        float anchor1Y = (((Cubic) CollectionsKt.last((List) feature.getCubics())).getAnchor1Y() + ((Cubic) CollectionsKt.first((List) feature.getCubics())).getAnchor0Y()) / 2.0f;
        float anchor1X2 = (((Cubic) CollectionsKt.last((List) feature2.getCubics())).getAnchor1X() + ((Cubic) CollectionsKt.first((List) feature2.getCubics())).getAnchor0X()) / 2.0f;
        float f8 = anchor1X - anchor1X2;
        float anchor1Y2 = anchor1Y - ((((Cubic) CollectionsKt.last((List) feature2.getCubics())).getAnchor1Y() + ((Cubic) CollectionsKt.first((List) feature2.getCubics())).getAnchor0Y()) / 2.0f);
        return (anchor1Y2 * anchor1Y2) + (f8 * f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final DoubleMapper featureMapper(List<ProgressableFeature> list, List<ProgressableFeature> list2) {
        list.getClass();
        list2.getClass();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (list.get(i9).getFeature() instanceof Feature$Corner) {
                listCreateListBuilder.add(list.get(i9));
            }
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        List listCreateListBuilder2 = CollectionsKt.createListBuilder();
        int size2 = list2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            if (list2.get(i10).getFeature() instanceof Feature$Corner) {
                listCreateListBuilder2.add(list2.get(i10));
            }
        }
        List listBuild2 = CollectionsKt.build(listCreateListBuilder2);
        Pair pair = listBuild.size() > listBuild2.size() ? TuplesKt.to(doMapping(listBuild2, listBuild), listBuild2) : TuplesKt.to(listBuild, doMapping(listBuild, listBuild2));
        List list3 = (List) pair.component1();
        List list4 = (List) pair.component2();
        List listCreateListBuilder3 = CollectionsKt.createListBuilder();
        int size3 = list3.size();
        for (int i11 = 0; i11 < size3 && i11 != list4.size(); i11++) {
            listCreateListBuilder3.add(TuplesKt.to(Float.valueOf(((ProgressableFeature) list3.get(i11)).getProgress()), Float.valueOf(((ProgressableFeature) list4.get(i11)).getProgress())));
        }
        Pair[] pairArr = (Pair[]) CollectionsKt.build(listCreateListBuilder3).toArray(new Pair[0]);
        return new DoubleMapper((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }
}
