package m0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import androidx.appcompat.app.AlertDialog;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d3 implements DialogInterface$OnDismissListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f3381b;
    public final /* synthetic */ AlertDialog c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d3(n3 n3Var, AlertDialog alertDialog) {
        this.f3381b = n3Var;
        this.c = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        n3 n3Var = this.f3381b;
        n3Var.f3548s++;
        if (n3Var.f3546p == this.c) {
            n3Var.f3546p = null;
        }
    }
}
