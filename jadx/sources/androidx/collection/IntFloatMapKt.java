package androidx.collection;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a&\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b\u001a6\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b\u001aF\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b\u001aV\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\b\u001a\u0006\u0010\u0011\u001a\u00020\u0001\u001a\u0016\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a&\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b\u001a6\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b\u001aF\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b\u001aV\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m3159d2 = {"EmptyIntFloatMap", "Landroidx/collection/MutableIntFloatMap;", "emptyIntFloatMap", "Landroidx/collection/IntFloatMap;", "intFloatMapOf", "key1", "", "value1", "", "key2", "value2", "key3", "value3", "key4", "value4", "key5", "value5", "mutableIntFloatMapOf", "collection"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class IntFloatMapKt {
    private static final MutableIntFloatMap EmptyIntFloatMap = new MutableIntFloatMap(0);

    public static final IntFloatMap emptyIntFloatMap() {
        return EmptyIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11, int i13, float f12, int i14, float f13) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        mutableIntFloatMap.set(i13, f12);
        mutableIntFloatMap.set(i14, f13);
        return mutableIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11, int i13, float f12, int i14, float f13) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        mutableIntFloatMap.set(i13, f12);
        mutableIntFloatMap.set(i14, f13);
        return mutableIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf(int i10, float f8) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        return mutableIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f8) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        return mutableIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf(int i10, float f8, int i11, float f10) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        return mutableIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f8, int i11, float f10) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        return mutableIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        return mutableIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        return mutableIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11, int i13, float f12) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        mutableIntFloatMap.set(i13, f12);
        return mutableIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf(int i10, float f8, int i11, float f10, int i12, float f11, int i13, float f12) {
        MutableIntFloatMap mutableIntFloatMap = new MutableIntFloatMap(0, 1, null);
        mutableIntFloatMap.set(i10, f8);
        mutableIntFloatMap.set(i11, f10);
        mutableIntFloatMap.set(i12, f11);
        mutableIntFloatMap.set(i13, f12);
        return mutableIntFloatMap;
    }

    public static final IntFloatMap intFloatMapOf() {
        return EmptyIntFloatMap;
    }

    public static final MutableIntFloatMap mutableIntFloatMapOf() {
        return new MutableIntFloatMap(0, 1, null);
    }
}
