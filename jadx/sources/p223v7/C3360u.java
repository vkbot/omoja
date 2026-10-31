package p223v7;

import java.util.List;
import java.util.Map;
import okhttp3.internal.connection.RealConnection;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2522k0;
import p148n7.C2508f1;
import p148n7.C2525l0;
import p148n7.C2553y0;
import p155o4.AbstractC2587b;
import p157o7.AbstractC2694p4;
import p157o7.C2688o4;

/* JADX INFO: renamed from: v7.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3360u extends AbstractC2522k0 {
    /* JADX INFO: renamed from: d */
    public static C2553y0 m5271d(Map map) {
        C3353n c3353n;
        C3353n c3353n2;
        Integer num;
        Integer num2;
        Integer num3 = 5;
        Integer num4 = 100;
        Long lM4218l = AbstractC2694p4.m4218l("interval", map);
        Long lM4218l2 = AbstractC2694p4.m4218l("baseEjectionTime", map);
        Long lM4218l3 = AbstractC2694p4.m4218l("maxEjectionTime", map);
        Integer numM4215i = AbstractC2694p4.m4215i("maxEjectionPercentage", map);
        Long lValueOf = lM4218l != null ? lM4218l : Long.valueOf(RealConnection.IDLE_CONNECTION_HEALTHY_NS);
        Long l10 = lM4218l2 != null ? lM4218l2 : 30000000000L;
        Long l11 = lM4218l3 != null ? lM4218l3 : 300000000000L;
        Integer num5 = numM4215i != null ? numM4215i : 10;
        Map mapM4216j = AbstractC2694p4.m4216j("successRateEjection", map);
        List list = null;
        if (mapM4216j != null) {
            Integer numM4215i2 = AbstractC2694p4.m4215i("stdevFactor", mapM4216j);
            Integer numM4215i3 = AbstractC2694p4.m4215i("enforcementPercentage", mapM4216j);
            Integer numM4215i4 = AbstractC2694p4.m4215i("minimumHosts", mapM4216j);
            Integer numM4215i5 = AbstractC2694p4.m4215i("requestVolume", mapM4216j);
            Integer num6 = numM4215i2 != null ? numM4215i2 : 1900;
            if (numM4215i3 != null) {
                AbstractC2587b.m4039f(numM4215i3.intValue() >= 0 && numM4215i3.intValue() <= 100);
                num = numM4215i3;
            } else {
                num = num4;
            }
            if (numM4215i4 != null) {
                AbstractC2587b.m4039f(numM4215i4.intValue() >= 0);
                num2 = numM4215i4;
            } else {
                num2 = num3;
            }
            if (numM4215i5 != null) {
                AbstractC2587b.m4039f(numM4215i5.intValue() >= 0);
            } else {
                numM4215i5 = num4;
            }
            c3353n = new C3353n(num6, num, num2, numM4215i5);
        } else {
            c3353n = null;
        }
        Map mapM4216j2 = AbstractC2694p4.m4216j("failurePercentageEjection", map);
        if (mapM4216j2 != null) {
            Integer num7 = 85;
            Integer num8 = 50;
            Integer numM4215i6 = AbstractC2694p4.m4215i("threshold", mapM4216j2);
            Integer numM4215i7 = AbstractC2694p4.m4215i("enforcementPercentage", mapM4216j2);
            Integer numM4215i8 = AbstractC2694p4.m4215i("minimumHosts", mapM4216j2);
            Integer numM4215i9 = AbstractC2694p4.m4215i("requestVolume", mapM4216j2);
            if (numM4215i6 != null) {
                AbstractC2587b.m4039f(numM4215i6.intValue() >= 0 && numM4215i6.intValue() <= 100);
                num7 = numM4215i6;
            }
            if (numM4215i7 != null) {
                AbstractC2587b.m4039f(numM4215i7.intValue() >= 0 && numM4215i7.intValue() <= 100);
                num4 = numM4215i7;
            }
            if (numM4215i8 != null) {
                AbstractC2587b.m4039f(numM4215i8.intValue() >= 0);
                num3 = numM4215i8;
            }
            if (numM4215i9 != null) {
                AbstractC2587b.m4039f(numM4215i9.intValue() >= 0);
                num8 = numM4215i9;
            }
            c3353n2 = new C3353n(num7, num4, num3, num8);
        } else {
            c3353n2 = null;
        }
        List listM4210d = AbstractC2694p4.m4210d("childPolicy", map);
        if (listM4210d != null) {
            AbstractC2694p4.m4207a(listM4210d);
            list = listM4210d;
        }
        List listM4222s = AbstractC2694p4.m4222s(list);
        if (listM4222s == null || listM4222s.isEmpty()) {
            return new C2553y0(C2508f1.f6944l.m3934h("No child policy in outlier_detection_experimental LB policy: " + map));
        }
        C2553y0 c2553y0M4221r = AbstractC2694p4.m4221r(listM4222s, C2525l0.m3958a());
        if (c2553y0M4221r.f7061a != null) {
            return c2553y0M4221r;
        }
        C2688o4 c2688o4 = (C2688o4) c2553y0M4221r.f7062b;
        if (c2688o4 == null) {
            throw new IllegalStateException();
        }
        if (c2688o4 != null) {
            return new C2553y0(new C3354o(lValueOf, l10, l11, num5, c3353n, c3353n2, c2688o4));
        }
        throw new IllegalStateException();
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: a */
    public final String mo3951a() {
        return "outlier_detection_experimental";
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: b */
    public final AbstractC2519j0 mo3952b(AbstractC2503e abstractC2503e) {
        return new C3359t(abstractC2503e);
    }

    @Override // p148n7.AbstractC2522k0
    /* JADX INFO: renamed from: c */
    public final C2553y0 mo3953c(Map map) {
        try {
            return m5271d(map);
        } catch (RuntimeException e) {
            return new C2553y0(C2508f1.f6945m.m3933g(e).m3934h("Failed parsing configuration for outlier_detection_experimental"));
        }
    }
}
