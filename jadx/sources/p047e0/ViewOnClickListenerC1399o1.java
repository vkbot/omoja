package p047e0;

import ai.onnxruntime.C0077d;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.TService;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.VJCT;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.mainview.HeatManSetView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p016b1.AbstractC0880u;
import p039d2.C1252h;
import p078h0.C1652b;
import p128l7.RunnableC2218a;
import p207u1.AbstractC3282e;

/* JADX INFO: renamed from: e0.o1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC1399o1 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3355b;

    public /* synthetic */ ViewOnClickListenerC1399o1(TestSpaceActivity testSpaceActivity) {
        this.f3355b = 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = 1;
        switch (this.f3355b) {
            case 0:
                String str = ModernMainActivity.f1436B1;
                for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                    if (parent instanceof HeatManSetView) {
                        ((View) parent).performClick();
                    }
                    break;
                }
                break;
            case 1:
                int i11 = TestSpaceActivity.f1645h;
                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{5, 94, -126, 10, -119, -63, -50, 72, -11, 45, -45, 110, -38, -112, -95, 26, 106}, new byte[]{-43, -4, 82, -65, 88, 64, 31, -54}));
                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                int i12 = AbstractC3282e.f9618a;
                int i13 = AbstractC0880u.f644a;
                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-35, 37, 20, 116, -92, -92, 67, 2, -75, 57, 62, 48, -120, -65, 12, 65, -75}, new byte[]{-107, 112, 80, 84, -19, -57, 44, 108}) + i13);
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.v_mTurnType = i13;
                hUDMassageObj.v_mTurnDis = 100;
                hUDMassageObj.v_mRemainDis = 10000;
                hUDMassageObj.v_mNextRoad = AbstractC1387m.m2421h(new byte[]{73, -70, 27, -91, -68, -50, 94, -21, -72, 76, -82, 99, 25}, new byte[]{-104, 56, -53, 16, 109, 79, -113, 105});
                C1652b.m2734a();
                C1652b.m2748r().StartHUD();
                C1652b.m2734a();
                C1652b.m2748r().SendInfoHUD(hUDMassageObj);
                AbstractC0880u.f644a--;
                break;
            case 2:
                TextView textView = VJCT.f1689g;
                C1252h c1252h = TService.f1640c;
                if (c1252h != null) {
                    ((ScheduledThreadPoolExecutor) c1252h.f2952a).execute(new RunnableC2218a(c1252h, i10));
                }
                break;
            case 3:
                HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
                hUDMassageObj2.v_mTurnType = 14;
                hUDMassageObj2.v_mTurnDis = 100;
                hUDMassageObj2.v_mRemainDis = 10000;
                hUDMassageObj2.v_mNextRoad = AbstractC1387m.m2421h(new byte[]{-110, -127, -101, 9, -33, -113, -12, 9, 99, 119, 46, -49, 122}, new byte[]{67, 3, 75, -68, 14, 14, 37, -117});
                C1652b.m2734a();
                C1652b.m2748r().StartHUD();
                C1652b.m2734a();
                C1652b.m2748r().SendInfoHUD(hUDMassageObj2);
                break;
            case 4:
                C1652b.m2734a();
                C1652b.m2748r().StopHUD();
                break;
            default:
                ConcurrentHashMap concurrentHashMap = AbstractC1434w.f3456a;
                ArrayList arrayList = new ArrayList(Thread.getAllStackTraces().keySet());
                arrayList.sort(Comparator.comparing(new C0077d(1)));
                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{17, 57, -38, 14, -104, -106, 72, 70, 88, 109, -111, 86, -123, -30, 97, 87, 73, 101, -125, 64, -123, -117, 52, 24, 17, 57}, new byte[]{44, 4, -25, 51, -91, -74, 9, 37}), ColorText.RED);
                int size = arrayList.size();
                int i14 = 0;
                while (i14 < size) {
                    Object obj = arrayList.get(i14);
                    i14++;
                    Thread thread = (Thread) obj;
                    C1652b.m2751w(String.format(AbstractC1387m.m2421h(new byte[]{-68, -17, -21, -118, -88, 52, 100, 8, -3, -80, -21, -47, -75, 49, 45, 72, -92, -71, -72, -117}, new byte[]{-103, -100, -53, -94, -63, 80, 89, 45}), thread.getName(), Long.valueOf(thread.getId()), thread.getState()), ColorText.RED);
                }
                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122}, new byte[]{-90, -68, 71, 98, -118, -34, 28, 89}), ColorText.RED);
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC1399o1(int i10) {
        this.f3355b = i10;
    }
}
