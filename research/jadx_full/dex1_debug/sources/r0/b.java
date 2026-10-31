package r0;

import android.view.View;
import android.view.View$OnLayoutChangeListener;
import android.widget.GridLayout;
import android.widget.GridLayout$LayoutParams;
import androidx.appcompat.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements View$OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GridLayout f4929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ContextThemeWrapper f4930b;
    public final /* synthetic */ int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(GridLayout gridLayout, ContextThemeWrapper contextThemeWrapper, int i9) {
        this.f4929a = gridLayout;
        this.f4930b = contextThemeWrapper;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLayoutChangeListener
    public final void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17 = i11 - i9;
        if (i17 > 0) {
            int i18 = i15 - i13;
            GridLayout gridLayout = this.f4929a;
            if (i17 != i18 || gridLayout.getChildAt(0).getLayoutParams().width <= 0) {
                int i19 = i17 >= Math.round(this.f4930b.getResources().getDisplayMetrics().density * 640.0f) ? 2 : 1;
                gridLayout.setColumnCount(i19);
                for (int i20 = 0; i20 < gridLayout.getChildCount(); i20++) {
                    GridLayout$LayoutParams gridLayout$LayoutParams = new GridLayout$LayoutParams();
                    gridLayout$LayoutParams.rowSpec = GridLayout.spec(i20 / i19);
                    int i21 = i20 % i19;
                    gridLayout$LayoutParams.columnSpec = GridLayout.spec(i21);
                    int i22 = i19 - 1;
                    int i23 = this.c;
                    gridLayout$LayoutParams.width = (i17 - (i22 * i23)) / i19;
                    gridLayout$LayoutParams.height = -2;
                    gridLayout$LayoutParams.bottomMargin = i23;
                    if (i21 == i22) {
                        i23 = 0;
                    }
                    gridLayout$LayoutParams.setMarginEnd(i23);
                    gridLayout.getChildAt(i20).setLayoutParams(gridLayout$LayoutParams);
                }
            }
        }
    }
}
