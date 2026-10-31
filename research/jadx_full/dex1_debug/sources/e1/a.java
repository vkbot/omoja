package e1;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import e0.m;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f2017a = m.h(new byte[]{48, 52, -94, 81, -16, -52, -65, -11, 34, 54, -86, 91, -1, -37, -110, -38, 49, 43}, new byte[]{67, 68, -53, 63, -98, -87, -51, -86});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f2018b = m.h(new byte[]{-86, 106, 24, 35, -23, -2, 110, -73, -99, 111, 29, 51, -14, -6, 108, -74}, new byte[]{-62, 31, 124, 80, -103, -101, 11, -45});
    public static final String c = m.h(new byte[]{93, 36, 12, -78, 60, -4, -117, 33, 80, 38, 31, -44, 58, -52, -65, 22, 121, 8}, new byte[]{60, 77, 126, -100, 111, -120, -7, 68});
    public static final r5.c d = new r5.c(9);
    public static final b e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static long f2019f = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean a(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        if (accessibilityNodeInfo != null && str != null && !str.isEmpty()) {
            CharSequence packageName = accessibilityNodeInfo.getPackageName();
            if (packageName != null && str.equals(packageName.toString())) {
                return true;
            }
            int childCount = accessibilityNodeInfo.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                AccessibilityNodeInfo child = null;
                try {
                    child = accessibilityNodeInfo.getChild(i9);
                    if (a(child, str)) {
                        c(child);
                        return true;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    c(child);
                    throw th;
                }
                c(child);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccessibilityNodeInfo b(AccessibilityService accessibilityService, AccessibilityEvent accessibilityEvent, String str) {
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
                                if (a(root, str)) {
                                    break;
                                }
                            } catch (Exception unused) {
                            }
                        } catch (Exception unused2) {
                            root = null;
                        }
                        c(root);
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
        if (a(source, str)) {
            return source;
        }
        c(source);
        AccessibilityNodeInfo rootInActiveWindow = accessibilityService.getRootInActiveWindow();
        if (a(rootInActiveWindow, str)) {
            return rootInActiveWindow;
        }
        c(rootInActiveWindow);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo != null) {
            try {
                accessibilityNodeInfo.recycle();
            } catch (Exception unused) {
            }
        }
    }
}
