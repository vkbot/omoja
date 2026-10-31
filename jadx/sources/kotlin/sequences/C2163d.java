package kotlin.sequences;

import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: kotlin.sequences.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2163d implements Function2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5676b;

    public /* synthetic */ C2163d(int i10) {
        this.f5676b = i10;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f5676b) {
            case 0:
                return SequencesKt___SequencesKt.zip$lambda$17$SequencesKt___SequencesKt(obj, obj2);
            default:
                return SequencesKt___SequencesKt.zipWithNext$lambda$18$SequencesKt___SequencesKt(obj, obj2);
        }
    }
}
