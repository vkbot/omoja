package m7;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import android.view.KeyEvent$Callback;
import com.woha.wifim.MainWifiManadger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements DialogInterface$OnDismissListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3680b;
    public final /* synthetic */ KeyEvent$Callback c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(KeyEvent$Callback keyEvent$Callback, int i9) {
        this.f3680b = i9;
        this.c = keyEvent$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.DialogInterface$OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.f3680b) {
            case 0:
                ((MainWifiManadger) this.c).f1644p = null;
                break;
            default:
                ((s1.k) this.c).r();
                break;
        }
    }
}
