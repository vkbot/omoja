package p186r7;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import p130l9.C2245o;
import p142n0.C2467b;
import p232w7.C3537c;

/* JADX INFO: renamed from: r7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3113e {

    /* JADX INFO: renamed from: a */
    public static final C2245o f8908a;

    /* JADX INFO: renamed from: b */
    public static final C3110b[] f8909b;

    /* JADX INFO: renamed from: c */
    public static final Map f8910c;

    static {
        C2245o c2245o = C2245o.f5879e;
        f8908a = C3537c.m5648k(":");
        C3110b c3110b = new C3110b(C3110b.f8891h, "");
        C2245o c2245o2 = C3110b.f8888e;
        C3110b c3110b2 = new C3110b(c2245o2, "GET");
        C3110b c3110b3 = new C3110b(c2245o2, "POST");
        C2245o c2245o3 = C3110b.f8889f;
        C3110b c3110b4 = new C3110b(c2245o3, "/");
        C3110b c3110b5 = new C3110b(c2245o3, "/index.html");
        C2245o c2245o4 = C3110b.f8890g;
        C3110b c3110b6 = new C3110b(c2245o4, "http");
        C3110b c3110b7 = new C3110b(c2245o4, "https");
        C2245o c2245o5 = C3110b.f8887d;
        C3110b[] c3110bArr = {c3110b, c3110b2, c3110b3, c3110b4, c3110b5, c3110b6, c3110b7, new C3110b(c2245o5, "200"), new C3110b(c2245o5, "204"), new C3110b(c2245o5, "206"), new C3110b(c2245o5, "304"), new C3110b(c2245o5, "400"), new C3110b(c2245o5, "404"), new C3110b(c2245o5, "500"), new C3110b("accept-charset", ""), new C3110b("accept-encoding", "gzip, deflate"), new C3110b("accept-language", ""), new C3110b("accept-ranges", ""), new C3110b("accept", ""), new C3110b("access-control-allow-origin", ""), new C3110b("age", ""), new C3110b("allow", ""), new C3110b("authorization", ""), new C3110b("cache-control", ""), new C3110b("content-disposition", ""), new C3110b("content-encoding", ""), new C3110b("content-language", ""), new C3110b("content-length", ""), new C3110b("content-location", ""), new C3110b("content-range", ""), new C3110b("content-type", ""), new C3110b("cookie", ""), new C3110b("date", ""), new C3110b("etag", ""), new C3110b("expect", ""), new C3110b("expires", ""), new C3110b(TypedValues.TransitionType.S_FROM, ""), new C3110b("host", ""), new C3110b("if-match", ""), new C3110b("if-modified-since", ""), new C3110b("if-none-match", ""), new C3110b("if-range", ""), new C3110b("if-unmodified-since", ""), new C3110b("last-modified", ""), new C3110b("link", ""), new C3110b("location", ""), new C3110b("max-forwards", ""), new C3110b("proxy-authenticate", ""), new C3110b("proxy-authorization", ""), new C3110b("range", ""), new C3110b("referer", ""), new C3110b("refresh", ""), new C3110b("retry-after", ""), new C3110b("server", ""), new C3110b("set-cookie", ""), new C3110b("strict-transport-security", ""), new C3110b("transfer-encoding", ""), new C3110b("user-agent", ""), new C3110b("vary", ""), new C3110b("via", ""), new C3110b("www-authenticate", "")};
        f8909b = c3110bArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i10 = 0; i10 < 61; i10++) {
            if (!linkedHashMap.containsKey(c3110bArr[i10].f8892a)) {
                linkedHashMap.put(c3110bArr[i10].f8892a, Integer.valueOf(i10));
            }
        }
        f8910c = Collections.unmodifiableMap(linkedHashMap);
    }

    /* JADX INFO: renamed from: a */
    public static void m4956a(C2245o c2245o) {
        int iMo3585c = c2245o.mo3585c();
        for (int i10 = 0; i10 < iMo3585c; i10++) {
            byte bMo3588f = c2245o.mo3588f(i10);
            if (bMo3588f >= 65 && bMo3588f <= 90) {
                C2467b.m3820A("PROTOCOL_ERROR response malformed: mixed case name: ".concat(c2245o.m3636l()));
                return;
            }
        }
    }
}
