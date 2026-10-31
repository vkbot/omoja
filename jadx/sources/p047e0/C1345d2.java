package p047e0;

import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import com.example.navistart.R;
import java.util.ArrayList;
import p173q0.C3052p;

/* JADX INFO: renamed from: e0.d2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1345d2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3205a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3206b;

    public /* synthetic */ C1345d2(int i10, Object obj) {
        this.f3205a = i10;
        this.f3206b = obj;
    }

    /* JADX INFO: renamed from: a */
    public final void m2397a(boolean z9) {
        switch (this.f3205a) {
            case 0:
                Notik notik = (Notik) this.f3206b;
                ArrayList arrayList = Notik.f1486l;
                if (z9) {
                    notik.m1508b(true);
                }
                break;
            default:
                C3052p c3052p = (C3052p) this.f3206b;
                if (c3052p.f8607d.get()) {
                    c3052p.f8609f = z9;
                    c3052p.f8610g = false;
                    c3052p.f8611h = 0L;
                    c3052p.f8612i = false;
                    if (!z9) {
                        MockGpsService mockGpsService = c3052p.f8605b;
                        String string = c3052p.f8604a.getString(R.string.mock_gps_connecting);
                        String strMo4863a = c3052p.mo4863a();
                        mockGpsService.getClass();
                        MockGpsService.m1454j(string, strMo4863a, false);
                        c3052p.f8605b.m1460h();
                    } else {
                        c3052p.m4885d(true);
                        c3052p.m4886e();
                        MockGpsService mockGpsService2 = c3052p.f8605b;
                        String string2 = c3052p.f8604a.getString(R.string.mock_gps_connecting);
                        String strMo4863a2 = c3052p.mo4863a();
                        mockGpsService2.getClass();
                        MockGpsService.m1454j(string2, strMo4863a2, true);
                    }
                    break;
                }
                break;
        }
    }
}
