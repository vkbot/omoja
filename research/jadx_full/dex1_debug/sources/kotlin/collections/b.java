package kotlin.collections;

import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3210b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f3210b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f3210b) {
            case 0:
                return ArraysKt___ArraysKt.d((Object[]) this.c);
            case 1:
                return ArraysKt___ArraysKt.c((int[]) this.c);
            case 2:
                return ArraysKt___ArraysKt.e((double[]) this.c);
            case 3:
                return ArraysKt___ArraysKt.h((char[]) this.c);
            case 4:
                return ArraysKt___ArraysKt.i((short[]) this.c);
            case 5:
                return ArraysKt___ArraysKt.b((float[]) this.c);
            case 6:
                return ArraysKt___ArraysKt.g((boolean[]) this.c);
            case 7:
                return ArraysKt___ArraysKt.a((long[]) this.c);
            case 8:
                return ArraysKt___ArraysKt.f((byte[]) this.c);
            default:
                return CollectionsKt___CollectionsKt.b((Iterable) this.c);
        }
    }
}
