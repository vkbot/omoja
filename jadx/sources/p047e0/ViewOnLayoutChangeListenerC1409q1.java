package p047e0;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.ModernMainActivity;
import com.google.android.material.carousel.CarouselLayoutManager;
import p062f5.RunnableC1556j;

/* JADX INFO: renamed from: e0.q1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLayoutChangeListenerC1409q1 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3377a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3378b;

    public /* synthetic */ ViewOnLayoutChangeListenerC1409q1(int i10, Object obj) {
        this.f3377a = i10;
        this.f3378b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = this.f3377a;
        Object obj = this.f3378b;
        switch (i18) {
            case 0:
                String str = ModernMainActivity.f1436B1;
                ((ModernMainActivity) obj).m1462R(i12 - i10, i13 - i11);
                break;
            case 1:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i12 - i10 != i16 - i14 || i13 - i11 != i17 - i15) {
                    view.post(new RunnableC1556j(6, carouselLayoutManager));
                }
                break;
            default:
                GridLayoutManager gridLayoutManager = (GridLayoutManager) obj;
                int iMax = Math.max(1, (int) ((i12 - i10) / (view.getResources().getDisplayMetrics().density * 220.0f)));
                if (iMax != gridLayoutManager.getSpanCount()) {
                    gridLayoutManager.setSpanCount(iMax);
                }
                break;
        }
    }
}
