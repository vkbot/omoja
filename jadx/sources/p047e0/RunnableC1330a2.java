package p047e0;

import ai.onnxruntime.AbstractC0074a;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.VJCT;
import com.example.navistart.cores.CarCmdProxy;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: e0.a2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1330a2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3178b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f3179c;

    public /* synthetic */ RunnableC1330a2(String str, int i10) {
        this.f3178b = i10;
        this.f3179c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3178b;
        String str = this.f3179c;
        switch (i10) {
            case 0:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.f1463c;
                C1652b.m2734a();
                CarCmdProxy carCmdProxyM2736d = C1652b.m2736d();
                C3277a c3277aM2745o = C1652b.m2745o();
                StringBuilder sbM170u = AbstractC0074a.m170u(str);
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{-68, 26, -91, -52, 9}, new byte[]{-29, 87, -22, -97, 65, 118, -111, 50}));
                sbM170u.append(MyCarReceiver.f1475o);
                carCmdProxyM2736d.carsetheat(c3277aM2745o.loadInt(sbM170u.toString(), 2) + 1, 2);
                break;
            case 1:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                CarCmdProxy carCmdProxyM2736d2 = C1652b.m2736d();
                C3277a c3277aM2745o2 = C1652b.m2745o();
                StringBuilder sbM170u2 = AbstractC0074a.m170u(str);
                sbM170u2.append(AbstractC1387m.m2421h(new byte[]{-100, 29, 112, 25, -23}, new byte[]{-61, 80, 63, 74, -95, 33, 80, -13}));
                sbM170u2.append(MyCarReceiver.f1475o);
                carCmdProxyM2736d2.carsetvent(c3277aM2745o2.loadInt(sbM170u2.toString(), 2) + 1, 1);
                break;
            case 2:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                CarCmdProxy carCmdProxyM2736d3 = C1652b.m2736d();
                C3277a c3277aM2745o3 = C1652b.m2745o();
                StringBuilder sbM170u3 = AbstractC0074a.m170u(str);
                sbM170u3.append(AbstractC1387m.m2421h(new byte[]{-26, -124, -100, 63, -17}, new byte[]{-71, -55, -45, 108, -89, -121, 118, 86}));
                sbM170u3.append(MyCarReceiver.f1475o);
                carCmdProxyM2736d3.carsetvent(c3277aM2745o3.loadInt(sbM170u3.toString(), 2) + 1, 2);
                break;
            case 3:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor4 = MyCarReceiver.f1463c;
                C1652b.m2734a();
                CarCmdProxy carCmdProxyM2736d4 = C1652b.m2736d();
                C3277a c3277aM2745o4 = C1652b.m2745o();
                StringBuilder sbM170u4 = AbstractC0074a.m170u(str);
                sbM170u4.append(AbstractC1387m.m2421h(new byte[]{-120, -63, 91, -85, ByteCompanionObject.MIN_VALUE}, new byte[]{-41, -116, 20, -8, -56, -24, -3, -55}));
                sbM170u4.append(MyCarReceiver.f1475o);
                carCmdProxyM2736d4.carsetheat(c3277aM2745o4.loadInt(sbM170u4.toString(), 2) + 1, 1);
                break;
            case 4:
                VJCT.f1691i.setText(str);
                break;
            default:
                VJCT.f1690h.setText(str);
                break;
        }
    }
}
