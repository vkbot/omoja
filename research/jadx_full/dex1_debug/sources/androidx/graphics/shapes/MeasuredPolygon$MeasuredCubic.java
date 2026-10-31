package androidx.graphics.shapes;

import androidx.annotation.FloatRange;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\"\u0010\u0010\u001a\u0016\u0012\b\u0012\u00060\u0000R\u00020\u0012\u0012\b\u0012\u00060\u0000R\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u0014\u001a\u00020\u0015H\u0016J!\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\f¨\u0006\u0019"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", "", "cubic", "Landroidx/graphics/shapes/Cubic;", "startOutlineProgress", "", "endOutlineProgress", "(Landroidx/graphics/shapes/MeasuredPolygon;Landroidx/graphics/shapes/Cubic;FF)V", "getCubic", "()Landroidx/graphics/shapes/Cubic;", "<set-?>", "getEndOutlineProgress", "()F", "measuredSize", "getMeasuredSize", "getStartOutlineProgress", "cutAtProgress", "Lkotlin/Pair;", "Landroidx/graphics/shapes/MeasuredPolygon;", "cutOutlineProgress", "toString", "", "updateProgressRange", "", "updateProgressRange$graphics_shapes_release", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n108#3,4:355\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n*L\n128#1:355,4\n*E\n"})
public final class MeasuredPolygon$MeasuredCubic {
    private final Cubic cubic;
    private float endOutlineProgress;
    private final float measuredSize;
    private float startOutlineProgress;
    final /* synthetic */ MeasuredPolygon this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MeasuredPolygon$MeasuredCubic(MeasuredPolygon measuredPolygon, @FloatRange(from = 0.0d, to = 1.0d) Cubic cubic, @FloatRange(from = 0.0d, to = 1.0d) float f8, float f9) {
        cubic.getClass();
        this.this$0 = measuredPolygon;
        this.cubic = cubic;
        if (f9 < f8) {
            i.k("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
            throw null;
        }
        this.measuredSize = MeasuredPolygon.access$getMeasurer$p(measuredPolygon).measureCubic(cubic);
        this.startOutlineProgress = f8;
        this.endOutlineProgress = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void updateProgressRange$graphics_shapes_release$default(MeasuredPolygon$MeasuredCubic measuredPolygon$MeasuredCubic, float f8, float f9, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f8 = measuredPolygon$MeasuredCubic.startOutlineProgress;
        }
        if ((i9 & 2) != 0) {
            f9 = measuredPolygon$MeasuredCubic.endOutlineProgress;
        }
        measuredPolygon$MeasuredCubic.updateProgressRange$graphics_shapes_release(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Pair<MeasuredPolygon$MeasuredCubic, MeasuredPolygon$MeasuredCubic> cutAtProgress(float cutOutlineProgress) {
        float fCoerceIn = RangesKt.coerceIn(cutOutlineProgress, this.startOutlineProgress, this.endOutlineProgress);
        float f8 = this.endOutlineProgress;
        float f9 = this.startOutlineProgress;
        float fFindCubicCutPoint = MeasuredPolygon.access$getMeasurer$p(this.this$0).findCubicCutPoint(this.cubic, ((fCoerceIn - f9) / (f8 - f9)) * this.measuredSize);
        if (0.0f > fFindCubicCutPoint || fFindCubicCutPoint > 1.0f) {
            i.k("Cubic cut point is expected to be between 0 and 1");
            return null;
        }
        PolygonMeasureKt.access$getLOG_TAG$p();
        Pair<Cubic, Cubic> pairSplit = this.cubic.split(fFindCubicCutPoint);
        return TuplesKt.to(new MeasuredPolygon$MeasuredCubic(this.this$0, pairSplit.component1(), this.startOutlineProgress, fCoerceIn), new MeasuredPolygon$MeasuredCubic(this.this$0, pairSplit.component2(), fCoerceIn, this.endOutlineProgress));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cubic getCubic() {
        return this.cubic;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getEndOutlineProgress() {
        return this.endOutlineProgress;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMeasuredSize() {
        return this.measuredSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getStartOutlineProgress() {
        return this.startOutlineProgress;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "MeasuredCubic(outlineProgress=[" + this.startOutlineProgress + " .. " + this.endOutlineProgress + "], size=" + this.measuredSize + ", cubic=" + this.cubic + ')';
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void updateProgressRange$graphics_shapes_release(float startOutlineProgress, float endOutlineProgress) {
        if (endOutlineProgress < startOutlineProgress) {
            i.k("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
        } else {
            this.startOutlineProgress = startOutlineProgress;
            this.endOutlineProgress = endOutlineProgress;
        }
    }
}
