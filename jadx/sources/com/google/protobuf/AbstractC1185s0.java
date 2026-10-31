package com.google.protobuf;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;

/* JADX INFO: renamed from: com.google.protobuf.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1185s0 {

    /* JADX INFO: renamed from: a */
    public static final char[] f2748a;

    static {
        char[] cArr = new char[80];
        f2748a = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX INFO: renamed from: a */
    public static void m2103a(StringBuilder sb, int i10) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb.append(f2748a, 0, i11);
            i10 -= i11;
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2104b(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m2104b(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m2104b(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        m2103a(sb, i10);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i11 = 1; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            C1148g c1148g = C1148g.f2677d;
            sb.append(C1189t1.m2154c(new C1148g(((String) obj).getBytes(AbstractC1133b0.f2634a))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof C1148g) {
            sb.append(": \"");
            sb.append(C1189t1.m2154c((C1148g) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof AbstractC1202y) {
            sb.append(" {");
            m2105c((AbstractC1202y) obj, sb, i10 + 2);
            sb.append("\n");
            m2103a(sb, i10);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i12 = i10 + 2;
        m2104b(sb, i12, "key", entry.getKey());
        m2104b(sb, i12, "value", entry.getValue());
        sb.append("\n");
        m2103a(sb, i10);
        sb.append("}");
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0194  */
    /* JADX WARN: Code duplicated, block: B:76:0x0196  */
    /* JADX INFO: renamed from: c */
    public static void m2105c(AbstractC1202y abstractC1202y, StringBuilder sb, int i10) {
        int i11;
        int i12;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = abstractC1202y.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i13 = 0;
        while (true) {
            i11 = 3;
            if (i13 >= length) {
                break;
            }
            Method method3 = declaredMethods[i13];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        map.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i13++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i11);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method2 = (Method) entry.getValue()) == null) {
                i12 = i11;
            } else {
                i12 = i11;
                if (method2.getReturnType().equals(List.class)) {
                    m2104b(sb, i10, strSubstring.substring(0, strSubstring.length() - 4), AbstractC1202y.m2170g(method2, abstractC1202y, new Object[0]));
                }
                i11 = i12;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                m2104b(sb, i10, strSubstring.substring(0, strSubstring.length() - 3), AbstractC1202y.m2170g(method, abstractC1202y, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objM2170g = AbstractC1202y.m2170g(method4, abstractC1202y, new Object[0]);
                    if (method5 == null) {
                        zBooleanValue = true;
                        if (objM2170g instanceof Boolean) {
                            zEquals = !((Boolean) objM2170g).booleanValue();
                        } else if (objM2170g instanceof Integer) {
                            if (((Integer) objM2170g).intValue() == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objM2170g instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objM2170g).floatValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objM2170g instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) objM2170g).doubleValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objM2170g instanceof String) {
                            zEquals = objM2170g.equals("");
                        } else if (objM2170g instanceof C1148g) {
                            zEquals = objM2170g.equals(C1148g.f2677d);
                        } else if (!(objM2170g instanceof AbstractC1128a) ? !((objM2170g instanceof Enum) && ((Enum) objM2170g).ordinal() == 0) : objM2170g != ((AbstractC1202y) ((AbstractC1202y) ((AbstractC1128a) objM2170g)).mo2174e(6))) {
                            zEquals = false;
                        } else {
                            zEquals = true;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) AbstractC1202y.m2170g(method5, abstractC1202y, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        m2104b(sb, i10, strSubstring, objM2170g);
                    }
                }
            }
            i11 = i12;
        }
        C1159j1 c1159j1 = abstractC1202y.unknownFields;
        if (c1159j1 != null) {
            for (int i14 = 0; i14 < c1159j1.f2710a; i14++) {
                m2104b(sb, i10, String.valueOf(c1159j1.f2711b[i14] >>> 3), c1159j1.f2712c[i14]);
            }
        }
    }
}
