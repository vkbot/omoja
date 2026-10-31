package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
import p081h4.ViewTreeObserverOnPreDrawListenerC1663a;
import p175q3.InterfaceC3060a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* JADX INFO: renamed from: a */
    public int f2606a;

    public ExpandableBehavior() {
        this.f2606a = 0;
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo1878a(View view, View view2, boolean z9, boolean z10);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Object obj = (InterfaceC3060a) view2;
        boolean z9 = ((FloatingActionButton) obj).f2364p.f5346c;
        int i10 = this.f2606a;
        if (z9) {
            if (i10 != 0 && i10 != 2) {
                return false;
            }
        } else if (i10 != 1) {
            return false;
        }
        this.f2606a = z9 ? 1 : 2;
        mo1878a((View) obj, view, z9, true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        InterfaceC3060a interfaceC3060a;
        if (!view.isLaidOut()) {
            List<View> dependencies = coordinatorLayout.getDependencies(view);
            int size = dependencies.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    interfaceC3060a = null;
                    break;
                }
                View view2 = dependencies.get(i11);
                if (layoutDependsOn(coordinatorLayout, view, view2)) {
                    interfaceC3060a = (InterfaceC3060a) view2;
                    break;
                }
                i11++;
            }
            if (interfaceC3060a != null) {
                boolean z9 = ((FloatingActionButton) interfaceC3060a).f2364p.f5346c;
                int i12 = this.f2606a;
                if (!z9 ? i12 == 1 : !(i12 != 0 && i12 != 2)) {
                    int i13 = z9 ? 1 : 2;
                    this.f2606a = i13;
                    view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC1663a(this, view, i13, interfaceC3060a));
                }
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2606a = 0;
    }
}
