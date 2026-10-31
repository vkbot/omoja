package o2;

import androidx.recyclerview.widget.OrientationHelper;
import com.google.android.flexbox.FlexboxLayoutManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4061b;
    public int c;
    public int d = 0;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4063g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FlexboxLayoutManager f4064h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(FlexboxLayoutManager flexboxLayoutManager) {
        this.f4064h = flexboxLayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(f fVar) {
        FlexboxLayoutManager flexboxLayoutManager = fVar.f4064h;
        if (!flexboxLayoutManager.i() && flexboxLayoutManager.f1085f) {
            fVar.c = fVar.e ? flexboxLayoutManager.f1093n.getEndAfterPadding() : flexboxLayoutManager.getWidth() - flexboxLayoutManager.f1093n.getStartAfterPadding();
            return;
        }
        boolean z8 = fVar.e;
        OrientationHelper orientationHelper = flexboxLayoutManager.f1093n;
        fVar.c = z8 ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(f fVar) {
        fVar.f4060a = -1;
        fVar.f4061b = -1;
        fVar.c = Integer.MIN_VALUE;
        fVar.f4062f = false;
        fVar.f4063g = false;
        FlexboxLayoutManager flexboxLayoutManager = fVar.f4064h;
        boolean zI = flexboxLayoutManager.i();
        int i9 = flexboxLayoutManager.c;
        if (zI) {
            if (i9 == 0) {
                fVar.e = flexboxLayoutManager.f1084b == 1;
                return;
            } else {
                fVar.e = i9 == 2;
                return;
            }
        }
        if (i9 == 0) {
            fVar.e = flexboxLayoutManager.f1084b == 3;
        } else {
            fVar.e = i9 == 2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f4060a + ", mFlexLinePosition=" + this.f4061b + ", mCoordinate=" + this.c + ", mPerpendicularCoordinate=" + this.d + ", mLayoutFromEnd=" + this.e + ", mValid=" + this.f4062f + ", mAssignedFromSavedState=" + this.f4063g + '}';
    }
}
