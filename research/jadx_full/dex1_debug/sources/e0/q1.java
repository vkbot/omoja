package e0;

import android.view.View;
import android.view.View$OnLayoutChangeListener;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.navistart.ModernMainActivity;
import com.google.android.material.carousel.CarouselLayoutManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q1 implements View$OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1930b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q1(int i9, Object obj) {
        this.f1929a = i9;
        this.f1930b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLayoutChangeListener
    public final void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17 = this.f1929a;
        Object obj = this.f1930b;
        switch (i17) {
            case 0:
                String str = ModernMainActivity.B1;
                ((ModernMainActivity) obj).R(i11 - i9, i12 - i10);
                break;
            case 1:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i11 - i9 != i15 - i13 || i12 - i10 != i16 - i14) {
                    view.post(new f5.j(6, carouselLayoutManager));
                }
                break;
            default:
                GridLayoutManager gridLayoutManager = (GridLayoutManager) obj;
                int iMax = Math.max(1, (int) ((i11 - i9) / (view.getResources().getDisplayMetrics().density * 220.0f)));
                if (iMax != gridLayoutManager.getSpanCount()) {
                    gridLayoutManager.setSpanCount(iMax);
                }
                break;
        }
    }
}
