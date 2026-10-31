package o7;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f4344a = Logger.getLogger(m1.class.getName());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object a(w5.a aVar) throws IOException {
        double d;
        o4.b.m(aVar.f0(), "unexpected end of JSON");
        int iC = com.bumptech.glide.g.c(aVar.p0());
        if (iC == 0) {
            aVar.b();
            ArrayList arrayList = new ArrayList();
            while (aVar.f0()) {
                arrayList.add(a(aVar));
            }
            o4.b.m(aVar.p0() == 2, "Bad token: ".concat(aVar.e0(false)));
            aVar.V();
            return Collections.unmodifiableList(arrayList);
        }
        if (iC == 2) {
            aVar.c();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (aVar.f0()) {
                linkedHashMap.put(aVar.j0(), a(aVar));
            }
            o4.b.m(aVar.p0() == 4, "Bad token: ".concat(aVar.e0(false)));
            aVar.c0();
            return Collections.unmodifiableMap(linkedHashMap);
        }
        if (iC == 5) {
            return aVar.n0();
        }
        if (iC != 6) {
            if (iC == 7) {
                return Boolean.valueOf(aVar.i0());
            }
            if (iC == 8) {
                aVar.l0();
                return null;
            }
            j1.i.l("Bad token: ".concat(aVar.e0(false)));
            return null;
        }
        int iS = aVar.f5914i;
        if (iS == 0) {
            iS = aVar.S();
        }
        if (iS == 15) {
            aVar.f5914i = 0;
            int[] iArr = aVar.f5921p;
            int i9 = aVar.f5919n - 1;
            iArr[i9] = iArr[i9] + 1;
            d = aVar.f5915j;
        } else {
            if (iS == 16) {
                aVar.f5917l = new String(aVar.d, aVar.e, aVar.f5916k);
                aVar.e += aVar.f5916k;
            } else if (iS == 8 || iS == 9) {
                aVar.f5917l = aVar.m0(iS == 8 ? '\'' : '\"');
            } else if (iS == 10) {
                aVar.f5917l = aVar.o0();
            } else if (iS != 11) {
                n0.b.j(kotlin.collections.unsigned.a.j(aVar.p0()), "Expected a double but was ", aVar.h0());
                return null;
            }
            aVar.f5914i = 11;
            d = Double.parseDouble(aVar.f5917l);
            if (!aVar.c && (Double.isNaN(d) || Double.isInfinite(d))) {
                throw new w5.c("JSON forbids NaN and infinities: " + d + aVar.h0());
            }
            aVar.f5917l = null;
            aVar.f5914i = 0;
            int[] iArr2 = aVar.f5921p;
            int i10 = aVar.f5919n - 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        return Double.valueOf(d);
    }
}
