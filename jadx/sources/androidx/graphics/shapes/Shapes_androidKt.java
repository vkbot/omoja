package androidx.graphics.shapes;

import android.graphics.Matrix;
import android.graphics.Path;
import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u001a\u001c\u0010\u0007\u001a\u00020\u0003*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0007\u001a\u00020\u0003*\u00020\u000b2\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0012\u0010\f\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, m3159d2 = {"pathFromCubics", "", "path", "Landroid/graphics/Path;", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "toPath", "Landroidx/graphics/shapes/Morph;", "progress", "", "Landroidx/graphics/shapes/RoundedPolygon;", "transformed", "matrix", "Landroid/graphics/Matrix;", "graphics-shapes_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Shapes_androidKt {
    private static final void pathFromCubics(Path path, List<? extends Cubic> list) {
        path.rewind();
        int size = list.size();
        boolean z9 = true;
        for (int i10 = 0; i10 < size; i10++) {
            Cubic cubic = list.get(i10);
            if (z9) {
                path.moveTo(cubic.getAnchor0X(), cubic.getAnchor0Y());
                z9 = false;
            }
            path.cubicTo(cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic.getAnchor1X(), cubic.getAnchor1Y());
        }
        path.close();
    }

    @JvmOverloads
    public static final Path toPath(RoundedPolygon roundedPolygon, Path path) {
        roundedPolygon.getClass();
        path.getClass();
        pathFromCubics(path, roundedPolygon.getCubics());
        return path;
    }

    public static /* synthetic */ Path toPath$default(RoundedPolygon roundedPolygon, Path path, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            path = new Path();
        }
        return toPath(roundedPolygon, path);
    }

    public static final RoundedPolygon transformed(RoundedPolygon roundedPolygon, final Matrix matrix) {
        roundedPolygon.getClass();
        matrix.getClass();
        final float[] fArr = new float[2];
        return roundedPolygon.transformed(new PointTransformer() { // from class: androidx.graphics.shapes.Shapes_androidKt.transformed.1
            @Override // androidx.graphics.shapes.PointTransformer
            /* JADX INFO: renamed from: transform-XgqJiTY */
            public final long mo6052transformXgqJiTY(float f8, float f10) {
                float[] fArr2 = fArr;
                fArr2[0] = f8;
                fArr2[1] = f10;
                matrix.mapPoints(fArr2);
                float[] fArr3 = fArr;
                return FloatFloatPair.m5996constructorimpl(fArr3[0], fArr3[1]);
            }
        });
    }

    @JvmOverloads
    public static final Path toPath(RoundedPolygon roundedPolygon) {
        roundedPolygon.getClass();
        return toPath$default(roundedPolygon, null, 1, null);
    }

    public static /* synthetic */ Path toPath$default(Morph morph, float f8, Path path, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            path = new Path();
        }
        return toPath(morph, f8, path);
    }

    public static final Path toPath(Morph morph, float f8, Path path) {
        morph.getClass();
        path.getClass();
        pathFromCubics(path, morph.asCubics(f8));
        return path;
    }
}
