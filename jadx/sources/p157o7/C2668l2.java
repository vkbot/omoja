package p157o7;

import androidx.core.app.NotificationCompat;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p091i4.AbstractC1746d;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.l2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2668l2 {

    /* JADX INFO: renamed from: a */
    public final C2656j2 f7608a;

    /* JADX INFO: renamed from: b */
    public final Map f7609b;

    /* JADX INFO: renamed from: c */
    public final Map f7610c;

    /* JADX INFO: renamed from: d */
    public final C2622d4 f7611d;

    /* JADX INFO: renamed from: e */
    public final Object f7612e;

    /* JADX INFO: renamed from: f */
    public final Map f7613f;

    public C2668l2(C2656j2 c2656j2, HashMap map, HashMap map2, C2622d4 c2622d4, Object obj, Map map3) {
        this.f7608a = c2656j2;
        this.f7609b = Collections.unmodifiableMap(new HashMap(map));
        this.f7610c = Collections.unmodifiableMap(new HashMap(map2));
        this.f7611d = c2622d4;
        this.f7612e = obj;
        this.f7613f = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    /* JADX INFO: renamed from: a */
    public static C2668l2 m4185a(Map map, boolean z9, int i10, int i11, Object obj) {
        C2622d4 c2622d4;
        Map mapM4216j;
        C2622d4 c2622d5;
        if (z9) {
            if (map == null || (mapM4216j = AbstractC2694p4.m4216j("retryThrottling", map)) == null) {
                c2622d5 = null;
            } else {
                float fFloatValue = AbstractC2694p4.m4214h("maxTokens", mapM4216j).floatValue();
                float fFloatValue2 = AbstractC2694p4.m4214h("tokenRatio", mapM4216j).floatValue();
                AbstractC2587b.m4046m(fFloatValue > 0.0f, "maxToken should be greater than zero");
                AbstractC2587b.m4046m(fFloatValue2 > 0.0f, "tokenRatio should be greater than zero");
                c2622d5 = new C2622d4(fFloatValue, fFloatValue2);
            }
            c2622d4 = c2622d5;
        } else {
            c2622d4 = null;
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        Map mapM4216j2 = map == null ? null : AbstractC2694p4.m4216j("healthCheckConfig", map);
        List<Map> listM4210d = AbstractC2694p4.m4210d("methodConfig", map);
        if (listM4210d == null) {
            listM4210d = null;
        } else {
            AbstractC2694p4.m4207a(listM4210d);
        }
        if (listM4210d == null) {
            return new C2668l2(null, map2, map3, c2622d4, obj, mapM4216j2);
        }
        C2656j2 c2656j2 = null;
        for (Map map4 : listM4210d) {
            C2656j2 c2656j3 = new C2656j2(map4, z9, i10, i11);
            List<Map> listM4210d2 = AbstractC2694p4.m4210d("name", map4);
            if (listM4210d2 == null) {
                listM4210d2 = null;
            } else {
                AbstractC2694p4.m4207a(listM4210d2);
            }
            if (listM4210d2 != null && !listM4210d2.isEmpty()) {
                for (Map map5 : listM4210d2) {
                    String strM4217k = AbstractC2694p4.m4217k(NotificationCompat.CATEGORY_SERVICE, map5);
                    String strM4217k2 = AbstractC2694p4.m4217k("method", map5);
                    if (AbstractC1746d.m2871a(strM4217k)) {
                        AbstractC2587b.m4038e("missing service name for method %s", AbstractC1746d.m2871a(strM4217k2), strM4217k2);
                        AbstractC2587b.m4038e("Duplicate default method config in service config %s", c2656j2 == null, map);
                        c2656j2 = c2656j3;
                    } else if (AbstractC1746d.m2871a(strM4217k2)) {
                        AbstractC2587b.m4038e("Duplicate service %s", !map3.containsKey(strM4217k), strM4217k);
                        map3.put(strM4217k, c2656j3);
                    } else {
                        String strM3992a = C2551x0.m3992a(strM4217k, strM4217k2);
                        AbstractC2587b.m4038e("Duplicate method name %s", !map2.containsKey(strM3992a), strM3992a);
                        map2.put(strM3992a, c2656j3);
                    }
                }
            }
        }
        return new C2668l2(c2656j2, map2, map3, c2622d4, obj, mapM4216j2);
    }

    /* JADX INFO: renamed from: b */
    public final C2662k2 m4186b() {
        if (this.f7610c.isEmpty() && this.f7609b.isEmpty() && this.f7608a == null) {
            return null;
        }
        return new C2662k2(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2668l2.class == obj.getClass()) {
            C2668l2 c2668l2 = (C2668l2) obj;
            if (AbstractC1031d.m1276f(this.f7608a, c2668l2.f7608a) && AbstractC1031d.m1276f(this.f7609b, c2668l2.f7609b) && AbstractC1031d.m1276f(this.f7610c, c2668l2.f7610c) && AbstractC1031d.m1276f(this.f7611d, c2668l2.f7611d) && AbstractC1031d.m1276f(this.f7612e, c2668l2.f7612e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7608a, this.f7609b, this.f7610c, this.f7611d, this.f7612e});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7608a, "defaultMethodConfig");
        c1073sM1263t.m1347c(this.f7609b, "serviceMethodMap");
        c1073sM1263t.m1347c(this.f7610c, "serviceMap");
        c1073sM1263t.m1347c(this.f7611d, "retryThrottling");
        c1073sM1263t.m1347c(this.f7612e, "loadBalancingConfig");
        return c1073sM1263t.toString();
    }
}
