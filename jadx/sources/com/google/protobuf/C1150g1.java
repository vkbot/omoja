package com.google.protobuf;

import java.util.Map;

/* JADX INFO: renamed from: com.google.protobuf.g1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1150g1 implements Map.Entry, Comparable {

    /* JADX INFO: renamed from: b */
    public final Comparable f2681b;

    /* JADX INFO: renamed from: c */
    public Object f2682c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1141d1 f2683d;

    public C1150g1(C1141d1 c1141d1, Comparable comparable, Object obj) {
        this.f2683d = c1141d1;
        this.f2681b = comparable;
        this.f2682c = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2681b.compareTo(((C1150g1) obj).f2681b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f2681b;
                if (comparable == null) {
                    zEquals = key == null;
                } else {
                    zEquals = comparable.equals(key);
                }
                if (zEquals) {
                    Object obj2 = this.f2682c;
                    Object value = entry.getValue();
                    if (obj2 == null) {
                        zEquals2 = value == null;
                    } else {
                        zEquals2 = obj2.equals(value);
                    }
                    if (zEquals2) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f2681b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f2682c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f2681b;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f2682c;
        return (obj != null ? obj.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f2683d.m1942b();
        Object obj2 = this.f2682c;
        this.f2682c = obj;
        return obj2;
    }

    public final String toString() {
        return this.f2681b + "=" + this.f2682c;
    }
}
