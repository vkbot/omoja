package c3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class h extends CoordinatorLayout$Behavior {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i f485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f486b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h() {
        this.f486b = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        i iVar = this.f485a;
        if (iVar != null) {
            return iVar.c;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b(CoordinatorLayout coordinatorLayout, View view, int i9) {
        coordinatorLayout.onLayoutChild(view, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i9) {
        b(coordinatorLayout, view, i9);
        if (this.f485a == null) {
            i iVar = new i();
            iVar.d = view;
            this.f485a = iVar;
        }
        i iVar2 = this.f485a;
        View view2 = (View) iVar2.d;
        iVar2.f487a = view2.getTop();
        iVar2.f488b = view2.getLeft();
        this.f485a.b();
        int i10 = this.f486b;
        if (i10 == 0) {
            return true;
        }
        i iVar3 = this.f485a;
        if (iVar3.c != i10) {
            iVar3.c = i10;
            iVar3.b();
        }
        this.f486b = 0;
        return true;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f486b = 0;
    }
}
