package kotlin.sequences;

import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: kotlin.sequences.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2161b implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5673b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5674c;

    public /* synthetic */ C2161b(int i10, Object obj) {
        this.f5673b = i10;
        this.f5674c = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5673b) {
            case 0:
                return SequencesKt__SequencesKt.generateSequence$lambda$5$SequencesKt__SequencesKt((Function0) this.f5674c, obj);
            case 1:
                return Boolean.valueOf(((Class) this.f5674c).isInstance(obj));
            case 2:
                return SequencesKt___SequencesKt.requireNoNulls$lambda$16$SequencesKt___SequencesKt((Sequence) this.f5674c, obj);
            case 3:
                return Boolean.valueOf(SequencesKt___SequencesKt.filterIndexed$lambda$2$SequencesKt___SequencesKt((Function2) this.f5674c, (IndexedValue) obj));
            case 4:
                return SequencesKt___SequencesKt.onEach$lambda$14$SequencesKt___SequencesKt((Function1) this.f5674c, obj);
            case 5:
                return Boolean.valueOf(ArraysKt.contains((Object[]) this.f5674c, obj));
            case 6:
                return Boolean.valueOf(((Collection) this.f5674c).contains(obj));
            default:
                return Boolean.valueOf(((List) this.f5674c).contains(obj));
        }
    }
}
