package androidx.appcompat.app;

import androidx.appcompat.widget.ContentFrameLayout$OnAttachListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$5 implements ContentFrameLayout$OnAttachListener {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$5(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.ContentFrameLayout$OnAttachListener
    public void onDetachedFromWindow() {
        this.this$0.dismissPopups();
    }

    @Override // androidx.appcompat.widget.ContentFrameLayout$OnAttachListener
    public void onAttachedFromWindow() {
    }
}
