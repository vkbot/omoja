package p099j1;

import android.content.Context;
import android.content.Intent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.Iterator;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: j1.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1944x implements InterfaceC1943w {

    /* JADX INFO: renamed from: d */
    public static final String f5296d = AbstractC1387m.m2421h(new byte[]{-21, 108, 82, -51, 39, 98, 124, -88, -28, 106, 81, -120, 104, 122, 109, -93, -31, 98, 91, -122, 36, 98, 111, -23, -23, 115, 79, -68, 5, 91, 65, -124, -61}, new byte[]{-120, 3, 63, -29, 70, 23, 8, -57});

    /* JADX INFO: renamed from: b */
    public boolean f5297b;

    /* JADX INFO: renamed from: c */
    public boolean f5298c;

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: i */
    public final void mo1147i(Context context) {
        Intent launchIntentForPackage;
        try {
            if (C1652b.m2745o().loadBoolean(f5296d, false) && this.f5297b && (launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(AbstractC1387m.m2421h(new byte[]{122, 51, 77, 71, 0, 77, -35, -105, 117, 53, 78, 2, 79, 85, -52, -100, 112, Base64.padSymbol, 68, 12, 3, 77, -50, -42, 120, 44, 80}, new byte[]{25, 92, 32, 105, 97, 56, -87, -8}))) != null) {
                launchIntentForPackage.addFlags(268435456);
                AbstractC3656k.m5875u(context, launchIntentForPackage, null);
                this.f5298c = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: k */
    public final void mo1149k(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z9;
        if (this.f5298c && this.f5297b && accessibilityEvent != null && accessibilityNodeInfo != null && accessibilityEvent.getEventType() == 32 && AbstractC1387m.m2421h(new byte[]{81, 120, -53, 112, 43, -22, 33, -52, 94, 126, -56, 53, 100, -14, 48, -57, 91, 118, -62, 59, 40, -22, 50, -115, 83, 103, -42}, new byte[]{50, 23, -90, 94, 74, -97, 85, -93}).contentEquals(accessibilityEvent.getPackageName())) {
            Iterator<AccessibilityNodeInfo> it = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId(AbstractC1387m.m2421h(new byte[]{108, -72, -31, 10, 78, 36, 88, -38, 99, -66, -30, 79, 1, 60, 73, -47, 102, -74, -24, 65, 77, 36, 75, -101, 110, -89, -4, 30, 70, 53, 3, -63, 121, -120, -31, 77, 65, 56, 65, -36, 117, -78}, new byte[]{15, -41, -116, 36, 47, 81, 44, -75})).iterator();
            while (it.hasNext()) {
                AccessibilityNodeInfo next = it.next();
                while (true) {
                    if (next == null) {
                        z9 = false;
                        break;
                    } else {
                        if (next.isClickable()) {
                            next.performAction(16);
                            z9 = true;
                            break;
                        }
                        next = next.getParent();
                    }
                }
                this.f5297b = !z9;
            }
        }
    }
}
