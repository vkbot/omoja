package androidx.core.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.view.View;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1 implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener this$0;
    final /* synthetic */ WindowInsetsAnimationCompat val$anim;
    final /* synthetic */ int val$animationMask;
    final /* synthetic */ WindowInsetsCompat val$startingInsets;
    final /* synthetic */ WindowInsetsCompat val$targetInsets;
    final /* synthetic */ View val$v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1(WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i9, View view) {
        this.this$0 = windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
        this.val$anim = windowInsetsAnimationCompat;
        this.val$targetInsets = windowInsetsCompat;
        this.val$startingInsets = windowInsetsCompat2;
        this.val$animationMask = i9;
        this.val$v = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.val$anim.setFraction(valueAnimator.getAnimatedFraction());
        WindowInsetsAnimationCompat$Impl21.dispatchOnProgress(this.val$v, WindowInsetsAnimationCompat$Impl21.interpolateInsets(this.val$targetInsets, this.val$startingInsets, this.val$anim.getInterpolatedFraction(), this.val$animationMask), Collections.singletonList(this.val$anim));
    }
}
