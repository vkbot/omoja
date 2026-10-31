package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable2$AnimationCallback;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Animatable2Compat$AnimationCallback$1 extends Animatable2$AnimationCallback {
    final /* synthetic */ Animatable2Compat$AnimationCallback this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Animatable2Compat$AnimationCallback$1(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        this.this$0 = animatable2Compat$AnimationCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Animatable2$AnimationCallback
    public void onAnimationEnd(Drawable drawable) {
        this.this$0.onAnimationEnd(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Animatable2$AnimationCallback
    public void onAnimationStart(Drawable drawable) {
        this.this$0.onAnimationStart(drawable);
    }
}
