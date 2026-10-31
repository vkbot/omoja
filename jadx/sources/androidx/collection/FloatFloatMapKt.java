package androidx.collection;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u001a&\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006\u001a6\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006\u001aF\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006\u001aV\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006\u001a\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0016\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u001a&\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006\u001a6\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006\u001aF\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006\u001aV\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m3159d2 = {"EmptyFloatFloatMap", "Landroidx/collection/MutableFloatFloatMap;", "emptyFloatFloatMap", "Landroidx/collection/FloatFloatMap;", "floatFloatMapOf", "key1", "", "value1", "key2", "value2", "key3", "value3", "key4", "value4", "key5", "value5", "mutableFloatFloatMapOf", "collection"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FloatFloatMapKt {
    private static final MutableFloatFloatMap EmptyFloatFloatMap = new MutableFloatFloatMap(0);

    public static final FloatFloatMap emptyFloatFloatMap() {
        return EmptyFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        mutableFloatFloatMap.set(f15, f16);
        mutableFloatFloatMap.set(f17, f18);
        return mutableFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        mutableFloatFloatMap.set(f15, f16);
        mutableFloatFloatMap.set(f17, f18);
        return mutableFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf(float f8, float f10) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        return mutableFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f8, float f10) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        return mutableFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf(float f8, float f10, float f11, float f12) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        return mutableFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f8, float f10, float f11, float f12) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        return mutableFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        return mutableFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        return mutableFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        mutableFloatFloatMap.set(f15, f16);
        return mutableFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf(float f8, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        MutableFloatFloatMap mutableFloatFloatMap = new MutableFloatFloatMap(0, 1, null);
        mutableFloatFloatMap.set(f8, f10);
        mutableFloatFloatMap.set(f11, f12);
        mutableFloatFloatMap.set(f13, f14);
        mutableFloatFloatMap.set(f15, f16);
        return mutableFloatFloatMap;
    }

    public static final FloatFloatMap floatFloatMapOf() {
        return EmptyFloatFloatMap;
    }

    public static final MutableFloatFloatMap mutableFloatFloatMapOf() {
        return new MutableFloatFloatMap(0, 1, null);
    }
}
