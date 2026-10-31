package androidx.transition;

import android.graphics.Rect;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionSupport$5 extends Transition$EpicenterCallback {
    final /* synthetic */ FragmentTransitionSupport this$0;
    final /* synthetic */ Rect val$epicenter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTransitionSupport$5(FragmentTransitionSupport fragmentTransitionSupport, Rect rect) {
        this.this$0 = fragmentTransitionSupport;
        this.val$epicenter = rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$EpicenterCallback
    public Rect onGetEpicenter(@NonNull Transition transition) {
        Rect rect = this.val$epicenter;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.val$epicenter;
    }
}
