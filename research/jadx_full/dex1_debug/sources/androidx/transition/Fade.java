package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fade extends Visibility {
    public static final int IN = 1;
    private static final String LOG_TAG = "Fade";
    public static final int OUT = 2;
    private static final String PROPNAME_TRANSITION_ALPHA = "android:fade:transitionAlpha";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fade(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.FADE);
        setMode(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, getMode()));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Animator createAnimation(View view, float f8, float f9) {
        if (f8 == f9) {
            return null;
        }
        ViewUtils.setTransitionAlpha(view, f8);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, ViewUtils.TRANSITION_ALPHA, f9);
        Fade$FadeAnimatorListener fade$FadeAnimatorListener = new Fade$FadeAnimatorListener(view);
        objectAnimatorOfFloat.addListener(fade$FadeAnimatorListener);
        getRootTransition().addListener(fade$FadeAnimatorListener);
        return objectAnimatorOfFloat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float getStartAlpha(TransitionValues transitionValues, float f8) {
        Float f9;
        return (transitionValues == null || (f9 = (Float) transitionValues.values.get(PROPNAME_TRANSITION_ALPHA)) == null) ? f8 : f9.floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        Float fValueOf = (Float) transitionValues.view.getTag(R$id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = transitionValues.view.getVisibility() == 0 ? Float.valueOf(ViewUtils.getTransitionAlpha(transitionValues.view)) : Float.valueOf(0.0f);
        }
        transitionValues.values.put(PROPNAME_TRANSITION_ALPHA, fValueOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ViewUtils.saveNonTransitionAlpha(view);
        return createAnimation(view, getStartAlpha(transitionValues, 0.0f), 1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Visibility
    @Nullable
    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ViewUtils.saveNonTransitionAlpha(view);
        Animator animatorCreateAnimation = createAnimation(view, getStartAlpha(transitionValues, 1.0f), 0.0f);
        if (animatorCreateAnimation == null) {
            ViewUtils.setTransitionAlpha(view, getStartAlpha(transitionValues2, 1.0f));
        }
        return animatorCreateAnimation;
    }

    public Fade() {
    }

    public Fade(int i9) {
        setMode(i9);
    }
}
