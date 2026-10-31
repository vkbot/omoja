package com.google.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d1 extends AbstractMap {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f1488h = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1489b;
    public List c = Collections.EMPTY_LIST;
    public Map d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile u5.c f1490f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map f1491g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d1(int i9) {
        this.f1489b = i9;
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.f1491g = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    public final int a(Comparable comparable) {
        int i9;
        int i10;
        int i11;
        int iCompareTo;
        int size = this.c.size();
        int i12 = size - 1;
        if (i12 < 0) {
            i9 = 0;
            while (i9 <= i12) {
                i11 = (i9 + i12) / 2;
                iCompareTo = comparable.compareTo(((g1) this.c.get(i11)).f1504b);
                if (iCompareTo < 0) {
                    i12 = i11 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i11;
                    }
                    i9 = i11 + 1;
                }
            }
            i10 = i9 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((g1) this.c.get(i12)).f1504b);
            if (iCompareTo2 > 0) {
                i10 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i12;
                }
                i9 = 0;
                while (i9 <= i12) {
                    i11 = (i9 + i12) / 2;
                    iCompareTo = comparable.compareTo(((g1) this.c.get(i11)).f1504b);
                    if (iCompareTo < 0) {
                        i12 = i11 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i11;
                        }
                        i9 = i11 + 1;
                    }
                }
                i10 = i9 + 1;
            }
        }
        return -i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.e) {
            androidx.navigation.b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Map$Entry c(int i9) {
        return (Map$Entry) this.c.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.d.containsKey(comparable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Iterable d() {
        return this.d.isEmpty() ? t1.c : this.d.entrySet();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SortedMap e() {
        b();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.f1491g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f1490f == null) {
            this.f1490f = new u5.c(this, 2);
        }
        return this.f1490f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return super.equals(obj);
        }
        d1 d1Var = (d1) obj;
        int size = size();
        if (size == d1Var.size()) {
            int size2 = this.c.size();
            if (size2 != d1Var.c.size()) {
                return ((AbstractSet) entrySet()).equals(d1Var.entrySet());
            }
            for (int i9 = 0; i9 < size2; i9++) {
                if (c(i9).equals(d1Var.c(i9))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(d1Var.d);
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object f(Comparable comparable, Object obj) {
        b();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((g1) this.c.get(iA)).setValue(obj);
        }
        b();
        boolean zIsEmpty = this.c.isEmpty();
        int i9 = this.f1489b;
        if (zIsEmpty && !(this.c instanceof ArrayList)) {
            this.c = new ArrayList(i9);
        }
        int i10 = -(iA + 1);
        if (i10 >= i9) {
            return e().put(comparable, obj);
        }
        if (this.c.size() == i9) {
            g1 g1Var = (g1) this.c.remove(i9 - 1);
            e().put(g1Var.f1504b, g1Var.c);
        }
        this.c.add(i10, new g1(this, comparable, obj));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object g(int i9) {
        b();
        Object obj = ((g1) this.c.remove(i9)).c;
        if (!this.d.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.c;
            Map$Entry map$Entry = (Map$Entry) it.next();
            list.add(new g1(this, (Comparable) map$Entry.getKey(), map$Entry.getValue()));
            it.remove();
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((g1) this.c.get(iA)).c : this.d.get(comparable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.c.size();
        int iHashCode = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iHashCode += ((g1) this.c.get(i9)).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return f((Comparable) obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return g(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.c.size();
    }
}
