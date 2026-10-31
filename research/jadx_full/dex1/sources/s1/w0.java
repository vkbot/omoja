package s1;

import android.location.Location;
import androidx.lifecycle.Observer;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.home.WebLauncherActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class w0 implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebLauncherActivity f5224b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ w0(WebLauncherActivity webLauncherActivity, int i9) {
        this.f5223a = i9;
        this.f5224b = webLauncherActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f5223a;
        WebLauncherActivity webLauncherActivity = this.f5224b;
        switch (i9) {
            case 0:
                String str = (String) obj;
                String str2 = WebLauncherActivity.f910l;
                if (str != null) {
                    webLauncherActivity.A(str);
                }
                break;
            case 1:
                s0.a aVar = (s0.a) obj;
                String str3 = WebLauncherActivity.f910l;
                if (aVar != null) {
                    webLauncherActivity.B(aVar);
                }
                break;
            case 2:
                Location location = (Location) obj;
                String str4 = WebLauncherActivity.f910l;
                if (location != null) {
                    webLauncherActivity.z(location);
                }
                break;
            case 3:
                Integer num = (Integer) obj;
                String str5 = WebLauncherActivity.f910l;
                if (num != null) {
                    webLauncherActivity.E(num.intValue());
                }
                break;
            case 4:
                Integer num2 = (Integer) obj;
                String str6 = WebLauncherActivity.f910l;
                if (num2 != null) {
                    webLauncherActivity.C(num2.intValue());
                }
                break;
            case 5:
                k7.b bVar = (k7.b) obj;
                String str7 = WebLauncherActivity.f910l;
                if (bVar != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(bVar.f3201b);
                    webLauncherActivity.F(bVar.d, com.google.protobuf.q.i(new byte[]{-92, 54}, new byte[]{102, -122, 52, 2, -22, -70, -11, 15}, sb));
                }
                break;
            default:
                HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                String str8 = WebLauncherActivity.f910l;
                if (hUDMassageObj != null) {
                    webLauncherActivity.y(hUDMassageObj);
                }
                break;
        }
    }
}
