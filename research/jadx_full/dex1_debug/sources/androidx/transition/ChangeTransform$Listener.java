package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeTransform$Listener extends AnimatorListenerAdapter {
    private final Matrix mEndMatrix;
    private final boolean mHandleParentChange;
    private boolean mIsCanceled;
    private final ChangeTransform$PathAnimatorMatrix mPathAnimatorMatrix;
    private final Matrix mTempMatrix = new Matrix();
    private final ChangeTransform$Transforms mTransforms;
    private final boolean mUseOverlay;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeTransform$Listener(View view, ChangeTransform$Transforms changeTransform$Transforms, ChangeTransform$PathAnimatorMatrix changeTransform$PathAnimatorMatrix, Matrix matrix, boolean z8, boolean z9) {
        this.mHandleParentChange = z8;
        this.mUseOverlay = z9;
        this.mView = view;
        this.mTransforms = changeTransform$Transforms;
        this.mPathAnimatorMatrix = changeTransform$PathAnimatorMatrix;
        this.mEndMatrix = matrix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCurrentMatrix(Matrix matrix) {
        this.mTempMatrix.set(matrix);
        this.mView.setTag(R$id.transition_transform, this.mTempMatrix);
        this.mTransforms.restore(this.mView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mIsCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.mIsCanceled) {
            if (this.mHandleParentChange && this.mUseOverlay) {
                setCurrentMatrix(this.mEndMatrix);
            } else {
                this.mView.setTag(R$id.transition_transform, null);
                this.mView.setTag(R$id.parent_matrix, null);
            }
        }
        ViewUtils.setAnimationMatrix(this.mView, null);
        this.mTransforms.restore(this.mView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        setCurrentMatrix(this.mPathAnimatorMatrix.getMatrix());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        ChangeTransform.setIdentityTransforms(this.mView);
    }
}
