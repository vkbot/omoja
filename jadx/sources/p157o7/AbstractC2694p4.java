package p157o7;

import ai.onnxruntime.AbstractC0074a;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p009a8.C0029a;
import p142n0.C2467b;
import p148n7.AbstractC2522k0;
import p148n7.C2491a;
import p148n7.C2508f1;
import p148n7.C2525l0;
import p148n7.C2553y0;
import p148n7.EnumC2505e1;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: o7.p4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2694p4 {

    /* JADX INFO: renamed from: a */
    public static final C2491a f7703a = new C2491a("io.grpc.internal.GrpcAttributes.securityLevel");

    /* JADX INFO: renamed from: b */
    public static final C2491a f7704b = new C2491a("io.grpc.internal.GrpcAttributes.clientEagAttrs");

    /* JADX INFO: renamed from: a */
    public static void m4207a(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!(list.get(i10) instanceof Map)) {
                throw new ClassCastException(String.format(Locale.US, "value %s for idx %d in %s is not object", list.get(i10), Integer.valueOf(i10), list));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static InterfaceC2703r1 m4208b() {
        return C2669l3.f7617e == null ? new C2669l3() : new C2629f(0);
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m4209c(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, str, map));
    }

    /* JADX INFO: renamed from: d */
    public static List m4210d(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            return (List) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
    }

    /* JADX INFO: renamed from: e */
    public static Set m4211e(String str, Map map) {
        EnumC2505e1 enumC2505e1ValueOf;
        List listM4210d = m4210d(str, map);
        if (listM4210d == null) {
            return null;
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(EnumC2505e1.class);
        for (Object obj : listM4210d) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                int iIntValue = d.intValue();
                AbstractC3656k.m5880z("Status code %s is not integral", ((double) iIntValue) == d.doubleValue(), obj);
                enumC2505e1ValueOf = C2508f1.m3928d(iIntValue).f6948a;
                AbstractC3656k.m5880z("Status code %s is not valid", enumC2505e1ValueOf.f6927b == d.intValue(), obj);
            } else {
                if (!(obj instanceof String)) {
                    StringBuilder sb = new StringBuilder("Can not convert status code ");
                    sb.append(obj);
                    Class<?> cls = obj.getClass();
                    sb.append(" to Status.Code, because its type is ");
                    sb.append(cls);
                    throw new C0029a(sb.toString(), 1);
                }
                try {
                    enumC2505e1ValueOf = EnumC2505e1.valueOf((String) obj);
                } catch (IllegalArgumentException e) {
                    throw new C0029a("Status code " + obj + " is not valid", 1, e);
                }
            }
            enumSetNoneOf.add(enumC2505e1ValueOf);
        }
        return Collections.unmodifiableSet(enumSetNoneOf);
    }

    /* JADX INFO: renamed from: f */
    public static List m4212f(String str, Map map) {
        List listM4210d = m4210d(str, map);
        if (listM4210d == null) {
            return null;
        }
        for (int i10 = 0; i10 < listM4210d.size(); i10++) {
            if (!(listM4210d.get(i10) instanceof String)) {
                throw new ClassCastException(String.format(Locale.US, "value '%s' for idx %d in '%s' is not string", listM4210d.get(i10), Integer.valueOf(i10), listM4210d));
            }
        }
        return listM4210d;
    }

    /* JADX INFO: renamed from: g */
    public static List m4213g(Map map) {
        String strM4217k;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            List listM4210d = m4210d("loadBalancingConfig", map);
            if (listM4210d == null) {
                listM4210d = null;
            } else {
                m4207a(listM4210d);
            }
            arrayList.addAll(listM4210d);
        }
        if (arrayList.isEmpty() && (strM4217k = m4217k("loadBalancingPolicy", map)) != null) {
            arrayList.add(Collections.singletonMap(strM4217k.toLowerCase(Locale.ROOT), Collections.EMPTY_MAP));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: h */
    public static Double m4214h(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (!(obj instanceof String)) {
            C2467b.m3832v("value '%s' for key '%s' in '%s' is not a number", new Object[]{obj, str, map});
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            C2467b.m3832v("value '%s' for key '%s' is not a double", new Object[]{obj, str});
            return null;
        }
    }

    /* JADX INFO: renamed from: i */
    public static Integer m4215i(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (!(obj instanceof Double)) {
            if (!(obj instanceof String)) {
                C2467b.m3832v("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
                return null;
            }
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException unused) {
                C2467b.m3832v("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
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

    /* JADX INFO: renamed from: j */
    public static Map m4216j(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
    }

    /* JADX INFO: renamed from: k */
    public static String m4217k(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
    }

    /* JADX INFO: renamed from: l */
    public static Long m4218l(String str, Map map) {
        String strM4217k = m4217k(str, map);
        if (strM4217k == null) {
            return null;
        }
        try {
            return Long.valueOf(m4220n(strM4217k));
        } catch (ParseException e) {
            C2467b.m3833w(e);
            return null;
        }
    }

    /* JADX INFO: renamed from: m */
    public static long m4219m(int i10, long j10) {
        long j11;
        int i11 = i10;
        long j12 = i11;
        if (j12 <= -1000000000 || j12 >= 1000000000) {
            long j13 = j12 / 1000000000;
            j11 = j10 + j13;
            if (!((j10 ^ j13) < 0) && !((j10 ^ j11) >= 0)) {
                StringBuilder sb = new StringBuilder("overflow: checkedAdd(");
                sb.append(j10);
                sb.append(", ");
                throw new ArithmeticException(AbstractC0074a.m163n(sb, j13, ")"));
            }
            i11 = (int) (j12 % 1000000000);
        } else {
            j11 = j10;
        }
        if (j11 > 0 && i11 < 0) {
            i11 = (int) (((long) i11) + 1000000000);
            j11--;
        }
        if (j11 < 0 && i11 > 0) {
            i11 = (int) (((long) i11) - 1000000000);
            j11++;
        }
        if (j11 >= -315576000000L && j11 <= 315576000000L) {
            long j14 = i11;
            if (j14 >= -999999999 && j14 < 1000000000 && ((j11 >= 0 && i11 >= 0) || (j11 <= 0 && i11 <= 0))) {
                long nanos = TimeUnit.SECONDS.toNanos(j11);
                long j15 = i11;
                long j16 = nanos + j15;
                return (((j15 ^ nanos) > 0L ? 1 : ((j15 ^ nanos) == 0L ? 0 : -1)) < 0) | ((nanos ^ j16) >= 0) ? j16 : ((j16 >>> 63) ^ 1) + Long.MAX_VALUE;
            }
        }
        throw new IllegalArgumentException("Duration is not valid. See proto definition for valid values. Seconds (" + j11 + ") must be in range [-315,576,000,000, +315,576,000,000]. Nanos (" + i11 + ") must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds");
    }

    /* JADX INFO: renamed from: n */
    public static long m4220n(String str) throws ParseException {
        boolean z9;
        String strSubstring;
        int iCharAt;
        if (str.isEmpty() || str.charAt(str.length() - 1) != 's') {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z9 = true;
        } else {
            z9 = false;
        }
        String strSubstring2 = str.substring(0, str.length() - 1);
        int iIndexOf = strSubstring2.indexOf(46);
        if (iIndexOf != -1) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = "";
        }
        long j10 = Long.parseLong(strSubstring2);
        if (strSubstring.isEmpty()) {
            iCharAt = 0;
        } else {
            iCharAt = 0;
            for (int i10 = 0; i10 < 9; i10++) {
                iCharAt *= 10;
                if (i10 < strSubstring.length()) {
                    if (strSubstring.charAt(i10) < '0' || strSubstring.charAt(i10) > '9') {
                        throw new ParseException("Invalid nanoseconds.", 0);
                    }
                    iCharAt = (strSubstring.charAt(i10) - '0') + iCharAt;
                }
            }
        }
        if (j10 < 0) {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (z9) {
            j10 = -j10;
            iCharAt = -iCharAt;
        }
        try {
            return m4219m(iCharAt, j10);
        } catch (IllegalArgumentException unused) {
            throw new ParseException("Duration value is out of range.", 0);
        }
    }

    /* JADX INFO: renamed from: r */
    public static C2553y0 m4221r(List list, C2525l0 c2525l0) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C2682n4 c2682n4 = (C2682n4) it.next();
            String str = c2682n4.f7644a;
            AbstractC2522k0 abstractC2522k0M3959b = c2525l0.m3959b(str);
            if (abstractC2522k0M3959b != null) {
                if (!arrayList.isEmpty()) {
                    Logger.getLogger(AbstractC2694p4.class.getName()).log(Level.FINEST, "{0} specified by Service Config are not available", arrayList);
                }
                C2553y0 c2553y0Mo3953c = abstractC2522k0M3959b.mo3953c(c2682n4.f7645b);
                return c2553y0Mo3953c.f7061a != null ? c2553y0Mo3953c : new C2553y0(new C2688o4(abstractC2522k0M3959b, c2553y0Mo3953c.f7062b));
            }
            arrayList.add(str);
        }
        return new C2553y0(C2508f1.f6939g.m3934h("None of " + arrayList + " specified by Service Config are available."));
    }

    /* JADX INFO: renamed from: s */
    public static List m4222s(List list) {
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
            String str = (String) ((Map.Entry) map.entrySet().iterator().next()).getKey();
            arrayList.add(new C2682n4(str, m4216j(str, map)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: o */
    public abstract int m4223o();

    /* JADX INFO: renamed from: p */
    public abstract boolean mo4178p(ExecutorC2676m4 executorC2676m4);

    /* JADX INFO: renamed from: q */
    public abstract void mo4179q(ExecutorC2676m4 executorC2676m4);
}
