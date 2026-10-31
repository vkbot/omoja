package androidx.appcompat.widget;

import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ForwardingListener$DisallowIntercept implements Runnable {
    final /* synthetic */ ForwardingListener this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ForwardingListener$DisallowIntercept(ForwardingListener forwardingListener) {
        this.this$0 = forwardingListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        ViewParent parent = this.this$0.mSrc.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }
}
