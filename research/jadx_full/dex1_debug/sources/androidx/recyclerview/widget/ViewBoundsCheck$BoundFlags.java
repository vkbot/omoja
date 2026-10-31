package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewBoundsCheck$BoundFlags {
    int mBoundFlags = 0;
    int mChildEnd;
    int mChildStart;
    int mRvEnd;
    int mRvStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFlags(int i9) {
        this.mBoundFlags = i9 | this.mBoundFlags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean boundsMatch() {
        int i9 = this.mBoundFlags;
        if ((i9 & 7) != 0 && (i9 & compare(this.mChildStart, this.mRvStart)) == 0) {
            return false;
        }
        int i10 = this.mBoundFlags;
        if ((i10 & 112) != 0 && (i10 & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
            return false;
        }
        int i11 = this.mBoundFlags;
        if ((i11 & 1792) != 0 && (i11 & (compare(this.mChildEnd, this.mRvStart) << 8)) == 0) {
            return false;
        }
        int i12 = this.mBoundFlags;
        return (i12 & 28672) == 0 || (i12 & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int compare(int i9, int i10) {
        if (i9 > i10) {
            return 1;
        }
        return i9 == i10 ? 2 : 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetFlags() {
        this.mBoundFlags = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(int i9, int i10, int i11, int i12) {
        this.mRvStart = i9;
        this.mRvEnd = i10;
        this.mChildStart = i11;
        this.mChildEnd = i12;
    }
}
