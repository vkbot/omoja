package androidx.core.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$RangeInfo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AccessibilityNodeInfoCompat$RangeInfoCompat {
    public static final int RANGE_TYPE_FLOAT = 1;
    public static final int RANGE_TYPE_INT = 0;
    public static final int RANGE_TYPE_PERCENT = 2;
    final Object mInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeInfoCompat$RangeInfoCompat(int i9, float f8, float f9, float f10) {
        if (Build$VERSION.SDK_INT >= 30) {
            this.mInfo = AccessibilityNodeInfoCompat$Api30Impl.createRangeInfo(i9, f8, f9, f10);
        } else {
            this.mInfo = AccessibilityNodeInfo$RangeInfo.obtain(i9, f8, f9, f10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccessibilityNodeInfoCompat$RangeInfoCompat obtain(int i9, float f8, float f9, float f10) {
        return new AccessibilityNodeInfoCompat$RangeInfoCompat(AccessibilityNodeInfo$RangeInfo.obtain(i9, f8, f9, f10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCurrent() {
        return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getCurrent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMax() {
        return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getMax();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMin() {
        return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getMin();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getType() {
        return ((AccessibilityNodeInfo$RangeInfo) this.mInfo).getType();
    }

    public AccessibilityNodeInfoCompat$RangeInfoCompat(Object obj) {
        this.mInfo = obj;
    }
}
