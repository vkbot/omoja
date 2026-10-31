package s6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends l.d {
    public final boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(c cVar, boolean z8) {
        super(cVar);
        this.e = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a S() {
        a[] aVarArr = (a[]) this.d;
        b bVar = new b();
        b bVar2 = new b();
        b bVar3 = new b();
        b bVar4 = new b();
        for (a aVar : aVarArr) {
            if (aVar != null) {
                aVar.b();
                int i9 = aVar.e % 30;
                int i10 = aVar.f5302f;
                if (!this.e) {
                    i10 += 2;
                }
                int i11 = i10 % 3;
                if (i11 == 0) {
                    bVar2.b((i9 * 3) + 1);
                } else if (i11 == 1) {
                    bVar4.b(i9 / 3);
                    bVar3.b(i9 % 3);
                } else if (i11 == 2) {
                    bVar.b(i9 + 1);
                }
            }
        }
        if (bVar.a().length == 0 || bVar2.a().length == 0 || bVar3.a().length == 0 || bVar4.a().length == 0 || bVar.a()[0] <= 0 || bVar2.a()[0] + bVar3.a()[0] < 3 || bVar2.a()[0] + bVar3.a()[0] > 90) {
            return null;
        }
        a aVar2 = new a(bVar.a()[0], bVar2.a()[0], bVar3.a()[0], bVar4.a()[0], 0);
        T(aVarArr, aVar2);
        return aVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void T(a[] aVarArr, a aVar) {
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            a aVar2 = aVarArr[i9];
            if (aVar2 != null) {
                int i10 = aVar2.e % 30;
                int i11 = aVar2.f5302f;
                if (i11 > aVar.f5302f) {
                    aVarArr[i9] = null;
                } else {
                    if (!this.e) {
                        i11 += 2;
                    }
                    int i12 = i11 % 3;
                    if (i12 != 0) {
                        if (i12 != 1) {
                            if (i12 == 2 && i10 + 1 != aVar.f5301b) {
                                aVarArr[i9] = null;
                            }
                        } else if (i10 / 3 != aVar.c || i10 % 3 != aVar.e) {
                            aVarArr[i9] = null;
                        }
                    } else if ((i10 * 3) + 1 != aVar.d) {
                        aVarArr[i9] = null;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l.d
    public final String toString() {
        return "IsLeft: " + this.e + '\n' + super.toString();
    }
}
