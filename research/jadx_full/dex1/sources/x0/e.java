package x0;

import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5981b;
    public final /* synthetic */ WidgetBuilderFragment c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(WidgetBuilderFragment widgetBuilderFragment, int i9) {
        this.f5981b = i9;
        this.c = widgetBuilderFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f5981b) {
            case 0:
                WidgetBuilderFragment.Y(this.c, view);
                break;
            case 1:
                WidgetBuilderFragment.a0(this.c, view);
                break;
            case 2:
                WidgetBuilderFragment.A(this.c, view);
                break;
            case 3:
                WidgetBuilderFragment.R(this.c, view);
                break;
            case 4:
                WidgetBuilderFragment.W(this.c, view);
                break;
            case 5:
                WidgetBuilderFragment.F(this.c, view);
                break;
            case 6:
                WidgetBuilderFragment.w(this.c, view);
                break;
            default:
                WidgetBuilderFragment.D(this.c, view);
                break;
        }
    }
}
