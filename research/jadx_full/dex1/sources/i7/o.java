package i7;

import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.woha.atir.RadarActivity;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2707b;
    public final /* synthetic */ RadarActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(RadarActivity radarActivity, int i9) {
        this.f2707b = i9;
        this.c = radarActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f2707b;
        RadarActivity radarActivity = this.c;
        switch (i9) {
            case 0:
                int i10 = RadarActivity.f1610h;
                FragmentManager supportFragmentManager = radarActivity.getSupportFragmentManager();
                v vVar = (v) supportFragmentManager.findFragmentByTag(v.class.getSimpleName());
                if (vVar != null && vVar.isVisible()) {
                    FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                    fragmentTransactionBeginTransaction.remove(vVar);
                    fragmentTransactionBeginTransaction.commit();
                } else {
                    v vVar2 = new v();
                    FragmentTransaction fragmentTransactionBeginTransaction2 = supportFragmentManager.beginTransaction();
                    fragmentTransactionBeginTransaction2.replace(2131296782, vVar2, v.class.getSimpleName());
                    fragmentTransactionBeginTransaction2.addToBackStack(null);
                    fragmentTransactionBeginTransaction2.commit();
                }
                break;
            case 1:
                int i11 = RadarActivity.f1610h;
                radarActivity.finish();
                break;
            default:
                radarActivity.f1612f++;
                Handler handler = radarActivity.f1613g;
                handler.removeCallbacksAndMessages(null);
                handler.postDelayed(new q(radarActivity, 1), 1000L);
                if (radarActivity.f1612f >= 10) {
                    radarActivity.f1612f = 0;
                    h0.b.o().saveLong(e0.m.h(new byte[]{-62, -110, 14, 46, -66, 115, 59, -6, -14, -106, 59, Base64.padSymbol, -118, 103, 62, -23, -62, -79}, new byte[]{-122, -13, 122, 79, -21, 3, 95, -101}), 0L);
                    y5.k.x(radarActivity, radarActivity.getResources().getString(2131951719));
                }
                break;
        }
    }
}
