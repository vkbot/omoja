package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/TransformResult;", "x", "", "y"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RoundedPolygon$normalized$1 implements PointTransformer {
    final /* synthetic */ float $offsetX;
    final /* synthetic */ float $offsetY;
    final /* synthetic */ float $side;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RoundedPolygon$normalized$1(float f8, float f9, float f10) {
        this.$offsetX = f8;
        this.$side = f9;
        this.$offsetY = f10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.graphics.shapes.PointTransformer
    /* JADX INFO: renamed from: transform-XgqJiTY */
    public final long mo59transformXgqJiTY(float f8, float f9) {
        float f10 = f8 + this.$offsetX;
        float f11 = this.$side;
        return FloatFloatPair.m3constructorimpl(f10 / f11, (f9 + this.$offsetY) / f11);
    }
}
