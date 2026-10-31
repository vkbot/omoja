package androidx.collection;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\n\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a&\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b\u001a6\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b\u001aF\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b\u001aV\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\b\u001a\u0006\u0010\u0011\u001a\u00020\u0001\u001a\u0016\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a&\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b\u001a6\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b\u001aF\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b\u001aV\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m3159d2 = {"EmptyFloatLongMap", "Landroidx/collection/MutableFloatLongMap;", "emptyFloatLongMap", "Landroidx/collection/FloatLongMap;", "floatLongMapOf", "key1", "", "value1", "", "key2", "value2", "key3", "value3", "key4", "value4", "key5", "value5", "mutableFloatLongMapOf", "collection"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FloatLongMapKt {
    private static final MutableFloatLongMap EmptyFloatLongMap = new MutableFloatLongMap(0);

    public static final FloatLongMap emptyFloatLongMap() {
        return EmptyFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13, long j14) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        mutableFloatLongMap.set(f12, j13);
        mutableFloatLongMap.set(f13, j14);
        return mutableFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12, float f12, long j13, float f13, long j14) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        mutableFloatLongMap.set(f12, j13);
        mutableFloatLongMap.set(f13, j14);
        return mutableFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf(float f8, long j10) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        return mutableFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf(float f8, long j10) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        return mutableFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf(float f8, long j10, float f10, long j11) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        return mutableFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf(float f8, long j10, float f10, long j11) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        return mutableFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        return mutableFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        return mutableFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12, float f12, long j13) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        mutableFloatLongMap.set(f12, j13);
        return mutableFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf(float f8, long j10, float f10, long j11, float f11, long j12, float f12, long j13) {
        MutableFloatLongMap mutableFloatLongMap = new MutableFloatLongMap(0, 1, null);
        mutableFloatLongMap.set(f8, j10);
        mutableFloatLongMap.set(f10, j11);
        mutableFloatLongMap.set(f11, j12);
        mutableFloatLongMap.set(f12, j13);
        return mutableFloatLongMap;
    }

    public static final FloatLongMap floatLongMapOf() {
        return EmptyFloatLongMap;
    }

    public static final MutableFloatLongMap mutableFloatLongMapOf() {
        return new MutableFloatLongMap(0, 1, null);
    }
}
