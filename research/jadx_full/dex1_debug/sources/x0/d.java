package x0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.google.android.material.materialswitch.MaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WidgetBuilderFragment f5977b;
    public final /* synthetic */ m c;
    public final /* synthetic */ EditText d;
    public final /* synthetic */ MaterialSwitch e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Spinner f5978f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Spinner f5979g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f5980h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(WidgetBuilderFragment widgetBuilderFragment, m mVar, EditText editText, MaterialSwitch materialSwitch, Spinner spinner, Spinner spinner2, boolean z8) {
        this.f5977b = widgetBuilderFragment;
        this.c = mVar;
        this.d = editText;
        this.e = materialSwitch;
        this.f5978f = spinner;
        this.f5979g = spinner2;
        this.f5980h = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        WidgetBuilderFragment.y(this.f5977b, this.c, this.d, this.e, this.f5978f, this.f5979g, this.f5980h, dialogInterface, i9);
    }
}
