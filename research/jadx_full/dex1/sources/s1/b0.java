package s1;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5065b;
    public final /* synthetic */ q0 c;
    public final /* synthetic */ AlertDialog d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b0(q0 q0Var, AlertDialog alertDialog, int i9) {
        this.f5065b = i9;
        this.c = q0Var;
        this.d = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5065b;
        AlertDialog alertDialog = this.d;
        q0 q0Var = this.c;
        switch (i9) {
            case 0:
                alertDialog.dismiss();
                y5.k.x(q0Var.getContext(), e0.m.h(new byte[]{95, 69, -23, 96, -117, -24, -6, -63, 94, 81, -23, 102, -117, -21, -6, -49, -81, 2, -122, 1, -37, -117, -109, -111, 52, 2, -121, 0, -19, -117, -98, -111, 50, 2, -127, 1, -44, -71, -85, -25}, new byte[]{-113, -46, 57, -48, 91, 91, 43, 65}));
                q0Var.f5176k.execute(new c0(q0Var, 6));
                break;
            case 1:
                alertDialog.dismiss();
                q0Var.t(true);
                break;
            case 2:
                alertDialog.dismiss();
                q0Var.d(m0.f5138b);
                break;
            case 3:
                alertDialog.dismiss();
                q0Var.d(m0.c);
                break;
            case 4:
                alertDialog.dismiss();
                q0Var.d(m0.d);
                break;
            case 5:
                alertDialog.dismiss();
                q0Var.d(m0.f5140g);
                break;
            case 6:
                alertDialog.dismiss();
                q0Var.d(m0.f5142i);
                break;
            case 7:
                alertDialog.dismiss();
                q0Var.d(m0.f5143j);
                break;
            case 8:
                alertDialog.dismiss();
                q0Var.d(m0.f5144k);
                break;
            case 9:
                alertDialog.dismiss();
                q0Var.d(m0.f5145l);
                break;
            default:
                alertDialog.dismiss();
                q0Var.t(false);
                break;
        }
    }
}
