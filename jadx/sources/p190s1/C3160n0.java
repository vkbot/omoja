package p190s1;

import android.content.Context;
import android.widget.TextView;
import com.bumptech.glide.RunnableC1054m;

/* JADX INFO: renamed from: s1.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3160n0 extends TextView {

    /* JADX INFO: renamed from: b */
    public final RunnableC1054m f9133b;

    public C3160n0(Context context) {
        super(context);
        this.f9133b = new RunnableC1054m(28, this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        RunnableC1054m runnableC1054m = this.f9133b;
        removeCallbacks(runnableC1054m);
        runnableC1054m.run();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f9133b);
        super.onDetachedFromWindow();
    }
}
