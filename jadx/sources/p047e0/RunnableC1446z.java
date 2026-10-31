package p047e0;

import com.example.navistart.NLService;
import com.example.navistart.cores.HUDMassageObj;
import java.util.concurrent.ScheduledExecutorService;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1446z implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3506b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ HUDMassageObj f3507c;

    public /* synthetic */ RunnableC1446z(HUDMassageObj hUDMassageObj, int i10) {
        this.f3506b = i10;
        this.f3507c = hUDMassageObj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3506b) {
            case 0:
                HUDMassageObj hUDMassageObj = this.f3507c;
                if (C1328a0.f3166j.booleanValue() && C1328a0.f3165i.booleanValue()) {
                    C1652b.m2734a();
                    C1652b.m2748r().SendInfoHUD(hUDMassageObj);
                    break;
                }
                break;
            default:
                HUDMassageObj hUDMassageObj2 = this.f3507c;
                ScheduledExecutorService scheduledExecutorService = NLService.f1482e;
                try {
                    C1652b.m2734a();
                    C1652b.m2740i().m2369e(hUDMassageObj2);
                } catch (Exception unused) {
                    return;
                }
                break;
        }
    }
}
