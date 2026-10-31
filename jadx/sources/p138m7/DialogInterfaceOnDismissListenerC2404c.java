package p138m7;

import android.content.DialogInterface;
import android.view.KeyEvent;
import com.woha.wifim.MainWifiManadger;
import p190s1.C3153k;

/* JADX INFO: renamed from: m7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnDismissListenerC2404c implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6506b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ KeyEvent.Callback f6507c;

    public /* synthetic */ DialogInterfaceOnDismissListenerC2404c(KeyEvent.Callback callback, int i10) {
        this.f6506b = i10;
        this.f6507c = callback;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        switch (this.f6506b) {
            case 0:
                ((MainWifiManadger) this.f6507c).f2903p = null;
                break;
            default:
                ((C3153k) this.f6507c).m5006r();
                break;
        }
    }
}
