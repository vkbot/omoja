package p157o7;

import com.bumptech.glide.AbstractC1034g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.logging.Logger;
import kotlin.collections.unsigned.AbstractC2082a;
import kotlin.text.Typography;
import p099j1.C1929i;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p230w5.C3526a;
import p230w5.C3528c;

/* JADX INFO: renamed from: o7.m1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2673m1 {

    /* JADX INFO: renamed from: a */
    public static final Logger f7624a = Logger.getLogger(AbstractC2673m1.class.getName());

    /* JADX INFO: renamed from: a */
    public static Object m4189a(C3526a c3526a) throws IOException {
        double d;
        AbstractC2587b.m4046m(c3526a.m5607f0(), "unexpected end of JSON");
        int iM1296c = AbstractC1034g.m1296c(c3526a.m5617p0());
        if (iM1296c == 0) {
            c3526a.m5602b();
            ArrayList arrayList = new ArrayList();
            while (c3526a.m5607f0()) {
                arrayList.add(m4189a(c3526a));
            }
            AbstractC2587b.m4046m(c3526a.m5617p0() == 2, "Bad token: ".concat(c3526a.m5606e0(false)));
            c3526a.m5601V();
            return Collections.unmodifiableList(arrayList);
        }
        if (iM1296c == 2) {
            c3526a.m5603c();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (c3526a.m5607f0()) {
                linkedHashMap.put(c3526a.m5611j0(), m4189a(c3526a));
            }
            AbstractC2587b.m4046m(c3526a.m5617p0() == 4, "Bad token: ".concat(c3526a.m5606e0(false)));
            c3526a.m5604c0();
            return Collections.unmodifiableMap(linkedHashMap);
        }
        if (iM1296c == 5) {
            return c3526a.m5615n0();
        }
        if (iM1296c != 6) {
            if (iM1296c == 7) {
                return Boolean.valueOf(c3526a.m5610i0());
            }
            if (iM1296c == 8) {
                c3526a.m5613l0();
                return null;
            }
            C1929i.m3030l("Bad token: ".concat(c3526a.m5606e0(false)));
            return null;
        }
        int iM5600S = c3526a.f10464i;
        if (iM5600S == 0) {
            iM5600S = c3526a.m5600S();
        }
        if (iM5600S == 15) {
            c3526a.f10464i = 0;
            int[] iArr = c3526a.f10471p;
            int i10 = c3526a.f10469n - 1;
            iArr[i10] = iArr[i10] + 1;
            d = c3526a.f10465j;
        } else {
            if (iM5600S == 16) {
                c3526a.f10467l = new String(c3526a.f10459d, c3526a.f10460e, c3526a.f10466k);
                c3526a.f10460e += c3526a.f10466k;
            } else if (iM5600S == 8 || iM5600S == 9) {
                c3526a.f10467l = c3526a.m5614m0(iM5600S == 8 ? '\'' : Typography.quote);
            } else if (iM5600S == 10) {
                c3526a.f10467l = c3526a.m5616o0();
            } else if (iM5600S != 11) {
                C2467b.m3827j(AbstractC2082a.m3244j(c3526a.m5617p0()), "Expected a double but was ", c3526a.m5609h0());
                return null;
            }
            c3526a.f10464i = 11;
            d = Double.parseDouble(c3526a.f10467l);
            if (!c3526a.f10458c && (Double.isNaN(d) || Double.isInfinite(d))) {
                throw new C3528c("JSON forbids NaN and infinities: " + d + c3526a.m5609h0());
            }
            c3526a.f10467l = null;
            c3526a.f10464i = 0;
            int[] iArr2 = c3526a.f10471p;
            int i11 = c3526a.f10469n - 1;
            iArr2[i11] = iArr2[i11] + 1;
        }
        return Double.valueOf(d);
    }
}
