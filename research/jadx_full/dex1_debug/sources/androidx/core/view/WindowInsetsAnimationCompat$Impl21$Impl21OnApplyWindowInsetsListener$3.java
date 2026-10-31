package androidx.core.view;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3 implements Runnable {
    final /* synthetic */ WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener this$0;
    final /* synthetic */ WindowInsetsAnimationCompat val$anim;
    final /* synthetic */ WindowInsetsAnimationCompat$BoundsCompat val$animationBounds;
    final /* synthetic */ ValueAnimator val$animator;
    final /* synthetic */ View val$v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3(WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener, View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat$BoundsCompat windowInsetsAnimationCompat$BoundsCompat, ValueAnimator valueAnimator) {
        this.this$0 = windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
        this.val$v = view;
        this.val$anim = windowInsetsAnimationCompat;
        this.val$animationBounds = windowInsetsAnimationCompat$BoundsCompat;
        this.val$animator = valueAnimator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        WindowInsetsAnimationCompat$Impl21.dispatchOnStart(this.val$v, this.val$anim, this.val$animationBounds);
        this.val$animator.start();
    }
}
