package e0;

import android.content.Context;
import android.content.Intent;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.LocServ;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import com.example.navistart.OverlayService;
import com.example.navistart.Si;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.TService;
import com.example.navistart.boot;
import com.example.navistart.punto;
import com.woha.pogoda.WeatherService;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Request$Builder;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1917b;
    public final /* synthetic */ boot c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o3(boot bootVar, int i9) {
        this.f1917b = i9;
        this.c = bootVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1917b;
        boot bootVar = this.c;
        switch (i9) {
            case 0:
                Context context = bootVar.f900m;
                boolean zLoadBoolean = false;
                try {
                    zLoadBoolean = h0.b.o().loadBoolean(MockGpsService.r, false);
                    break;
                } catch (Exception unused) {
                }
                if (zLoadBoolean) {
                    MockGpsService.m(context);
                    return;
                }
                return;
            case 1:
                WeatherService.e(bootVar.f900m);
                return;
            case 2:
                TService.c(bootVar.f900m);
                return;
            case 3:
                AllWidgetServices.c(bootVar.f900m);
                return;
            case 4:
                Notik.g(bootVar.f900m);
                return;
            case 5:
                OverlayService.c(bootVar.f900m);
                return;
            case 6:
                SpeedBoardService.b(bootVar.f900m);
                return;
            case 7:
                Boolean bool = bootVar.c;
                if (MainActivity.w() && bool.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(bootVar.f900m) && bool.booleanValue()) {
                    bootVar.f901n.toString();
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject = bootVar.a();
                    break;
                } catch (JSONException unused2) {
                }
                Request requestBuild = new Request$Builder().url(m.h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1003u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(m.h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), m.h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(m.h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), m.h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                h0.b.a();
                h0.b.m().newCall(requestBuild).enqueue(new z3.f(5));
                return;
            case 8:
                Si.a(bootVar.f900m);
                return;
            case 9:
                LounchB.c(bootVar.f900m);
                return;
            default:
                Context context2 = bootVar.f900m;
                androidx.fragment.app.h hVar = LocServ.f674h;
                context2.startService(new Intent(context2, (Class<?>) LocServ.class));
                return;
        }
    }
}
