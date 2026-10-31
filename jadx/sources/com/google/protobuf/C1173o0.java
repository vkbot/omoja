package com.google.protobuf;

import androidx.navigation.C0674b;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.protobuf.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1173o0 extends LinkedHashMap {

    /* JADX INFO: renamed from: c */
    public static final C1173o0 f2737c;

    /* JADX INFO: renamed from: b */
    public boolean f2738b = true;

    static {
        C1173o0 c1173o0 = new C1173o0();
        f2737c = c1173o0;
        c1173o0.f2738b = false;
    }

    /* JADX INFO: renamed from: a */
    public static int m2052a(Object obj) {
        if (!(obj instanceof byte[])) {
            if (!(obj instanceof InterfaceC1205z)) {
                return obj.hashCode();
            }
            C0674b.m835a();
            return 0;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        Charset charset = AbstractC1133b0.f2634a;
        int i10 = length;
        for (byte b10 : bArr) {
            i10 = (i10 * 31) + b10;
        }
        if (i10 == 0) {
            return 1;
        }
        return i10;
    }

    /* JADX INFO: renamed from: b */
    public final void m2053b() {
        if (this.f2738b) {
            return;
        }
        C0674b.m835a();
    }

    /* JADX INFO: renamed from: c */
    public final C1173o0 m2054c() {
        if (isEmpty()) {
            return new C1173o0();
        }
        C1173o0 c1173o0 = new C1173o0(this);
        c1173o0.f2738b = true;
        return c1173o0;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m2053b();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return isEmpty() ? Collections.EMPTY_SET : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean z9;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this != map) {
                if (size() == map.size()) {
                    Iterator it = entrySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            if (map.containsKey(entry.getKey())) {
                                Object value = entry.getValue();
                                Object obj2 = map.get(entry.getKey());
                                if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                                }
                            }
                        } else {
                            z9 = true;
                        }
                    }
                }
                z9 = false;
            } else {
                z9 = true;
            }
            if (z9) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iM2052a = 0;
        for (Map.Entry entry : entrySet()) {
            iM2052a += m2052a(entry.getValue()) ^ m2052a(entry.getKey());
        }
        return iM2052a;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        m2053b();
        Charset charset = AbstractC1133b0.f2634a;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        m2053b();
        for (Object obj : map.keySet()) {
            Charset charset = AbstractC1133b0.f2634a;
            obj.getClass();
            map.get(obj).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m2053b();
        return super.remove(obj);
    }
}
