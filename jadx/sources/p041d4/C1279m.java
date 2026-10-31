package p041d4;

import androidx.viewpager.widget.ViewPager;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import p005a4.RunnableC0014g;
import p047e0.AbstractC1387m;
import p132m0.C2283e0;
import p132m0.EnumC2278d0;
import p132m0.RunnableC2273c0;

/* JADX INFO: renamed from: d4.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1279m implements InterfaceC1271e {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3077a;

    /* JADX INFO: renamed from: b */
    public final Object f3078b;

    public /* synthetic */ C1279m(int i10, Object obj) {
        this.f3077a = i10;
        this.f3078b = obj;
    }

    @Override // p041d4.InterfaceC1270d
    /* JADX INFO: renamed from: a */
    public final void mo2272a(C1275i c1275i) {
        int i10 = this.f3077a;
        Object obj = this.f3078b;
        switch (i10) {
            case 0:
                ((ViewPager) obj).setCurrentItem(c1275i.f3056e);
                break;
            case 1:
                ((MainActivity) obj).findViewById(R.id.main).post(new RunnableC0014g(11, this));
                break;
            default:
                EnumC2278d0 enumC2278d0 = c1275i.f3052a;
                if (enumC2278d0 != null) {
                    C2283e0 c2283e0 = (C2283e0) obj;
                    if (enumC2278d0 != c2283e0.f6040z) {
                        c2283e0.m3676F();
                        RunnableC2273c0 runnableC2273c0 = c2283e0.f6031q;
                        if (runnableC2273c0 != null) {
                            c2283e0.f6029o.removeCallbacks(runnableC2273c0);
                            c2283e0.f6031q = null;
                        }
                        c2283e0.m3682z();
                        c2283e0.m3672A(AbstractC1387m.m2421h(new byte[]{-102, 28, -101, ByteCompanionObject.MAX_VALUE, -7, 82, 23, -89, -116, 31, -100, 98, -18, ByteCompanionObject.MAX_VALUE, 11, -85, -102}, new byte[]{-1, 106, -2, 17, -115, 13, 98, -55}));
                        c2283e0.f6040z = enumC2278d0;
                        c2283e0.m3680w();
                    }
                }
                break;
        }
    }
}
