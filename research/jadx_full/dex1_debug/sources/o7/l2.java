package o7;

import androidx.core.app.NotificationCompat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j2 f4336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f4337b;
    public final Map c;
    public final d4 d;
    public final Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f4338f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l2(j2 j2Var, HashMap map, HashMap map2, d4 d4Var, Object obj, Map map3) {
        this.f4336a = j2Var;
        this.f4337b = Collections.unmodifiableMap(new HashMap(map));
        this.c = Collections.unmodifiableMap(new HashMap(map2));
        this.d = d4Var;
        this.e = obj;
        this.f4338f = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l2 a(Map map, boolean z8, int i9, int i10, Object obj) {
        d4 d4Var;
        Map mapJ;
        d4 d4Var2;
        if (z8) {
            if (map == null || (mapJ = p4.j("retryThrottling", map)) == null) {
                d4Var2 = null;
            } else {
                float fFloatValue = p4.h("maxTokens", mapJ).floatValue();
                float fFloatValue2 = p4.h("tokenRatio", mapJ).floatValue();
                o4.b.m(fFloatValue > 0.0f, "maxToken should be greater than zero");
                o4.b.m(fFloatValue2 > 0.0f, "tokenRatio should be greater than zero");
                d4Var2 = new d4(fFloatValue, fFloatValue2);
            }
            d4Var = d4Var2;
        } else {
            d4Var = null;
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        Map mapJ2 = map == null ? null : p4.j("healthCheckConfig", map);
        List<Map> listD = p4.d("methodConfig", map);
        if (listD == null) {
            listD = null;
        } else {
            p4.a(listD);
        }
        if (listD == null) {
            return new l2(null, map2, map3, d4Var, obj, mapJ2);
        }
        j2 j2Var = null;
        for (Map map4 : listD) {
            j2 j2Var2 = new j2(map4, z8, i9, i10);
            List<Map> listD2 = p4.d("name", map4);
            if (listD2 == null) {
                listD2 = null;
            } else {
                p4.a(listD2);
            }
            if (listD2 != null && !listD2.isEmpty()) {
                for (Map map5 : listD2) {
                    String strK = p4.k(NotificationCompat.CATEGORY_SERVICE, map5);
                    String strK2 = p4.k("method", map5);
                    if (i4.d.a(strK)) {
                        o4.b.e("missing service name for method %s", i4.d.a(strK2), strK2);
                        o4.b.e("Duplicate default method config in service config %s", j2Var == null, map);
                        j2Var = j2Var2;
                    } else if (i4.d.a(strK2)) {
                        o4.b.e("Duplicate service %s", !map3.containsKey(strK), strK);
                        map3.put(strK, j2Var2);
                    } else {
                        String strA = n7.x0.a(strK, strK2);
                        o4.b.e("Duplicate method name %s", !map2.containsKey(strA), strA);
                        map2.put(strA, j2Var2);
                    }
                }
            }
        }
        return new l2(j2Var, map2, map3, d4Var, obj, mapJ2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k2 b() {
        if (this.c.isEmpty() && this.f4337b.isEmpty() && this.f4336a == null) {
            return null;
        }
        return new k2(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l2.class == obj.getClass()) {
            l2 l2Var = (l2) obj;
            if (com.bumptech.glide.d.f(this.f4336a, l2Var.f4336a) && com.bumptech.glide.d.f(this.f4337b, l2Var.f4337b) && com.bumptech.glide.d.f(this.c, l2Var.c) && com.bumptech.glide.d.f(this.d, l2Var.d) && com.bumptech.glide.d.f(this.e, l2Var.e)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4336a, this.f4337b, this.c, this.d, this.e});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4336a, "defaultMethodConfig");
        sVarT.c(this.f4337b, "serviceMethodMap");
        sVarT.c(this.c, "serviceMap");
        sVarT.c(this.d, "retryThrottling");
        sVarT.c(this.e, "loadBalancingConfig");
        return sVarT.toString();
    }
}
