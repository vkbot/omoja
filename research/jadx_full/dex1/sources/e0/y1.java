package e0;

import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.example.navistart.MyA11yService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class y1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2006b;
    public final /* synthetic */ MyA11yService c;
    public final /* synthetic */ AccessibilityEvent d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ y1(MyA11yService myA11yService, AccessibilityEvent accessibilityEvent, int i9) {
        this.f2006b = i9;
        this.c = myA11yService;
        this.d = accessibilityEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        boolean zEquals;
        int i9 = this.f2006b;
        AccessibilityEvent accessibilityEvent = this.d;
        MyA11yService myA11yService = this.c;
        switch (i9) {
            case 0:
                MyA11yService myA11yService2 = MyA11yService.c;
                if (accessibilityEvent.getEventType() == 262144) {
                    Log.d(m.h(new byte[]{-11, -99, 56, 29, 84, -86, 122}, new byte[]{-78, -40, 107, 73, 1, -8, 63, 113}), m.h(new byte[]{62, 17, 46, -13, 89, -111, -29, 48, 10, 0, 60, -11, 88, -122, -30}, new byte[]{121, 116, 93, -121, 44, -29, -122, 16}));
                }
                if (accessibilityEvent.getEventType() == 524288) {
                    Log.d(m.h(new byte[]{28, -46, -33, 42, 78, -58, -106}, new byte[]{91, -105, -116, 126, 27, -108, -45, -104}), m.h(new byte[]{58, -5, -28, -57, 2, -125, 9, -61, 24, -16, -13, -42, 19}, new byte[]{125, -98, -105, -77, 119, -15, 108, -29}));
                }
                if (accessibilityEvent.getEventType() == 512) {
                    Log.d(m.h(new byte[]{-111, -47, -56, -50, -73, -91, 83}, new byte[]{-42, -108, -101, -102, -30, -9, 22, 22}), m.h(new byte[]{-120, 71, -92, -14, 42, -23, -32, 80, -84, 68, -66, -29, 35, -67, -20, 71, -78, 8, -94, -27, 35, -69, -15, 77, -72}, new byte[]{-36, 40, -47, -111, 66, -55, -123, 40}));
                }
                if (MyA11yService.e == null) {
                    MyA11yService.e = Boolean.valueOf(h0.b.o().loadBoolean(m.h(new byte[]{46, -60, -45, -48, 55, -79, 35, 15, 60, -9, -37, -35, 47, -102, 54, 12, 32, -9, -59, -38, 50, -79, 52, 12, 37, -53, -39}, new byte[]{76, -88, -78, -77, 92, -18, 87, 96}), true));
                }
                String str = e1.a.f2017a;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - e1.a.f2019f >= 600) {
                    boolean zEquals2 = false;
                    try {
                        zEquals = n0.a.f3776f.name().equals(h0.b.o().loadString(e1.a.f2017a, n0.a.d.name()));
                    } catch (Exception unused) {
                        zEquals = false;
                    }
                    if (zEquals) {
                        String strLoadString = "";
                        String string = accessibilityEvent.getPackageName() == null ? "" : accessibilityEvent.getPackageName().toString();
                        if (string != null && !string.isEmpty()) {
                            try {
                                strLoadString = h0.b.o().loadString(e1.a.f2018b, "");
                                break;
                            } catch (Exception unused2) {
                            }
                            zEquals2 = (strLoadString == null || strLoadString.trim().isEmpty()) ? string.equals(e1.a.c) : string.equals(strLoadString.trim());
                        }
                        if (zEquals2) {
                            e1.a.f2019f = jCurrentTimeMillis;
                            AccessibilityNodeInfo accessibilityNodeInfoB = null;
                            try {
                                accessibilityNodeInfoB = e1.a.b(myA11yService, accessibilityEvent, string);
                                if (accessibilityNodeInfoB != null) {
                                    a6.a aVarM = e1.a.d.m(accessibilityNodeInfoB, string);
                                    h0.b.a();
                                    a0 a0VarI = h0.b.i();
                                    e1.a.e.getClass();
                                    a0VarI.e(e1.b.a(aVarM));
                                }
                                break;
                            } catch (Exception unused3) {
                            } finally {
                                e1.a.c(null);
                            }
                        }
                    }
                    break;
                }
                try {
                    h0.b.a();
                    if (accessibilityEvent.getEventType() == 32 || accessibilityEvent.getEventType() == 4194304) {
                        Log.i(m.h(new byte[]{100, -91, 60, -65, 52, -90, -76, 77, 74, -93, 39, -81, 24, -66, -105, 94, 87, -91, 60, -70, 47, -66, -118}, new byte[]{51, -52, 82, -37, 91, -47, -8, 44}), m.h(new byte[]{6, -85, -5, 101, -49, -77, -20, 58, 16, -72, -20, 125, -46, -22, -87, 110, 12, -66, -20, 46}, new byte[]{117, -50, -119, 19, -90, -48, -119, 26}) + accessibilityEvent.getEventType());
                    }
                    h0.b.a().j().ae(myA11yService, accessibilityEvent);
                    break;
                } catch (Exception unused4) {
                }
                myA11yService.b(accessibilityEvent);
                myA11yService.f775b.schedule(new y1(myA11yService, AccessibilityEvent.obtain(accessibilityEvent), 1), 300L, TimeUnit.MILLISECONDS);
                accessibilityEvent.recycle();
                return;
            default:
                MyA11yService myA11yService3 = MyA11yService.c;
                try {
                    AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(myA11yService.getRootInActiveWindow());
                    h0.b.a();
                    h0.b.g().d().k(accessibilityEvent, accessibilityNodeInfoObtain);
                    break;
                } catch (Exception unused5) {
                } finally {
                    accessibilityEvent.recycle();
                }
                return;
        }
    }
}
