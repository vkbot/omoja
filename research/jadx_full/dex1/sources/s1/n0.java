package s1;

import android.content.Context;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n0 extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.bumptech.glide.m f5162b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n0(Context context) {
        super(context);
        this.f5162b = new com.bumptech.glide.m(28, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bumptech.glide.m mVar = this.f5162b;
        removeCallbacks(mVar);
        mVar.run();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f5162b);
        super.onDetachedFromWindow();
    }
}
