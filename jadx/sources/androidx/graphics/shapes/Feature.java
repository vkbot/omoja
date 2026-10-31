package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001:\u0002\f\rB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH ¢\u0006\u0002\b\u000bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, m3159d2 = {"Landroidx/graphics/shapes/Feature;", "", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "(Ljava/util/List;)V", "getCubics", "()Ljava/util/List;", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed$graphics_shapes_release", "Corner", "Edge", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class Feature {
    private final List<Cubic> cubics;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0010¢\u0006\u0002\b\u000b¨\u0006\f"}, m3159d2 = {"Landroidx/graphics/shapes/Feature$Edge;", "Landroidx/graphics/shapes/Feature;", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "(Ljava/util/List;)V", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed$graphics_shapes_release", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Edge extends Feature {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Edge(List<? extends Cubic> list) {
            super(list);
            list.getClass();
        }

        public String toString() {
            return "Edge";
        }

        @Override // androidx.graphics.shapes.Feature
        public Edge transformed$graphics_shapes_release(PointTransformer f8) {
            f8.getClass();
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size = getCubics().size();
            for (int i10 = 0; i10 < size; i10++) {
                listCreateListBuilder.add(getCubics().get(i10).transformed(f8));
            }
            return new Edge(CollectionsKt.build(listCreateListBuilder));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Feature(List<? extends Cubic> list) {
        list.getClass();
        this.cubics = list;
    }

    public final List<Cubic> getCubics() {
        return this.cubics;
    }

    public abstract Feature transformed$graphics_shapes_release(PointTransformer f8);

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B5\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001d\u0010\b\u001a\u00060\u0006j\u0002`\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0018"}, m3159d2 = {"Landroidx/graphics/shapes/Feature$Corner;", "Landroidx/graphics/shapes/Feature;", "cubics", "", "Landroidx/graphics/shapes/Cubic;", "vertex", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "roundedCenter", "convex", "", "(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getConvex", "()Z", "getRoundedCenter-1ufDz9w", "()J", "J", "getVertex-1ufDz9w", "toString", "", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed$graphics_shapes_release", "graphics-shapes_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Corner extends Feature {
        private final boolean convex;
        private final long roundedCenter;
        private final long vertex;

        public /* synthetic */ Corner(List list, long j10, long j11, boolean z9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, j10, j11, (i10 & 8) != 0 ? true : z9, null);
        }

        public final boolean getConvex() {
            return this.convex;
        }

        /* JADX INFO: renamed from: getRoundedCenter-1ufDz9w, reason: not valid java name and from getter */
        public final long getRoundedCenter() {
            return this.roundedCenter;
        }

        /* JADX INFO: renamed from: getVertex-1ufDz9w, reason: not valid java name and from getter */
        public final long getVertex() {
            return this.vertex;
        }

        public String toString() {
            return "Corner: vertex=" + ((Object) FloatFloatPair.m6003toStringimpl(this.vertex)) + ", center=" + ((Object) FloatFloatPair.m6003toStringimpl(this.roundedCenter)) + ", convex=" + this.convex;
        }

        @Override // androidx.graphics.shapes.Feature
        public Feature transformed$graphics_shapes_release(PointTransformer f8) {
            f8.getClass();
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size = getCubics().size();
            for (int i10 = 0; i10 < size; i10++) {
                listCreateListBuilder.add(getCubics().get(i10).transformed(f8));
            }
            return new Corner(CollectionsKt.build(listCreateListBuilder), PointKt.m6050transformedso9K2fw(this.vertex, f8), PointKt.m6050transformedso9K2fw(this.roundedCenter, f8), this.convex, null);
        }

        public /* synthetic */ Corner(List list, long j10, long j11, boolean z9, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, j10, j11, z9);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private Corner(List<? extends Cubic> list, long j10, long j11, boolean z9) {
            super(list);
            list.getClass();
            this.vertex = j10;
            this.roundedCenter = j11;
            this.convex = z9;
        }
    }
}
