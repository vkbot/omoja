package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$Range {
    int newListEnd;
    int newListStart;
    int oldListEnd;
    int oldListStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiffUtil$Range(int i9, int i10, int i11, int i12) {
        this.oldListStart = i9;
        this.oldListEnd = i10;
        this.newListStart = i11;
        this.newListEnd = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int newSize() {
        return this.newListEnd - this.newListStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int oldSize() {
        return this.oldListEnd - this.oldListStart;
    }

    public DiffUtil$Range() {
    }
}
