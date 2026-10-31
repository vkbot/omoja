package a4;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.core.math.MathUtils;
import androidx.customview.widget.ViewDragHelper$Callback;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends ViewDragHelper$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SideSheetBehavior f31a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(SideSheetBehavior sideSheetBehavior) {
        this.f31a = sideSheetBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionHorizontal(View view, int i9, int i10) {
        SideSheetBehavior sideSheetBehavior = this.f31a;
        return MathUtils.clamp(i9, sideSheetBehavior.f1338a.m(), sideSheetBehavior.f1338a.l());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int clampViewPositionVertical(View view, int i9, int i10) {
        return view.getTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final int getViewHorizontalDragRange(View view) {
        SideSheetBehavior sideSheetBehavior = this.f31a;
        return sideSheetBehavior.f1346l + sideSheetBehavior.f1349o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewDragStateChanged(int i9) {
        if (i9 == 1) {
            SideSheetBehavior sideSheetBehavior = this.f31a;
            if (sideSheetBehavior.f1341g) {
                sideSheetBehavior.a(1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
        ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams;
        SideSheetBehavior sideSheetBehavior = this.f31a;
        WeakReference weakReference = sideSheetBehavior.f1351q;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null && (viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) view2.getLayoutParams()) != null) {
            sideSheetBehavior.f1338a.C(viewGroup$MarginLayoutParams, view.getLeft(), view.getRight());
            view2.setLayoutParams(viewGroup$MarginLayoutParams);
        }
        LinkedHashSet linkedHashSet = sideSheetBehavior.f1353u;
        if (linkedHashSet.isEmpty()) {
            return;
        }
        sideSheetBehavior.f1338a.b(i9);
        Iterator it = linkedHashSet.iterator();
        if (it.hasNext()) {
            throw com.bumptech.glide.g.b(it);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final void onViewReleased(View view, float f8, float f9) {
        int i9;
        SideSheetBehavior sideSheetBehavior = this.f31a;
        if (!sideSheetBehavior.f1338a.s(f8)) {
            if (!sideSheetBehavior.f1338a.x(view, f8)) {
                if (f8 == 0.0f || Math.abs(f8) <= Math.abs(f9)) {
                    int left = view.getLeft();
                    i9 = Math.abs(left - sideSheetBehavior.f1338a.j()) < Math.abs(left - sideSheetBehavior.f1338a.k()) ? 3 : 5;
                }
            } else if (sideSheetBehavior.f1338a.u(f8, f9) || sideSheetBehavior.f1338a.t(view)) {
            }
        }
        sideSheetBehavior.c(view, i9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public final boolean tryCaptureView(View view, int i9) {
        WeakReference weakReference;
        SideSheetBehavior sideSheetBehavior = this.f31a;
        return (sideSheetBehavior.f1342h == 1 || (weakReference = sideSheetBehavior.f1350p) == null || weakReference.get() != view) ? false : true;
    }
}
