package m0;

import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3564b;
    public final /* synthetic */ v c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(v vVar, int i9) {
        this.f3564b = i9;
        this.c = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayListB;
        int i9 = this.f3564b;
        v vVar = this.c;
        switch (i9) {
            case 0:
                String str = v.f3604h;
                new ArrayList();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(e0.m.h(new byte[]{-120, -76, 94, -41, -96, 38}, new byte[]{-4, -43, 44, -80, -59, 82, -33, 10}), e0.m.h(new byte[]{26, -83, -97, -11, -89, -39, 27, 0, 30}, new byte[]{123, -35, -17, -86, -44, -83, 116, 114}));
                    jSONObject.put(e0.m.h(new byte[]{104, 44, -46}, new byte[]{11, 65, -74, -97, -38, 125, -87, -93}), e0.m.h(new byte[]{-16, -118, 13, -62, 39, 58, -119, 19}, new byte[]{-105, -17, 121, -99, 75, 83, -6, 103}));
                    JSONObject jSONObjectTx = h0.b.a().j().tx(jSONObject);
                    String string = jSONObjectTx == null ? null : jSONObjectTx.toString();
                    arrayListB = v.B(string);
                    if (arrayListB.isEmpty()) {
                        arrayListB = v.B(v.z());
                    } else if (!TextUtils.isEmpty(string)) {
                        try {
                            h0.b.o().saveString(v.f3605i, v.x(string));
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    arrayListB = v.B(v.z());
                }
                FragmentActivity activity = vVar.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new e0.j2(16, vVar, arrayListB));
                    break;
                }
                break;
            case 1:
                String str2 = v.f3604h;
                FragmentActivity activity2 = vVar.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new q(vVar, 2));
                }
                break;
            default:
                String str3 = v.f3604h;
                if (vVar.isAdded()) {
                    vVar.C();
                }
                break;
        }
    }
}
