package d4;

import androidx.viewpager.widget.ViewPager;
import com.example.navistart.MainActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.c0;
import m0.d0;
import m0.e0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1762b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(int i9, Object obj) {
        this.f1761a = i9;
        this.f1762b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // d4.d
    public final void a(i iVar) {
        int i9 = this.f1761a;
        Object obj = this.f1762b;
        switch (i9) {
            case 0:
                ((ViewPager) obj).setCurrentItem(iVar.e);
                break;
            case 1:
                ((MainActivity) obj).findViewById(2131296944).post(new a4.g(11, this));
                break;
            default:
                d0 d0Var = iVar.f1743a;
                if (d0Var != null) {
                    e0 e0Var = (e0) obj;
                    if (d0Var != e0Var.f3401z) {
                        e0Var.F();
                        c0 c0Var = e0Var.f3395q;
                        if (c0Var != null) {
                            e0Var.f3393o.removeCallbacks(c0Var);
                            e0Var.f3395q = null;
                        }
                        e0Var.z();
                        e0Var.A(e0.m.h(new byte[]{-102, 28, -101, ByteCompanionObject.MAX_VALUE, -7, 82, 23, -89, -116, 31, -100, 98, -18, ByteCompanionObject.MAX_VALUE, 11, -85, -102}, new byte[]{-1, 106, -2, 17, -115, 13, 98, -55}));
                        e0Var.f3401z = d0Var;
                        e0Var.w();
                    }
                }
                break;
        }
    }
}
