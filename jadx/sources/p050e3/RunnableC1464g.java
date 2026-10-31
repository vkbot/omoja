package p050e3;

import android.view.View;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p019b4.C0895f;
import p157o7.C2637g1;
import p157o7.C2661k1;

/* JADX INFO: renamed from: e3.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1464g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3549b;

    /* JADX INFO: renamed from: c */
    public final boolean f3550c;

    /* JADX INFO: renamed from: d */
    public final Object f3551d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f3552e;

    public /* synthetic */ RunnableC1464g(Object obj, Object obj2, boolean z9, int i10) {
        this.f3549b = i10;
        this.f3552e = obj;
        this.f3551d = obj2;
        this.f3550c = z9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0895f c0895f;
        switch (this.f3549b) {
            case 0:
                View view = (View) this.f3551d;
                SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.f3552e;
                ViewDragHelper viewDragHelper = swipeDismissBehavior.f2113a;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    view.postOnAnimation(this);
                    break;
                } else if (this.f3550c && (c0895f = swipeDismissBehavior.f2114b) != null) {
                    c0895f.m1026a(view);
                    break;
                }
                break;
            default:
                ((C2661k1) this.f3552e).f7587t.m3098d((C2637g1) this.f3551d, this.f3550c);
                break;
        }
    }
}
