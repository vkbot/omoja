package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$Diagonal {
    public final int size;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f214x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f215y;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiffUtil$Diagonal(int i9, int i10, int i11) {
        this.f214x = i9;
        this.f215y = i10;
        this.size = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endX() {
        return this.f214x + this.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int endY() {
        return this.f215y + this.size;
    }
}
