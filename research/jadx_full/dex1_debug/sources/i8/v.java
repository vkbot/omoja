package i8;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends AtomicInteger implements z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.f f2747b;
    public final p2.e c;
    public final w[] d;
    public final Object[] e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(x7.f fVar, int i9, p2.e eVar) {
        super(i9);
        this.f2747b = fVar;
        this.c = eVar;
        w[] wVarArr = new w[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            wVarArr[i10] = new w(this, i10);
        }
        this.d = wVarArr;
        this.e = new Object[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        w[] wVarArr = this.d;
        int length = wVarArr.length;
        for (int i10 = 0; i10 < i9; i10++) {
            w wVar = wVarArr[i10];
            wVar.getClass();
            c8.a.a(wVar);
        }
        while (true) {
            i9++;
            if (i9 >= length) {
                return;
            }
            w wVar2 = wVarArr[i9];
            wVar2.getClass();
            c8.a.a(wVar2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (getAndSet(0) > 0) {
            for (w wVar : this.d) {
                wVar.getClass();
                c8.a.a(wVar);
            }
        }
    }
}
