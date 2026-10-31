package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class e implements Function1 {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__IndentKt.a((String) obj);
            case 1:
                return StringsKt___StringsKt.i((CharSequence) obj);
            case 2:
                return StringsKt___StringsKt.h((CharSequence) obj);
            default:
                return StringsKt___StringsKt.j((CharSequence) obj);
        }
    }
}
