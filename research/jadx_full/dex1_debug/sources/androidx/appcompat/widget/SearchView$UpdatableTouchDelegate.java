package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$UpdatableTouchDelegate extends TouchDelegate {
    private final Rect mActualBounds;
    private boolean mDelegateTargeted;
    private final View mDelegateView;
    private final int mSlop;
    private final Rect mSlopBounds;
    private final Rect mTargetBounds;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
        super(rect, view);
        this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.mTargetBounds = new Rect();
        this.mSlopBounds = new Rect();
        this.mActualBounds = new Rect();
        setBounds(rect, rect2);
        this.mDelegateView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x003e  */
    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        boolean z9;
        int x8 = (int) motionEvent.getX();
        int y8 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z9 = this.mDelegateTargeted;
                if (z9 && !this.mSlopBounds.contains(x8, y8)) {
                    z10 = z9;
                    z8 = false;
                }
            } else if (action != 3) {
                z8 = true;
                z10 = false;
            } else {
                z9 = this.mDelegateTargeted;
                this.mDelegateTargeted = false;
            }
            z10 = z9;
            z8 = true;
        } else if (this.mTargetBounds.contains(x8, y8)) {
            this.mDelegateTargeted = true;
            z8 = true;
        } else {
            z8 = true;
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        if (!z8 || this.mActualBounds.contains(x8, y8)) {
            Rect rect = this.mActualBounds;
            motionEvent.setLocation(x8 - rect.left, y8 - rect.top);
        } else {
            motionEvent.setLocation(this.mDelegateView.getWidth() / 2, this.mDelegateView.getHeight() / 2);
        }
        return this.mDelegateView.dispatchTouchEvent(motionEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(Rect rect, Rect rect2) {
        this.mTargetBounds.set(rect);
        this.mSlopBounds.set(rect);
        Rect rect3 = this.mSlopBounds;
        int i9 = this.mSlop;
        rect3.inset(-i9, -i9);
        this.mActualBounds.set(rect2);
    }
}
