package p022b7;

/* JADX INFO: renamed from: b7.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0925u implements Comparable {

    /* JADX INFO: renamed from: b */
    public final int f777b;

    /* JADX INFO: renamed from: c */
    public final int f778c;

    public C0925u(int i10, int i11) {
        this.f777b = i10;
        this.f778c = i11;
    }

    /* JADX INFO: renamed from: a */
    public final C0925u m1062a(C0925u c0925u) {
        int i10 = c0925u.f778c;
        int i11 = this.f777b;
        int i12 = i11 * i10;
        int i13 = c0925u.f777b;
        int i14 = this.f778c;
        return i12 <= i13 * i14 ? new C0925u(i13, (i14 * i13) / i11) : new C0925u((i11 * i10) / i14, i10);
    }

    /* JADX INFO: renamed from: b */
    public final C0925u m1063b(C0925u c0925u) {
        int i10 = c0925u.f778c;
        int i11 = this.f777b;
        int i12 = i11 * i10;
        int i13 = c0925u.f777b;
        int i14 = this.f778c;
        return i12 >= i13 * i14 ? new C0925u(i13, (i14 * i13) / i11) : new C0925u((i11 * i10) / i14, i10);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C0925u c0925u = (C0925u) obj;
        int i10 = this.f778c * this.f777b;
        int i11 = c0925u.f778c * c0925u.f777b;
        if (i11 < i10) {
            return 1;
        }
        return i11 > i10 ? -1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0925u.class == obj.getClass()) {
            C0925u c0925u = (C0925u) obj;
            if (this.f777b == c0925u.f777b && this.f778c == c0925u.f778c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f777b * 31) + this.f778c;
    }

    public final String toString() {
        return this.f777b + "x" + this.f778c;
    }
}
