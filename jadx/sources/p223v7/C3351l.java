package p223v7;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: v7.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3351l implements Map {

    /* JADX INFO: renamed from: b */
    public final HashMap f9792b = new HashMap();

    /* JADX INFO: renamed from: a */
    public final double m5267a() {
        HashMap map = this.f9792b;
        if (map.isEmpty()) {
            return 0.0d;
        }
        Iterator it = map.values().iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            i11++;
            if (((C3350k) it.next()).m5265d()) {
                i10++;
            }
        }
        return (((double) i10) / ((double) i11)) * 100.0d;
    }

    @Override // java.util.Map
    public final void clear() {
        this.f9792b.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f9792b.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f9792b.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.f9792b.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || this.f9792b.equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f9792b.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f9792b.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f9792b.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.f9792b.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.f9792b.put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        this.f9792b.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.f9792b.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f9792b.size();
    }

    public final String toString() {
        return this.f9792b.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f9792b.values();
    }
}
