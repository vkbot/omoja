package kotlin.time;

import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Function0 {
    public final /* synthetic */ AbstractLongTimeSource b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(AbstractLongTimeSource abstractLongTimeSource) {
        this.b = abstractLongTimeSource;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke() {
        return Long.valueOf(AbstractLongTimeSource.a(this.b));
    }
}
