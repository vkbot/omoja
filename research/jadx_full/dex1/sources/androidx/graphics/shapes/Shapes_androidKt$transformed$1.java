package androidx.graphics.shapes;

import android.graphics.Matrix;
import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/TransformResult;", "x", "", "y", "transform-XgqJiTY", "(FF)J"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Shapes_androidKt$transformed$1 implements PointTransformer {
    final /* synthetic */ Matrix $matrix;
    final /* synthetic */ float[] $tempArray;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Shapes_androidKt$transformed$1(float[] fArr, Matrix matrix) {
        this.$tempArray = fArr;
        this.$matrix = matrix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.graphics.shapes.PointTransformer
    /* JADX INFO: renamed from: transform-XgqJiTY */
    public final long mo59transformXgqJiTY(float f8, float f9) {
        float[] fArr = this.$tempArray;
        fArr[0] = f8;
        fArr[1] = f9;
        this.$matrix.mapPoints(fArr);
        float[] fArr2 = this.$tempArray;
        return FloatFloatPair.m3constructorimpl(fArr2[0], fArr2[1]);
    }
}
