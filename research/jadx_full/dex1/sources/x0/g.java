package x0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WidgetBuilderFragment f5984b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(WidgetBuilderFragment widgetBuilderFragment, int i9) {
        this.f5983a = i9;
        this.f5984b = widgetBuilderFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f5983a) {
            case 0:
                WidgetBuilderFragment.T(this.f5984b, compoundButton, z8);
                break;
            case 1:
                WidgetBuilderFragment.E(this.f5984b, compoundButton, z8);
                break;
            default:
                WidgetBuilderFragment.x(this.f5984b, compoundButton, z8);
                break;
        }
    }
}
