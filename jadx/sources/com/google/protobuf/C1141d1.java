package com.google.protobuf;

import androidx.navigation.C0674b;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import p212u5.C3300c;

/* JADX INFO: renamed from: com.google.protobuf.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1141d1 extends AbstractMap {

    /* JADX INFO: renamed from: h */
    public static final /* synthetic */ int f2655h = 0;

    /* JADX INFO: renamed from: b */
    public final int f2656b;

    /* JADX INFO: renamed from: c */
    public List f2657c = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: d */
    public Map f2658d;

    /* JADX INFO: renamed from: e */
    public boolean f2659e;

    /* JADX INFO: renamed from: f */
    public volatile C3300c f2660f;

    /* JADX INFO: renamed from: g */
    public Map f2661g;

    public C1141d1(int i10) {
        this.f2656b = i10;
        Map map = Collections.EMPTY_MAP;
        this.f2658d = map;
        this.f2661g = map;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    public final int m1941a(Comparable comparable) {
        int i10;
        int i11;
        int i12;
        int iCompareTo;
        int size = this.f2657c.size();
        int i13 = size - 1;
        if (i13 < 0) {
            i10 = 0;
            while (i10 <= i13) {
                i12 = (i10 + i13) / 2;
                iCompareTo = comparable.compareTo(((C1150g1) this.f2657c.get(i12)).f2681b);
                if (iCompareTo < 0) {
                    i13 = i12 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i12;
                    }
                    i10 = i12 + 1;
                }
            }
            i11 = i10 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((C1150g1) this.f2657c.get(i13)).f2681b);
            if (iCompareTo2 > 0) {
                i11 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i13;
                }
                i10 = 0;
                while (i10 <= i13) {
                    i12 = (i10 + i13) / 2;
                    iCompareTo = comparable.compareTo(((C1150g1) this.f2657c.get(i12)).f2681b);
                    if (iCompareTo < 0) {
                        i13 = i12 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i12;
                        }
                        i10 = i12 + 1;
                    }
                }
                i11 = i10 + 1;
            }
        }
        return -i11;
    }

    /* JADX INFO: renamed from: b */
    public final void m1942b() {
        if (this.f2659e) {
            C0674b.m835a();
        }
    }

    /* JADX INFO: renamed from: c */
    public final Map.Entry m1943c(int i10) {
        return (Map.Entry) this.f2657c.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m1942b();
        if (!this.f2657c.isEmpty()) {
            this.f2657c.clear();
        }
        if (this.f2658d.isEmpty()) {
            return;
        }
        this.f2658d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m1941a(comparable) >= 0 || this.f2658d.containsKey(comparable);
    }

    /* JADX INFO: renamed from: d */
    public final Iterable m1944d() {
        return this.f2658d.isEmpty() ? C1189t1.f2775c : this.f2658d.entrySet();
    }

    /* JADX INFO: renamed from: e */
    public final SortedMap m1945e() {
        m1942b();
        if (this.f2658d.isEmpty() && !(this.f2658d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f2658d = treeMap;
            this.f2661g = treeMap.descendingMap();
        }
        return (SortedMap) this.f2658d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f2660f == null) {
            this.f2660f = new C3300c(this, 2);
        }
        return this.f2660f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1141d1)) {
            return super.equals(obj);
        }
        C1141d1 c1141d1 = (C1141d1) obj;
        int size = size();
        if (size == c1141d1.size()) {
            int size2 = this.f2657c.size();
            if (size2 != c1141d1.f2657c.size()) {
                return ((AbstractSet) entrySet()).equals(c1141d1.entrySet());
            }
            for (int i10 = 0; i10 < size2; i10++) {
                if (m1943c(i10).equals(c1141d1.m1943c(i10))) {
                }
            }
            if (size2 != size) {
                return this.f2658d.equals(c1141d1.f2658d);
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        m1942b();
        int iM1941a = m1941a(comparable);
        if (iM1941a >= 0) {
            return ((C1150g1) this.f2657c.get(iM1941a)).setValue(obj);
        }
        m1942b();
        boolean zIsEmpty = this.f2657c.isEmpty();
        int i10 = this.f2656b;
        if (zIsEmpty && !(this.f2657c instanceof ArrayList)) {
            this.f2657c = new ArrayList(i10);
        }
        int i11 = -(iM1941a + 1);
        if (i11 >= i10) {
            return m1945e().put(comparable, obj);
        }
        if (this.f2657c.size() == i10) {
            C1150g1 c1150g1 = (C1150g1) this.f2657c.remove(i10 - 1);
            m1945e().put(c1150g1.f2681b, c1150g1.f2682c);
        }
        this.f2657c.add(i11, new C1150g1(this, comparable, obj));
        return null;
    }

    /* JADX INFO: renamed from: g */
    public final Object m1947g(int i10) {
        m1942b();
        Object obj = ((C1150g1) this.f2657c.remove(i10)).f2682c;
        if (!this.f2658d.isEmpty()) {
            Iterator it = m1945e().entrySet().iterator();
            List list = this.f2657c;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new C1150g1(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iM1941a = m1941a(comparable);
        return iM1941a >= 0 ? ((C1150g1) this.f2657c.get(iM1941a)).f2682c : this.f2658d.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f2657c.size();
        int iHashCode = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode += ((C1150g1) this.f2657c.get(i10)).hashCode();
        }
        return this.f2658d.size() > 0 ? this.f2658d.hashCode() + iHashCode : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m1942b();
        Comparable comparable = (Comparable) obj;
        int iM1941a = m1941a(comparable);
        if (iM1941a >= 0) {
            return m1947g(iM1941a);
        }
        if (this.f2658d.isEmpty()) {
            return null;
        }
        return this.f2658d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f2658d.size() + this.f2657c.size();
    }
}
