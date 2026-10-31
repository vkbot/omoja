package p173q0;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.example.navistart.home.WebLauncherActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p190s1.C3153k;
import p190s1.C3156l0;
import p190s1.C3166q0;
import p190s1.InterfaceC3177w;
import p190s1.RunnableC3144f0;
import p190s1.TextureViewSurfaceTextureListenerC3135b;
import p200t4.InterfaceC3242c;

/* JADX INFO: renamed from: q0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3042f implements InterfaceC3177w, OnApplyWindowInsetsListener, InterfaceC3242c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8555b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8556c;

    public /* synthetic */ C3042f(int i10, Object obj) {
        this.f8555b = i10;
        this.f8556c = obj;
    }

    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public Object mo817a(C1252h c1252h) {
        return this.f8556c;
    }

    @Override // p190s1.InterfaceC3177w
    /* JADX INFO: renamed from: b */
    public void mo886b(String str, boolean z9) {
        int i10 = 0;
        switch (this.f8555b) {
            case 1:
                TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = (TextureViewSurfaceTextureListenerC3135b) this.f8556c;
                textureViewSurfaceTextureListenerC3135b.f8977n = false;
                if (!textureViewSurfaceTextureListenerC3135b.f8973j) {
                    textureViewSurfaceTextureListenerC3135b.f8976m = !z9;
                    if (!z9) {
                        textureViewSurfaceTextureListenerC3135b.m4978f(AbstractC1387m.m2421h(new byte[]{-27, -29, 100, 73, 68, -27, -62, 43, -127, -82, 4, 44, -33, -28, -1, 42, -76, -81, 56, -36, -76, -118, -112, 121, -27, -60, 101, 124, -75, -65, -112, 121, -28, -14, -108, 44, -37, -27, -63, 43, -115, -82, 15, 44, -38, -28, -9, 43, ByteCompanionObject.MIN_VALUE, -82, 9, 44, -36, -28, -12, -15}, new byte[]{53, 126, -76, -4, 100, 52, 65, -5}) + str);
                    } else {
                        textureViewSurfaceTextureListenerC3135b.f8968e.setVisibility(8);
                    }
                    break;
                }
                break;
            default:
                RunnableC3144f0 runnableC3144f0 = (RunnableC3144f0) this.f8556c;
                if (!runnableC3144f0.f9004c.f9160E) {
                    long j10 = z9 ? 60000L : runnableC3144f0.f9004c.f9179o;
                    C3166q0 c3166q0 = runnableC3144f0.f9004c;
                    c3166q0.f9179o = z9 ? 15000L : Math.min(300000L, c3166q0.f9179o * 2);
                    while (true) {
                        int childCount = runnableC3144f0.f9004c.f9169e.getChildCount();
                        C3166q0 c3166q1 = runnableC3144f0.f9004c;
                        if (i10 >= childCount) {
                            c3166q1.f9182r.removeCallbacks(c3166q1.f9180p);
                            C3166q0 c3166q2 = runnableC3144f0.f9004c;
                            if (c3166q2.f9178n && c3166q2.isAttachedToWindow()) {
                                C3166q0 c3166q3 = runnableC3144f0.f9004c;
                                c3166q3.f9182r.postDelayed(c3166q3.f9180p, j10);
                                break;
                            }
                        } else {
                            TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b2 = ((C3156l0) c3166q1.f9169e.getChildAt(i10)).f9084f;
                            if (textureViewSurfaceTextureListenerC3135b2 != null) {
                                textureViewSurfaceTextureListenerC3135b2.m4977e(z9);
                            }
                            i10++;
                        }
                    }
                }
                break;
        }
    }

    /* JADX INFO: renamed from: c */
    public void m4871c(boolean z9) {
        MockGpsService mockGpsService = (MockGpsService) this.f8556c;
        if (MockGpsService.f1425t.get() && MockGpsService.f1431z) {
            mockGpsService.f1435e = z9;
            if (!z9) {
                C3041e c3041e = mockGpsService.f1432b;
                if (c3041e != null) {
                    c3041e.m4870d();
                }
                MockGpsService.m1456l(mockGpsService.getString(R.string.mock_gps_mock_system));
            }
            InterfaceC3044h interfaceC3044h = mockGpsService.f1433c;
            if (interfaceC3044h instanceof C3052p) {
                C3052p c3052p = (C3052p) interfaceC3044h;
                c3052p.f8613j = z9;
                c3052p.m4886e();
            }
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f8556c;
        String str = WebLauncherActivity.f1739l;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        webLauncherActivity.f1750k = insets;
        C3153k c3153k = webLauncherActivity.f1743d;
        if (insets == null) {
            c3153k.getClass();
            insets = Insets.NONE;
        }
        c3153k.f9060h = insets;
        c3153k.m4993d();
        webLauncherActivity.m1653s();
        return windowInsetsCompat;
    }
}
