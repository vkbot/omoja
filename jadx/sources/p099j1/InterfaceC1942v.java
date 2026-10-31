package p099j1;

import android.content.Context;
import p088i0.EnumC1737a;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC1942v {
    /* JADX INFO: renamed from: a */
    void mo3012a(Context context, EnumC1737a enumC1737a);

    /* JADX INFO: renamed from: b */
    InterfaceC3692a mo3013b();

    /* JADX INFO: renamed from: c */
    default boolean mo3015c() {
        return false;
    }

    /* JADX INFO: renamed from: d */
    InterfaceC1943w mo3014d();

    /* JADX INFO: renamed from: e */
    default C1940t[] mo3019e() {
        return new C1940t[0];
    }

    /* JADX INFO: renamed from: f */
    default boolean mo3043f() {
        return true;
    }

    /* JADX INFO: renamed from: g */
    default C1940t mo3040g(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        for (C1940t c1940t : mo3019e()) {
            if (c1940t != null && strTrim.equals(c1940t.f5291a)) {
                return c1940t;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    default boolean mo3016h() {
        return false;
    }
}
