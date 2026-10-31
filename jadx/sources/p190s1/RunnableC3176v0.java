package p190s1;

import com.example.navistart.home.WebLauncherActivity;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3176v0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9244b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ WebLauncherActivity f9245c;

    public /* synthetic */ RunnableC3176v0(WebLauncherActivity webLauncherActivity, int i10) {
        this.f9244b = i10;
        this.f9245c = webLauncherActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f9244b;
        WebLauncherActivity webLauncherActivity = this.f9245c;
        switch (i10) {
            case 0:
                String str = WebLauncherActivity.f1739l;
                webLauncherActivity.m1653s();
                break;
            case 1:
                String str2 = WebLauncherActivity.f1739l;
                webLauncherActivity.m1646D(webLauncherActivity.m1652J());
                int i11 = webLauncherActivity.getResources().getConfiguration().uiMode & 48;
                String strM2421h = AbstractC1387m.m2421h(new byte[]{-87, 75, -81, -25, -64}, new byte[]{-35, 35, -54, -118, -91, Base64.padSymbol, -48, 48});
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{-86, -72, -28, 9, -124, -115, 21, 82, -13}, new byte[]{-47, -102, -119, 102, -32, -24, 55, 104}));
                sb.append(i11 == 32 ? AbstractC1387m.m2421h(new byte[]{82, -1, 95, 72}, new byte[]{54, -98, 45, 35, -89, 73, -68, 38}) : AbstractC1387m.m2421h(new byte[]{-117, -114, -70, -10, 73}, new byte[]{-25, -25, -35, -98, Base64.padSymbol, 46, -24, 28}));
                sb.append(AbstractC1387m.m2421h(new byte[]{91, -57}, new byte[]{121, -70, -27, 114, -95, -46, 51, -27}));
                webLauncherActivity.mo988e(strM2421h, sb.toString());
                webLauncherActivity.m1658x();
                break;
            case 2:
                String str3 = WebLauncherActivity.f1739l;
                AbstractC3656k.m5878x(webLauncherActivity, AbstractC1387m.m2421h(new byte[]{37, 32, -111, 96, -79, 36, 66, -16, 36, 54, -111, 103, -79, 37, 67, -60, -43, 101, -64, 5, -44, 77, 42, -96, 114, 100, -15, 4, -32, -67, 67, -52, 37, 1, -111, 97, -79, 35, 66, -16, 36, 54, -112, 86, -79, 34, 67, -52, 37, 10}, new byte[]{-11, -76, 65, -43, 97, -99, -109, 113}));
                break;
            default:
                String str4 = WebLauncherActivity.f1739l;
                webLauncherActivity.m1654t();
                break;
        }
    }
}
