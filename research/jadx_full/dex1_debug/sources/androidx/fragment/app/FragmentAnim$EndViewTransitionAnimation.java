package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import androidx.annotation.NonNull;
import androidx.core.view.OneShotPreDrawListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentAnim$EndViewTransitionAnimation extends AnimationSet implements Runnable {
    private boolean mAnimating;
    private final View mChild;
    private boolean mEnded;
    private final ViewGroup mParent;
    private boolean mTransitionEnded;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentAnim$EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
        super(false);
        this.mAnimating = true;
        this.mParent = viewGroup;
        this.mChild = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public boolean getTransformation(long j9, @NonNull Transformation transformation) {
        this.mAnimating = true;
        if (this.mEnded) {
            return !this.mTransitionEnded;
        }
        if (!super.getTransformation(j9, transformation)) {
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        if (this.mEnded || !this.mAnimating) {
            this.mParent.endViewTransition(this.mChild);
            this.mTransitionEnded = true;
        } else {
            this.mAnimating = false;
            this.mParent.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j9, @NonNull Transformation transformation, float f8) {
        this.mAnimating = true;
        if (this.mEnded) {
            return !this.mTransitionEnded;
        }
        if (!super.getTransformation(j9, transformation, f8)) {
            this.mEnded = true;
            OneShotPreDrawListener.add(this.mParent, this);
        }
        return true;
    }
}
