package x0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import m0.s2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WidgetBuilderFragment f5989b;
    public final /* synthetic */ s2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(WidgetBuilderFragment widgetBuilderFragment, s2 s2Var, int i9) {
        this.f5988a = i9;
        this.f5989b = widgetBuilderFragment;
        this.c = s2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f5988a) {
            case 0:
                WidgetBuilderFragment.P(this.f5989b, this.c, compoundButton, z8);
                break;
            default:
                WidgetBuilderFragment.H(this.f5989b, this.c, compoundButton, z8);
                break;
        }
    }
}
