package e0;

import com.example.navistart.MainActivity;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.TService;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$AradarSenderType;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.hoho.android.usbserial.driver.UsbId;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1976b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v0(int i9) {
        this.f1976b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1976b) {
            case 0:
                String str = MainActivity.f688e1;
                h0.b.a();
                h0.b.i().d();
                break;
            case 1:
                h0.b.a();
                h0.b.a();
                h0.b.n().setMusicStatus(true);
                break;
            case 2:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().carsetheat(1, 1);
                break;
            case 3:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().carsetheat(1, 2);
                break;
            case 4:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().rulheatonoff(Boolean.TRUE);
                break;
            case 5:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor4 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().rulheatonoff(Boolean.FALSE);
                break;
            case 6:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor5 = MyCarReceiver.c;
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenProPri();
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 7:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor6 = MyCarReceiver.c;
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenCustomPPPri();
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
            case 8:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor7 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().zadheatonoff(Boolean.TRUE);
                break;
            case 9:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor8 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().zadheatonoff(Boolean.FALSE);
                break;
            case 10:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor9 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().lobheatonoff(Boolean.TRUE);
                break;
            case 11:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor10 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().lobheatonoff(Boolean.FALSE);
                break;
            case 12:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor11 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().carsetvent(1, 1);
                break;
            case 13:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor12 = MyCarReceiver.c;
                h0.b.a();
                h0.b.d().carsetvent(1, 2);
                break;
            case 14:
                int i9 = o2.f1916b;
                break;
            case 15:
                v0.h hVar = SpeedBoardService.f826i;
                if (hVar != null) {
                    hVar.c();
                }
                v0.h hVar2 = SpeedBoardService.f827j;
                if (hVar2 != null) {
                    hVar2.c();
                }
                break;
            case 16:
                d2.h hVar3 = TService.c;
                ((ScheduledThreadPoolExecutor) hVar3.f1677a).execute(new l7.a(hVar3, 1));
                break;
            case 17:
                int i10 = AlarmManagerSchedulerBroadcastReceiver.f1068a;
                break;
            case 18:
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenCustomPPPri();
                    }
                } catch (Exception unused3) {
                    return;
                }
                break;
            case 19:
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenProPri();
                    }
                } catch (Exception unused4) {
                    return;
                }
                break;
            case 20:
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenCustomPPPri();
                    }
                } catch (Exception unused5) {
                    return;
                }
                break;
            case 21:
                try {
                    h0.b.a();
                    if (h0.b.c() != null) {
                        h0.b.c().OpenProPri();
                    }
                } catch (Exception unused6) {
                    return;
                }
                break;
            case 22:
                String str2 = m0.e2.f3407j;
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.AradarOn = Boolean.TRUE;
                hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
                hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.GENARADAR;
                hUDMassageObj.v_mTurnType = 14;
                hUDMassageObj.v_mTurnDis = 100000;
                hUDMassageObj.v_mRemainDis = 350;
                hUDMassageObj.v_mNextRoad = "100".concat(m.h(new byte[]{123, -117, 38, 1, 64, -83, -36}, new byte[]{-85, 49, -10, -67, 111, 124, 91, -38}));
                hUDMassageObj.setspeedlimit(100);
                h0.b.a();
                h0.b.i().e(hUDMassageObj);
                break;
            case 23:
                String str3 = m0.e2.f3407j;
                HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
                hUDMassageObj2.AradarOn = Boolean.FALSE;
                hUDMassageObj2.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
                hUDMassageObj2.aradarSenderType = HUDMassageObj$AradarSenderType.GENARADAR;
                hUDMassageObj2.v_mTurnType = -1;
                hUDMassageObj2.v_mTurnDis = 0;
                hUDMassageObj2.v_mNextRoad = " ";
                h0.b.a();
                h0.b.i().e(hUDMassageObj2);
                break;
            case 24:
                String str4 = m0.e2.f3407j;
                HUDMassageObj hUDMassageObj3 = new HUDMassageObj();
                hUDMassageObj3.NaviOn = Boolean.TRUE;
                hUDMassageObj3.hudSenderType = HUDMassageObj$HudSenderType.NAVI;
                hUDMassageObj3.v_mTurnType = 3;
                hUDMassageObj3.v_mTurnDis = UsbId.SILABS_CP2102;
                hUDMassageObj3.v_mRemainDis = 800;
                hUDMassageObj3.v_mNextRoad = m.h(new byte[]{-116, -104, 100, -89}, new byte[]{-40, -35, 55, -13, -44, -53, 70, 116});
                hUDMassageObj3.setspeedlimit(60);
                h0.b.a();
                h0.b.i().e(hUDMassageObj3);
                break;
            case 25:
                String str5 = m0.e2.f3407j;
                HUDMassageObj hUDMassageObj4 = new HUDMassageObj();
                hUDMassageObj4.NaviOn = Boolean.FALSE;
                hUDMassageObj4.hudSenderType = HUDMassageObj$HudSenderType.NAVI;
                hUDMassageObj4.aradarSenderType = HUDMassageObj$AradarSenderType.GENARADAR;
                hUDMassageObj4.v_mTurnType = -1;
                hUDMassageObj4.v_mTurnDis = 0;
                hUDMassageObj4.v_mNextRoad = " ";
                h0.b.a();
                h0.b.i().e(hUDMassageObj4);
                break;
            default:
                p0.j jVar = p0.j.f4565m;
                if (jVar != null) {
                    jVar.a();
                }
                break;
        }
    }

    public /* synthetic */ v0(int i9, Object obj) {
        this.f1976b = i9;
    }
}
