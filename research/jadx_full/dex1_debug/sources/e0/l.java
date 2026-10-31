package e0;

import android.location.Location;
import androidx.lifecycle.Observer;
import com.example.navistart.BlackActivity;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BlackActivity f1880b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(BlackActivity blackActivity, int i9) {
        this.f1879a = i9;
        this.f1880b = blackActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f1879a;
        BlackActivity blackActivity = this.f1880b;
        switch (i9) {
            case 0:
                Integer num = (Integer) obj;
                int i10 = BlackActivity.f654g;
                if (num != null) {
                    int iIntValue = num.intValue();
                    if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                        blackActivity.f656f.d(iIntValue);
                    }
                }
                break;
            case 1:
                Integer num2 = (Integer) obj;
                int i11 = BlackActivity.f654g;
                if (num2 != null) {
                    int iIntValue2 = num2.intValue();
                    if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                        blackActivity.f656f.l(iIntValue2);
                    }
                }
                break;
            case 2:
                k7.b bVar = (k7.b) obj;
                int i12 = BlackActivity.f654g;
                if (bVar != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(bVar.f3201b);
                    String strI = com.google.protobuf.q.i(new byte[]{113, -42}, new byte[]{-77, 102, 63, -45, 43, 72, 122, 106}, sb);
                    int i13 = bVar.d;
                    if ((blackActivity.f656f != null) & BlackActivity.s().booleanValue()) {
                        blackActivity.f656f.g(i13, strI);
                    }
                }
                break;
            case 3:
                HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                if (hUDMassageObj == null) {
                    int i14 = BlackActivity.f654g;
                } else if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                    blackActivity.f656f.o(hUDMassageObj);
                }
                break;
            case 4:
                String str = (String) obj;
                if (str == null) {
                    int i15 = BlackActivity.f654g;
                } else if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                    blackActivity.f656f.f(str);
                }
                break;
            case 5:
                s0.a aVar = (s0.a) obj;
                if (aVar == null) {
                    int i16 = BlackActivity.f654g;
                } else if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                    blackActivity.f656f.k(aVar);
                }
                break;
            default:
                Location location = (Location) obj;
                if (location == null) {
                    int i17 = BlackActivity.f654g;
                } else if (BlackActivity.s().booleanValue() & (blackActivity.f656f != null)) {
                    blackActivity.f656f.e.i(location);
                }
                break;
        }
    }
}
