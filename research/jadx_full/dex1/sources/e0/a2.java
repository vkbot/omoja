package e0;

import com.example.navistart.MyCarReceiver;
import com.example.navistart.VJCT;
import com.example.navistart.cores.CarCmdProxy;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1809b;
    public final /* synthetic */ String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a2(String str, int i9) {
        this.f1809b = i9;
        this.c = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1809b;
        String str = this.c;
        switch (i9) {
            case 0:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
                h0.b.a();
                CarCmdProxy carCmdProxyD = h0.b.d();
                u0.a aVarO = h0.b.o();
                StringBuilder sbU = ai.onnxruntime.a.u(str);
                sbU.append(m.h(new byte[]{-68, 26, -91, -52, 9}, new byte[]{-29, 87, -22, -97, 65, 118, -111, 50}));
                sbU.append(MyCarReceiver.f786o);
                carCmdProxyD.carsetheat(aVarO.loadInt(sbU.toString(), 2) + 1, 2);
                break;
            case 1:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = MyCarReceiver.c;
                h0.b.a();
                CarCmdProxy carCmdProxyD2 = h0.b.d();
                u0.a aVarO2 = h0.b.o();
                StringBuilder sbU2 = ai.onnxruntime.a.u(str);
                sbU2.append(m.h(new byte[]{-100, 29, 112, 25, -23}, new byte[]{-61, 80, 63, 74, -95, 33, 80, -13}));
                sbU2.append(MyCarReceiver.f786o);
                carCmdProxyD2.carsetvent(aVarO2.loadInt(sbU2.toString(), 2) + 1, 1);
                break;
            case 2:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = MyCarReceiver.c;
                h0.b.a();
                CarCmdProxy carCmdProxyD3 = h0.b.d();
                u0.a aVarO3 = h0.b.o();
                StringBuilder sbU3 = ai.onnxruntime.a.u(str);
                sbU3.append(m.h(new byte[]{-26, -124, -100, 63, -17}, new byte[]{-71, -55, -45, 108, -89, -121, 118, 86}));
                sbU3.append(MyCarReceiver.f786o);
                carCmdProxyD3.carsetvent(aVarO3.loadInt(sbU3.toString(), 2) + 1, 2);
                break;
            case 3:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor4 = MyCarReceiver.c;
                h0.b.a();
                CarCmdProxy carCmdProxyD4 = h0.b.d();
                u0.a aVarO4 = h0.b.o();
                StringBuilder sbU4 = ai.onnxruntime.a.u(str);
                sbU4.append(m.h(new byte[]{-120, -63, 91, -85, ByteCompanionObject.MIN_VALUE}, new byte[]{-41, -116, 20, -8, -56, -24, -3, -55}));
                sbU4.append(MyCarReceiver.f786o);
                carCmdProxyD4.carsetheat(aVarO4.loadInt(sbU4.toString(), 2) + 1, 1);
                break;
            case 4:
                VJCT.f881i.setText(str);
                break;
            default:
                VJCT.f880h.setText(str);
                break;
        }
    }
}
