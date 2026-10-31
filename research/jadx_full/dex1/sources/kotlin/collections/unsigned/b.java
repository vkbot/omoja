package kotlin.collections.unsigned;

import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3212b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f3212b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f3212b) {
            case 0:
                return UArraysKt___UArraysKt.a((int[]) this.c);
            case 1:
                return UArraysKt___UArraysKt.d((long[]) this.c);
            case 2:
                return UArraysKt___UArraysKt.c((byte[]) this.c);
            default:
                return UArraysKt___UArraysKt.b((short[]) this.c);
        }
    }
}
