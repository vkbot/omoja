package p005a4;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bumptech.glide.RunnableC1054m;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: a4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0015h {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f60a;

    /* JADX INFO: renamed from: b */
    public int f61b;

    /* JADX INFO: renamed from: c */
    public boolean f62c;

    /* JADX INFO: renamed from: d */
    public final Runnable f63d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ CoordinatorLayout.Behavior f64e;

    public C0015h(BottomSheetBehavior bottomSheetBehavior) {
        this.f60a = 1;
        this.f64e = bottomSheetBehavior;
        this.f63d = new RunnableC1054m(5, this);
    }

    /* JADX INFO: renamed from: a */
    public final void m52a(int i10) {
        switch (this.f60a) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f64e;
                WeakReference weakReference = sideSheetBehavior.f2418p;
                if (weakReference != null && weakReference.get() != null) {
                    this.f61b = i10;
                    if (!this.f62c) {
                        ((View) sideSheetBehavior.f2418p.get()).postOnAnimation((RunnableC0014g) this.f63d);
                        this.f62c = true;
                    }
                    break;
                }
                break;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f64e;
                WeakReference weakReference2 = bottomSheetBehavior.f2145W;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f61b = i10;
                    if (!this.f62c) {
                        ((View) bottomSheetBehavior.f2145W.get()).postOnAnimation((RunnableC1054m) this.f63d);
                        this.f62c = true;
                    }
                    break;
                }
                break;
        }
    }

    public C0015h(SideSheetBehavior sideSheetBehavior) {
        this.f60a = 0;
        this.f64e = sideSheetBehavior;
        this.f63d = new RunnableC0014g(0, this);
    }
}
