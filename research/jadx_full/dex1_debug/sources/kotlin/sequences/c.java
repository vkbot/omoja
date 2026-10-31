package kotlin.sequences;

import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3235b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f3235b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f3235b) {
            case 0:
                return SequencesKt__SequencesKt.e((Sequence) obj);
            case 1:
                return SequencesKt__SequencesKt.d((Iterable) obj);
            case 2:
                return SequencesKt__SequencesKt.a(obj);
            case 3:
                return SequencesKt___SequencesKt.g((IndexedValue) obj);
            case 4:
                return Boolean.valueOf(SequencesKt___SequencesKt.p(obj));
            default:
                return SequencesKt___SequencesKt.m(obj);
        }
    }
}
