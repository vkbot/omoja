package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B5\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\b\u001a\u00060\u0006j\u0002`\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0018"}, d2 = {"Landroidx/graphics/shapes/Feature$Corner;", "Landroidx/graphics/shapes/Feature;", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "vertex", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "roundedCenter", "convex", "", "(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getConvex", "()Z", "getRoundedCenter-1ufDz9w", "()J", "J", "getVertex-1ufDz9w", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed$graphics_shapes_release", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Feature$Corner extends Feature {
    private final boolean convex;
    private final long roundedCenter;
    private final long vertex;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Feature$Corner(List list, long j9, long j10, boolean z8, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, j9, j10, (i9 & 8) != 0 ? true : z8, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getConvex() {
        return this.convex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getRoundedCenter-1ufDz9w, reason: not valid java name and from getter */
    public final long getRoundedCenter() {
        return this.roundedCenter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getVertex-1ufDz9w, reason: not valid java name and from getter */
    public final long getVertex() {
        return this.vertex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "Corner: vertex=" + ((Object) FloatFloatPair.m10toStringimpl(this.vertex)) + ", center=" + ((Object) FloatFloatPair.m10toStringimpl(this.roundedCenter)) + ", convex=" + this.convex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.graphics.shapes.Feature
    public Feature transformed$graphics_shapes_release(PointTransformer f8) {
        f8.getClass();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = getCubics().size();
        for (int i9 = 0; i9 < size; i9++) {
            listCreateListBuilder.add(getCubics().get(i9).transformed(f8));
        }
        return new Feature$Corner(CollectionsKt.build(listCreateListBuilder), PointKt.m57transformedso9K2fw(this.vertex, f8), PointKt.m57transformedso9K2fw(this.roundedCenter, f8), this.convex, null);
    }

    public /* synthetic */ Feature$Corner(List list, long j9, long j10, boolean z8, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, j9, j10, z8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private Feature$Corner(List<? extends Cubic> list, long j9, long j10, boolean z8) {
        super(list);
        list.getClass();
        this.vertex = j9;
        this.roundedCenter = j10;
        this.convex = z8;
    }
}
