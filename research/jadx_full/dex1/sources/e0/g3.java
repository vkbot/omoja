package e0;

import com.example.navistart.MyCarReceiver;
import com.example.navistart.VibVodActivity;
import com.example.navistart.mainview.HeatingButtonView;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g3 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1848b;
    public final /* synthetic */ VibVodActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g3(VibVodActivity vibVodActivity, int i9) {
        this.f1848b = i9;
        this.c = vibVodActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1848b;
        VibVodActivity vibVodActivity = this.c;
        switch (i9) {
            case 0:
                Boolean bool = VibVodActivity.f885g;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
                int i10 = h0.b.a().e().e;
                HeatingButtonView heatingButtonView = vibVodActivity.c;
                heatingButtonView.getClass();
                heatingButtonView.e = false;
                heatingButtonView.c(1);
                HeatingButtonView heatingButtonView2 = vibVodActivity.d;
                heatingButtonView2.getClass();
                heatingButtonView2.e = false;
                heatingButtonView2.c(1);
                HeatingButtonView heatingButtonView3 = vibVodActivity.e;
                heatingButtonView3.getClass();
                heatingButtonView3.e = false;
                heatingButtonView3.c(1);
                if (i10 == 1) {
                    HeatingButtonView heatingButtonView4 = vibVodActivity.c;
                    heatingButtonView4.getClass();
                    heatingButtonView4.e = true;
                    heatingButtonView4.c(3);
                    break;
                } else if (i10 == 2) {
                    HeatingButtonView heatingButtonView5 = vibVodActivity.d;
                    heatingButtonView5.getClass();
                    heatingButtonView5.e = true;
                    heatingButtonView5.c(3);
                    break;
                } else if (i10 == 3) {
                    HeatingButtonView heatingButtonView6 = vibVodActivity.e;
                    heatingButtonView6.getClass();
                    heatingButtonView6.e = true;
                    heatingButtonView6.c(3);
                    break;
                }
                break;
            case 1:
                vibVodActivity.finish();
                break;
            case 2:
                Boolean bool2 = VibVodActivity.f885g;
                vibVodActivity.u(2, Boolean.FALSE);
                break;
            case 3:
                Boolean bool3 = VibVodActivity.f885g;
                vibVodActivity.u(1, Boolean.FALSE);
                break;
            default:
                Boolean bool4 = VibVodActivity.f885g;
                vibVodActivity.u(3, Boolean.FALSE);
                break;
        }
    }
}
