package p047e0;

import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.example.navistart.MyA11yService;
import java.util.concurrent.TimeUnit;
import p007a6.C0025a;
import p048e1.AbstractC1450a;
import p048e1.C1451b;
import p078h0.C1652b;
import p142n0.EnumC2466a;

/* JADX INFO: renamed from: e0.y1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1444y1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3496b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ MyA11yService f3497c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AccessibilityEvent f3498d;

    public /* synthetic */ RunnableC1444y1(MyA11yService myA11yService, AccessibilityEvent accessibilityEvent, int i10) {
        this.f3496b = i10;
        this.f3497c = myA11yService;
        this.f3498d = accessibilityEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zEquals;
        int i10 = this.f3496b;
        AccessibilityEvent accessibilityEvent = this.f3498d;
        MyA11yService myA11yService = this.f3497c;
        switch (i10) {
            case 0:
                MyA11yService myA11yService2 = MyA11yService.f1453c;
                if (accessibilityEvent.getEventType() == 262144) {
                    Log.d(AbstractC1387m.m2421h(new byte[]{-11, -99, 56, 29, 84, -86, 122}, new byte[]{-78, -40, 107, 73, 1, -8, 63, 113}), AbstractC1387m.m2421h(new byte[]{62, 17, 46, -13, 89, -111, -29, 48, 10, 0, 60, -11, 88, -122, -30}, new byte[]{121, 116, 93, -121, 44, -29, -122, 16}));
                }
                if (accessibilityEvent.getEventType() == 524288) {
                    Log.d(AbstractC1387m.m2421h(new byte[]{28, -46, -33, 42, 78, -58, -106}, new byte[]{91, -105, -116, 126, 27, -108, -45, -104}), AbstractC1387m.m2421h(new byte[]{58, -5, -28, -57, 2, -125, 9, -61, 24, -16, -13, -42, 19}, new byte[]{125, -98, -105, -77, 119, -15, 108, -29}));
                }
                if (accessibilityEvent.getEventType() == 512) {
                    Log.d(AbstractC1387m.m2421h(new byte[]{-111, -47, -56, -50, -73, -91, 83}, new byte[]{-42, -108, -101, -102, -30, -9, 22, 22}), AbstractC1387m.m2421h(new byte[]{-120, 71, -92, -14, 42, -23, -32, 80, -84, 68, -66, -29, 35, -67, -20, 71, -78, 8, -94, -27, 35, -69, -15, 77, -72}, new byte[]{-36, 40, -47, -111, 66, -55, -123, 40}));
                }
                int i11 = 1;
                if (MyA11yService.f1455e == null) {
                    MyA11yService.f1455e = Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{46, -60, -45, -48, 55, -79, 35, 15, 60, -9, -37, -35, 47, -102, 54, 12, 32, -9, -59, -38, 50, -79, 52, 12, 37, -53, -39}, new byte[]{76, -88, -78, -77, 92, -18, 87, 96}), true));
                }
                String str = AbstractC1450a.f3519a;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - AbstractC1450a.f3524f >= 600) {
                    boolean zEquals2 = false;
                    try {
                        zEquals = EnumC2466a.f6675f.name().equals(C1652b.m2745o().loadString(AbstractC1450a.f3519a, EnumC2466a.f6673d.name()));
                    } catch (Exception unused) {
                        zEquals = false;
                    }
                    if (zEquals) {
                        String strLoadString = "";
                        String string = accessibilityEvent.getPackageName() == null ? "" : accessibilityEvent.getPackageName().toString();
                        if (string != null && !string.isEmpty()) {
                            try {
                                strLoadString = C1652b.m2745o().loadString(AbstractC1450a.f3520b, "");
                                break;
                            } catch (Exception unused2) {
                            }
                            zEquals2 = (strLoadString == null || strLoadString.trim().isEmpty()) ? string.equals(AbstractC1450a.f3521c) : string.equals(strLoadString.trim());
                        }
                        if (zEquals2) {
                            AbstractC1450a.f3524f = jCurrentTimeMillis;
                            AccessibilityNodeInfo accessibilityNodeInfoM2497b = null;
                            try {
                                accessibilityNodeInfoM2497b = AbstractC1450a.m2497b(myA11yService, accessibilityEvent, string);
                                if (accessibilityNodeInfoM2497b != null) {
                                    C0025a c0025aM4944m = AbstractC1450a.f3522d.m4944m(accessibilityNodeInfoM2497b, string);
                                    C1652b.m2734a();
                                    C1328a0 c1328a0M2740i = C1652b.m2740i();
                                    AbstractC1450a.f3523e.getClass();
                                    c1328a0M2740i.m2369e(C1451b.m2499a(c0025aM4944m));
                                }
                                break;
                            } catch (Exception unused3) {
                            } finally {
                                AbstractC1450a.m2498c(null);
                            }
                        }
                    }
                    break;
                }
                try {
                    C1652b.m2734a();
                    if (accessibilityEvent.getEventType() == 32 || accessibilityEvent.getEventType() == 4194304) {
                        Log.i(AbstractC1387m.m2421h(new byte[]{100, -91, 60, -65, 52, -90, -76, 77, 74, -93, 39, -81, 24, -66, -105, 94, 87, -91, 60, -70, 47, -66, -118}, new byte[]{51, -52, 82, -37, 91, -47, -8, 44}), AbstractC1387m.m2421h(new byte[]{6, -85, -5, 101, -49, -77, -20, 58, 16, -72, -20, 125, -46, -22, -87, 110, 12, -66, -20, 46}, new byte[]{117, -50, -119, 19, -90, -48, -119, 26}) + accessibilityEvent.getEventType());
                    }
                    C1652b.m2734a().m2755j().m1630ae(myA11yService, accessibilityEvent);
                    break;
                } catch (Exception unused4) {
                }
                myA11yService.m1481b(accessibilityEvent);
                myA11yService.f1460b.schedule(new RunnableC1444y1(myA11yService, AccessibilityEvent.obtain(accessibilityEvent), i11), 300L, TimeUnit.MILLISECONDS);
                accessibilityEvent.recycle();
                return;
            default:
                MyA11yService myA11yService3 = MyA11yService.f1453c;
                try {
                    AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(myA11yService.getRootInActiveWindow());
                    C1652b.m2734a();
                    C1652b.m2738g().mo3014d().mo1149k(accessibilityEvent, accessibilityNodeInfoObtain);
                    break;
                } catch (Exception unused5) {
                } finally {
                    accessibilityEvent.recycle();
                }
                return;
        }
    }
}
