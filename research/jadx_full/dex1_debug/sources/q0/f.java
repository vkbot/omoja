package q0;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsCompat$Type;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.home.WebLauncherActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import s1.f0;
import s1.l0;
import s1.q0;
import s1.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements w, OnApplyWindowInsetsListener, t4.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4779b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(int i9, Object obj) {
        this.f4779b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.c
    public Object a(d2.h hVar) {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // s1.w
    public void b(String str, boolean z8) {
        int i9 = 0;
        switch (this.f4779b) {
            case 1:
                s1.b bVar = (s1.b) this.c;
                bVar.f5061n = false;
                if (!bVar.f5057j) {
                    bVar.f5060m = !z8;
                    if (!z8) {
                        bVar.f(e0.m.h(new byte[]{-27, -29, 100, 73, 68, -27, -62, 43, -127, -82, 4, 44, -33, -28, -1, 42, -76, -81, 56, -36, -76, -118, -112, 121, -27, -60, 101, 124, -75, -65, -112, 121, -28, -14, -108, 44, -37, -27, -63, 43, -115, -82, 15, 44, -38, -28, -9, 43, ByteCompanionObject.MIN_VALUE, -82, 9, 44, -36, -28, -12, -15}, new byte[]{53, 126, -76, -4, 100, 52, 65, -5}) + str);
                    } else {
                        bVar.e.setVisibility(8);
                    }
                    break;
                }
                break;
            default:
                f0 f0Var = (f0) this.c;
                if (!f0Var.c.E) {
                    long j9 = z8 ? 60000L : f0Var.c.f5180o;
                    q0 q0Var = f0Var.c;
                    q0Var.f5180o = z8 ? 15000L : Math.min(300000L, q0Var.f5180o * 2);
                    while (true) {
                        int childCount = f0Var.c.e.getChildCount();
                        q0 q0Var2 = f0Var.c;
                        if (i9 >= childCount) {
                            q0Var2.r.removeCallbacks(q0Var2.f5181p);
                            q0 q0Var3 = f0Var.c;
                            if (q0Var3.f5179n && q0Var3.isAttachedToWindow()) {
                                q0 q0Var4 = f0Var.c;
                                q0Var4.r.postDelayed(q0Var4.f5181p, j9);
                                break;
                            }
                        } else {
                            s1.b bVar2 = ((l0) q0Var2.e.getChildAt(i9)).f5124f;
                            if (bVar2 != null) {
                                bVar2.e(z8);
                            }
                            i9++;
                        }
                    }
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(boolean z8) {
        MockGpsService mockGpsService = (MockGpsService) this.c;
        if (MockGpsService.t.get() && MockGpsService.f761z) {
            mockGpsService.e = z8;
            if (!z8) {
                e eVar = mockGpsService.f762b;
                if (eVar != null) {
                    eVar.d();
                }
                MockGpsService.l(mockGpsService.getString(2131952242));
            }
            h hVar = mockGpsService.c;
            if (hVar instanceof p) {
                p pVar = (p) hVar;
                pVar.f4819j = z8;
                pVar.e();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.c;
        String str = WebLauncherActivity.f910l;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat$Type.systemBars() | WindowInsetsCompat$Type.displayCutout());
        webLauncherActivity.f918k = insets;
        s1.k kVar = webLauncherActivity.d;
        if (insets == null) {
            kVar.getClass();
            insets = Insets.NONE;
        }
        kVar.f5109h = insets;
        kVar.d();
        webLauncherActivity.s();
        return windowInsetsCompat;
    }
}
