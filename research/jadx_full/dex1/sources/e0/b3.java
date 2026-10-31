package e0;

import android.content.Intent;
import android.provider.Settings$Secure;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.example.navistart.VJCT;
import com.example.navistart.boot;
import com.example.navistart.punto;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b3 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1814b;
    public final /* synthetic */ VJCT c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b3(VJCT vjct, int i9) {
        this.f1814b = i9;
        this.c = vjct;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1814b;
        VJCT vjct = this.c;
        switch (i9) {
            case 0:
                TextView textView = VJCT.f879g;
                vjct.finish();
                break;
            case 1:
                String strT = punto.t(vjct.f883b);
                String strW = punto.w(Settings$Secure.getString(vjct.f883b.getContentResolver(), m.h(new byte[]{90, -27, -109, -20, -56, -110, -6, 39, 82, -17}, new byte[]{59, -117, -9, -98, -89, -5, -98, 120})));
                u0.a aVarO = h0.b.o();
                byte[] bArr = m.f1896j;
                String[] strArr = p3.f1924a;
                String strLoadString = aVarO.loadString(new String(bArr), "");
                String strE = boot.e(h0.b.o().loadString(punto.t(vjct.f883b), "") + punto.t(vjct.f883b));
                f3 f3Var = new f3(0);
                f3Var.f1837b = new StringBuilder();
                f3Var.c = -1;
                f3Var.d = vjct;
                f3Var.execute(strT, strW, strLoadString, strE);
                break;
            default:
                Intent launchIntentForPackage = vjct.f883b.getPackageManager().getLaunchIntentForPackage(m.h(new byte[]{-96, 29, 91, -50, 66, 118, -124, 90, -92, 7, 87, -110, 81, 49, -105, 81, -89, 0, 89, -119, 81}, new byte[]{-61, 114, 54, -32, 53, 31, -10, 63}));
                if (launchIntentForPackage == null) {
                    VJCT.f879g.setText(vjct.getResources().getString(2131952858));
                } else {
                    y5.k.u(vjct, launchIntentForPackage, null);
                }
                break;
        }
    }
}
