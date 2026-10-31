package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class f implements Function1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ CharSequence c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(CharSequence charSequence, int i) {
        this.b = i;
        this.c = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__StringsKt.g(this.c, (IntRange) obj);
            default:
                return StringsKt__StringsKt.e(this.c, (IntRange) obj);
        }
    }
}
