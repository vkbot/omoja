package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo$CollectionInfo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AccessibilityNodeInfoCompat$CollectionInfoCompat {
    public static final int SELECTION_MODE_MULTIPLE = 2;
    public static final int SELECTION_MODE_NONE = 0;
    public static final int SELECTION_MODE_SINGLE = 1;
    final Object mInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeInfoCompat$CollectionInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int i9, int i10, boolean z8, int i11) {
        return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfo$CollectionInfo.obtain(i9, i10, z8, i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColumnCount() {
        return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getColumnCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRowCount() {
        return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getRowCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSelectionMode() {
        return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).getSelectionMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHierarchical() {
        return ((AccessibilityNodeInfo$CollectionInfo) this.mInfo).isHierarchical();
    }

    public static AccessibilityNodeInfoCompat$CollectionInfoCompat obtain(int i9, int i10, boolean z8) {
        return new AccessibilityNodeInfoCompat$CollectionInfoCompat(AccessibilityNodeInfo$CollectionInfo.obtain(i9, i10, z8));
    }
}
