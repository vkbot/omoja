package androidx.fragment.app;

import android.R$attr;
import android.R$style;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources$NotFoundException;
import android.content.res.TypedArray;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.fragment.R$animator;
import androidx.fragment.R$id;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class FragmentAnim {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FragmentAnim() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnimRes
    private static int getNextAnim(Fragment fragment, boolean z8, boolean z9) {
        if (z9) {
            return z8 ? fragment.getPopEnterAnim() : fragment.getPopExitAnim();
        }
        return z8 ? fragment.getEnterAnim() : fragment.getExitAnim();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x0071 A[Catch: RuntimeException -> 0x0077, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0077, blocks: (B:32:0x006b, B:34:0x0071), top: B:45:0x006b }] */
    public static FragmentAnim$AnimationOrAnimator loadAnimation(@NonNull Context context, @NonNull Fragment fragment, boolean z8, boolean z9) {
        Animator animatorLoadAnimator;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = getNextAnim(fragment, z8, z9);
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(R$id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R$id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z8, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new FragmentAnim$AnimationOrAnimator(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z8, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new FragmentAnim$AnimationOrAnimator(animatorOnCreateAnimator);
        }
        if (nextAnim == 0 && nextTransition != 0) {
            nextAnim = transitToAnimResourceId(context, nextTransition, z8);
        }
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                    if (animationLoadAnimation != null) {
                        return new FragmentAnim$AnimationOrAnimator(animationLoadAnimation);
                    }
                } catch (Resources$NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                    try {
                        animatorLoadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                        if (animatorLoadAnimator != null) {
                            return new FragmentAnim$AnimationOrAnimator(animatorLoadAnimator);
                        }
                    } catch (RuntimeException e6) {
                        if (zEquals) {
                            throw e6;
                        }
                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                        if (animationLoadAnimation2 != null) {
                            return new FragmentAnim$AnimationOrAnimator(animationLoadAnimation2);
                        }
                    }
                }
            } else {
                animatorLoadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                if (animatorLoadAnimator != null) {
                    return new FragmentAnim$AnimationOrAnimator(animatorLoadAnimator);
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnimRes
    private static int toActivityTransitResId(@NonNull Context context, int i9) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R$style.Animation.Activity, new int[]{i9});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnimRes
    private static int transitToAnimResourceId(@NonNull Context context, int i9, boolean z8) {
        if (i9 == 4097) {
            return z8 ? R$animator.fragment_open_enter : R$animator.fragment_open_exit;
        }
        if (i9 == 8194) {
            return z8 ? R$animator.fragment_close_enter : R$animator.fragment_close_exit;
        }
        if (i9 == 8197) {
            return z8 ? toActivityTransitResId(context, R$attr.activityCloseEnterAnimation) : toActivityTransitResId(context, R$attr.activityCloseExitAnimation);
        }
        if (i9 == 4099) {
            return z8 ? R$animator.fragment_fade_enter : R$animator.fragment_fade_exit;
        }
        if (i9 != 4100) {
            return -1;
        }
        return z8 ? toActivityTransitResId(context, R$attr.activityOpenEnterAnimation) : toActivityTransitResId(context, R$attr.activityOpenExitAnimation);
    }
}
