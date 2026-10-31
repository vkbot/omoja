package p047e0;

import com.example.navistart.MyCarReceiver;
import com.example.navistart.VibVodActivity;
import com.example.navistart.mainview.HeatingButtonView;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.g3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1361g3 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3247b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ VibVodActivity f3248c;

    public /* synthetic */ RunnableC1361g3(VibVodActivity vibVodActivity, int i10) {
        this.f3247b = i10;
        this.f3248c = vibVodActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3247b;
        VibVodActivity vibVodActivity = this.f3248c;
        switch (i10) {
            case 0:
                Boolean bool = VibVodActivity.f1698g;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.f1463c;
                int i11 = C1652b.m2734a().m2754e().f3363e;
                HeatingButtonView heatingButtonView = vibVodActivity.f1700c;
                heatingButtonView.getClass();
                heatingButtonView.f1820e = false;
                heatingButtonView.m1670c(1);
                HeatingButtonView heatingButtonView2 = vibVodActivity.f1701d;
                heatingButtonView2.getClass();
                heatingButtonView2.f1820e = false;
                heatingButtonView2.m1670c(1);
                HeatingButtonView heatingButtonView3 = vibVodActivity.f1702e;
                heatingButtonView3.getClass();
                heatingButtonView3.f1820e = false;
                heatingButtonView3.m1670c(1);
                if (i11 == 1) {
                    HeatingButtonView heatingButtonView4 = vibVodActivity.f1700c;
                    heatingButtonView4.getClass();
                    heatingButtonView4.f1820e = true;
                    heatingButtonView4.m1670c(3);
                    break;
                } else if (i11 == 2) {
                    HeatingButtonView heatingButtonView5 = vibVodActivity.f1701d;
                    heatingButtonView5.getClass();
                    heatingButtonView5.f1820e = true;
                    heatingButtonView5.m1670c(3);
                    break;
                } else if (i11 == 3) {
                    HeatingButtonView heatingButtonView6 = vibVodActivity.f1702e;
                    heatingButtonView6.getClass();
                    heatingButtonView6.f1820e = true;
                    heatingButtonView6.m1670c(3);
                    break;
                }
                break;
            case 1:
                vibVodActivity.finish();
                break;
            case 2:
                Boolean bool2 = VibVodActivity.f1698g;
                vibVodActivity.m1607u(2, Boolean.FALSE);
                break;
            case 3:
                Boolean bool3 = VibVodActivity.f1698g;
                vibVodActivity.m1607u(1, Boolean.FALSE);
                break;
            default:
                Boolean bool4 = VibVodActivity.f1698g;
                vibVodActivity.m1607u(3, Boolean.FALSE);
                break;
        }
    }
}
