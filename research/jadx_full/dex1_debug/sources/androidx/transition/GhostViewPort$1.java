package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver$OnPreDrawListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GhostViewPort$1 implements ViewTreeObserver$OnPreDrawListener {
    final /* synthetic */ GhostViewPort this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GhostViewPort$1(GhostViewPort ghostViewPort) {
        this.this$0 = ghostViewPort;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public boolean onPreDraw() {
        View view;
        this.this$0.postInvalidateOnAnimation();
        GhostViewPort ghostViewPort = this.this$0;
        ViewGroup viewGroup = ghostViewPort.mStartParent;
        if (viewGroup == null || (view = ghostViewPort.mStartView) == null) {
            return true;
        }
        viewGroup.endViewTransition(view);
        this.this$0.mStartParent.postInvalidateOnAnimation();
        GhostViewPort ghostViewPort2 = this.this$0;
        ghostViewPort2.mStartParent = null;
        ghostViewPort2.mStartView = null;
        return true;
    }
}
