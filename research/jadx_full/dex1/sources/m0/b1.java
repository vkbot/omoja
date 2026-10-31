package m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import com.example.navistart.DPups;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3340b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b1(w1 w1Var, Context context, String str) {
        this.f3340b = 2;
        this.c = context;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3340b) {
            case 0:
                y5.k.x(this.c, this.d);
                break;
            case 1:
                y5.k.x(this.c, this.d);
                break;
            default:
                String str = this.d;
                Context context = this.c;
                DevicePolicyManager devicePolicyManagerU = w1.u(context);
                if (devicePolicyManagerU != null) {
                    try {
                        devicePolicyManagerU.setApplicationHidden(new ComponentName(context, (Class<?>) DPups.class), str, false);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ b1(Context context, String str, int i9) {
        this.f3340b = i9;
        this.c = context;
        this.d = str;
    }
}
