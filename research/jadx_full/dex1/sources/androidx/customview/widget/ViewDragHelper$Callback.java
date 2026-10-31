package androidx.customview.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Px;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewDragHelper$Callback {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int clampViewPositionHorizontal(@NonNull View view, int i9, int i10) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int clampViewPositionVertical(@NonNull View view, int i9, int i10) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getViewHorizontalDragRange(@NonNull View view) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getViewVerticalDragRange(@NonNull View view) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onEdgeLock(int i9) {
        return false;
    }

    public abstract boolean tryCaptureView(@NonNull View view, int i9);

    public int getOrderedChildIndex(int i9) {
        return i9;
    }

    public void onViewDragStateChanged(int i9) {
    }

    public void onEdgeDragStarted(int i9, int i10) {
    }

    public void onEdgeTouched(int i9, int i10) {
    }

    public void onViewCaptured(@NonNull View view, int i9) {
    }

    public void onViewReleased(@NonNull View view, float f8, float f9) {
    }

    public void onViewPositionChanged(@NonNull View view, int i9, int i10, @Px int i11, @Px int i12) {
    }
}
