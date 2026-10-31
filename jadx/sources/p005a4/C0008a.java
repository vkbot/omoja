package p005a4;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import p016b1.AbstractC0880u;

/* JADX INFO: renamed from: a4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0008a extends AbstractC0880u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f48b;

    /* JADX INFO: renamed from: c */
    public final SideSheetBehavior f49c;

    public /* synthetic */ C0008a(SideSheetBehavior sideSheetBehavior, int i10) {
        this.f48b = i10;
        this.f49c = sideSheetBehavior;
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: C */
    public final void mo38C(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        switch (this.f48b) {
            case 0:
                if (i10 <= this.f49c.f2415m) {
                    marginLayoutParams.leftMargin = i11;
                }
                break;
            default:
                int i12 = this.f49c.f2415m;
                if (i10 <= i12) {
                    marginLayoutParams.rightMargin = i12 - i10;
                }
                break;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: a */
    public final int mo39a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.f48b) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: b */
    public final float mo40b(int i10) {
        switch (this.f48b) {
            case 0:
                float fMo42k = mo42k();
                return (i10 - fMo42k) / (mo41j() - fMo42k);
            default:
                float f8 = this.f49c.f2415m;
                return (f8 - i10) / (f8 - mo41j());
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: j */
    public final int mo41j() {
        switch (this.f48b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f49c;
                return Math.max(0, sideSheetBehavior.f2416n + sideSheetBehavior.f2417o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f49c;
                return Math.max(0, (sideSheetBehavior2.f2415m - sideSheetBehavior2.f2414l) - sideSheetBehavior2.f2417o);
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: k */
    public final int mo42k() {
        switch (this.f48b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f49c;
                return (-sideSheetBehavior.f2414l) - sideSheetBehavior.f2417o;
            default:
                return this.f49c.f2415m;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: l */
    public final int mo43l() {
        switch (this.f48b) {
            case 0:
                return this.f49c.f2417o;
            default:
                return this.f49c.f2415m;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: m */
    public final int mo44m() {
        switch (this.f48b) {
            case 0:
                return -this.f49c.f2414l;
            default:
                return mo41j();
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: n */
    public final int mo45n(View view) {
        switch (this.f48b) {
            case 0:
                return view.getRight() + this.f49c.f2417o;
            default:
                return view.getLeft() - this.f49c.f2417o;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: o */
    public final int mo46o(CoordinatorLayout coordinatorLayout) {
        switch (this.f48b) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: p */
    public final int mo47p() {
        switch (this.f48b) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: s */
    public final boolean mo48s(float f8) {
        switch (this.f48b) {
            case 0:
                return f8 > 0.0f;
            default:
                return f8 < 0.0f;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: t */
    public final boolean mo49t(View view) {
        switch (this.f48b) {
            case 0:
                return view.getRight() < (mo41j() - mo42k()) / 2;
            default:
                return view.getLeft() > (mo41j() + this.f49c.f2415m) / 2;
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: u */
    public final boolean mo50u(float f8, float f10) {
        switch (this.f48b) {
            case 0:
                return Math.abs(f8) > Math.abs(f10) && Math.abs(f8) > ((float) 500);
            default:
                return Math.abs(f8) > Math.abs(f10) && Math.abs(f8) > ((float) 500);
        }
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: x */
    public final boolean mo51x(View view, float f8) {
        switch (this.f48b) {
            case 0:
                return Math.abs((f8 * this.f49c.f2413k) + ((float) view.getLeft())) > 0.5f;
            default:
                return Math.abs((f8 * this.f49c.f2413k) + ((float) view.getRight())) > 0.5f;
        }
    }
}
