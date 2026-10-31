package k7;

import android.content.Intent;
import com.woha.pogoda.WeatherService;
import e0.m;
import kotlin.io.encoding.Base64;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3202b;
    public final /* synthetic */ WeatherService c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(WeatherService weatherService, int i9) {
        this.f3202b = i9;
        this.c = weatherService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3202b) {
            case 0:
                WeatherService weatherService = this.c;
                boolean z8 = WeatherService.f1624f;
                weatherService.f();
                break;
            case 1:
                WeatherService weatherService2 = this.c;
                if (!WeatherService.b().equals(n0.f.f3844f.name())) {
                    WeatherService.e(weatherService2);
                } else {
                    Intent launchIntentForPackage = weatherService2.getPackageManager().getLaunchIntentForPackage(m.h(new byte[]{-94, -22, -51, 112, 92, 55, 24, 7, -88, -79, -108, 108, 92, 45, 20, 7, -94, -17, -113, 124, 90, 48, 18}, new byte[]{-48, -97, -29, 9, Base64.padSymbol, 89, 124, 98}));
                    if (launchIntentForPackage != null) {
                        k.u(weatherService2, launchIntentForPackage, null);
                    }
                }
                break;
            default:
                this.c.f1631b.setUpdateView(WeatherService.f1628j);
                break;
        }
    }
}
