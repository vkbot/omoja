package androidx.transition;

import android.graphics.PointF;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeBounds$ViewBounds {
    private int mBottom;
    private int mBottomRightCalls;
    private int mLeft;
    private int mRight;
    private int mTop;
    private int mTopLeftCalls;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeBounds$ViewBounds(View view) {
        this.mView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setLeftTopRightBottom() {
        ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
        this.mTopLeftCalls = 0;
        this.mBottomRightCalls = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBottomRight(PointF pointF) {
        this.mRight = Math.round(pointF.x);
        this.mBottom = Math.round(pointF.y);
        int i9 = this.mBottomRightCalls + 1;
        this.mBottomRightCalls = i9;
        if (this.mTopLeftCalls == i9) {
            setLeftTopRightBottom();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTopLeft(PointF pointF) {
        this.mLeft = Math.round(pointF.x);
        this.mTop = Math.round(pointF.y);
        int i9 = this.mTopLeftCalls + 1;
        this.mTopLeftCalls = i9;
        if (i9 == this.mBottomRightCalls) {
            setLeftTopRightBottom();
        }
    }
}
