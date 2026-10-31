package androidx.graphics.shapes;

import android.graphics.Matrix;
import android.graphics.Path;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u001a\u001c\u0010\u0007\u001a\u00020\u0003*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0007\u001a\u00020\u0003*\u00020\u000b2\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0012\u0010\f\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, d2 = {"pathFromCubics", "", "path", "Landroid/graphics/Path;", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "toPath", "Landroidx/graphics/shapes/Morph;", "progress", "", "Landroidx/graphics/shapes/RoundedPolygon;", "transformed", "matrix", "Landroid/graphics/Matrix;", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Shapes_androidKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void pathFromCubics(Path path, List<? extends Cubic> list) {
        path.rewind();
        int size = list.size();
        boolean z8 = true;
        for (int i9 = 0; i9 < size; i9++) {
            Cubic cubic = list.get(i9);
            if (z8) {
                path.moveTo(cubic.getAnchor0X(), cubic.getAnchor0Y());
                z8 = false;
            }
            path.cubicTo(cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic.getAnchor1X(), cubic.getAnchor1Y());
        }
        path.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public static final Path toPath(RoundedPolygon roundedPolygon, Path path) {
        roundedPolygon.getClass();
        path.getClass();
        pathFromCubics(path, roundedPolygon.getCubics());
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path toPath$default(RoundedPolygon roundedPolygon, Path path, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            path = new Path();
        }
        return toPath(roundedPolygon, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final RoundedPolygon transformed(RoundedPolygon roundedPolygon, Matrix matrix) {
        roundedPolygon.getClass();
        matrix.getClass();
        return roundedPolygon.transformed(new Shapes_androidKt$transformed$1(new float[2], matrix));
    }

    @JvmOverloads
    public static final Path toPath(RoundedPolygon roundedPolygon) {
        roundedPolygon.getClass();
        return toPath$default(roundedPolygon, null, 1, null);
    }

    public static /* synthetic */ Path toPath$default(Morph morph, float f8, Path path, int i9, Object obj) {
        if ((i9 & 2) != 0) {
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
