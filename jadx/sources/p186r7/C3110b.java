package p186r7;

import ai.onnxruntime.AbstractC0074a;
import okhttp3.internal.http2.Header;
import p130l9.C2245o;
import p232w7.C3537c;

/* JADX INFO: renamed from: r7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3110b {

    /* JADX INFO: renamed from: d */
    public static final C2245o f8887d;

    /* JADX INFO: renamed from: e */
    public static final C2245o f8888e;

    /* JADX INFO: renamed from: f */
    public static final C2245o f8889f;

    /* JADX INFO: renamed from: g */
    public static final C2245o f8890g;

    /* JADX INFO: renamed from: h */
    public static final C2245o f8891h;

    /* JADX INFO: renamed from: a */
    public final C2245o f8892a;

    /* JADX INFO: renamed from: b */
    public final C2245o f8893b;

    /* JADX INFO: renamed from: c */
    public final int f8894c;

    static {
        C2245o c2245o = C2245o.f5879e;
        f8887d = C3537c.m5648k(Header.RESPONSE_STATUS_UTF8);
        f8888e = C3537c.m5648k(Header.TARGET_METHOD_UTF8);
        f8889f = C3537c.m5648k(Header.TARGET_PATH_UTF8);
        f8890g = C3537c.m5648k(Header.TARGET_SCHEME_UTF8);
        f8891h = C3537c.m5648k(Header.TARGET_AUTHORITY_UTF8);
        C3537c.m5648k(":host");
        C3537c.m5648k(":version");
    }

    public C3110b(C2245o c2245o, C2245o c2245o2) {
        this.f8892a = c2245o;
        this.f8893b = c2245o2;
        this.f8894c = c2245o2.mo3585c() + c2245o.mo3585c() + 32;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3110b) {
            C3110b c3110b = (C3110b) obj;
            if (this.f8892a.equals(c3110b.f8892a) && this.f8893b.equals(c3110b.f8893b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8893b.hashCode() + ((this.f8892a.hashCode() + 527) * 31);
    }

    public final String toString() {
        return AbstractC0074a.m149D(this.f8892a.m3636l(), ": ", this.f8893b.m3636l());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3110b(C2245o c2245o, String str) {
        this(c2245o, C3537c.m5648k(str));
        C2245o c2245o2 = C2245o.f5879e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3110b(String str, String str2) {
        this(C3537c.m5648k(str), C3537c.m5648k(str2));
        C2245o c2245o = C2245o.f5879e;
    }
}
