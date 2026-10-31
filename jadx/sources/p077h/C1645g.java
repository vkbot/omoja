package p077h;

import ai.onnxruntime.AbstractC0074a;
import android.text.TextUtils;
import p030c5.C0990e;
import p099j1.C1929i;

/* JADX INFO: renamed from: h.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1645g {

    /* JADX INFO: renamed from: e */
    public static final C0990e f4177e = new C0990e(7);

    /* JADX INFO: renamed from: a */
    public final Object f4178a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1644f f4179b;

    /* JADX INFO: renamed from: c */
    public final String f4180c;

    /* JADX INFO: renamed from: d */
    public volatile byte[] f4181d;

    public C1645g(String str, Object obj, InterfaceC1644f interfaceC1644f) {
        if (TextUtils.isEmpty(str)) {
            C1929i.m3029k("Must not be null or empty");
            throw null;
        }
        this.f4180c = str;
        this.f4178a = obj;
        this.f4179b = interfaceC1644f;
    }

    /* JADX INFO: renamed from: a */
    public static C1645g m2728a(Object obj, String str) {
        return new C1645g(str, obj, f4177e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1645g) {
            return this.f4180c.equals(((C1645g) obj).f4180c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4180c.hashCode();
    }

    public final String toString() {
        return AbstractC0074a.m165p(new StringBuilder("Option{key='"), this.f4180c, "'}");
    }
}
