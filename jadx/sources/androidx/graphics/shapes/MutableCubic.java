package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u000f"}, m3159d2 = {"Landroidx/graphics/shapes/MutableCubic;", "Landroidx/graphics/shapes/Cubic;", "()V", "interpolate", "", "c1", "c2", "progress", "", "transform", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformOnePoint", "ix", "", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n48#2:449\n54#2:451\n22#3:450\n22#3:452\n1#4:453\n*S KotlinDebug\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n*L\n433#1:449\n434#1:451\n433#1:450\n434#1:452\n*E\n"})
public final class MutableCubic extends Cubic {
    public MutableCubic() {
        super(null, 1, null);
    }

    private final void transformOnePoint(PointTransformer f8, int ix) {
        int i10 = ix + 1;
        long jMo6052transformXgqJiTY = f8.mo6052transformXgqJiTY(getPoints()[ix], getPoints()[i10]);
        getPoints()[ix] = Float.intBitsToFloat((int) (jMo6052transformXgqJiTY >> 32));
        getPoints()[i10] = Float.intBitsToFloat((int) (jMo6052transformXgqJiTY & 4294967295L));
    }

    public final void interpolate(Cubic c10, Cubic c11, float progress) {
        c10.getClass();
        c11.getClass();
        for (int i10 = 0; i10 < 8; i10++) {
            getPoints()[i10] = Utils.interpolate(c10.getPoints()[i10], c11.getPoints()[i10], progress);
        }
    }

    public final void transform(PointTransformer f8) {
        f8.getClass();
        transformOnePoint(f8, 0);
        transformOnePoint(f8, 2);
        transformOnePoint(f8, 4);
        transformOnePoint(f8, 6);
    }
}
