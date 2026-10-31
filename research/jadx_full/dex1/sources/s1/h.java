package s1;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.SwitchCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f5080b;
    public final /* synthetic */ SwitchCompat c;
    public final /* synthetic */ SwitchCompat d;
    public final /* synthetic */ SwitchCompat e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f5083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f5084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Spinner[] f5086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f5087l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(AlertDialog alertDialog, RadioGroup radioGroup, RadioGroup radioGroup2, RadioGroup radioGroup3, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4, SwitchCompat switchCompat5, k kVar, Spinner[] spinnerArr) {
        this.f5080b = kVar;
        this.c = switchCompat;
        this.d = switchCompat2;
        this.e = switchCompat3;
        this.f5081f = radioGroup;
        this.f5082g = radioGroup2;
        this.f5083h = switchCompat4;
        this.f5084i = switchCompat5;
        this.f5085j = radioGroup3;
        this.f5086k = spinnerArr;
        this.f5087l = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        k kVar = this.f5080b;
        r rVar = kVar.f5106b;
        rVar.f5196a.edit().putBoolean(r.f5189b, this.c.isChecked()).apply();
        boolean zIsChecked = this.d.isChecked();
        SharedPreferences sharedPreferences = rVar.f5196a;
        sharedPreferences.edit().putBoolean(r.f5192h, zIsChecked).apply();
        sharedPreferences.edit().putBoolean(r.f5193i, this.e.isChecked()).apply();
        RadioGroup radioGroup = this.f5081f;
        View viewFindViewById = radioGroup.findViewById(radioGroup.getCheckedRadioButtonId());
        Object tag = viewFindViewById == null ? null : viewFindViewById.getTag();
        sharedPreferences.edit().putString(r.f5194j, (tag instanceof q ? (q) tag : rVar.e()).name()).apply();
        RadioGroup radioGroup2 = this.f5082g;
        View viewFindViewById2 = radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId());
        Object tag2 = viewFindViewById2 == null ? null : viewFindViewById2.getTag();
        sharedPreferences.edit().putString(r.f5195k, (tag2 instanceof p ? (p) tag2 : rVar.d()).name()).apply();
        sharedPreferences.edit().putBoolean(r.f5191g, this.f5083h.isChecked()).apply();
        sharedPreferences.edit().putBoolean(r.f5190f, this.f5084i.isChecked()).apply();
        RadioGroup radioGroup3 = this.f5085j;
        View viewFindViewById3 = radioGroup3.findViewById(radioGroup3.getCheckedRadioButtonId());
        Object tag3 = viewFindViewById3 != null ? viewFindViewById3.getTag() : null;
        sharedPreferences.edit().putString(r.c, (tag3 instanceof o ? (o) tag3 : rVar.b()).name()).apply();
        for (int i9 = 0; i9 < 6; i9++) {
            Object selectedItem = this.f5086k[i9].getSelectedItem();
            if (selectedItem instanceof j0.e) {
                j0.f.f(k.f5105s + i9, (j0.e) selectedItem);
            }
        }
        kVar.n();
        if (rVar.f()) {
            kVar.r();
        } else {
            kVar.y();
        }
        v0 v0Var = kVar.f5118q;
        if (v0Var != null) {
            v0Var.run();
        }
        this.f5087l.dismiss();
    }
}
