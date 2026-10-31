package p067g0;

import android.widget.LinearLayout;
import p016b1.C0872m;

/* JADX INFO: renamed from: g0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1600b implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4016b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0872m f4017c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1603e f4018d;

    public /* synthetic */ RunnableC1600b(C0872m c0872m, C1603e c1603e, int i10) {
        this.f4016b = i10;
        this.f4017c = c0872m;
        this.f4018d = c1603e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4016b) {
            case 0:
                C0872m c0872m = this.f4017c;
                c0872m.getClass();
                C1603e c1603e = this.f4018d;
                c1603e.post(new RunnableC1601c(c1603e, new RunnableC1600b(c0872m, c1603e, 1), 0));
                break;
            default:
                C0872m c0872m2 = this.f4017c;
                c0872m2.getClass();
                C1603e c1603e2 = this.f4018d;
                c1603e2.setOnClickListener(null);
                LinearLayout linearLayout = (LinearLayout) c0872m2.f602d;
                linearLayout.removeView(c1603e2);
                linearLayout.getChildCount();
                break;
        }
    }
}
