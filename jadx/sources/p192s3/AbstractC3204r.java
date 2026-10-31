package p192s3;

import android.widget.ImageButton;

/* JADX INFO: renamed from: s3.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3204r extends ImageButton {

    /* JADX INFO: renamed from: b */
    public int f9375b;

    /* JADX INFO: renamed from: a */
    public final void m5140a(int i10, boolean z9) {
        super.setVisibility(i10);
        if (z9) {
            this.f9375b = i10;
        }
    }

    public final int getUserSetVisibility() {
        return this.f9375b;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        m5140a(i10, true);
    }
}
