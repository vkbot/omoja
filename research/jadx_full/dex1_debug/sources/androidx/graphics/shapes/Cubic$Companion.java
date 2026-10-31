package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007¨\u0006\r"}, d2 = {"Landroidx/graphics/shapes/Cubic$Companion;", "", "()V", "circularArc", "Landroidx/graphics/shapes/Cubic;", "centerX", "", "centerY", "x0", "y0", "x1", "y1", "straightLine", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Cubic$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Cubic$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Cubic circularArc(float centerX, float centerY, float x8, float y8, float x9, float y9) {
        float f8 = x8 - centerX;
        float f9 = y8 - centerY;
        long jDirectionVector = Utils.directionVector(f8, f9);
        float f10 = x9 - centerX;
        float f11 = y9 - centerY;
        long jDirectionVector2 = Utils.directionVector(f10, f11);
        long jM71rotate90DnnuFBc = Utils.m71rotate90DnnuFBc(jDirectionVector);
        long jM71rotate90DnnuFBc2 = Utils.m71rotate90DnnuFBc(jDirectionVector2);
        boolean z8 = PointKt.m45dotProduct5P9i7ZU(jM71rotate90DnnuFBc, f10, f11) >= 0.0f;
        float fM46dotProductybeJwSQ = PointKt.m46dotProductybeJwSQ(jDirectionVector, jDirectionVector2);
        if (fM46dotProductybeJwSQ > 0.999f) {
            return straightLine(x8, y8, x9, y9);
        }
        float f12 = 1;
        float f13 = f12 - fM46dotProductybeJwSQ;
        float fSqrt = (((((float) Math.sqrt(2 * f13)) - ((float) Math.sqrt(f12 - (fM46dotProductybeJwSQ * fM46dotProductybeJwSQ)))) * ((Utils.distance(f8, f9) * 4.0f) / 3.0f)) / f13) * (z8 ? 1.0f : -1.0f);
        return CubicKt.Cubic(x8, y8, (PointKt.m50getXDnnuFBc(jM71rotate90DnnuFBc) * fSqrt) + x8, (PointKt.m51getYDnnuFBc(jM71rotate90DnnuFBc) * fSqrt) + y8, x9 - (PointKt.m50getXDnnuFBc(jM71rotate90DnnuFBc2) * fSqrt), y9 - (PointKt.m51getYDnnuFBc(jM71rotate90DnnuFBc2) * fSqrt), x9, y9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Cubic straightLine(float x8, float y8, float x9, float y9) {
        return CubicKt.Cubic(x8, y8, Utils.interpolate(x8, x9, 0.33333334f), Utils.interpolate(y8, y9, 0.33333334f), Utils.interpolate(x8, x9, 0.6666667f), Utils.interpolate(y8, y9, 0.6666667f), x9, y9);
    }

    private Cubic$Companion() {
    }
}
