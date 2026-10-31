package kotlin.text;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return StringsKt__IndentKt.b((String) this.c, (String) obj);
            case 1:
                return StringsKt__IndentKt.c((String) this.c, (String) obj);
            default:
                return MatcherMatchResult$groups$1.d((MatcherMatchResult$groups$1) this.c, ((Integer) obj).intValue());
        }
    }
}
