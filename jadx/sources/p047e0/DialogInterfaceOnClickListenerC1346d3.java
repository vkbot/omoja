package p047e0;

import android.content.DialogInterface;
import android.widget.TextView;
import com.example.navistart.VJCT;
import com.woha.wifim.MainWifiManadger;

/* JADX INFO: renamed from: e0.d3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC1346d3 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3207b;

    public /* synthetic */ DialogInterfaceOnClickListenerC1346d3(int i10) {
        this.f3207b = i10;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        switch (this.f3207b) {
            case 0:
                TextView textView = VJCT.f1689g;
                dialogInterface.dismiss();
                break;
            case 1:
                String str = MainWifiManadger.f2888v;
                dialogInterface.cancel();
                break;
            default:
                String str2 = MainWifiManadger.f2888v;
                dialogInterface.dismiss();
                break;
        }
    }
}
