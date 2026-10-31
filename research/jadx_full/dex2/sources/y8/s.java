package y8;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class s extends z8.c {
    public long a;
    public v8.e b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.c
    public final boolean a(z8.a aVar) {
        q qVar = (q) aVar;
        if (this.a >= 0) {
            return false;
        }
        long j = qVar.h;
        if (j < qVar.i) {
            qVar.i = j;
        }
        this.a = j;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.c
    public final Continuation[] b(z8.a aVar) {
        long j = this.a;
        this.a = -1L;
        this.b = null;
        return ((q) aVar).r(j);
    }
}
