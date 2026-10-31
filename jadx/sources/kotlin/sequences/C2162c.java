package kotlin.sequences;

import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: kotlin.sequences.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2162c implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5675b;

    public /* synthetic */ C2162c(int i10) {
        this.f5675b = i10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5675b) {
            case 0:
                return SequencesKt__SequencesKt.flatten$lambda$2$SequencesKt__SequencesKt((Sequence) obj);
            case 1:
                return SequencesKt__SequencesKt.flatten$lambda$3$SequencesKt__SequencesKt((Iterable) obj);
            case 2:
                return SequencesKt__SequencesKt.flatten$lambda$4$SequencesKt__SequencesKt(obj);
            case 3:
                return SequencesKt___SequencesKt.filterIndexed$lambda$3$SequencesKt___SequencesKt((IndexedValue) obj);
            case 4:
                return Boolean.valueOf(SequencesKt___SequencesKt.filterNotNull$lambda$5$SequencesKt___SequencesKt(obj));
            default:
                return SequencesKt___SequencesKt.distinct$lambda$13$SequencesKt___SequencesKt(obj);
        }
    }
}
