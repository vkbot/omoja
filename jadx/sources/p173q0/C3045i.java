package p173q0;

import android.widget.RadioGroup;
import com.example.navistart.R;
import p047e0.AbstractC1387m;
import p132m0.RunnableC2351s2;

/* JADX INFO: renamed from: q0.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3045i implements RadioGroup.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8561a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f8562b;

    public /* synthetic */ C3045i(int i10, Object obj) {
        this.f8561a = i10;
        this.f8562b = obj;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i10) {
        int i11 = this.f8561a;
        Object obj = this.f8562b;
        switch (i11) {
            case 0:
                C3048l c3048l = (C3048l) obj;
                if (i10 == R.id.mockGpsSourcePhoneApp) {
                    c3048l.f8588t = AbstractC1387m.m2421h(new byte[]{56, -29, -11, -67, -78, -109, 101, -96, 56}, new byte[]{72, -117, -102, -45, -41, -52, 4, -48});
                } else if (i10 == R.id.mockGpsSourceIosServer) {
                    c3048l.f8588t = AbstractC1387m.m2421h(new byte[]{-92, 57, -7, -42, 24, 107, -65, 98, -90, 59, -43, -32, 4, 125}, new byte[]{-61, 73, -118, -119, 107, 14, -51, 20});
                } else if (i10 == R.id.mockGpsSourceUsb) {
                    c3048l.f8588t = AbstractC1387m.m2421h(new byte[]{77, -40, -81}, new byte[]{56, -85, -51, -88, 117, -65, -51, -117});
                } else if (i10 == R.id.mockGpsSourceModem) {
                    c3048l.f8588t = AbstractC1387m.m2421h(new byte[]{25, 54, 24, -51, 6}, new byte[]{116, 89, 124, -88, 107, 69, -8, 112});
                }
                c3048l.f8588t = C3048l.m4873w(c3048l.f8588t);
                c3048l.m4876u(false);
                break;
            default:
                ((RunnableC2351s2) obj).run();
                break;
        }
    }
}
