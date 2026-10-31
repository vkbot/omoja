package a4;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import com.bumptech.glide.m;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f35a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36b;
    public boolean c;
    public final Runnable d;
    public final /* synthetic */ CoordinatorLayout$Behavior e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(BottomSheetBehavior bottomSheetBehavior) {
        this.f35a = 1;
        this.e = bottomSheetBehavior;
        this.d = new m(5, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        switch (this.f35a) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.e;
                WeakReference weakReference = sideSheetBehavior.f1350p;
                if (weakReference != null && weakReference.get() != null) {
                    this.f36b = i9;
                    if (!this.c) {
                        ((View) sideSheetBehavior.f1350p.get()).postOnAnimation((g) this.d);
                        this.c = true;
                    }
                    break;
                }
                break;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.e;
                WeakReference weakReference2 = bottomSheetBehavior.W;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f36b = i9;
                    if (!this.c) {
                        ((View) bottomSheetBehavior.W.get()).postOnAnimation((m) this.d);
                        this.c = true;
                    }
                    break;
                }
                break;
        }
    }

    public h(SideSheetBehavior sideSheetBehavior) {
        this.f35a = 0;
        this.e = sideSheetBehavior;
        this.d = new g(0, this);
    }
}
