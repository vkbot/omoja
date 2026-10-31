package p047e0;

import com.example.navistart.MainActivity;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.TService;
import com.example.navistart.cores.HUDMassageObj;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.hoho.android.usbserial.driver.UsbId;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.apache.commons.net.ftp.FTPReply;
import p039d2.C1252h;
import p078h0.C1652b;
import p128l7.RunnableC2218a;
import p132m0.C2285e2;
import p164p0.C2957j;
import p216v0.InterfaceC3321h;

/* JADX INFO: renamed from: e0.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1431v0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3451b;

    public /* synthetic */ RunnableC1431v0(int i10) {
        this.f3451b = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = 1;
        switch (this.f3451b) {
            case 0:
                String str = MainActivity.f1288e1;
                C1652b.m2734a();
                C1652b.m2740i().m2368d();
                break;
            case 1:
                C1652b.m2734a();
                C1652b.m2734a();
                C1652b.m2744n().setMusicStatus(true);
                break;
            case 2:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().carsetheat(1, 1);
                break;
            case 3:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().carsetheat(1, 2);
                break;
            case 4:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().rulheatonoff(Boolean.TRUE);
                break;
            case 5:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor4 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().rulheatonoff(Boolean.FALSE);
                break;
            case 6:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor5 = MyCarReceiver.f1463c;
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenProPri();
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 7:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor6 = MyCarReceiver.f1463c;
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenCustomPPPri();
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
            case 8:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor7 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().zadheatonoff(Boolean.TRUE);
                break;
            case 9:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor8 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().zadheatonoff(Boolean.FALSE);
                break;
            case 10:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor9 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().lobheatonoff(Boolean.TRUE);
                break;
            case 11:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor10 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().lobheatonoff(Boolean.FALSE);
                break;
            case 12:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor11 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().carsetvent(1, 1);
                break;
            case 13:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor12 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                C1652b.m2736d().carsetvent(1, 2);
                break;
            case 14:
                int i11 = C1400o2.f3356b;
                break;
            case 15:
                InterfaceC3321h interfaceC3321h = SpeedBoardService.f1612i;
                if (interfaceC3321h != null) {
                    interfaceC3321h.mo1536c();
                }
                InterfaceC3321h interfaceC3321h2 = SpeedBoardService.f1613j;
                if (interfaceC3321h2 != null) {
                    interfaceC3321h2.mo1536c();
                }
                break;
            case 16:
                C1252h c1252h = TService.f1640c;
                ((ScheduledThreadPoolExecutor) c1252h.f2952a).execute(new RunnableC2218a(c1252h, i10));
                break;
            case 17:
                int i12 = AlarmManagerSchedulerBroadcastReceiver.f1997a;
                break;
            case 18:
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenCustomPPPri();
                    }
                } catch (Exception unused3) {
                    return;
                }
                break;
            case 19:
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenProPri();
                    }
                } catch (Exception unused4) {
                    return;
                }
                break;
            case 20:
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenCustomPPPri();
                    }
                } catch (Exception unused5) {
                    return;
                }
                break;
            case 21:
                try {
                    C1652b.m2734a();
                    if (C1652b.m2735c() != null) {
                        C1652b.m2735c().OpenProPri();
                    }
                } catch (Exception unused6) {
                    return;
                }
                break;
            case 22:
                String str2 = C2285e2.f6049j;
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.AradarOn = Boolean.TRUE;
                hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
                hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.GENARADAR;
                hUDMassageObj.v_mTurnType = 14;
                hUDMassageObj.v_mTurnDis = 100000;
                hUDMassageObj.v_mRemainDis = FTPReply.FILE_ACTION_PENDING;
                hUDMassageObj.v_mNextRoad = "100".concat(AbstractC1387m.m2421h(new byte[]{123, -117, 38, 1, 64, -83, -36}, new byte[]{-85, 49, -10, -67, 111, 124, 91, -38}));
                hUDMassageObj.setspeedlimit(100);
                C1652b.m2734a();
                C1652b.m2740i().m2369e(hUDMassageObj);
                break;
            case 23:
                String str3 = C2285e2.f6049j;
                HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
                hUDMassageObj2.AradarOn = Boolean.FALSE;
                hUDMassageObj2.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
                hUDMassageObj2.aradarSenderType = HUDMassageObj.AradarSenderType.GENARADAR;
                hUDMassageObj2.v_mTurnType = -1;
                hUDMassageObj2.v_mTurnDis = 0;
                hUDMassageObj2.v_mNextRoad = " ";
                C1652b.m2734a();
                C1652b.m2740i().m2369e(hUDMassageObj2);
                break;
            case 24:
                String str4 = C2285e2.f6049j;
                HUDMassageObj hUDMassageObj3 = new HUDMassageObj();
                hUDMassageObj3.NaviOn = Boolean.TRUE;
                hUDMassageObj3.hudSenderType = HUDMassageObj.HudSenderType.NAVI;
                hUDMassageObj3.v_mTurnType = 3;
                hUDMassageObj3.v_mTurnDis = UsbId.SILABS_CP2102;
                hUDMassageObj3.v_mRemainDis = 800;
                hUDMassageObj3.v_mNextRoad = AbstractC1387m.m2421h(new byte[]{-116, -104, 100, -89}, new byte[]{-40, -35, 55, -13, -44, -53, 70, 116});
                hUDMassageObj3.setspeedlimit(60);
                C1652b.m2734a();
                C1652b.m2740i().m2369e(hUDMassageObj3);
                break;
            case 25:
                String str5 = C2285e2.f6049j;
                HUDMassageObj hUDMassageObj4 = new HUDMassageObj();
                hUDMassageObj4.NaviOn = Boolean.FALSE;
                hUDMassageObj4.hudSenderType = HUDMassageObj.HudSenderType.NAVI;
                hUDMassageObj4.aradarSenderType = HUDMassageObj.AradarSenderType.GENARADAR;
                hUDMassageObj4.v_mTurnType = -1;
                hUDMassageObj4.v_mTurnDis = 0;
                hUDMassageObj4.v_mNextRoad = " ";
                C1652b.m2734a();
                C1652b.m2740i().m2369e(hUDMassageObj4);
                break;
            default:
                C2957j c2957j = C2957j.f8226m;
                if (c2957j != null) {
                    c2957j.m4739a();
                }
                break;
        }
    }

    public /* synthetic */ RunnableC1431v0(int i10, Object obj) {
        this.f3451b = i10;
    }
}
