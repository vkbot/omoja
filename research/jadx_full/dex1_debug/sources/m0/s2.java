package m0;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3586b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3587f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s2(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f3586b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f3587f = obj4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3586b) {
            case 0:
                c3 c3Var = (c3) this.c;
                String str = (String) this.d;
                File file = (File) this.e;
                File file2 = (File) this.f3587f;
                c3Var.H(null, false);
                if (str != null || file == null) {
                    c3Var.I(c3Var.getString(2131952694, str));
                } else {
                    c3Var.v();
                    c3Var.I(c3Var.getString(2131952693, file.getName()));
                    c3Var.D(file2);
                }
                break;
            case 1:
                s1.k kVar = (s1.k) this.c;
                RadioGroup radioGroup = (RadioGroup) this.d;
                TextView textView = (TextView) this.e;
                RadioGroup radioGroup2 = (RadioGroup) this.f3587f;
                View viewFindViewById = radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
                Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
                boolean z8 = (tag instanceof s1.q ? (s1.q) tag : kVar.f5106b.e()) == s1.q.c;
                textView.setAlpha(z8 ? 1.0f : 0.42f);
                radioGroup2.setAlpha(z8 ? 1.0f : 0.42f);
                for (int i9 = 0; i9 < radioGroup2.getChildCount(); i9++) {
                    radioGroup2.getChildAt(i9).setEnabled(z8);
                }
                break;
            default:
                WidgetBuilderFragment.Q((WidgetBuilderFragment) this.c, (MaterialSwitch) this.d, (SeekBar) this.e, (TextView) this.f3587f);
                break;
        }
    }
}
