package p132m0;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.example.navistart.R;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.io.File;
import p190s1.C3153k;
import p190s1.EnumC3165q;

/* JADX INFO: renamed from: m0.s2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2351s2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6347b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f6348c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f6349d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f6350e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f6351f;

    public /* synthetic */ RunnableC2351s2(int i10, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f6347b = i10;
        this.f6348c = obj;
        this.f6349d = obj2;
        this.f6350e = obj3;
        this.f6351f = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6347b) {
            case 0:
                C2276c3 c2276c3 = (C2276c3) this.f6348c;
                String str = (String) this.f6349d;
                File file = (File) this.f6350e;
                File file2 = (File) this.f6351f;
                c2276c3.m3663H(null, false);
                if (str != null || file == null) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_error, str));
                } else {
                    c2276c3.m3667v();
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_copy_done, file.getName()));
                    c2276c3.m3661D(file2);
                }
                break;
            case 1:
                C3153k c3153k = (C3153k) this.f6348c;
                RadioGroup radioGroup = (RadioGroup) this.f6349d;
                TextView textView = (TextView) this.f6350e;
                RadioGroup radioGroup2 = (RadioGroup) this.f6351f;
                View viewFindViewById = radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
                Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
                boolean z9 = (tag instanceof EnumC3165q ? (EnumC3165q) tag : c3153k.f9054b.m5082e()) == EnumC3165q.f9149c;
                textView.setAlpha(z9 ? 1.0f : 0.42f);
                radioGroup2.setAlpha(z9 ? 1.0f : 0.42f);
                for (int i10 = 0; i10 < radioGroup2.getChildCount(); i10++) {
                    radioGroup2.getChildAt(i10).setEnabled(z9);
                }
                break;
            default:
                ((WidgetBuilderFragment) this.f6348c).lambda$editor$21((MaterialSwitch) this.f6349d, (SeekBar) this.f6350e, (TextView) this.f6351f);
                break;
        }
    }
}
