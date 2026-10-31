package p180r0;

import android.app.AlertDialog;
import android.view.View;

/* JADX INFO: renamed from: r0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC3091d implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8784b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AlertDialog f8785c;

    public /* synthetic */ ViewOnClickListenerC3091d(AlertDialog alertDialog, int i10) {
        this.f8784b = i10;
        this.f8785c = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f8784b) {
            case 0:
                this.f8785c.dismiss();
                break;
            case 1:
                this.f8785c.dismiss();
                break;
            case 2:
                this.f8785c.dismiss();
                break;
            default:
                this.f8785c.dismiss();
                break;
        }
    }
}
