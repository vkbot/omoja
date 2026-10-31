package s1;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface$OnShowListener;
import android.graphics.drawable.GradientDrawable;
import android.view.Window;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.widget.SwitchCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements DialogInterface$OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f5091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f5092b;
    public final /* synthetic */ SwitchCompat c;
    public final /* synthetic */ SwitchCompat d;
    public final /* synthetic */ SwitchCompat e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5094g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f5095h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f5096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ RadioGroup f5097j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Spinner[] f5098k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(AlertDialog alertDialog, RadioGroup radioGroup, RadioGroup radioGroup2, RadioGroup radioGroup3, SwitchCompat switchCompat, SwitchCompat switchCompat2, SwitchCompat switchCompat3, SwitchCompat switchCompat4, SwitchCompat switchCompat5, k kVar, Spinner[] spinnerArr) {
        this.f5091a = kVar;
        this.f5092b = alertDialog;
        this.c = switchCompat;
        this.d = switchCompat2;
        this.e = switchCompat3;
        this.f5093f = radioGroup;
        this.f5094g = radioGroup2;
        this.f5095h = switchCompat4;
        this.f5096i = switchCompat5;
        this.f5097j = radioGroup3;
        this.f5098k = spinnerArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        AlertDialog alertDialog = this.f5092b;
        Window window = alertDialog.getWindow();
        k kVar = this.f5091a;
        if (window != null) {
            Window window2 = alertDialog.getWindow();
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-16051943);
            gradientDrawable.setCornerRadius(kVar.h(20));
            window2.setBackgroundDrawable(gradientDrawable);
            alertDialog.getWindow().setLayout(Math.min(kVar.getResources().getDisplayMetrics().widthPixels - kVar.h(32), kVar.h(720)), -2);
        }
        alertDialog.getButton(-1).setTextColor(-11486750);
        alertDialog.getButton(-2).setTextColor(-6575430);
        alertDialog.getButton(-1).setOnClickListener(new h(alertDialog, this.f5093f, this.f5094g, this.f5097j, this.c, this.d, this.e, this.f5095h, this.f5096i, kVar, this.f5098k));
    }
}
