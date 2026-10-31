package p025c0;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: renamed from: c0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0934c extends ArrayMap {

    /* JADX INFO: renamed from: b */
    public int f787b;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.f787b = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        if (this.f787b == 0) {
            this.f787b = super.hashCode();
        }
        return this.f787b;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.f787b = 0;
        return super.put(obj, obj2);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final void putAll(SimpleArrayMap simpleArrayMap) {
        this.f787b = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object removeAt(int i10) {
        this.f787b = 0;
        return super.removeAt(i10);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object setValueAt(int i10, Object obj) {
        this.f787b = 0;
        return super.setValueAt(i10, obj);
    }
}
