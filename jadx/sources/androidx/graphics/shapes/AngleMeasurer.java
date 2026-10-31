package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u000e"}, m3159d2 = {"Landroidx/graphics/shapes/AngleMeasurer;", "Landroidx/graphics/shapes/Measurer;", "centerX", "", "centerY", "(FF)V", "getCenterX", "()F", "getCenterY", "findCubicCutPoint", "c", "Landroidx/graphics/shapes/Cubic;", "m", "measureCubic", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AngleMeasurer implements Measurer {
    private final float centerX;
    private final float centerY;

    public AngleMeasurer(float f8, float f10) {
        this.centerX = f8;
        this.centerY = f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float findCubicCutPoint$lambda$1(Cubic cubic, AngleMeasurer angleMeasurer, float f8, float f10, float f11) {
        cubic.getClass();
        angleMeasurer.getClass();
        long jM6031pointOnCurveOOQOV4g$graphics_shapes_release = cubic.m6031pointOnCurveOOQOV4g$graphics_shapes_release(f11);
        return Math.abs(Utils.positiveModulo(Utils.angle(PointKt.m6043getXDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release) - angleMeasurer.centerX, PointKt.m6044getYDnnuFBc(jM6031pointOnCurveOOQOV4g$graphics_shapes_release) - angleMeasurer.centerY) - f8, Utils.getTwoPi()) - f10);
    }

    @Override // androidx.graphics.shapes.Measurer
    public float findCubicCutPoint(final Cubic c, final float m10) {
        c.getClass();
        final float fAngle = Utils.angle(c.getAnchor0X() - this.centerX, c.getAnchor0Y() - this.centerY);
        return Utils.findMinimum(0.0f, 1.0f, 1.0E-5f, new FindMinimumFunction() { // from class: androidx.graphics.shapes.a
            @Override // androidx.graphics.shapes.FindMinimumFunction
            public final float invoke(float f8) {
                return AngleMeasurer.findCubicCutPoint$lambda$1(c, this, fAngle, m10, f8);
            }
        });
    }

    public final float getCenterX() {
        return this.centerX;
    }

    public final float getCenterY() {
        return this.centerY;
    }

    @Override // androidx.graphics.shapes.Measurer
    public float measureCubic(Cubic c) {
        c.getClass();
        float fPositiveModulo = Utils.positiveModulo(Utils.angle(c.getAnchor1X() - this.centerX, c.getAnchor1Y() - this.centerY) - Utils.angle(c.getAnchor0X() - this.centerX, c.getAnchor0Y() - this.centerY), Utils.getTwoPi());
        if (fPositiveModulo > Utils.getTwoPi() - 1.0E-4f) {
            return 0.0f;
        }
        return fPositiveModulo;
    }
}
