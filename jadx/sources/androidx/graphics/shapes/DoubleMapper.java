package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.JvmField;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \r2\u00020\u0001:\u0001\rB1\u0012*\u0010\u0002\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u0003\"\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m3159d2 = {"Landroidx/graphics/shapes/DoubleMapper;", "", "mappings", "", "Lkotlin/Pair;", "", "([Lkotlin/Pair;)V", "sourceValues", "Landroidx/collection/MutableFloatList;", "targetValues", "map", "x", "mapBack", "Companion", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DoubleMapper {

    @JvmField
    public static final DoubleMapper Identity;
    private final MutableFloatList sourceValues;
    private final MutableFloatList targetValues;

    static {
        Float fValueOf = Float.valueOf(0.0f);
        Pair pairM3166to = TuplesKt.m3166to(fValueOf, fValueOf);
        Float fValueOf2 = Float.valueOf(0.5f);
        Identity = new DoubleMapper(pairM3166to, TuplesKt.m3166to(fValueOf2, fValueOf2));
    }

    public DoubleMapper(Pair<Float, Float>... pairArr) {
        pairArr.getClass();
        this.sourceValues = new MutableFloatList(pairArr.length);
        this.targetValues = new MutableFloatList(pairArr.length);
        int length = pairArr.length;
        int i10 = 0;
        while (true) {
            MutableFloatList mutableFloatList = this.sourceValues;
            if (i10 >= length) {
                FloatMappingKt.validateProgress(mutableFloatList);
                FloatMappingKt.validateProgress(this.targetValues);
                return;
            } else {
                mutableFloatList.add(pairArr[i10].getFirst().floatValue());
                this.targetValues.add(pairArr[i10].getSecond().floatValue());
                i10++;
            }
        }
    }

    public final float map(float x9) {
        return FloatMappingKt.linearMap(this.sourceValues, this.targetValues, x9);
    }

    public final float mapBack(float x9) {
        return FloatMappingKt.linearMap(this.targetValues, this.sourceValues, x9);
    }
}
