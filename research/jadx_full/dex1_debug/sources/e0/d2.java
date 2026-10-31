package e0;

import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1826b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d2(int i9, Object obj) {
        this.f1825a = i9;
        this.f1826b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(boolean z8) {
        switch (this.f1825a) {
            case 0:
                Notik notik = (Notik) this.f1826b;
                ArrayList arrayList = Notik.f793l;
                if (z8) {
                    notik.b(true);
                }
                break;
            default:
                q0.p pVar = (q0.p) this.f1826b;
                if (pVar.d.get()) {
                    pVar.f4815f = z8;
                    pVar.f4816g = false;
                    pVar.f4817h = 0L;
                    pVar.f4818i = false;
                    if (!z8) {
                        MockGpsService mockGpsService = pVar.f4814b;
                        String string = pVar.f4813a.getString(2131952217);
                        String strA = pVar.a();
                        mockGpsService.getClass();
                        MockGpsService.j(string, strA, false);
                        pVar.f4814b.h();
                    } else {
                        pVar.d(true);
                        pVar.e();
                        MockGpsService mockGpsService2 = pVar.f4814b;
                        String string2 = pVar.f4813a.getString(2131952217);
                        String strA2 = pVar.a();
                        mockGpsService2.getClass();
                        MockGpsService.j(string2, strA2, true);
                    }
                    break;
                }
                break;
        }
    }
}
