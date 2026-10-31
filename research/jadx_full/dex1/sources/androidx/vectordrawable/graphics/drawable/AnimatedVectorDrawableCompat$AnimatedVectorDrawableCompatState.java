package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.drawable.Drawable$ConstantState;
import androidx.collection.ArrayMap;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState extends Drawable$ConstantState {
    AnimatorSet mAnimatorSet;
    ArrayList<Animator> mAnimators;
    int mChangingConfigurations;
    ArrayMap<Animator, String> mTargetNameMap;
    VectorDrawableCompat mVectorDrawable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, Drawable$Callback drawable$Callback, Resources resources) {
        if (animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState != null) {
            this.mChangingConfigurations = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mChangingConfigurations;
            VectorDrawableCompat vectorDrawableCompat = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable;
            if (vectorDrawableCompat != null) {
                Drawable$ConstantState constantState = vectorDrawableCompat.getConstantState();
                if (resources != null) {
                    this.mVectorDrawable = (VectorDrawableCompat) constantState.newDrawable(resources);
                } else {
                    this.mVectorDrawable = (VectorDrawableCompat) constantState.newDrawable();
                }
                VectorDrawableCompat vectorDrawableCompat2 = (VectorDrawableCompat) this.mVectorDrawable.mutate();
                this.mVectorDrawable = vectorDrawableCompat2;
                vectorDrawableCompat2.setCallback(drawable$Callback);
                this.mVectorDrawable.setBounds(animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable.getBounds());
                this.mVectorDrawable.setAllowCaching(false);
            }
            ArrayList<Animator> arrayList = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators;
            if (arrayList != null) {
                int size = arrayList.size();
                this.mAnimators = new ArrayList<>(size);
                this.mTargetNameMap = new ArrayMap<>(size);
                for (int i9 = 0; i9 < size; i9++) {
                    Animator animator = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators.get(i9);
                    Animator animatorClone = animator.clone();
                    String str = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mTargetNameMap.get(animator);
                    animatorClone.setTarget(this.mVectorDrawable.getTargetByName(str));
                    this.mAnimators.add(animatorClone);
                    this.mTargetNameMap.put(animatorClone, str);
                }
                setupAnimatorSet();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable() {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupAnimatorSet() {
        if (this.mAnimatorSet == null) {
            this.mAnimatorSet = new AnimatorSet();
        }
        this.mAnimatorSet.playTogether(this.mAnimators);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable(Resources resources) {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }
}
