package r0;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4933b;
    public final /* synthetic */ AlertDialog c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(AlertDialog alertDialog, int i9) {
        this.f4933b = i9;
        this.c = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f4933b) {
            case 0:
                this.c.dismiss();
                break;
            case 1:
                this.c.dismiss();
                break;
            case 2:
                this.c.dismiss();
                break;
            default:
                this.c.dismiss();
                break;
        }
    }
}
