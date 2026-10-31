package androidx.graphics.shapes;

import androidx.annotation.FloatRange;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\n"}, m3159d2 = {"Landroidx/graphics/shapes/CornerRounding;", "", "radius", "", "smoothing", "(FF)V", "getRadius", "()F", "getSmoothing", "Companion", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CornerRounding {

    @JvmField
    public static final CornerRounding Unrounded;
    private final float radius;
    private final float smoothing;

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        INSTANCE = new Companion(defaultConstructorMarker);
        float f8 = 0.0f;
        Unrounded = new CornerRounding(f8, f8, 3, defaultConstructorMarker);
    }

    public /* synthetic */ CornerRounding(float f8, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f8, (i10 & 2) != 0 ? 0.0f : f10);
    }

    public final float getRadius() {
        return this.radius;
    }

    public final float getSmoothing() {
        return this.smoothing;
    }

    public CornerRounding(@FloatRange(from = 0.0d) float f8, @FloatRange(from = 0.0d, m378to = 1.0d) float f10) {
        this.radius = f8;
        this.smoothing = f10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CornerRounding() {
        float f8 = 0.0f;
        this(f8, f8, 3, null);
    }
}
