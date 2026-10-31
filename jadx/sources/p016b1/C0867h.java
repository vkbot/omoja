package p016b1;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.fragment.app.Fragment;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.BlackActivity;
import com.example.navistart.R;
import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p002a1.RunnableC0003a;
import p047e0.AbstractC1387m;
import p057f0.InterfaceC1525c;
import p189s0.C3129a;
import p216v0.InterfaceC3320g;

/* JADX INFO: renamed from: b1.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0867h extends Fragment implements InterfaceC3320g, InterfaceC1525c {

    /* JADX INFO: renamed from: g */
    public static final String f573g = AbstractC1387m.m2421h(new byte[]{-115, -77, 125, -50, -113, -99, 96, 106, -119, -94, 110, -50, -115, ByteCompanionObject.MIN_VALUE, 96, 116}, new byte[]{-20, -63, 26, -111, -1, -17, 15, 0});

    /* JADX INFO: renamed from: h */
    public static final String f574h = AbstractC1387m.m2421h(new byte[]{118, -82, -94, -120, 85, 46, -82, -30, 114, -65, -79, -120, 86, 57, -75, -4, 126, -78, -94, -120, 78, 57, -72}, new byte[]{23, -36, -59, -41, 37, 92, -63, -120});

    /* JADX INFO: renamed from: i */
    public static final String f575i = AbstractC1387m.m2421h(new byte[]{-100, -79, 124, -10, 111, 112, 35, -118, -104, -96, 111, -10, 108, 103, 56, -108, -108, -83, 124, -10, 123, 103, 42}, new byte[]{-3, -61, 27, -87, 31, 2, 76, -32});

    /* JADX INFO: renamed from: b */
    public String f576b;

    /* JADX INFO: renamed from: c */
    public String f577c;

    /* JADX INFO: renamed from: d */
    public String f578d;

    /* JADX INFO: renamed from: e */
    public C0877r f579e;

    /* JADX INFO: renamed from: f */
    public InterfaceC1525c f580f;

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: a */
    public final void mo922a() {
        this.f579e.mo986a();
    }

    @Override // p057f0.InterfaceC1525c
    /* JADX INFO: renamed from: b */
    public final void mo923b() {
        this.f580f.mo923b();
    }

    @Override // p057f0.InterfaceC1525c
    /* JADX INFO: renamed from: c */
    public final void mo924c() {
        this.f580f.mo924c();
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: d */
    public final void mo925d(int i10) {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{50, -57, 90, 28, -29}, new byte[]{65, -73, 63, 121, -121, -80, 82, -66});
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{60, Base64.padSymbol, 110, 89, -40, -102, -18, -98, 125}, new byte[]{71, 31, 24, 56, -76, -17, -117, -68}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{78}, new byte[]{51, 4, -31, -61, -54, -78, -41, -71}));
        c0877r.mo988e(strM2421h, sb.toString());
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: f */
    public final void mo926f(String str) {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-58, 7, 73, 5, -29}, new byte[]{-80, 102, 37, 112, -122, -14, -104, 43}), str);
            c0877r.mo988e(AbstractC1387m.m2421h(new byte[]{103, -10, -121, -94, -17, -9, 37}, new byte[]{43, -103, -32, -26, -114, -125, 68, -49}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: g */
    public final void mo927g(int i10, String str) {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{83, -112, 116, 109, -40, -11, -120}, new byte[]{36, -11, 21, 25, -80, -112, -6, 15});
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{-86, 12, -7, 55, -37, 10, -79, 42, -13}, new byte[]{-47, 46, -115, 82, -74, 122, -109, 16}, sb, str);
        AbstractC1178q.m2086t(new byte[]{-24, -46, 28, -43, 8, 83, -123, -98, -16}, new byte[]{-54, -2, 62, -68, 107, 60, -21, -68}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{-82}, new byte[]{-45, -13, -67, -10, 8, -8, 17, 99}));
        c0877r.mo988e(strM2421h, sb.toString());
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: h */
    public final void mo928h() {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        c0877r.f628f = AbstractC1387m.m2421h(new byte[]{-98, -56, 30, -50, 77}, new byte[]{-14, -95, 121, -90, 57, 54, -84, -31});
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: k */
    public final void mo929k(C3129a c3129a) {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        if (c3129a == null) {
            return;
        }
        C0877r.f623s.execute(new RunnableC0003a(8, c0877r, c3129a));
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: l */
    public final void mo930l(int i10) {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-101, -29, -66}, new byte[]{-23, -109, -45, -19, -47, 30, -57, -126});
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2086t(new byte[]{106, 126, -78, 45, -76, 33, 120, -9, 43}, new byte[]{17, 92, -60, 76, -40, 84, 29, -43}, sb, i10);
        sb.append(AbstractC1387m.m2421h(new byte[]{51}, new byte[]{78, 34, 11, 94, 89, -50, 75, 2}));
        c0877r.mo988e(strM2421h, sb.toString());
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: o */
    public final void mo931o(HUDMassageObj hUDMassageObj) {
        this.f579e.m990h(hUDMassageObj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BlackActivity) {
            this.f580f = (InterfaceC1525c) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() == null) {
            this.f576b = AbstractC1387m.m2421h(new byte[]{-22, 79, 13, -59, -99, -64, 85, -30, -51, 83, 57, -44, -67, -1, 70, -1, -61}, new byte[]{-89, 54, 90, -96, -1, -112, 39, -115});
            this.f577c = AbstractC1387m.m2421h(new byte[]{-57, -66, 106, -30, 60, -51, 85, 46, -43, -81, 87, -50, 46, -56, 84, 42, -60, -66, 108}, new byte[]{-80, -37, 8, -67, 75, -92, 49, 73});
            this.f578d = AbstractC1387m.m2421h(new byte[]{-18, -71, -109, 119, -116, 94, 0}, new byte[]{-118, -36, -11, 22, -7, 50, 116, 7});
            return;
        }
        this.f576b = getArguments().getString(f573g, AbstractC1387m.m2421h(new byte[]{-74, -52, 64, -98, 1, -18, 11, 90, -111, -48, 116, -113, 33, -47, 24, 71, -97}, new byte[]{-5, -75, 23, -5, 99, -66, 121, 53}));
        this.f577c = getArguments().getString(f574h, AbstractC1387m.m2421h(new byte[]{34, 80, 38, 30, 88, -38, -105, 96, 48, 65, 27, 50, 74, -33, -106, 100, 33, 80, 32}, new byte[]{85, 53, 68, 65, 47, -77, -13, 7}));
        this.f578d = getArguments().getString(f575i, AbstractC1387m.m2421h(new byte[]{72, 124, 49, -38, -97, -29, -36}, new byte[]{44, 25, 87, -69, -22, -113, -88, -51}));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_web, viewGroup, false);
        viewInflate.setOnClickListener(new ViewOnClickListenerC0675c(1, this));
        viewInflate.setOnLongClickListener(new ViewOnLongClickListenerC0866g(this, 0));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        C0877r c0877r = this.f579e;
        c0877r.f624b = false;
        c0877r.mo992j(false);
        new Handler(Looper.getMainLooper()).post(new RunnableC0874o(c0877r, 0));
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        C0877r c0877r = new C0877r(requireContext(), (WebView) view.findViewById(R.id.webView), new C0879t(this.f576b, this.f577c, this.f578d));
        this.f579e = c0877r;
        c0877r.f626d = this;
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: q */
    public final void mo932q() {
        this.f579e.f624b = false;
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: r */
    public final void mo933r() {
        C0877r c0877r = this.f579e;
        c0877r.getClass();
        c0877r.f628f = AbstractC1387m.m2421h(new byte[]{49, 114, -104, 123}, new byte[]{85, 19, -22, 16, 47, -51, 58, 8});
    }
}
