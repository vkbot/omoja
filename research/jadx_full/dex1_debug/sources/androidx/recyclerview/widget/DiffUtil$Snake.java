package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$Snake {
    public int endX;
    public int endY;
    public boolean reverse;
    public int startX;
    public int startY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int diagonalSize() {
        return Math.min(this.endX - this.startX, this.endY - this.startY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasAdditionOrRemoval() {
        return this.endY - this.startY != this.endX - this.startX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAddition() {
        return this.endY - this.startY > this.endX - this.startX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public DiffUtil$Diagonal toDiagonal() {
        if (!hasAdditionOrRemoval()) {
            int i9 = this.startX;
            return new DiffUtil$Diagonal(i9, this.startY, this.endX - i9);
        }
        if (this.reverse) {
            return new DiffUtil$Diagonal(this.startX, this.startY, diagonalSize());
        }
        boolean zIsAddition = isAddition();
        int i10 = this.startX;
        return zIsAddition ? new DiffUtil$Diagonal(i10, this.startY + 1, diagonalSize()) : new DiffUtil$Diagonal(i10 + 1, this.startY, diagonalSize());
    }
}
