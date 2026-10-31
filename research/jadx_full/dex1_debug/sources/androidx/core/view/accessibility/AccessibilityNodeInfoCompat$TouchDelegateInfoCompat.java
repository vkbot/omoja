package androidx.core.view.accessibility;

import android.graphics.Region;
import android.os.Build$VERSION;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo$TouchDelegateInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.n;
import java.util.Map;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AccessibilityNodeInfoCompat$TouchDelegateInfoCompat {
    final AccessibilityNodeInfo$TouchDelegateInfo mInfo;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityNodeInfoCompat$TouchDelegateInfoCompat(@NonNull Map<Region, View> map) {
        if (Build$VERSION.SDK_INT >= 29) {
            this.mInfo = n.k(map);
        } else {
            this.mInfo = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Region getRegionAt(@IntRange(from = ULong.MIN_VALUE) int i9) {
        if (Build$VERSION.SDK_INT >= 29) {
            return n.d(this.mInfo, i9);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public int getRegionCount() {
        if (Build$VERSION.SDK_INT >= 29) {
            return n.b(this.mInfo);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public AccessibilityNodeInfoCompat getTargetForRegion(@NonNull Region region) {
        AccessibilityNodeInfo accessibilityNodeInfoL;
        if (Build$VERSION.SDK_INT < 29 || (accessibilityNodeInfoL = n.l(this.mInfo, region)) == null) {
            return null;
        }
        return AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfoL);
    }

    public AccessibilityNodeInfoCompat$TouchDelegateInfoCompat(@NonNull AccessibilityNodeInfo$TouchDelegateInfo accessibilityNodeInfo$TouchDelegateInfo) {
        this.mInfo = accessibilityNodeInfo$TouchDelegateInfo;
    }
}
