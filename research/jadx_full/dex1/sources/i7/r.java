package i7;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.Observer;
import com.woha.atir.RadarActivity;
import e0.j2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RadarActivity f2711b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(RadarActivity radarActivity, int i9) {
        this.f2710a = i9;
        this.f2711b = radarActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f2710a;
        RadarActivity radarActivity = this.f2711b;
        switch (i9) {
            case 0:
                String str = (String) obj;
                int i10 = RadarActivity.f1610h;
                if (str != null) {
                    new Handler(Looper.getMainLooper()).post(new p(radarActivity, str, 2));
                }
                break;
            case 1:
                String str2 = (String) obj;
                int i11 = RadarActivity.f1610h;
                if (str2 != null) {
                    new Handler(Looper.getMainLooper()).post(new p(radarActivity, str2, 0));
                }
                break;
            case 2:
                String str3 = (String) obj;
                int i12 = RadarActivity.f1610h;
                if (str3 != null) {
                    new Handler(Looper.getMainLooper()).post(new p(radarActivity, str3, 1));
                }
                break;
            case 3:
                int i13 = RadarActivity.f1610h;
                if (((Boolean) obj).booleanValue()) {
                    new Handler(Looper.getMainLooper()).post(new q(radarActivity, 0));
                }
                break;
            default:
                n nVar = (n) obj;
                if (nVar == null) {
                    int i14 = RadarActivity.f1610h;
                } else if (radarActivity.f1611b != null) {
                    new Handler(Looper.getMainLooper()).post(new j2(9, radarActivity, nVar));
                }
                break;
        }
    }
}
