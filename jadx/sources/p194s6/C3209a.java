package p194s6;

/* JADX INFO: renamed from: s6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3209a {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9376a;

    /* JADX INFO: renamed from: b */
    public final int f9377b;

    /* JADX INFO: renamed from: c */
    public final int f9378c;

    /* JADX INFO: renamed from: d */
    public final int f9379d;

    /* JADX INFO: renamed from: e */
    public final int f9380e;

    /* JADX INFO: renamed from: f */
    public int f9381f;

    public C3209a(int i10, int i11, int i12, int i13, int i14) {
        this.f9376a = i14;
        switch (i14) {
            case 1:
                this.f9381f = -1;
                this.f9377b = i10;
                this.f9378c = i11;
                this.f9379d = i12;
                this.f9380e = i13;
                break;
            default:
                this.f9377b = i10;
                this.f9378c = i13;
                this.f9379d = i11;
                this.f9380e = i12;
                this.f9381f = i11 + i12;
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public boolean m5141a(int i10) {
        if (i10 != -1) {
            return this.f9379d == (i10 % 3) * 3;
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public void m5142b() {
        this.f9381f = (this.f9379d / 3) + ((this.f9380e / 30) * 3);
    }

    public String toString() {
        switch (this.f9376a) {
            case 1:
                return this.f9381f + "|" + this.f9380e;
            default:
                return super.toString();
        }
    }
}
