package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class AccessibilityWindowInfoCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AccessibilityWindowInfoCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void getBoundsInScreen(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
        accessibilityWindowInfo.getBoundsInScreen(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AccessibilityWindowInfo getChild(AccessibilityWindowInfo accessibilityWindowInfo, int i9) {
        return accessibilityWindowInfo.getChild(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getChildCount(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getId(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getLayer(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getLayer();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AccessibilityWindowInfo getParent(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getParent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AccessibilityNodeInfo getRoot(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getRoot();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getType(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isAccessibilityFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.isAccessibilityFocused();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isActive(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.isActive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isFocused(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.isFocused();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AccessibilityWindowInfo obtain() {
        return AccessibilityWindowInfo.obtain();
    }

    @DoNotInline
    public static AccessibilityWindowInfo obtain(AccessibilityWindowInfo accessibilityWindowInfo) {
        return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
    }
}
