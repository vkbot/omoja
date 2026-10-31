package androidx.core.view.accessibility;

import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AccessibilityNodeInfoCompat$CollectionItemInfoCompat {
    final Object mInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeInfoCompat$CollectionItemInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int i9, int i10, int i11, int i12, boolean z8, boolean z9) {
        return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i9, i10, i11, i12, z8, z9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColumnIndex() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getColumnIndex();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColumnSpan() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getColumnSpan();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getColumnTitle() {
        if (Build$VERSION.SDK_INT >= 33) {
            return AccessibilityNodeInfoCompat$Api33Impl.getCollectionItemColumnTitle(this.mInfo);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRowIndex() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getRowIndex();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRowSpan() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).getRowSpan();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getRowTitle() {
        if (Build$VERSION.SDK_INT >= 33) {
            return AccessibilityNodeInfoCompat$Api33Impl.getCollectionItemRowTitle(this.mInfo);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean isHeading() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).isHeading();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSelected() {
        return ((AccessibilityNodeInfo$CollectionItemInfo) this.mInfo).isSelected();
    }

    public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat obtain(int i9, int i10, int i11, int i12, boolean z8) {
        return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i9, i10, i11, i12, z8));
    }
}
