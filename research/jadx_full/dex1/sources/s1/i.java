package s1;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.home.WebLauncherActivity;
import com.woha.appmanag.FilePickerActivity;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5089b;
    public final /* synthetic */ k c;
    public final /* synthetic */ AlertDialog[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(k kVar, AlertDialog[] alertDialogArr, int i9) {
        this.f5089b = i9;
        this.c = kVar;
        this.d = alertDialogArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f5089b;
        AlertDialog[] alertDialogArr = this.d;
        k kVar = this.c;
        switch (i9) {
            case 0:
                AlertDialog alertDialog = alertDialogArr[0];
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                Context context = kVar.getContext();
                if (context instanceof WebLauncherActivity) {
                    ((WebLauncherActivity) context).G(v.class, null);
                }
                break;
            case 1:
                AlertDialog alertDialog2 = alertDialogArr[0];
                if (alertDialog2 != null) {
                    alertDialog2.dismiss();
                }
                Context context2 = kVar.getContext();
                if (context2 instanceof WebLauncherActivity) {
                    WebLauncherActivity webLauncherActivity = (WebLauncherActivity) context2;
                    if (!s.c.equals(s.a())) {
                        h0.b.o().saveString(e0.m.h(new byte[]{-49, 10, -5, 90, -33, 112, -69, 116, -24, 22, -49, 75, -15, 65, -68, 117, -31, 27, -55, 77, -30, 115, -84, 111, -10, 26, -62, 88, -50, ByteCompanionObject.MAX_VALUE, -126, 126, -5}, new byte[]{-126, 115, -84, 63, -67, 32, -55, 27}), e0.m.h(new byte[]{39, 82, 80, -67, -115, -51, -56, 44, 52, 82, 84, -125, -108, -64, -55, 29, 32, 95, 83, -82}, new byte[]{67, 55, 54, -36, -8, -95, -68, 115}));
                        webLauncherActivity.H(null);
                    }
                    q0 q0Var = webLauncherActivity.f916i;
                    if (q0Var != null) {
                        q0Var.m();
                    }
                }
                break;
            case 2:
                AlertDialog alertDialog3 = alertDialogArr[0];
                if (alertDialog3 != null) {
                    alertDialog3.dismiss();
                }
                Context context3 = kVar.getContext();
                if (context3 instanceof WebLauncherActivity) {
                    WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) context3;
                    Intent intent = new Intent(webLauncherActivity2, (Class<?>) FilePickerActivity.class);
                    intent.putExtra(e0.m.h(new byte[]{75, -67, 71, -77, -96, 33, 87, -95, 72, -70, 88, -65, -112, 42, 112, -72, 66, -80, 78, -119, -116, 33, 65, -79}, new byte[]{45, -44, 43, -42, -1, 68, 47, -43}), 1);
                    webLauncherActivity2.startActivityForResult(intent, 7412);
                }
                break;
            default:
                AlertDialog alertDialog4 = alertDialogArr[0];
                if (alertDialog4 != null) {
                    alertDialog4.dismiss();
                }
                kVar.getContext().startActivity(new Intent(kVar.getContext(), (Class<?>) ModernMainActivity.class));
                break;
        }
    }
}
