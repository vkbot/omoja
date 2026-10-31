package t1;

import android.content.DialogInterface;
import android.content.DialogInterface$OnShowListener;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatEditText;
import e0.n0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements DialogInterface$OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f5337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f5338b;
    public final /* synthetic */ ContextThemeWrapper c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(AlertDialog alertDialog, ContextThemeWrapper contextThemeWrapper, AppCompatEditText appCompatEditText) {
        this.f5337a = alertDialog;
        this.f5338b = appCompatEditText;
        this.c = contextThemeWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        AlertDialog alertDialog = this.f5337a;
        alertDialog.getButton(-1).setOnClickListener(new n0(alertDialog, this.c, this.f5338b));
    }
}
