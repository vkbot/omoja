package p235x0;

import android.view.View;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;

/* JADX INFO: renamed from: x0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3551e implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10558b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ WidgetBuilderFragment f10559c;

    public /* synthetic */ ViewOnClickListenerC3551e(WidgetBuilderFragment widgetBuilderFragment, int i10) {
        this.f10558b = i10;
        this.f10559c = widgetBuilderFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f10558b) {
            case 0:
                this.f10559c.lambda$editor$25(view);
                break;
            case 1:
                this.f10559c.lambda$editor$26(view);
                break;
            case 2:
                this.f10559c.lambda$editor$28(view);
                break;
            case 3:
                this.f10559c.lambda$editor$10(view);
                break;
            case 4:
                this.f10559c.lambda$library$2(view);
                break;
            case 5:
                this.f10559c.lambda$library$3(view);
                break;
            case 6:
                this.f10559c.lambda$editor$9(view);
                break;
            default:
                this.f10559c.lambda$editor$24(view);
                break;
        }
    }
}
