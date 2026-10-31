package e0;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.TextView;
import com.example.navistart.VJCT;
import com.woha.wifim.MainWifiManadger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d3 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1827b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d3(int i9) {
        this.f1827b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        switch (this.f1827b) {
            case 0:
                TextView textView = VJCT.f879g;
                dialogInterface.dismiss();
                break;
            case 1:
                String str = MainWifiManadger.f1632v;
                dialogInterface.cancel();
                break;
            default:
                String str2 = MainWifiManadger.f1632v;
                dialogInterface.dismiss();
                break;
        }
    }
}
