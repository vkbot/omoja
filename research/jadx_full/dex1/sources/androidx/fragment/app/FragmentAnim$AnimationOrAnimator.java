package androidx.fragment.app;

import android.animation.Animator;
import android.view.animation.Animation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentAnim$AnimationOrAnimator {
    public final Animation animation;
    public final Animator animator;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentAnim$AnimationOrAnimator(Animation animation) {
        this.animation = animation;
        this.animator = null;
        if (animation != null) {
            return;
        }
        j1.i.l("Animation cannot be null");
        throw null;
    }

    public FragmentAnim$AnimationOrAnimator(Animator animator) {
        this.animation = null;
        this.animator = animator;
        if (animator != null) {
            return;
        }
        j1.i.l("Animator cannot be null");
        throw null;
    }
}
