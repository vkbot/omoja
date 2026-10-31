package androidx.graphics.shapes;

import androidx.collection.FloatList;
import androidx.collection.MutableFloatList;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00182\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\u0018\u0019B3\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u0015\u0010\u0016\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0010H\u0096\u0002R\u0018\u0010\b\u001a\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon;", "Lkotlin/collections/AbstractList;", "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", "measurer", "Landroidx/graphics/shapes/Measurer;", "features", "", "Landroidx/graphics/shapes/ProgressableFeature;", "cubics", "Landroidx/graphics/shapes/Cubic;", "outlineProgress", "Landroidx/collection/FloatList;", "(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/FloatList;)V", "getFeatures", "()Ljava/util/List;", "size", "", "getSize", "()I", "cutAndShift", "cuttingPoint", "", "get", "index", "Companion", "MeasuredCubic", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n350#3,7:355\n108#4,4:362\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n*L\n169#1:355,7\n182#1:362,4\n*E\n"})
public final class MeasuredPolygon extends AbstractList<MeasuredPolygon$MeasuredCubic> {
    public static final MeasuredPolygon$Companion Companion = new MeasuredPolygon$Companion(null);
    private final List<MeasuredPolygon$MeasuredCubic> cubics;
    private final List<ProgressableFeature> features;
    private final Measurer measurer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MeasuredPolygon(Measurer measurer, List<ProgressableFeature> list, List<? extends Cubic> list2, FloatList floatList) {
        if (floatList.getSize() != list2.size() + 1) {
            i.k("Outline progress size is expected to be the cubics size + 1");
            throw null;
        }
        if (floatList.first() != 0.0f) {
            i.k("First outline progress value is expected to be zero");
            throw null;
        }
        if (floatList.last() != 1.0f) {
            i.k("Last outline progress value is expected to be one");
            throw null;
        }
        this.measurer = measurer;
        this.features = list;
        ArrayList arrayList = new ArrayList();
        int size = list2.size();
        int i9 = 0;
        float f8 = 0.0f;
        while (i9 < size) {
            int i10 = i9 + 1;
            if (floatList.get(i10) - floatList.get(i9) > 1.0E-4f) {
                arrayList.add(new MeasuredPolygon$MeasuredCubic(this, list2.get(i9), f8, floatList.get(i10)));
                f8 = floatList.get(i10);
            }
            i9 = i10;
        }
        MeasuredPolygon$MeasuredCubic.updateProgressRange$graphics_shapes_release$default((MeasuredPolygon$MeasuredCubic) arrayList.get(CollectionsKt.getLastIndex(arrayList)), 0.0f, 1.0f, 1, null);
        this.cubics = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Measurer access$getMeasurer$p(MeasuredPolygon measuredPolygon) {
        return measuredPolygon.measurer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof MeasuredPolygon$MeasuredCubic) {
            return contains((MeasuredPolygon$MeasuredCubic) obj);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final MeasuredPolygon cutAndShift(float cuttingPoint) {
        float fPositiveModulo;
        if (0.0f > cuttingPoint || cuttingPoint > 1.0f) {
            i.k("Cutting point is expected to be between 0 and 1");
            return null;
        }
        if (cuttingPoint < 1.0E-4f) {
            return this;
        }
        Iterator<MeasuredPolygon$MeasuredCubic> it = this.cubics.iterator();
        int i9 = 0;
        while (true) {
            if (!it.hasNext()) {
                i9 = -1;
                break;
            }
            MeasuredPolygon$MeasuredCubic next = it.next();
            float startOutlineProgress = next.getStartOutlineProgress();
            if (cuttingPoint <= next.getEndOutlineProgress() && startOutlineProgress <= cuttingPoint) {
                break;
            }
            i9++;
        }
        Pair<MeasuredPolygon$MeasuredCubic, MeasuredPolygon$MeasuredCubic> pairCutAtProgress = this.cubics.get(i9).cutAtProgress(cuttingPoint);
        MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent1 = pairCutAtProgress.component1();
        MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubicComponent2 = pairCutAtProgress.component2();
        PolygonMeasureKt.access$getLOG_TAG$p();
        List listMutableListOf = CollectionsKt.mutableListOf(measuredPolygon$MeasuredCubicComponent2.getCubic());
        int size = this.cubics.size();
        for (int i10 = 1; i10 < size; i10++) {
            List<MeasuredPolygon$MeasuredCubic> list = this.cubics;
            listMutableListOf.add(list.get((i10 + i9) % list.size()).getCubic());
        }
        listMutableListOf.add(measuredPolygon$MeasuredCubicComponent1.getCubic());
        MutableFloatList mutableFloatList = new MutableFloatList(this.cubics.size() + 2);
        int size2 = this.cubics.size() + 2;
        for (int i11 = 0; i11 < size2; i11++) {
            if (i11 == 0) {
                fPositiveModulo = 0.0f;
            } else if (i11 == this.cubics.size() + 1) {
                fPositiveModulo = 1.0f;
            } else {
                fPositiveModulo = Utils.positiveModulo(this.cubics.get(((i9 + i11) - 1) % this.cubics.size()).getEndOutlineProgress() - cuttingPoint, 1.0f);
            }
            mutableFloatList.add(fPositiveModulo);
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size3 = this.features.size();
        for (int i12 = 0; i12 < size3; i12++) {
            listCreateListBuilder.add(new ProgressableFeature(Utils.positiveModulo(this.features.get(i12).getProgress() - cuttingPoint, 1.0f), this.features.get(i12).getFeature()));
        }
        return new MeasuredPolygon(this.measurer, CollectionsKt.build(listCreateListBuilder), listMutableListOf, mutableFloatList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractList, java.util.List
    public MeasuredPolygon$MeasuredCubic get(int index) {
        return this.cubics.get(index);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<ProgressableFeature> getFeatures() {
        return this.features;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.cubics.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof MeasuredPolygon$MeasuredCubic) {
            return indexOf((MeasuredPolygon$MeasuredCubic) obj);
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof MeasuredPolygon$MeasuredCubic) {
            return lastIndexOf((MeasuredPolygon$MeasuredCubic) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i9) {
        return get(i9);
    }

    public /* bridge */ boolean contains(MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubic) {
        return super.contains((Object) measuredPolygon$MeasuredCubic);
    }

    public /* bridge */ int indexOf(MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubic) {
        return super.indexOf((Object) measuredPolygon$MeasuredCubic);
    }

    public /* bridge */ int lastIndexOf(MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubic) {
        return super.lastIndexOf((Object) measuredPolygon$MeasuredCubic);
    }

    public /* synthetic */ MeasuredPolygon(Measurer measurer, List list, List list2, FloatList floatList, DefaultConstructorMarker defaultConstructorMarker) {
        this(measurer, list, list2, floatList);
    }
}
