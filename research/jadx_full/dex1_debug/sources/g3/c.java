package g3;

import android.os.SystemClock;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.customview.widget.ViewDragHelper$Callback;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends ViewDragHelper$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2360a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(BottomSheetBehavior bottomSheetBehavior) {
        this.f2360a = bottomSheetBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionHorizontal(View view, int i9, int i10) {
        return view.getLeft();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionVertical(View view, int i9, int i10) {
        return MathUtils.clamp(i9, this.f2360a.g(), getViewVerticalDragRange(view));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int getViewVerticalDragRange(View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f2360a;
        return bottomSheetBehavior.I ? bottomSheetBehavior.V : bottomSheetBehavior.G;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewDragStateChanged(int i9) {
        if (i9 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f2360a;
            if (bottomSheetBehavior.K) {
                bottomSheetBehavior.l(1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
        this.f2360a.d(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewReleased(View view, float f8, float f9) {
        int i9 = 6;
        BottomSheetBehavior bottomSheetBehavior = this.f2360a;
        if (f9 < 0.0f) {
            if (bottomSheetBehavior.f1161b) {
                i9 = 3;
            } else {
                int top = view.getTop();
                SystemClock.uptimeMillis();
                if (top <= bottomSheetBehavior.E) {
                    i9 = 3;
                }
            }
        } else if (bottomSheetBehavior.I && bottomSheetBehavior.m(view, f9)) {
            if (Math.abs(f8) >= Math.abs(f9) || f9 <= bottomSheetBehavior.d) {
                if (view.getTop() > (bottomSheetBehavior.g() + bottomSheetBehavior.V) / 2) {
                    i9 = 5;
                } else if (bottomSheetBehavior.f1161b || Math.abs(view.getTop() - bottomSheetBehavior.g()) < Math.abs(view.getTop() - bottomSheetBehavior.E)) {
                    i9 = 3;
                }
            } else {
                i9 = 5;
            }
        } else if (f9 == 0.0f || Math.abs(f8) > Math.abs(f9)) {
            int top2 = view.getTop();
            if (!bottomSheetBehavior.f1161b) {
                int i10 = bottomSheetBehavior.E;
                if (top2 < i10) {
                    if (top2 < Math.abs(top2 - bottomSheetBehavior.G)) {
                        i9 = 3;
                    }
                } else if (Math.abs(top2 - i10) >= Math.abs(top2 - bottomSheetBehavior.G)) {
                    i9 = 4;
                }
            } else if (Math.abs(top2 - bottomSheetBehavior.D) < Math.abs(top2 - bottomSheetBehavior.G)) {
                i9 = 3;
            } else {
                i9 = 4;
            }
        } else if (bottomSheetBehavior.f1161b) {
            i9 = 4;
        } else {
            int top3 = view.getTop();
            if (Math.abs(top3 - bottomSheetBehavior.E) >= Math.abs(top3 - bottomSheetBehavior.G)) {
                i9 = 4;
            }
        }
        bottomSheetBehavior.n(view, i9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final boolean tryCaptureView(View view, int i9) {
        BottomSheetBehavior bottomSheetBehavior = this.f2360a;
        int i10 = bottomSheetBehavior.N;
        if (i10 == 1 || bottomSheetBehavior.f1163c0) {
            return false;
        }
        if (i10 == 3 && bottomSheetBehavior.f1160a0 == i9) {
            WeakReference weakReference = bottomSheetBehavior.X;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        SystemClock.uptimeMillis();
        WeakReference weakReference2 = bottomSheetBehavior.W;
        return weakReference2 != null && weakReference2.get() == view;
    }
}
