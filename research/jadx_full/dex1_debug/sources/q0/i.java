package q0;

import android.widget.RadioGroup;
import android.widget.RadioGroup$OnCheckedChangeListener;
import m0.s2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements RadioGroup$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4783b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(int i9, Object obj) {
        this.f4782a = i9;
        this.f4783b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.RadioGroup$OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i9) {
        int i10 = this.f4782a;
        Object obj = this.f4783b;
        switch (i10) {
            case 0:
                l lVar = (l) obj;
                if (i9 == 2131297016) {
                    lVar.t = e0.m.h(new byte[]{56, -29, -11, -67, -78, -109, 101, -96, 56}, new byte[]{72, -117, -102, -45, -41, -52, 4, -48});
                } else if (i9 == 2131297014) {
                    lVar.t = e0.m.h(new byte[]{-92, 57, -7, -42, 24, 107, -65, 98, -90, 59, -43, -32, 4, 125}, new byte[]{-61, 73, -118, -119, 107, 14, -51, 20});
                } else if (i9 == 2131297018) {
                    lVar.t = e0.m.h(new byte[]{77, -40, -81}, new byte[]{56, -85, -51, -88, 117, -65, -51, -117});
                } else if (i9 == 2131297015) {
                    lVar.t = e0.m.h(new byte[]{25, 54, 24, -51, 6}, new byte[]{116, 89, 124, -88, 107, 69, -8, 112});
                }
                lVar.t = l.w(lVar.t);
                lVar.u(false);
                break;
            default:
                ((s2) obj).run();
                break;
        }
    }
}
