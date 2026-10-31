package p005a4;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.math.MathUtils;
import androidx.customview.widget.ViewDragHelper;
import com.bumptech.glide.AbstractC1034g;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: renamed from: a4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0011d extends ViewDragHelper.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ SideSheetBehavior f55a;

    public C0011d(SideSheetBehavior sideSheetBehavior) {
        this.f55a = sideSheetBehavior;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionHorizontal(View view, int i10, int i11) {
        SideSheetBehavior sideSheetBehavior = this.f55a;
        return MathUtils.clamp(i10, sideSheetBehavior.f2403a.mo44m(), sideSheetBehavior.f2403a.mo43l());
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int clampViewPositionVertical(View view, int i10, int i11) {
        return view.getTop();
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final int getViewHorizontalDragRange(View view) {
        SideSheetBehavior sideSheetBehavior = this.f55a;
        return sideSheetBehavior.f2414l + sideSheetBehavior.f2417o;
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewDragStateChanged(int i10) {
        if (i10 == 1) {
            SideSheetBehavior sideSheetBehavior = this.f55a;
            if (sideSheetBehavior.f2409g) {
                sideSheetBehavior.m1825a(1);
            }
        }
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        SideSheetBehavior sideSheetBehavior = this.f55a;
        WeakReference weakReference = sideSheetBehavior.f2419q;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
            sideSheetBehavior.f2403a.mo38C(marginLayoutParams, view.getLeft(), view.getRight());
            view2.setLayoutParams(marginLayoutParams);
        }
        LinkedHashSet linkedHashSet = sideSheetBehavior.f2423u;
        if (linkedHashSet.isEmpty()) {
            return;
        }
        sideSheetBehavior.f2403a.mo40b(i10);
        Iterator it = linkedHashSet.iterator();
        if (it.hasNext()) {
            throw AbstractC1034g.m1295b(it);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final void onViewReleased(View view, float f8, float f10) {
        int i10;
        SideSheetBehavior sideSheetBehavior = this.f55a;
        if (!sideSheetBehavior.f2403a.mo48s(f8)) {
            if (!sideSheetBehavior.f2403a.mo51x(view, f8)) {
                if (f8 == 0.0f || Math.abs(f8) <= Math.abs(f10)) {
                    int left = view.getLeft();
                    i10 = Math.abs(left - sideSheetBehavior.f2403a.mo41j()) < Math.abs(left - sideSheetBehavior.f2403a.mo42k()) ? 3 : 5;
                }
            } else if (sideSheetBehavior.f2403a.mo50u(f8, f10) || sideSheetBehavior.f2403a.mo49t(view)) {
            }
        }
        sideSheetBehavior.m1827c(view, i10, true);
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public final boolean tryCaptureView(View view, int i10) {
        WeakReference weakReference;
        SideSheetBehavior sideSheetBehavior = this.f55a;
        return (sideSheetBehavior.f2410h == 1 || (weakReference = sideSheetBehavior.f2418p) == null || weakReference.get() != view) ? false : true;
    }
}
