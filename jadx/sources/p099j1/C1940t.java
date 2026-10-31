package p099j1;

import com.example.navistart.R;

/* JADX INFO: renamed from: j1.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1940t {

    /* JADX INFO: renamed from: a */
    public final String f5291a;

    /* JADX INFO: renamed from: b */
    public final String f5292b;

    /* JADX INFO: renamed from: c */
    public final int f5293c;

    /* JADX INFO: renamed from: d */
    public final int f5294d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC1941u f5295e;

    public C1940t(String str, String str2, int i10, int i11, InterfaceC1941u interfaceC1941u) {
        this.f5291a = str;
        this.f5292b = str2;
        this.f5293c = i10;
        this.f5294d = i11;
        this.f5295e = interfaceC1941u;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m3048a() {
        String str = this.f5291a;
        return (str == null || str.trim().isEmpty() || this.f5295e == null) ? false : true;
    }

    public C1940t(String str, String str2, InterfaceC1941u interfaceC1941u) {
        this(str, str2, 0, R.drawable.ic_j6_climate_action, interfaceC1941u);
    }
}
