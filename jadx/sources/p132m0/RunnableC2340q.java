package p132m0;

import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;

/* JADX INFO: renamed from: m0.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2340q implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6305b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2360v f6306c;

    public /* synthetic */ RunnableC2340q(C2360v c2360v, int i10) {
        this.f6305b = i10;
        this.f6306c = c2360v;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayListM3727B;
        int i10 = this.f6305b;
        C2360v c2360v = this.f6306c;
        switch (i10) {
            case 0:
                String str = C2360v.f6378h;
                new ArrayList();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-120, -76, 94, -41, -96, 38}, new byte[]{-4, -43, 44, -80, -59, 82, -33, 10}), AbstractC1387m.m2421h(new byte[]{26, -83, -97, -11, -89, -39, 27, 0, 30}, new byte[]{123, -35, -17, -86, -44, -83, 116, 114}));
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{104, 44, -46}, new byte[]{11, 65, -74, -97, -38, 125, -87, -93}), AbstractC1387m.m2421h(new byte[]{-16, -118, 13, -62, 39, 58, -119, 19}, new byte[]{-105, -17, 121, -99, 75, 83, -6, 103}));
                    JSONObject jSONObjectM1641tx = C1652b.m2734a().m2755j().m1641tx(jSONObject);
                    String string = jSONObjectM1641tx == null ? null : jSONObjectM1641tx.toString();
                    arrayListM3727B = C2360v.m3727B(string);
                    if (arrayListM3727B.isEmpty()) {
                        arrayListM3727B = C2360v.m3727B(C2360v.m3731z());
                    } else if (!TextUtils.isEmpty(string)) {
                        try {
                            C1652b.m2745o().saveString(C2360v.f6379i, C2360v.m3730x(string));
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    arrayListM3727B = C2360v.m3727B(C2360v.m3731z());
                }
                FragmentActivity activity = c2360v.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new RunnableC1375j2(16, c2360v, arrayListM3727B));
                    break;
                }
                break;
            case 1:
                String str2 = C2360v.f6378h;
                FragmentActivity activity2 = c2360v.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new RunnableC2340q(c2360v, 2));
                }
                break;
            default:
                String str3 = C2360v.f6378h;
                if (c2360v.isAdded()) {
                    c2360v.m3732C();
                }
                break;
        }
    }
}
