package androidx.constraintlayout.core.widgets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* JADX INFO: renamed from: x */
    public int f313x;

    /* JADX INFO: renamed from: y */
    public int f314y;

    public boolean contains(int i10, int i11) {
        int i12;
        int i13 = this.f313x;
        return i10 >= i13 && i10 < i13 + this.width && i11 >= (i12 = this.f314y) && i11 < i12 + this.height;
    }

    public int getCenterX() {
        return (this.f313x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f314y + this.height) / 2;
    }

    public void grow(int i10, int i11) {
        this.f313x -= i10;
        this.f314y -= i11;
        this.width = (i10 * 2) + this.width;
        this.height = (i11 * 2) + this.height;
    }

    public boolean intersects(Rectangle rectangle) {
        int i10;
        int i11;
        int i12 = this.f313x;
        int i13 = rectangle.f313x;
        return i12 >= i13 && i12 < i13 + rectangle.width && (i10 = this.f314y) >= (i11 = rectangle.f314y) && i10 < i11 + rectangle.height;
    }

    public void setBounds(int i10, int i11, int i12, int i13) {
        this.f313x = i10;
        this.f314y = i11;
        this.width = i12;
        this.height = i13;
    }
}
