package r7;

import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f5015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b[] f5016b;
    public static final Map c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        f5015a = w7.c.k(":");
        b bVar = new b(b.f5005h, "");
        o oVar2 = b.e;
        b bVar2 = new b(oVar2, "GET");
        b bVar3 = new b(oVar2, "POST");
        o oVar3 = b.f5003f;
        b bVar4 = new b(oVar3, "/");
        b bVar5 = new b(oVar3, "/index.html");
        o oVar4 = b.f5004g;
        b bVar6 = new b(oVar4, "http");
        b bVar7 = new b(oVar4, "https");
        o oVar5 = b.d;
        b[] bVarArr = {bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, new b(oVar5, "200"), new b(oVar5, "204"), new b(oVar5, "206"), new b(oVar5, "304"), new b(oVar5, "400"), new b(oVar5, "404"), new b(oVar5, "500"), new b("accept-charset", ""), new b("accept-encoding", "gzip, deflate"), new b("accept-language", ""), new b("accept-ranges", ""), new b("accept", ""), new b("access-control-allow-origin", ""), new b("age", ""), new b("allow", ""), new b("authorization", ""), new b("cache-control", ""), new b("content-disposition", ""), new b("content-encoding", ""), new b("content-language", ""), new b("content-length", ""), new b("content-location", ""), new b("content-range", ""), new b("content-type", ""), new b("cookie", ""), new b("date", ""), new b("etag", ""), new b("expect", ""), new b("expires", ""), new b(TypedValues$TransitionType.S_FROM, ""), new b("host", ""), new b("if-match", ""), new b("if-modified-since", ""), new b("if-none-match", ""), new b("if-range", ""), new b("if-unmodified-since", ""), new b("last-modified", ""), new b("link", ""), new b("location", ""), new b("max-forwards", ""), new b("proxy-authenticate", ""), new b("proxy-authorization", ""), new b("range", ""), new b("referer", ""), new b("refresh", ""), new b("retry-after", ""), new b("server", ""), new b("set-cookie", ""), new b("strict-transport-security", ""), new b("transfer-encoding", ""), new b("user-agent", ""), new b("vary", ""), new b("via", ""), new b("www-authenticate", "")};
        f5016b = bVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i9 = 0; i9 < 61; i9++) {
            if (!linkedHashMap.containsKey(bVarArr[i9].f5006a)) {
                linkedHashMap.put(bVarArr[i9].f5006a, Integer.valueOf(i9));
            }
        }
        c = Collections.unmodifiableMap(linkedHashMap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(o oVar) throws IOException {
        int iC = oVar.c();
        for (int i9 = 0; i9 < iC; i9++) {
            byte bF = oVar.f(i9);
            if (bF >= 65 && bF <= 90) {
                n0.b.A("PROTOCOL_ERROR response malformed: mixed case name: ".concat(oVar.l()));
                return;
            }
        }
    }
}
