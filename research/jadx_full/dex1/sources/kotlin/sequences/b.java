package kotlin.sequences;

import java.util.Collection;
import java.util.List;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3234b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f3234b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f3234b) {
            case 0:
                return SequencesKt__SequencesKt.c((Function0) this.c, obj);
            case 1:
                return Boolean.valueOf(SequencesKt___SequencesJvmKt.f((Class) this.c, obj));
            case 2:
                return SequencesKt___SequencesKt.k((Sequence) this.c, obj);
            case 3:
                return Boolean.valueOf(SequencesKt___SequencesKt.i((Function2) this.c, (IndexedValue) obj));
            case 4:
                return SequencesKt___SequencesKt.h(obj, (Function1) this.c);
            case 5:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$2.a((Object[]) this.c, obj));
            case 6:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$3.a((Collection) this.c, obj));
            default:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$4.a((List) this.c, obj));
        }
    }
}
