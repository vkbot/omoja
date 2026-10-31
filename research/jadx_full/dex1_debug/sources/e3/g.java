package e3;

import android.view.View;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.behavior.SwipeDismissBehavior;
import o7.g1;
import o7.k1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2037b;
    public final boolean c;
    public final Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(Object obj, Object obj2, boolean z8, int i9) {
        this.f2037b = i9;
        this.e = obj;
        this.d = obj2;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        b4.f fVar;
        switch (this.f2037b) {
            case 0:
                View view = (View) this.d;
                SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.e;
                ViewDragHelper viewDragHelper = swipeDismissBehavior.f1152a;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    view.postOnAnimation(this);
                    break;
                } else if (this.c && (fVar = swipeDismissBehavior.f1153b) != null) {
                    fVar.a(view);
                    break;
                }
                break;
            default:
                ((k1) this.e).t.d((g1) this.d, this.c);
                break;
        }
    }
}
