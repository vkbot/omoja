package y8;

import kotlin.Unit;
import v8.i0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class o implements i0 {
    public final q b;
    public final long c;
    public final Object d;
    public final v8.e e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(q qVar, long j, Object obj, v8.e eVar) {
        this.b = qVar;
        this.c = j;
        this.d = obj;
        this.e = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.i0
    public final void dispose() {
        q qVar = this.b;
        synchronized (qVar) {
            if (this.c < qVar.l()) {
                return;
            }
            Object[] objArr = qVar.g;
            objArr.getClass();
            long j = this.c;
            if (objArr[((int) j) & (objArr.length - 1)] != this) {
                return;
            }
            r.b(objArr, j, r.a);
            qVar.g();
            Unit unit = Unit.INSTANCE;
        }
    }
}
