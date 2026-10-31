package s1;

import com.example.navistart.home.WebLauncherActivity;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5222b;
    public final /* synthetic */ WebLauncherActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v0(WebLauncherActivity webLauncherActivity, int i9) {
        this.f5222b = i9;
        this.c = webLauncherActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f5222b;
        WebLauncherActivity webLauncherActivity = this.c;
        switch (i9) {
            case 0:
                String str = WebLauncherActivity.f910l;
                webLauncherActivity.s();
                break;
            case 1:
                String str2 = WebLauncherActivity.f910l;
                webLauncherActivity.D(webLauncherActivity.J());
                int i10 = webLauncherActivity.getResources().getConfiguration().uiMode & 48;
                String strH = e0.m.h(new byte[]{-87, 75, -81, -25, -64}, new byte[]{-35, 35, -54, -118, -91, Base64.padSymbol, -48, 48});
                StringBuilder sb = new StringBuilder();
                sb.append(e0.m.h(new byte[]{-86, -72, -28, 9, -124, -115, 21, 82, -13}, new byte[]{-47, -102, -119, 102, -32, -24, 55, 104}));
                sb.append(i10 == 32 ? e0.m.h(new byte[]{82, -1, 95, 72}, new byte[]{54, -98, 45, 35, -89, 73, -68, 38}) : e0.m.h(new byte[]{-117, -114, -70, -10, 73}, new byte[]{-25, -25, -35, -98, Base64.padSymbol, 46, -24, 28}));
                sb.append(e0.m.h(new byte[]{91, -57}, new byte[]{121, -70, -27, 114, -95, -46, 51, -27}));
                webLauncherActivity.e(strH, sb.toString());
                webLauncherActivity.x();
                break;
            case 2:
                String str3 = WebLauncherActivity.f910l;
                y5.k.x(webLauncherActivity, e0.m.h(new byte[]{37, 32, -111, 96, -79, 36, 66, -16, 36, 54, -111, 103, -79, 37, 67, -60, -43, 101, -64, 5, -44, 77, 42, -96, 114, 100, -15, 4, -32, -67, 67, -52, 37, 1, -111, 97, -79, 35, 66, -16, 36, 54, -112, 86, -79, 34, 67, -52, 37, 10}, new byte[]{-11, -76, 65, -43, 97, -99, -109, 113}));
                break;
            default:
                String str4 = WebLauncherActivity.f910l;
                webLauncherActivity.t();
                break;
        }
    }
}
