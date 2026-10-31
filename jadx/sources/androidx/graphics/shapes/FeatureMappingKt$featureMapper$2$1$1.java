package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m3159d2 = {"<anonymous>", "", "i", "", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FeatureMappingKt$featureMapper$2$1$1 extends Lambda implements Function1<Integer, CharSequence> {

    /* JADX INFO: renamed from: $N */
    final /* synthetic */ int f459$N;
    final /* synthetic */ DoubleMapper $dm;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureMappingKt$featureMapper$2$1$1(DoubleMapper doubleMapper, int i10) {
        super(1);
        this.$dm = doubleMapper;
        this.f459$N = i10;
    }

    public final CharSequence invoke(int i10) {
        return Format_jvmKt.toStringWithLessPrecision(this.$dm.map(i10 / this.f459$N));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
        return invoke(num.intValue());
    }
}
