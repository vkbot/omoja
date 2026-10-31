package p070g3;

import android.os.SystemClock;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: g3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1614c extends ViewDragHelper.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BottomSheetBehavior f4060a;

    public C1614c(BottomSheetBehavior bottomSheetBehavior) {
        this.f4060a = bottomSheetBehavior;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionHorizontal(View view, int i10, int i11) {
        return view.getLeft();
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionVertical(View view, int i10, int i11) {
        return MathUtils.clamp(i10, this.f4060a.m1760g(), getViewVerticalDragRange(view));
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int getViewVerticalDragRange(View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f4060a;
        return bottomSheetBehavior.f2131I ? bottomSheetBehavior.f2144V : bottomSheetBehavior.f2129G;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewDragStateChanged(int i10) {
        if (i10 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f4060a;
            if (bottomSheetBehavior.f2133K) {
                bottomSheetBehavior.m1765l(1);
            }
        }
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
        this.f4060a.m1759d(i11);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewReleased(View view, float f8, float f10) {
        int i10 = 6;
        BottomSheetBehavior bottomSheetBehavior = this.f4060a;
        if (f10 < 0.0f) {
            if (bottomSheetBehavior.f2151b) {
                i10 = 3;
            } else {
                int top = view.getTop();
                SystemClock.uptimeMillis();
                if (top <= bottomSheetBehavior.f2127E) {
                    i10 = 3;
                }
            }
        } else if (bottomSheetBehavior.f2131I && bottomSheetBehavior.m1766m(view, f10)) {
            if (Math.abs(f8) >= Math.abs(f10) || f10 <= bottomSheetBehavior.f2155d) {
                if (view.getTop() > (bottomSheetBehavior.m1760g() + bottomSheetBehavior.f2144V) / 2) {
                    i10 = 5;
                } else if (bottomSheetBehavior.f2151b || Math.abs(view.getTop() - bottomSheetBehavior.m1760g()) < Math.abs(view.getTop() - bottomSheetBehavior.f2127E)) {
                    i10 = 3;
                }
            } else {
                i10 = 5;
            }
        } else if (f10 == 0.0f || Math.abs(f8) > Math.abs(f10)) {
            int top2 = view.getTop();
            if (!bottomSheetBehavior.f2151b) {
                int i11 = bottomSheetBehavior.f2127E;
                if (top2 < i11) {
                    if (top2 < Math.abs(top2 - bottomSheetBehavior.f2129G)) {
                        i10 = 3;
                    }
                } else if (Math.abs(top2 - i11) >= Math.abs(top2 - bottomSheetBehavior.f2129G)) {
                    i10 = 4;
                }
            } else if (Math.abs(top2 - bottomSheetBehavior.f2126D) < Math.abs(top2 - bottomSheetBehavior.f2129G)) {
                i10 = 3;
            } else {
                i10 = 4;
            }
        } else if (bottomSheetBehavior.f2151b) {
            i10 = 4;
        } else {
            int top3 = view.getTop();
            if (Math.abs(top3 - bottomSheetBehavior.f2127E) >= Math.abs(top3 - bottomSheetBehavior.f2129G)) {
                i10 = 4;
            }
        }
        bottomSheetBehavior.m1767n(view, i10, true);
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final boolean tryCaptureView(View view, int i10) {
        BottomSheetBehavior bottomSheetBehavior = this.f4060a;
        int i11 = bottomSheetBehavior.f2136N;
        if (i11 == 1 || bottomSheetBehavior.f2154c0) {
            return false;
        }
        if (i11 == 3 && bottomSheetBehavior.f2150a0 == i10) {
            WeakReference weakReference = bottomSheetBehavior.f2146X;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        SystemClock.uptimeMillis();
        WeakReference weakReference2 = bottomSheetBehavior.f2145W;
        return weakReference2 != null && weakReference2.get() == view;
    }
}
