package kotlin.collections;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.ArrayIteratorsKt;

/* JADX INFO: renamed from: kotlin.collections.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2080b implements Function0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5626b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5627c;

    public /* synthetic */ C2080b(int i10, Object obj) {
        this.f5626b = i10;
        this.f5627c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f5626b) {
            case 0:
                return ArrayIteratorKt.iterator((Object[]) this.f5627c);
            case 1:
                return ArrayIteratorsKt.iterator((int[]) this.f5627c);
            case 2:
                return ArrayIteratorsKt.iterator((double[]) this.f5627c);
            case 3:
                return ArrayIteratorsKt.iterator((char[]) this.f5627c);
            case 4:
                return ArrayIteratorsKt.iterator((short[]) this.f5627c);
            case 5:
                return ArrayIteratorsKt.iterator((float[]) this.f5627c);
            case 6:
                return ArrayIteratorsKt.iterator((boolean[]) this.f5627c);
            case 7:
                return ArrayIteratorsKt.iterator((long[]) this.f5627c);
            case 8:
                return ArrayIteratorsKt.iterator((byte[]) this.f5627c);
            default:
                return ((Iterable) this.f5627c).iterator();
        }
    }
}
