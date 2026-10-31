package y8;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class n implements t, f {
    public final /* synthetic */ m b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(m mVar) {
        this.b = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.f
    public final Object collect(g gVar, Continuation continuation) {
        return ((v) this.b).collect(gVar, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y8.t
    public final Object getValue() {
        return ((v) this.b).getValue();
    }
}
