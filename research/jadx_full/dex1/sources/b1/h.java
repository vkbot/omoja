package b1;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.fragment.app.Fragment;
import com.example.navistart.BlackActivity;
import com.example.navistart.cores.HUDMassageObj;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class h extends Fragment implements v0.g, f0.c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f253g = e0.m.h(new byte[]{-115, -77, 125, -50, -113, -99, 96, 106, -119, -94, 110, -50, -115, ByteCompanionObject.MIN_VALUE, 96, 116}, new byte[]{-20, -63, 26, -111, -1, -17, 15, 0});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f254h = e0.m.h(new byte[]{118, -82, -94, -120, 85, 46, -82, -30, 114, -65, -79, -120, 86, 57, -75, -4, 126, -78, -94, -120, 78, 57, -72}, new byte[]{23, -36, -59, -41, 37, 92, -63, -120});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f255i = e0.m.h(new byte[]{-100, -79, 124, -10, 111, 112, 35, -118, -104, -96, 111, -10, 108, 103, 56, -108, -108, -83, 124, -10, 123, 103, 42}, new byte[]{-3, -61, 27, -87, 31, 2, 76, -32});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f256b;
    public String c;
    public String d;
    public r e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f0.c f257f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void a() {
        this.e.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // f0.c
    public final void b() {
        this.f257f.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // f0.c
    public final void c() {
        this.f257f.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void d(int i9) {
        r rVar = this.e;
        rVar.getClass();
        String strH = e0.m.h(new byte[]{50, -57, 90, 28, -29}, new byte[]{65, -73, 63, 121, -121, -80, 82, -66});
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.t(new byte[]{60, Base64.padSymbol, 110, 89, -40, -102, -18, -98, 125}, new byte[]{71, 31, 24, 56, -76, -17, -117, -68}, sb, i9);
        sb.append(e0.m.h(new byte[]{78}, new byte[]{51, 4, -31, -61, -54, -78, -41, -71}));
        rVar.e(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void f(String str) {
        r rVar = this.e;
        rVar.getClass();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e0.m.h(new byte[]{-58, 7, 73, 5, -29}, new byte[]{-80, 102, 37, 112, -122, -14, -104, 43}), str);
            rVar.e(e0.m.h(new byte[]{103, -10, -121, -94, -17, -9, 37}, new byte[]{43, -103, -32, -26, -114, -125, 68, -49}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void g(int i9, String str) {
        r rVar = this.e;
        rVar.getClass();
        String strH = e0.m.h(new byte[]{83, -112, 116, 109, -40, -11, -120}, new byte[]{36, -11, 21, 25, -80, -112, -6, 15});
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{-86, 12, -7, 55, -37, 10, -79, 42, -13}, new byte[]{-47, 46, -115, 82, -74, 122, -109, 16}, sb, str);
        com.google.protobuf.q.t(new byte[]{-24, -46, 28, -43, 8, 83, -123, -98, -16}, new byte[]{-54, -2, 62, -68, 107, 60, -21, -68}, sb, i9);
        sb.append(e0.m.h(new byte[]{-82}, new byte[]{-45, -13, -67, -10, 8, -8, 17, 99}));
        rVar.e(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void h() {
        r rVar = this.e;
        rVar.getClass();
        rVar.f281f = e0.m.h(new byte[]{-98, -56, 30, -50, 77}, new byte[]{-14, -95, 121, -90, 57, 54, -84, -31});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void k(s0.a aVar) {
        r rVar = this.e;
        rVar.getClass();
        if (aVar == null) {
            return;
        }
        r.f279s.execute(new a1.a(8, rVar, aVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void l(int i9) {
        r rVar = this.e;
        rVar.getClass();
        String strH = e0.m.h(new byte[]{-101, -29, -66}, new byte[]{-23, -109, -45, -19, -47, 30, -57, -126});
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.t(new byte[]{106, 126, -78, 45, -76, 33, 120, -9, 43}, new byte[]{17, 92, -60, 76, -40, 84, 29, -43}, sb, i9);
        sb.append(e0.m.h(new byte[]{51}, new byte[]{78, 34, 11, 94, 89, -50, 75, 2}));
        rVar.e(strH, sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void o(HUDMassageObj hUDMassageObj) {
        this.e.h(hUDMassageObj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.content.Context */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BlackActivity) {
            this.f257f = (f0.c) context;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() == null) {
            this.f256b = e0.m.h(new byte[]{-22, 79, 13, -59, -99, -64, 85, -30, -51, 83, 57, -44, -67, -1, 70, -1, -61}, new byte[]{-89, 54, 90, -96, -1, -112, 39, -115});
            this.c = e0.m.h(new byte[]{-57, -66, 106, -30, 60, -51, 85, 46, -43, -81, 87, -50, 46, -56, 84, 42, -60, -66, 108}, new byte[]{-80, -37, 8, -67, 75, -92, 49, 73});
            this.d = e0.m.h(new byte[]{-18, -71, -109, 119, -116, 94, 0}, new byte[]{-118, -36, -11, 22, -7, 50, 116, 7});
            return;
        }
        this.f256b = getArguments().getString(f253g, e0.m.h(new byte[]{-74, -52, 64, -98, 1, -18, 11, 90, -111, -48, 116, -113, 33, -47, 24, 71, -97}, new byte[]{-5, -75, 23, -5, 99, -66, 121, 53}));
        this.c = getArguments().getString(f254h, e0.m.h(new byte[]{34, 80, 38, 30, 88, -38, -105, 96, 48, 65, 27, 50, 74, -33, -106, 100, 33, 80, 32}, new byte[]{85, 53, 68, 65, 47, -77, -13, 7}));
        this.d = getArguments().getString(f255i, e0.m.h(new byte[]{72, 124, 49, -38, -97, -29, -36}, new byte[]{44, 25, 87, -69, -22, -113, -88, -51}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492977, viewGroup, false);
        viewInflate.setOnClickListener(new androidx.navigation.c(1, this));
        viewInflate.setOnLongClickListener(new g(this, 0));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        r rVar = this.e;
        rVar.f280b = false;
        rVar.j(false);
        new Handler(Looper.getMainLooper()).post(new o(rVar, 0));
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        r rVar = new r(requireContext(), (WebView) view.findViewById(2131297763), new t(this.f256b, this.c, this.d));
        this.e = rVar;
        rVar.d = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void q() {
        this.e.f280b = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void r() {
        r rVar = this.e;
        rVar.getClass();
        rVar.f281f = e0.m.h(new byte[]{49, 114, -104, 123}, new byte[]{85, 19, -22, 16, 47, -51, 58, 8});
    }
}
