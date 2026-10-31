package v7;

import java.util.List;
import java.util.Map;
import n7.f1;
import n7.j0;
import n7.k0;
import n7.l0;
import n7.y0;
import o7.o4;
import o7.p4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends k0 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static y0 d(Map map) {
        n nVar;
        n nVar2;
        Integer num;
        Integer num2;
        Integer num3 = 5;
        Integer num4 = 100;
        Long l9 = p4.l("interval", map);
        Long l10 = p4.l("baseEjectionTime", map);
        Long l11 = p4.l("maxEjectionTime", map);
        Integer numI = p4.i("maxEjectionPercentage", map);
        Long l12 = l9 != null ? l9 : 10000000000L;
        Long l13 = l10 != null ? l10 : 30000000000L;
        Long l14 = l11 != null ? l11 : 300000000000L;
        Integer num5 = numI != null ? numI : 10;
        Map mapJ = p4.j("successRateEjection", map);
        List list = null;
        if (mapJ != null) {
            Integer numI2 = p4.i("stdevFactor", mapJ);
            Integer numI3 = p4.i("enforcementPercentage", mapJ);
            Integer numI4 = p4.i("minimumHosts", mapJ);
            Integer numI5 = p4.i("requestVolume", mapJ);
            Integer num6 = numI2 != null ? numI2 : 1900;
            if (numI3 != null) {
                o4.b.f(numI3.intValue() >= 0 && numI3.intValue() <= 100);
                num = numI3;
            } else {
                num = num4;
            }
            if (numI4 != null) {
                o4.b.f(numI4.intValue() >= 0);
                num2 = numI4;
            } else {
                num2 = num3;
            }
            if (numI5 != null) {
                o4.b.f(numI5.intValue() >= 0);
            } else {
                numI5 = num4;
            }
            nVar = new n(num6, num, num2, numI5);
        } else {
            nVar = null;
        }
        Map mapJ2 = p4.j("failurePercentageEjection", map);
        if (mapJ2 != null) {
            Integer num7 = 85;
            Integer num8 = 50;
            Integer numI6 = p4.i("threshold", mapJ2);
            Integer numI7 = p4.i("enforcementPercentage", mapJ2);
            Integer numI8 = p4.i("minimumHosts", mapJ2);
            Integer numI9 = p4.i("requestVolume", mapJ2);
            if (numI6 != null) {
                o4.b.f(numI6.intValue() >= 0 && numI6.intValue() <= 100);
                num7 = numI6;
            }
            if (numI7 != null) {
                o4.b.f(numI7.intValue() >= 0 && numI7.intValue() <= 100);
                num4 = numI7;
            }
            if (numI8 != null) {
                o4.b.f(numI8.intValue() >= 0);
                num3 = numI8;
            }
            if (numI9 != null) {
                o4.b.f(numI9.intValue() >= 0);
                num8 = numI9;
            }
            nVar2 = new n(num7, num4, num3, num8);
        } else {
            nVar2 = null;
        }
        List listD = p4.d("childPolicy", map);
        if (listD != null) {
            p4.a(listD);
            list = listD;
        }
        List listS = p4.s(list);
        if (listS == null || listS.isEmpty()) {
            return new y0(f1.f3929l.h("No child policy in outlier_detection_experimental LB policy: " + map));
        }
        y0 y0VarR = p4.r(listS, l0.a());
        if (y0VarR.f3988a != null) {
            return y0VarR;
        }
        o4 o4Var = (o4) y0VarR.f3989b;
        if (o4Var == null) {
            throw new IllegalStateException();
        }
        if (o4Var != null) {
            return new y0(new o(l12, l13, l14, num5, nVar, nVar2, o4Var));
        }
        throw new IllegalStateException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final String a() {
        return "outlier_detection_experimental";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final j0 b(n7.e eVar) {
        return new t(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final y0 c(Map map) {
        try {
            return d(map);
        } catch (RuntimeException e) {
            return new y0(f1.f3930m.g(e).h("Failed parsing configuration for outlier_detection_experimental"));
        }
    }
}
