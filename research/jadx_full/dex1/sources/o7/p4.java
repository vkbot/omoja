package o7;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n7.a f4393a = new n7.a("io.grpc.internal.GrpcAttributes.securityLevel");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n7.a f4394b = new n7.a("io.grpc.internal.GrpcAttributes.clientEagAttrs");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(List list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!(list.get(i9) instanceof Map)) {
                throw new ClassCastException(String.format(Locale.US, "value %s for idx %d in %s is not object", list.get(i9), Integer.valueOf(i9), list));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static r1 b() {
        return l3.e == null ? new l3() : new f(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, str, map));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List d(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            return (List) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Set e(String str, Map map) {
        n7.e1 e1VarValueOf;
        List listD = d(str, map);
        if (listD == null) {
            return null;
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(n7.e1.class);
        for (Object obj : listD) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                int iIntValue = d.intValue();
                y5.k.z("Status code %s is not integral", ((double) iIntValue) == d.doubleValue(), obj);
                e1VarValueOf = n7.f1.d(iIntValue).f3933a;
                y5.k.z("Status code %s is not valid", e1VarValueOf.f3918b == d.intValue(), obj);
            } else {
                if (!(obj instanceof String)) {
                    StringBuilder sb = new StringBuilder("Can not convert status code ");
                    sb.append(obj);
                    Class<?> cls = obj.getClass();
                    sb.append(" to Status.Code, because its type is ");
                    sb.append(cls);
                    throw new a8.a(sb.toString(), 1);
                }
                try {
                    e1VarValueOf = n7.e1.valueOf((String) obj);
                } catch (IllegalArgumentException e) {
                    throw new a8.a("Status code " + obj + " is not valid", 1, e);
                }
            }
            enumSetNoneOf.add(e1VarValueOf);
        }
        return Collections.unmodifiableSet(enumSetNoneOf);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List f(String str, Map map) {
        List listD = d(str, map);
        if (listD == null) {
            return null;
        }
        for (int i9 = 0; i9 < listD.size(); i9++) {
            if (!(listD.get(i9) instanceof String)) {
                throw new ClassCastException(String.format(Locale.US, "value '%s' for idx %d in '%s' is not string", listD.get(i9), Integer.valueOf(i9), listD));
            }
        }
        return listD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List g(Map map) {
        String strK;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            List listD = d("loadBalancingConfig", map);
            if (listD == null) {
                listD = null;
            } else {
                a(listD);
            }
            arrayList.addAll(listD);
        }
        if (arrayList.isEmpty() && (strK = k("loadBalancingPolicy", map)) != null) {
            arrayList.add(Collections.singletonMap(strK.toLowerCase(Locale.ROOT), Collections.EMPTY_MAP));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Double h(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (!(obj instanceof String)) {
            n0.b.v("value '%s' for key '%s' in '%s' is not a number", new Object[]{obj, str, map});
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            n0.b.v("value '%s' for key '%s' is not a double", new Object[]{obj, str});
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Integer i(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (!(obj instanceof Double)) {
            if (!(obj instanceof String)) {
                n0.b.v("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
                return null;
            }
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException unused) {
                n0.b.v("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
                return null;
            }
        }
        Double d = (Double) obj;
        int iIntValue = d.intValue();
        if (iIntValue == d.doubleValue()) {
            return Integer.valueOf(iIntValue);
        }
        throw new ClassCastException("Number expected to be integer: " + d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map j(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String k(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Long l(String str, Map map) {
        String strK = k(str, map);
        if (strK == null) {
            return null;
        }
        try {
            return Long.valueOf(n(strK));
        } catch (ParseException e) {
            n0.b.w(e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long m(int i9, long j9) {
        long j10;
        int i10 = i9;
        long j11 = i10;
        if (j11 <= -1000000000 || j11 >= 1000000000) {
            long j12 = j11 / 1000000000;
            j10 = j9 + j12;
            if (!((j9 ^ j12) < 0) && !((j9 ^ j10) >= 0)) {
                StringBuilder sb = new StringBuilder("overflow: checkedAdd(");
                sb.append(j9);
                sb.append(", ");
                throw new ArithmeticException(ai.onnxruntime.a.n(sb, j12, ")"));
            }
            i10 = (int) (j11 % 1000000000);
        } else {
            j10 = j9;
        }
        if (j10 > 0 && i10 < 0) {
            i10 = (int) (((long) i10) + 1000000000);
            j10--;
        }
        if (j10 < 0 && i10 > 0) {
            i10 = (int) (((long) i10) - 1000000000);
            j10++;
        }
        if (j10 >= -315576000000L && j10 <= 315576000000L) {
            long j13 = i10;
            if (j13 >= -999999999 && j13 < 1000000000 && ((j10 >= 0 && i10 >= 0) || (j10 <= 0 && i10 <= 0))) {
                long nanos = TimeUnit.SECONDS.toNanos(j10);
                long j14 = i10;
                long j15 = nanos + j14;
                return (((j14 ^ nanos) > 0L ? 1 : ((j14 ^ nanos) == 0L ? 0 : -1)) < 0) | ((nanos ^ j15) >= 0) ? j15 : ((j15 >>> 63) ^ 1) + Long.MAX_VALUE;
            }
        }
        throw new IllegalArgumentException("Duration is not valid. See proto definition for valid values. Seconds (" + j10 + ") must be in range [-315,576,000,000, +315,576,000,000]. Nanos (" + i10 + ") must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long n(String str) throws ParseException {
        boolean z8;
        String strSubstring;
        int iCharAt;
        if (str.isEmpty() || str.charAt(str.length() - 1) != 's') {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z8 = true;
        } else {
            z8 = false;
        }
        String strSubstring2 = str.substring(0, str.length() - 1);
        int iIndexOf = strSubstring2.indexOf(46);
        if (iIndexOf != -1) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = "";
        }
        long j9 = Long.parseLong(strSubstring2);
        if (strSubstring.isEmpty()) {
            iCharAt = 0;
        } else {
            iCharAt = 0;
            for (int i9 = 0; i9 < 9; i9++) {
                iCharAt *= 10;
                if (i9 < strSubstring.length()) {
                    if (strSubstring.charAt(i9) < '0' || strSubstring.charAt(i9) > '9') {
                        throw new ParseException("Invalid nanoseconds.", 0);
                    }
                    iCharAt = (strSubstring.charAt(i9) - '0') + iCharAt;
                }
            }
        }
        if (j9 < 0) {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (z8) {
            j9 = -j9;
            iCharAt = -iCharAt;
        }
        try {
            return m(iCharAt, j9);
        } catch (IllegalArgumentException unused) {
            throw new ParseException("Duration value is out of range.", 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n7.y0 r(List list, n7.l0 l0Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            n4 n4Var = (n4) it.next();
            String str = n4Var.f4354a;
            n7.k0 k0VarB = l0Var.b(str);
            if (k0VarB != null) {
                if (!arrayList.isEmpty()) {
                    Logger.getLogger(p4.class.getName()).log(Level.FINEST, "{0} specified by Service Config are not available", arrayList);
                }
                n7.y0 y0VarC = k0VarB.c(n4Var.f4355b);
                return y0VarC.f3988a != null ? y0VarC : new n7.y0(new o4(k0VarB, y0VarC.f3989b));
            }
            arrayList.add(str);
        }
        return new n7.y0(n7.f1.f3924g.h("None of " + arrayList + " specified by Service Config are available."));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List s(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map.size() != 1) {
                throw new RuntimeException("There are " + map.size() + " fields in a LoadBalancingConfig object. Exactly one is expected. Config=" + map);
            }
            String str = (String) ((Map$Entry) map.entrySet().iterator().next()).getKey();
            arrayList.add(new n4(str, j(str, map)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public abstract int o();

    public abstract boolean p(m4 m4Var);

    public abstract void q(m4 m4Var);
}
