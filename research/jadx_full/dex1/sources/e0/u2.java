package e0;

import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.TestSpaceActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class u2 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1974b;
    public final /* synthetic */ TestSpaceActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ u2(TestSpaceActivity testSpaceActivity, int i9) {
        this.f1974b = i9;
        this.c = testSpaceActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = this.f1974b;
        TestSpaceActivity testSpaceActivity = this.c;
        switch (i9) {
            case 0:
                int i10 = TestSpaceActivity.f847h;
                testSpaceActivity.getSupportFragmentManager().beginTransaction().replace(2131296782, new u1.d()).addToBackStack(null).commit();
                break;
            case 1:
                int i11 = TestSpaceActivity.f847h;
                testSpaceActivity.finish();
                break;
            default:
                int i12 = TestSpaceActivity.f847h;
                h0.b.v(m.h(new byte[]{59, 57, -120, 29, 64, 84, 86, -20, -53, 75, -17, 120, 33, 5, 56, -65, 104, 74, -47, 120, 36, 5, 58}, new byte[]{-21, -101, 88, -88, -111, -43, -121, 110}));
                w.c(-1, m.h(new byte[]{19, -17, -24, 48, -10, -40, 11, -47, 34}, new byte[]{71, -118, -101, 68, -91, -88, 106, -78}));
                l0.a.t(m0.n0.class, null).show(testSpaceActivity.getSupportFragmentManager(), m.h(new byte[]{-57, -122, -85, -99, -15, 68, -118, 6, -56, -106, -106, -74, -9, 91, -105}, new byte[]{-90, -30, -55, -62, -110, 40, -29, 99}));
                break;
        }
    }
}
