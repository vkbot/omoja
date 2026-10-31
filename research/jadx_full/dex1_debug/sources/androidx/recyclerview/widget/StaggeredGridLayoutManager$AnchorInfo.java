package androidx.recyclerview.widget;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StaggeredGridLayoutManager$AnchorInfo {
    boolean mInvalidateOffsets;
    boolean mLayoutFromEnd;
    int mOffset;
    int mPosition;
    int[] mSpanReferenceLines;
    boolean mValid;
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager$AnchorInfo(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.this$0 = staggeredGridLayoutManager;
        reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assignCoordinateFromPadding(int i9) {
        boolean z8 = this.mLayoutFromEnd;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.this$0;
        if (z8) {
            this.mOffset = staggeredGridLayoutManager.mPrimaryOrientation.getEndAfterPadding() - i9;
        } else {
            this.mOffset = staggeredGridLayoutManager.mPrimaryOrientation.getStartAfterPadding() + i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mPosition = -1;
        this.mOffset = Integer.MIN_VALUE;
        this.mLayoutFromEnd = false;
        this.mInvalidateOffsets = false;
        this.mValid = false;
        int[] iArr = this.mSpanReferenceLines;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void saveSpanReferenceLines(StaggeredGridLayoutManager$Span[] staggeredGridLayoutManager$SpanArr) {
        int length = staggeredGridLayoutManager$SpanArr.length;
        int[] iArr = this.mSpanReferenceLines;
        if (iArr == null || iArr.length < length) {
            this.mSpanReferenceLines = new int[this.this$0.mSpans.length];
        }
        for (int i9 = 0; i9 < length; i9++) {
            this.mSpanReferenceLines[i9] = staggeredGridLayoutManager$SpanArr[i9].getStartLine(Integer.MIN_VALUE);
        }
    }

    public void assignCoordinateFromPadding() {
        int startAfterPadding;
        boolean z8 = this.mLayoutFromEnd;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.this$0;
        if (z8) {
            startAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getEndAfterPadding();
        } else {
            startAfterPadding = staggeredGridLayoutManager.mPrimaryOrientation.getStartAfterPadding();
        }
        this.mOffset = startAfterPadding;
    }
}
