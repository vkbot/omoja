package p194s6;

import p120l.C2187d;

/* JADX INFO: renamed from: s6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3213e extends C2187d {

    /* JADX INFO: renamed from: e */
    public final boolean f9395e;

    public C3213e(C3211c c3211c, boolean z9) {
        super(c3211c);
        this.f9395e = z9;
    }

    /* JADX INFO: renamed from: S */
    public final C3209a m5148S() {
        C3209a[] c3209aArr = (C3209a[]) this.f5706d;
        C3210b c3210b = new C3210b();
        C3210b c3210b2 = new C3210b();
        C3210b c3210b3 = new C3210b();
        C3210b c3210b4 = new C3210b();
        for (C3209a c3209a : c3209aArr) {
            if (c3209a != null) {
                c3209a.m5142b();
                int i10 = c3209a.f9380e % 30;
                int i11 = c3209a.f9381f;
                if (!this.f9395e) {
                    i11 += 2;
                }
                int i12 = i11 % 3;
                if (i12 == 0) {
                    c3210b2.m5144b((i10 * 3) + 1);
                } else if (i12 == 1) {
                    c3210b4.m5144b(i10 / 3);
                    c3210b3.m5144b(i10 % 3);
                } else if (i12 == 2) {
                    c3210b.m5144b(i10 + 1);
                }
            }
        }
        if (c3210b.m5143a().length == 0 || c3210b2.m5143a().length == 0 || c3210b3.m5143a().length == 0 || c3210b4.m5143a().length == 0 || c3210b.m5143a()[0] <= 0 || c3210b2.m5143a()[0] + c3210b3.m5143a()[0] < 3 || c3210b2.m5143a()[0] + c3210b3.m5143a()[0] > 90) {
            return null;
        }
        C3209a c3209a2 = new C3209a(c3210b.m5143a()[0], c3210b2.m5143a()[0], c3210b3.m5143a()[0], c3210b4.m5143a()[0], 0);
        m5149T(c3209aArr, c3209a2);
        return c3209a2;
    }

    /* JADX INFO: renamed from: T */
    public final void m5149T(C3209a[] c3209aArr, C3209a c3209a) {
        for (int i10 = 0; i10 < c3209aArr.length; i10++) {
            C3209a c3209a2 = c3209aArr[i10];
            if (c3209a2 != null) {
                int i11 = c3209a2.f9380e % 30;
                int i12 = c3209a2.f9381f;
                if (i12 > c3209a.f9381f) {
                    c3209aArr[i10] = null;
                } else {
                    if (!this.f9395e) {
                        i12 += 2;
                    }
                    int i13 = i12 % 3;
                    if (i13 != 0) {
                        if (i13 != 1) {
                            if (i13 == 2 && i11 + 1 != c3209a.f9377b) {
                                c3209aArr[i10] = null;
                            }
                        } else if (i11 / 3 != c3209a.f9378c || i11 % 3 != c3209a.f9380e) {
                            c3209aArr[i10] = null;
                        }
                    } else if ((i11 * 3) + 1 != c3209a.f9379d) {
                        c3209aArr[i10] = null;
                    }
                }
            }
        }
    }

    @Override // p120l.C2187d
    public final String toString() {
        return "IsLeft: " + this.f9395e + '\n' + super.toString();
    }
}
