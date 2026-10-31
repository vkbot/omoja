package h4;

import android.view.View;
import android.view.ViewTreeObserver$OnPreDrawListener;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.transformation.ExpandableBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements ViewTreeObserver$OnPreDrawListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2465b;
    public final /* synthetic */ int c;
    public final /* synthetic */ q3.a d;
    public final /* synthetic */ ExpandableBehavior e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(ExpandableBehavior expandableBehavior, View view, int i9, q3.a aVar) {
        this.e = expandableBehavior;
        this.f2465b = view;
        this.c = i9;
        this.d = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public final boolean onPreDraw() {
        View view = this.f2465b;
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        ExpandableBehavior expandableBehavior = this.e;
        if (expandableBehavior.f1458a == this.c) {
            Object obj = this.d;
            expandableBehavior.a((View) obj, view, ((FloatingActionButton) obj).f1307p.c, false);
        }
        return false;
    }
}
