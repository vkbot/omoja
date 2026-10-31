package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeBounds$ClipListener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    private final int mEndBottom;
    private final Rect mEndClip;
    private final boolean mEndClipIsNull;
    private final int mEndLeft;
    private final int mEndRight;
    private final int mEndTop;
    private boolean mIsCanceled;
    private final int mStartBottom;
    private final Rect mStartClip;
    private final boolean mStartClipIsNull;
    private final int mStartLeft;
    private final int mStartRight;
    private final int mStartTop;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeBounds$ClipListener(View view, Rect rect, boolean z8, Rect rect2, boolean z9, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.mView = view;
        this.mStartClip = rect;
        this.mStartClipIsNull = z8;
        this.mEndClip = rect2;
        this.mEndClipIsNull = z9;
        this.mStartLeft = i9;
        this.mStartTop = i10;
        this.mStartRight = i11;
        this.mStartBottom = i12;
        this.mEndLeft = i13;
        this.mEndTop = i14;
        this.mEndRight = i15;
        this.mEndBottom = i16;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator, boolean z8) {
        if (this.mIsCanceled) {
            return;
        }
        Rect rect = null;
        if (z8) {
            if (!this.mStartClipIsNull) {
                rect = this.mStartClip;
            }
        } else if (!this.mEndClipIsNull) {
            rect = this.mEndClip;
        }
        this.mView.setClipBounds(rect);
        View view = this.mView;
        if (z8) {
            ViewUtils.setLeftTopRightBottom(view, this.mStartLeft, this.mStartTop, this.mStartRight, this.mStartBottom);
        } else {
            ViewUtils.setLeftTopRightBottom(view, this.mEndLeft, this.mEndTop, this.mEndRight, this.mEndBottom);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator, boolean z8) {
        int iMax = Math.max(this.mStartRight - this.mStartLeft, this.mEndRight - this.mEndLeft);
        int iMax2 = Math.max(this.mStartBottom - this.mStartTop, this.mEndBottom - this.mEndTop);
        int i9 = z8 ? this.mEndLeft : this.mStartLeft;
        int i10 = z8 ? this.mEndTop : this.mStartTop;
        ViewUtils.setLeftTopRightBottom(this.mView, i9, i10, iMax + i9, iMax2 + i10);
        this.mView.setClipBounds(z8 ? this.mEndClip : this.mStartClip);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
        this.mIsCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        this.mView.setTag(R$id.transition_clip, this.mView.getClipBounds());
        this.mView.setClipBounds(this.mEndClipIsNull ? null : this.mEndClip);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        Rect rect = (Rect) this.mView.getTag(R$id.transition_clip);
        this.mView.setTag(R$id.transition_clip, null);
        this.mView.setClipBounds(rect);
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        onAnimationStart(animator, false);
    }
}
