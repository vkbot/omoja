package com.google.protobuf;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f1549a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        char[] cArr = new char[80];
        f1549a = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(StringBuilder sb, int i9) {
        while (i9 > 0) {
            int i10 = 80;
            if (i9 <= 80) {
                i10 = i9;
            }
            sb.append(f1549a, 0, i10);
            i9 -= i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(StringBuilder sb, int i9, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i9, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i9, str, (Map$Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        a(sb, i9);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i10 = 1; i10 < str.length(); i10++) {
                char cCharAt = str.charAt(i10);
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
            g gVar = g.d;
            sb.append(t1.c(new g(((String) obj).getBytes(b0.f1473a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof g) {
            sb.append(": \"");
            sb.append(t1.c((g) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof y) {
            sb.append(" {");
            c((y) obj, sb, i9 + 2);
            sb.append("\n");
            a(sb, i9);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map$Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map$Entry map$Entry = (Map$Entry) obj;
        int i11 = i9 + 2;
        b(sb, i11, "key", map$Entry.getKey());
        b(sb, i11, "value", map$Entry.getValue());
        sb.append("\n");
        a(sb, i9);
        sb.append("}");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:75:0x0194  */
    /* JADX WARN: Code duplicated, block: B:76:0x0196  */
    public static void c(y yVar, StringBuilder sb, int i9) {
        int i10;
        int i11;
        boolean zBooleanValue;
        boolean zEquals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = yVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i10 = 3;
            if (i12 >= length) {
                break;
            }
            Method method3 = declaredMethods[i12];
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
            i12++;
        }
        for (Map$Entry map$Entry : treeMap.entrySet()) {
            String strSubstring = ((String) map$Entry.getKey()).substring(i10);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method2 = (Method) map$Entry.getValue()) == null) {
                i11 = i10;
            } else {
                i11 = i10;
                if (method2.getReturnType().equals(List.class)) {
                    b(sb, i9, strSubstring.substring(0, strSubstring.length() - 4), y.g(method2, yVar, new Object[0]));
                }
                i10 = i11;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method = (Method) map$Entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb, i9, strSubstring.substring(0, strSubstring.length() - 3), y.g(method, yVar, new Object[0]));
            } else if (hashSet.contains("set".concat(strSubstring)) && (!strSubstring.endsWith("Bytes") || !treeMap.containsKey("get".concat(strSubstring.substring(0, strSubstring.length() - 5))))) {
                Method method4 = (Method) map$Entry.getValue();
                Method method5 = (Method) map.get("has".concat(strSubstring));
                if (method4 != null) {
                    Object objG = y.g(method4, yVar, new Object[0]);
                    if (method5 == null) {
                        zBooleanValue = true;
                        if (objG instanceof Boolean) {
                            zEquals = !((Boolean) objG).booleanValue();
                        } else if (objG instanceof Integer) {
                            if (((Integer) objG).intValue() == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objG instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objG).floatValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objG instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) objG).doubleValue()) == 0) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        } else if (objG instanceof String) {
                            zEquals = objG.equals("");
                        } else if (objG instanceof g) {
                            zEquals = objG.equals(g.d);
                        } else if (!(objG instanceof a) ? !((objG instanceof Enum) && ((Enum) objG).ordinal() == 0) : objG != ((y) ((y) ((a) objG)).e(6))) {
                            zEquals = false;
                        } else {
                            zEquals = true;
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) y.g(method5, yVar, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        b(sb, i9, strSubstring, objG);
                    }
                }
            }
            i10 = i11;
        }
        j1 j1Var = yVar.unknownFields;
        if (j1Var != null) {
            for (int i13 = 0; i13 < j1Var.f1522a; i13++) {
                b(sb, i9, String.valueOf(j1Var.f1523b[i13] >>> 3), j1Var.c[i13]);
            }
        }
    }
}
