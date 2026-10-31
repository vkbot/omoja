package e0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.MainActivity;
import com.google.android.material.materialswitch.MaterialSwitch;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class w0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialSwitch f1982b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ w0(MaterialSwitch materialSwitch, int i9) {
        this.f1981a = i9;
        this.f1982b = materialSwitch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        int i9 = this.f1981a;
        MaterialSwitch materialSwitch = this.f1982b;
        switch (i9) {
            case 0:
                String str = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{100, ByteCompanionObject.MIN_VALUE, -120, 116, 22, -11, 34, -89, 100, -125, -74, 103, 23, -34, 58, -99, 117, -88, -69, 116, 22, -17, 46, -112, 114, -123}, new byte[]{23, -9, -41, 21, 99, -127, 77, -8}), z8);
                if (z8 && materialSwitch.isChecked()) {
                    materialSwitch.setChecked(false);
                    break;
                }
                break;
            default:
                String str2 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-35, 24, 28, -87, 91, -48, 70, -85, -35, 27, 34, -70, 90, -5, 75, -104, -49, 12, 40}, new byte[]{-82, 111, 67, -56, 46, -92, 41, -12}), z8);
                if (z8 && materialSwitch.isChecked()) {
                    materialSwitch.setChecked(false);
                    break;
                }
                break;
        }
    }
}
