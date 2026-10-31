package p115k7;

import android.content.Intent;
import com.woha.pogoda.WeatherService;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p142n0.EnumC2471f;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: k7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2054d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5609b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ WeatherService f5610c;

    public /* synthetic */ RunnableC2054d(WeatherService weatherService, int i10) {
        this.f5609b = i10;
        this.f5610c = weatherService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5609b) {
            case 0:
                WeatherService weatherService = this.f5610c;
                boolean z9 = WeatherService.f2877f;
                weatherService.m2210f();
                break;
            case 1:
                WeatherService weatherService2 = this.f5610c;
                if (!WeatherService.m2204b().equals(EnumC2471f.f6806f.name())) {
                    WeatherService.m2207e(weatherService2);
                } else {
                    Intent launchIntentForPackage = weatherService2.getPackageManager().getLaunchIntentForPackage(AbstractC1387m.m2421h(new byte[]{-94, -22, -51, 112, 92, 55, 24, 7, -88, -79, -108, 108, 92, 45, 20, 7, -94, -17, -113, 124, 90, 48, 18}, new byte[]{-48, -97, -29, 9, Base64.padSymbol, 89, 124, 98}));
                    if (launchIntentForPackage != null) {
                        AbstractC3656k.m5875u(weatherService2, launchIntentForPackage, null);
                    }
                }
                break;
            default:
                this.f5610c.f2884b.setUpdateView(WeatherService.f2881j);
                break;
        }
    }
}
