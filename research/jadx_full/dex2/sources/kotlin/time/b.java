package kotlin.time;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        boolean zB;
        int i = this.b;
        char cCharValue = ((Character) obj).charValue();
        switch (i) {
            case 0:
                zB = InstantKt.b(cCharValue);
                break;
            case 1:
                zB = InstantKt.e(cCharValue);
                break;
            case 2:
                zB = InstantKt.c(cCharValue);
                break;
            case 3:
                zB = InstantKt.a(cCharValue);
                break;
            case 4:
                zB = InstantKt.f(cCharValue);
                break;
            default:
                zB = InstantKt.d(cCharValue);
                break;
        }
        return Boolean.valueOf(zB);
    }
}
