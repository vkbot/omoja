package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4875b;
    public final int c;
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(int i9, String str) {
        super(i9);
        this.f4875b = str;
        this.d = false;
        this.c = 0;
    }

    public h(int i9, String str, int i10) {
        super(i9);
        this.d = true;
        this.c = i10;
        this.f4875b = str;
    }
}
