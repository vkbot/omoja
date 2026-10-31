package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition$EpicenterCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionCompat21$5 extends Transition$EpicenterCallback {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ Rect val$epicenter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTransitionCompat21$5(FragmentTransitionCompat21 fragmentTransitionCompat21, Rect rect) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$epicenter = rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        Rect rect = this.val$epicenter;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.val$epicenter;
    }
}
