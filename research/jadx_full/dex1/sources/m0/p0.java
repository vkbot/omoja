package m0;

import android.R$string;
import android.app.AlertDialog$Builder;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s0 f3558b;
    public final /* synthetic */ Button c;
    public final /* synthetic */ LinearLayout d;
    public final /* synthetic */ p0.b e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ View f3559f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p0(s0 s0Var, Button button, LinearLayout linearLayout, p0.b bVar, View view) {
        this.f3558b = s0Var;
        this.c = button;
        this.d = linearLayout;
        this.e = bVar;
        this.f3559f = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        s0 s0Var = this.f3558b;
        new AlertDialog$Builder(s0Var.requireContext()).setTitle(2131952117).setMessage(s0Var.getString(2131952121, 5L)).setNegativeButton(R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(2131952111, new q0(s0Var, this.c, this.d, this.e, this.f3559f, 0)).show();
    }
}
