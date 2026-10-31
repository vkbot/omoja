package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class TranslationAnimationCreator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TranslationAnimationCreator() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static Animator createAnimation(@NonNull View view, @NonNull TransitionValues transitionValues, int i9, int i10, float f8, float f9, float f10, float f11, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R$id.transition_position);
        if (iArr != null) {
            f8 = (iArr[0] - i9) + translationX;
            f9 = (iArr[1] - i10) + translationY;
        }
        view.setTranslationX(f8);
        view.setTranslationY(f9);
        if (f8 == f10 && f9 == f11) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f8, f10), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f9, f11));
        TranslationAnimationCreator$TransitionPositionListener translationAnimationCreator$TransitionPositionListener = new TranslationAnimationCreator$TransitionPositionListener(view, transitionValues.view, translationX, translationY);
        transition.addListener(translationAnimationCreator$TransitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.addListener(translationAnimationCreator$TransitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }
}
