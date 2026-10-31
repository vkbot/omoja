package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper implements AccessibilityManager$TouchExplorationStateChangeListener {
    final AccessibilityManagerCompat$TouchExplorationStateChangeListener mListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(@NonNull AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener) {
        this.mListener = accessibilityManagerCompat$TouchExplorationStateChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper) {
            return this.mListener.equals(((AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper) obj).mListener);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.mListener.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z8) {
        this.mListener.onTouchExplorationStateChanged(z8);
    }
}
