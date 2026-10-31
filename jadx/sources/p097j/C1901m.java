package p097j;

/* JADX INFO: renamed from: j.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1901m {

    /* JADX INFO: renamed from: b */
    public static final C1901m f4970b = new C1901m(0);

    /* JADX INFO: renamed from: c */
    public static final C1901m f4971c = new C1901m(1);

    /* JADX INFO: renamed from: d */
    public static final C1901m f4972d = new C1901m(2);

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4973a;

    public /* synthetic */ C1901m(int i10) {
        this.f4973a = i10;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2960a(int i10) {
        switch (this.f4973a) {
            case 0:
                return false;
            case 1:
                return (i10 == 3 || i10 == 5) ? false : true;
            default:
                return i10 == 2;
        }
    }
}
