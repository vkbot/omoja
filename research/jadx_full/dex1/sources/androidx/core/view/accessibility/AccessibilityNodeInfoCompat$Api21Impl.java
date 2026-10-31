package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class AccessibilityNodeInfoCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AccessibilityNodeInfoCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static AccessibilityNodeInfoCompat$CollectionItemInfoCompat createCollectionItemInfo(int i9, int i10, int i11, int i12, boolean z8, boolean z9) {
        return new AccessibilityNodeInfoCompat$CollectionItemInfoCompat(AccessibilityNodeInfo$CollectionItemInfo.obtain(i9, i10, i11, i12, z8, z9));
    }
}
