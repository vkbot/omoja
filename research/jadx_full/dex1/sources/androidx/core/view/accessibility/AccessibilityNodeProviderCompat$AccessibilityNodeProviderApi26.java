package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
        super(accessibilityNodeProviderCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.accessibility.AccessibilityNodeProvider
    public void addExtraDataToAccessibilityNodeInfo(int i9, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        this.mCompat.addExtraDataToAccessibilityNodeInfo(i9, AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo), str, bundle);
    }
}
