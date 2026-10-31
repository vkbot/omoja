package s6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5301b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5302f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9, int i10, int i11, int i12, int i13) {
        this.f5300a = i13;
        switch (i13) {
            case 1:
                this.f5302f = -1;
                this.f5301b = i9;
                this.c = i10;
                this.d = i11;
                this.e = i12;
                break;
            default:
                this.f5301b = i9;
                this.c = i12;
                this.d = i10;
                this.e = i11;
                this.f5302f = i10 + i11;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean a(int i9) {
        if (i9 != -1) {
            return this.d == (i9 % 3) * 3;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b() {
        this.f5302f = (this.d / 3) + ((this.e / 30) * 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f5300a) {
            case 1:
                return this.f5302f + "|" + this.e;
            default:
                return super.toString();
        }
    }
}
