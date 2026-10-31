package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
import q3.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout$Behavior<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1458a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExpandableBehavior() {
        this.f1458a = 0;
    }

    public abstract void a(View view, View view2, boolean z8, boolean z9);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Object obj = (a) view2;
        boolean z8 = ((FloatingActionButton) obj).f1307p.c;
        int i9 = this.f1458a;
        if (z8) {
            if (i9 != 0 && i9 != 2) {
                return false;
            }
        } else if (i9 != 1) {
            return false;
        }
        this.f1458a = z8 ? 1 : 2;
        a((View) obj, view, z8, true);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        a aVar;
        if (!view.isLaidOut()) {
            List<View> dependencies = coordinatorLayout.getDependencies(view);
            int size = dependencies.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    aVar = null;
                    break;
                }
                View view2 = dependencies.get(i10);
                if (layoutDependsOn(coordinatorLayout, view, view2)) {
                    aVar = (a) view2;
                    break;
                }
                i10++;
            }
            if (aVar != null) {
                boolean z8 = ((FloatingActionButton) aVar).f1307p.c;
                int i11 = this.f1458a;
                if (!z8 ? i11 == 1 : !(i11 != 0 && i11 != 2)) {
                    int i12 = z8 ? 1 : 2;
                    this.f1458a = i12;
                    view.getViewTreeObserver().addOnPreDrawListener(new h4.a(this, view, i12, aVar));
                }
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1458a = 0;
    }
}
