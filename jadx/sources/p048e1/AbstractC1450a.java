package p048e1;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.util.Iterator;
import java.util.List;
import p047e0.AbstractC1387m;
import p184r5.C3105c;

/* JADX INFO: renamed from: e1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1450a {

    /* JADX INFO: renamed from: a */
    public static final String f3519a = AbstractC1387m.m2421h(new byte[]{48, 52, -94, 81, -16, -52, -65, -11, 34, 54, -86, 91, -1, -37, -110, -38, 49, 43}, new byte[]{67, 68, -53, 63, -98, -87, -51, -86});

    /* JADX INFO: renamed from: b */
    public static final String f3520b = AbstractC1387m.m2421h(new byte[]{-86, 106, 24, 35, -23, -2, 110, -73, -99, 111, 29, 51, -14, -6, 108, -74}, new byte[]{-62, 31, 124, 80, -103, -101, 11, -45});

    /* JADX INFO: renamed from: c */
    public static final String f3521c = AbstractC1387m.m2421h(new byte[]{93, 36, 12, -78, 60, -4, -117, 33, 80, 38, 31, -44, 58, -52, -65, 22, 121, 8}, new byte[]{60, 77, 126, -100, 111, -120, -7, 68});

    /* JADX INFO: renamed from: d */
    public static final C3105c f3522d = new C3105c(9);

    /* JADX INFO: renamed from: e */
    public static final C1451b f3523e = new C1451b();

    /* JADX INFO: renamed from: f */
    public static long f3524f = 0;

    /* JADX INFO: renamed from: a */
    public static boolean m2496a(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        if (accessibilityNodeInfo != null && str != null && !str.isEmpty()) {
            CharSequence packageName = accessibilityNodeInfo.getPackageName();
            if (packageName != null && str.equals(packageName.toString())) {
                return true;
            }
            int childCount = accessibilityNodeInfo.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                AccessibilityNodeInfo child = null;
                try {
                    child = accessibilityNodeInfo.getChild(i10);
                    if (m2496a(child, str)) {
                        m2498c(child);
                        return true;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    m2498c(child);
                    throw th;
                }
                m2498c(child);
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public static AccessibilityNodeInfo m2497b(AccessibilityService accessibilityService, AccessibilityEvent accessibilityEvent, String str) {
        AccessibilityNodeInfo root;
        try {
            List<AccessibilityWindowInfo> windows = accessibilityService.getWindows();
            if (windows != null && !windows.isEmpty()) {
                Iterator<AccessibilityWindowInfo> it = windows.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        root = null;
                        break;
                    }
                    AccessibilityWindowInfo next = it.next();
                    if (next != null) {
                        try {
                            root = next.getRoot();
                            try {
                                if (m2496a(root, str)) {
                                    break;
                                }
                            } catch (Exception unused) {
                            }
                        } catch (Exception unused2) {
                            root = null;
                        }
                        m2498c(root);
                    }
                }
            } else {
                root = null;
                break;
            }
        } catch (Exception unused3) {
        }
        if (root != null) {
            return root;
        }
        AccessibilityNodeInfo source = accessibilityEvent.getSource();
        if (m2496a(source, str)) {
            return source;
        }
        m2498c(source);
        AccessibilityNodeInfo rootInActiveWindow = accessibilityService.getRootInActiveWindow();
        if (m2496a(rootInActiveWindow, str)) {
            return rootInActiveWindow;
        }
        m2498c(rootInActiveWindow);
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static void m2498c(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo != null) {
            try {
                accessibilityNodeInfo.recycle();
            } catch (Exception unused) {
            }
        }
    }
}
