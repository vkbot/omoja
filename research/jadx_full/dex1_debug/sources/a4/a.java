package a4;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b1.u;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27b;
    public final SideSheetBehavior c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(SideSheetBehavior sideSheetBehavior, int i9) {
        this.f27b = i9;
        this.c = sideSheetBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final void C(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams, int i9, int i10) {
        switch (this.f27b) {
            case 0:
                if (i9 <= this.c.f1347m) {
                    viewGroup$MarginLayoutParams.leftMargin = i10;
                }
                break;
            default:
                int i11 = this.c.f1347m;
                if (i9 <= i11) {
                    viewGroup$MarginLayoutParams.rightMargin = i11 - i9;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int a(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        switch (this.f27b) {
            case 0:
                return viewGroup$MarginLayoutParams.leftMargin;
            default:
                return viewGroup$MarginLayoutParams.rightMargin;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final float b(int i9) {
        switch (this.f27b) {
            case 0:
                float fK = k();
                return (i9 - fK) / (j() - fK);
            default:
                float f8 = this.c.f1347m;
                return (f8 - i9) / (f8 - j());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int j() {
        switch (this.f27b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.c;
                return Math.max(0, sideSheetBehavior.f1348n + sideSheetBehavior.f1349o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.c;
                return Math.max(0, (sideSheetBehavior2.f1347m - sideSheetBehavior2.f1346l) - sideSheetBehavior2.f1349o);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int k() {
        switch (this.f27b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.c;
                return (-sideSheetBehavior.f1346l) - sideSheetBehavior.f1349o;
            default:
                return this.c.f1347m;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int l() {
        switch (this.f27b) {
            case 0:
                return this.c.f1349o;
            default:
                return this.c.f1347m;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int m() {
        switch (this.f27b) {
            case 0:
                return -this.c.f1346l;
            default:
                return j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int n(View view) {
        switch (this.f27b) {
            case 0:
                return view.getRight() + this.c.f1349o;
            default:
                return view.getLeft() - this.c.f1349o;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int o(CoordinatorLayout coordinatorLayout) {
        switch (this.f27b) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final int p() {
        switch (this.f27b) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final boolean s(float f8) {
        switch (this.f27b) {
            case 0:
                return f8 > 0.0f;
            default:
                return f8 < 0.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final boolean t(View view) {
        switch (this.f27b) {
            case 0:
                return view.getRight() < (j() - k()) / 2;
            default:
                return view.getLeft() > (j() + this.c.f1347m) / 2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final boolean u(float f8, float f9) {
        switch (this.f27b) {
            case 0:
                return Math.abs(f8) > Math.abs(f9) && Math.abs(f8) > ((float) 500);
            default:
                return Math.abs(f8) > Math.abs(f9) && Math.abs(f8) > ((float) 500);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final boolean x(View view, float f8) {
        switch (this.f27b) {
            case 0:
                return Math.abs((f8 * this.c.f1345k) + ((float) view.getLeft())) > 0.5f;
            default:
                return Math.abs((f8 * this.c.f1345k) + ((float) view.getRight())) > 0.5f;
        }
    }
}
