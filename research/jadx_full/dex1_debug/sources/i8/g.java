package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends x7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2735b;
    public final Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(int i9, Object obj, Object obj2) {
        this.f2735b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.e
    public final void d(x7.f fVar) {
        switch (this.f2735b) {
            case 0:
                ((x7.l) this.c).a(new e(fVar, (b8.d) this.d, 1));
                break;
            default:
                x7.e[] eVarArr = (x7.e[]) this.c;
                int length = eVarArr.length;
                if (length == 1) {
                    eVarArr[0].c(new g8.c(fVar, new r5.c(21, this), 1));
                } else {
                    v vVar = new v(fVar, length, (p2.e) this.d);
                    fVar.b(vVar);
                    for (int i9 = 0; i9 < length; i9++) {
                        if (!(vVar.get() <= 0)) {
                            x7.e eVar = eVarArr[i9];
                            if (eVar == null) {
                                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                                if (vVar.getAndSet(0) > 0) {
                                    vVar.a(i9);
                                    vVar.f2747b.onError(nullPointerException);
                                } else {
                                    a.a.s(nullPointerException);
                                }
                            } else {
                                eVar.c(vVar.d[i9]);
                            }
                        }
                    }
                }
                break;
        }
    }
}
