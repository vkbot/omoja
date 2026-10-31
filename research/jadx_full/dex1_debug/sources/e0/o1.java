package e0;

import android.view.View;
import android.view.View$OnClickListener;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o1 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1915b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o1(TestSpaceActivity testSpaceActivity) {
        this.f1915b = 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r9v2, resolved type: android.view.ViewParent */
    /* JADX DEBUG: Multi-variable search result rejected for r9v29, resolved type: android.view.ViewParent */
    /* JADX DEBUG: Multi-variable search result rejected for r9v30, resolved type: android.view.ViewParent */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f1915b) {
            case 0:
                String str = ModernMainActivity.B1;
                for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                    if (parent instanceof HeatManSetView) {
                        ((View) parent).performClick();
                    }
                    break;
                }
                break;
            case 1:
                int i9 = TestSpaceActivity.f847h;
                h0.b.v(m.h(new byte[]{5, 94, -126, 10, -119, -63, -50, 72, -11, 45, -45, 110, -38, -112, -95, 26, 106}, new byte[]{-43, -4, 82, -65, 88, 64, 31, -54}));
                w.c(-1, m.h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                int i10 = u1.e.f5457a;
                int i11 = b1.u.f295a;
                h0.b.v(m.h(new byte[]{-35, 37, 20, 116, -92, -92, 67, 2, -75, 57, 62, 48, -120, -65, 12, 65, -75}, new byte[]{-107, 112, 80, 84, -19, -57, 44, 108}) + i11);
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.v_mTurnType = i11;
                hUDMassageObj.v_mTurnDis = 100;
                hUDMassageObj.v_mRemainDis = 10000;
                hUDMassageObj.v_mNextRoad = m.h(new byte[]{73, -70, 27, -91, -68, -50, 94, -21, -72, 76, -82, 99, 25}, new byte[]{-104, 56, -53, 16, 109, 79, -113, 105});
                h0.b.a();
                h0.b.r().StartHUD();
                h0.b.a();
                h0.b.r().SendInfoHUD(hUDMassageObj);
                b1.u.f295a--;
                break;
            case 2:
                TextView textView = VJCT.f879g;
                d2.h hVar = TService.c;
                if (hVar != null) {
                    ((ScheduledThreadPoolExecutor) hVar.f1677a).execute(new l7.a(hVar, 1));
                }
                break;
            case 3:
                HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
                hUDMassageObj2.v_mTurnType = 14;
                hUDMassageObj2.v_mTurnDis = 100;
                hUDMassageObj2.v_mRemainDis = 10000;
                hUDMassageObj2.v_mNextRoad = m.h(new byte[]{-110, -127, -101, 9, -33, -113, -12, 9, 99, 119, 46, -49, 122}, new byte[]{67, 3, 75, -68, 14, 14, 37, -117});
                h0.b.a();
                h0.b.r().StartHUD();
                h0.b.a();
                h0.b.r().SendInfoHUD(hUDMassageObj2);
                break;
            case 4:
                h0.b.a();
                h0.b.r().StopHUD();
                break;
            default:
                ConcurrentHashMap concurrentHashMap = w.f1979a;
                ArrayList arrayList = new ArrayList(Thread.getAllStackTraces().keySet());
                arrayList.sort(Comparator.comparing(new ai.onnxruntime.d(1)));
                h0.b.w(m.h(new byte[]{17, 57, -38, 14, -104, -106, 72, 70, 88, 109, -111, 86, -123, -30, 97, 87, 73, 101, -125, 64, -123, -117, 52, 24, 17, 57}, new byte[]{44, 4, -25, 51, -91, -74, 9, 37}), ColorText.RED);
                int size = arrayList.size();
                int i12 = 0;
                while (i12 < size) {
                    Object obj = arrayList.get(i12);
                    i12++;
                    Thread thread = (Thread) obj;
                    h0.b.w(String.format(m.h(new byte[]{-68, -17, -21, -118, -88, 52, 100, 8, -3, -80, -21, -47, -75, 49, 45, 72, -92, -71, -72, -117}, new byte[]{-103, -100, -53, -94, -63, 80, 89, 45}), thread.getName(), Long.valueOf(thread.getId()), thread.getState()), ColorText.RED);
                }
                h0.b.w(m.h(new byte[]{-101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122, 95, -73, -29, 33, 100, -101, -127, 122}, new byte[]{-90, -68, 71, 98, -118, -34, 28, 89}), ColorText.RED);
                break;
        }
    }

    public /* synthetic */ o1(int i9) {
        this.f1915b = i9;
    }
}
