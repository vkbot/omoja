package m0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExlantixTelemetryFragment f3420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3421b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f0(ExlantixTelemetryFragment exlantixTelemetryFragment, int i9) {
        this.f3420a = exlantixTelemetryFragment;
        this.f3421b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        ExlantixTelemetryFragment.t(this.f3420a, this.f3421b, compoundButton, z8);
    }
}
