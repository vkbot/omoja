package androidx.constraintlayout.core.widgets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f127x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f128y;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean contains(int i9, int i10) {
        int i11;
        int i12 = this.f127x;
        return i9 >= i12 && i9 < i12 + this.width && i10 >= (i11 = this.f128y) && i10 < i11 + this.height;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCenterX() {
        return (this.f127x + this.width) / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCenterY() {
        return (this.f128y + this.height) / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void grow(int i9, int i10) {
        this.f127x -= i9;
        this.f128y -= i10;
        this.width = (i9 * 2) + this.width;
        this.height = (i10 * 2) + this.height;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean intersects(Rectangle rectangle) {
        int i9;
        int i10;
        int i11 = this.f127x;
        int i12 = rectangle.f127x;
        return i11 >= i12 && i11 < i12 + rectangle.width && (i9 = this.f128y) >= (i10 = rectangle.f128y) && i9 < i10 + rectangle.height;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(int i9, int i10, int i11, int i12) {
        this.f127x = i9;
        this.f128y = i10;
        this.width = i11;
        this.height = i12;
    }
}
