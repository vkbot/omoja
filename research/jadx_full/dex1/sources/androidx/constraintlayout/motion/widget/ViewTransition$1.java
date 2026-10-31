package androidx.constraintlayout.motion.widget;

import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.Easing;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTransition$1 implements Interpolator {
    final /* synthetic */ ViewTransition this$0;
    final /* synthetic */ Easing val$easing;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ViewTransition$1(ViewTransition viewTransition, Easing easing) {
        this.this$0 = viewTransition;
        this.val$easing = easing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        return (float) this.val$easing.get(f8);
    }
}
