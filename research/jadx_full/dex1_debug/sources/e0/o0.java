package e0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnShowListener;
import android.graphics.drawable.ColorDrawable;
import androidx.appcompat.app.AlertDialog;
import com.example.navistart.MainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o0 implements DialogInterface$OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f1914b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o0(MainActivity mainActivity, AlertDialog alertDialog) {
        this.f1913a = mainActivity;
        this.f1914b = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        String str = MainActivity.f688e1;
        AlertDialog alertDialog = this.f1914b;
        if (alertDialog.getWindow() == null) {
            return;
        }
        alertDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        alertDialog.getWindow().setLayout((int) (this.f1913a.getResources().getDisplayMetrics().widthPixels * 0.9f), -2);
    }
}
