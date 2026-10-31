package p216v0;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.example.navistart.R;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import p016b1.AbstractC0880u;
import p016b1.C0872m;
import p016b1.C0877r;
import p016b1.C0879t;
import p016b1.RunnableC0874o;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: v0.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3322i extends FrameLayout implements InterfaceC3321h {

    /* JADX INFO: renamed from: b */
    public C0877r f9720b;

    /* JADX INFO: renamed from: c */
    public final WindowManager.LayoutParams f9721c;

    /* JADX INFO: renamed from: d */
    public final C0879t f9722d;

    /* JADX INFO: renamed from: e */
    public WebView f9723e;

    public C3322i(SpeedBoardService speedBoardService, C0879t c0879t) {
        super(speedBoardService, null);
        this.f9722d = c0879t;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        this.f9721c = layoutParams;
        layoutParams.gravity = 17;
        m5238g(speedBoardService, c0879t);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: a */
    public final void mo1534a() {
        m5238g(getContext(), this.f9722d);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: b */
    public final void mo1535b() {
        C0877r c0877r = this.f9720b;
        if (c0877r != null) {
            c0877r.f624b = false;
            c0877r.mo992j(false);
            new Handler(Looper.getMainLooper()).post(new RunnableC0874o(c0877r, 0));
        }
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: d */
    public final int mo1537d() {
        return 0;
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: e */
    public final void mo1538e(float f8) {
        C0877r c0877r = this.f9720b;
        if (c0877r != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{5, 18, -47, -117, Base64.padSymbol, ByteCompanionObject.MIN_VALUE, -69, 17, 23, 12, -44, -122, 24, -112, -119, 20, 25, 22, -52}, new byte[]{112, 98, -75, -22, 73, -27, -24, 120}), f8);
                c0877r.mo988e(AbstractC1387m.m2421h(new byte[]{36, 84, -16, -106, 56, -122, 38, -65, 15, 85, -42, -92, Base64.padSymbol, -120, 60, -89}, new byte[]{99, 4, -93, -59, 81, -31, 72, -34}), jSONObject.toString());
            } catch (JSONException unused) {
            }
        }
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: f */
    public final void mo5237f(Location location) {
        C0877r c0877r = this.f9720b;
        if (c0877r != null) {
            c0877r.m991i(location);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m5238g(Context context, C0879t c0879t) {
        if (c0879t != null) {
            File file = new File(context.getFilesDir(), c0879t.f641a);
            if (!new File(file, c0879t.f643c).exists()) {
                C0872m c0872m = new C0872m(context, AbstractC1387m.m2421h(new byte[]{-104, 122, 105, -121, -121, -15, 53, 77, -108, 106, 107, -56, -120, -12, 49}, new byte[]{-4, 31, 15, -26, -14, -99, 65, 18}), file, AbstractC1387m.m2421h(new byte[]{3, -119, 0, -11, -107, -107, 4, 75, 15, -103, 2}, new byte[]{103, -20, 102, -108, -32, -7, 112, 20}));
                File file2 = new File(context.getCacheDir(), AbstractC1387m.m2421h(new byte[]{-41, -37, -121, -78, 92, -49, 116, 109, -37, -53, -123, -3, 83, -54, 112}, new byte[]{-77, -66, -31, -45, 41, -93, 0, 50}));
                try {
                    if (c0872m.m979c(file2)) {
                        AbstractC0880u.m1004r(file2, file, false);
                    }
                } catch (IOException unused) {
                }
            }
            mo1535b();
            removeAllViews();
            View.inflate(context, R.layout.fragment_web, this);
            this.f9723e = (WebView) findViewById(R.id.webView);
            this.f9720b = new C0877r(context, this.f9723e, c0879t);
        }
    }

    @Override // p216v0.InterfaceC3321h
    public WindowManager.LayoutParams getLayParams() {
        return this.f9721c;
    }

    @Override // p216v0.InterfaceC3321h
    public void setHudMassageObj(HUDMassageObj hUDMassageObj) {
        C0877r c0877r = this.f9720b;
        if (c0877r != null) {
            c0877r.m990h(hUDMassageObj);
        }
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: c */
    public final void mo1536c() {
    }

    @Override // p216v0.InterfaceC3321h
    public View getView() {
        return this;
    }

    public void setRPM(int i10) {
    }

    @Override // p216v0.InterfaceC3321h
    public void setSpeed(int i10) {
    }
}
