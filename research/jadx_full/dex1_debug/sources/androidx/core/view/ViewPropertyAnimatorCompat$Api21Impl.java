package androidx.core.view;

import android.view.ViewPropertyAnimator;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class ViewPropertyAnimatorCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewPropertyAnimatorCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ViewPropertyAnimator translationZ(ViewPropertyAnimator viewPropertyAnimator, float f8) {
        return viewPropertyAnimator.translationZ(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ViewPropertyAnimator translationZBy(ViewPropertyAnimator viewPropertyAnimator, float f8) {
        return viewPropertyAnimator.translationZBy(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ViewPropertyAnimator z(ViewPropertyAnimator viewPropertyAnimator, float f8) {
        return viewPropertyAnimator.z(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static ViewPropertyAnimator zBy(ViewPropertyAnimator viewPropertyAnimator, float f8) {
        return viewPropertyAnimator.zBy(f8);
    }
}
