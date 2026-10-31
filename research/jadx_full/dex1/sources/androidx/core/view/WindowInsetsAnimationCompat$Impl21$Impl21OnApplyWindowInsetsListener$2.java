package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2 extends AnimatorListenerAdapter {
    final /* synthetic */ WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener this$0;
    final /* synthetic */ WindowInsetsAnimationCompat val$anim;
    final /* synthetic */ View val$v;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2(WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener, WindowInsetsAnimationCompat windowInsetsAnimationCompat, View view) {
        this.this$0 = windowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener;
        this.val$anim = windowInsetsAnimationCompat;
        this.val$v = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$anim.setFraction(1.0f);
        WindowInsetsAnimationCompat$Impl21.dispatchOnEnd(this.val$v, this.val$anim);
    }
}
