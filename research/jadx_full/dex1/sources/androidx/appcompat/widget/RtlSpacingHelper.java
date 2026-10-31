package androidx.appcompat.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class RtlSpacingHelper {
    public static final int UNDEFINED = Integer.MIN_VALUE;
    private int mLeft = 0;
    private int mRight = 0;
    private int mStart = Integer.MIN_VALUE;
    private int mEnd = Integer.MIN_VALUE;
    private int mExplicitLeft = 0;
    private int mExplicitRight = 0;
    private boolean mIsRtl = false;
    private boolean mIsRelative = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEnd() {
        return this.mIsRtl ? this.mLeft : this.mRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLeft() {
        return this.mLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRight() {
        return this.mRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStart() {
        return this.mIsRtl ? this.mRight : this.mLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAbsolute(int i9, int i10) {
        this.mIsRelative = false;
        if (i9 != Integer.MIN_VALUE) {
            this.mExplicitLeft = i9;
            this.mLeft = i9;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.mExplicitRight = i10;
            this.mRight = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDirection(boolean z8) {
        if (z8 == this.mIsRtl) {
            return;
        }
        this.mIsRtl = z8;
        if (!this.mIsRelative) {
            this.mLeft = this.mExplicitLeft;
            this.mRight = this.mExplicitRight;
            return;
        }
        if (z8) {
            int i9 = this.mEnd;
            if (i9 == Integer.MIN_VALUE) {
                i9 = this.mExplicitLeft;
            }
            this.mLeft = i9;
            int i10 = this.mStart;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.mExplicitRight;
            }
            this.mRight = i10;
            return;
        }
        int i11 = this.mStart;
        if (i11 == Integer.MIN_VALUE) {
            i11 = this.mExplicitLeft;
        }
        this.mLeft = i11;
        int i12 = this.mEnd;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.mExplicitRight;
        }
        this.mRight = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRelative(int i9, int i10) {
        this.mStart = i9;
        this.mEnd = i10;
        this.mIsRelative = true;
        if (this.mIsRtl) {
            if (i10 != Integer.MIN_VALUE) {
                this.mLeft = i10;
            }
            if (i9 != Integer.MIN_VALUE) {
                this.mRight = i9;
                return;
            }
            return;
        }
        if (i9 != Integer.MIN_VALUE) {
            this.mLeft = i9;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.mRight = i10;
        }
    }
}
