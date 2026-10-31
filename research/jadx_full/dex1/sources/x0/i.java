package x0;

import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5987b;
    public final /* synthetic */ WidgetBuilderFragment c;
    public final /* synthetic */ o d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(WidgetBuilderFragment widgetBuilderFragment, o oVar, int i9) {
        this.f5987b = i9;
        this.c = widgetBuilderFragment;
        this.d = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f5987b) {
            case 0:
                WidgetBuilderFragment.v(this.c, this.d, view);
                break;
            case 1:
                WidgetBuilderFragment.t(this.c, this.d, view);
                break;
            default:
                WidgetBuilderFragment.X(this.c, this.d, view);
                break;
        }
    }
}
