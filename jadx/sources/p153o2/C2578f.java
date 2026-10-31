package p153o2;

import androidx.recyclerview.widget.OrientationHelper;
import com.google.android.flexbox.FlexboxLayoutManager;

/* JADX INFO: renamed from: o2.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2578f {

    /* JADX INFO: renamed from: a */
    public int f7169a;

    /* JADX INFO: renamed from: b */
    public int f7170b;

    /* JADX INFO: renamed from: c */
    public int f7171c;

    /* JADX INFO: renamed from: d */
    public int f7172d = 0;

    /* JADX INFO: renamed from: e */
    public boolean f7173e;

    /* JADX INFO: renamed from: f */
    public boolean f7174f;

    /* JADX INFO: renamed from: g */
    public boolean f7175g;

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ FlexboxLayoutManager f7176h;

    public C2578f(FlexboxLayoutManager flexboxLayoutManager) {
        this.f7176h = flexboxLayoutManager;
    }

    /* JADX INFO: renamed from: a */
    public static void m4022a(C2578f c2578f) {
        FlexboxLayoutManager flexboxLayoutManager = c2578f.f7176h;
        if (!flexboxLayoutManager.mo1704i() && flexboxLayoutManager.f2021f) {
            c2578f.f7171c = c2578f.f7173e ? flexboxLayoutManager.f2029n.getEndAfterPadding() : flexboxLayoutManager.getWidth() - flexboxLayoutManager.f2029n.getStartAfterPadding();
            return;
        }
        boolean z9 = c2578f.f7173e;
        OrientationHelper orientationHelper = flexboxLayoutManager.f2029n;
        c2578f.f7171c = z9 ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
    }

    /* JADX INFO: renamed from: b */
    public static void m4023b(C2578f c2578f) {
        c2578f.f7169a = -1;
        c2578f.f7170b = -1;
        c2578f.f7171c = Integer.MIN_VALUE;
        c2578f.f7174f = false;
        c2578f.f7175g = false;
        FlexboxLayoutManager flexboxLayoutManager = c2578f.f7176h;
        boolean zMo1704i = flexboxLayoutManager.mo1704i();
        int i10 = flexboxLayoutManager.f2018c;
        if (zMo1704i) {
            if (i10 == 0) {
                c2578f.f7173e = flexboxLayoutManager.f2017b == 1;
                return;
            } else {
                c2578f.f7173e = i10 == 2;
                return;
            }
        }
        if (i10 == 0) {
            c2578f.f7173e = flexboxLayoutManager.f2017b == 3;
        } else {
            c2578f.f7173e = i10 == 2;
        }
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f7169a + ", mFlexLinePosition=" + this.f7170b + ", mCoordinate=" + this.f7171c + ", mPerpendicularCoordinate=" + this.f7172d + ", mLayoutFromEnd=" + this.f7173e + ", mValid=" + this.f7174f + ", mAssignedFromSavedState=" + this.f7175g + '}';
    }
}
