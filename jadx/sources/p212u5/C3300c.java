package p212u5;

import com.google.protobuf.C1141d1;
import com.google.protobuf.C1153h1;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: u5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3300c extends AbstractSet {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9659b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractMap f9660c;

    public /* synthetic */ C3300c(AbstractMap abstractMap, int i10) {
        this.f9659b = i10;
        this.f9660c = abstractMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        switch (this.f9659b) {
            case 2:
                Map.Entry entry = (Map.Entry) obj;
                if (contains(entry)) {
                    return false;
                }
                ((C1141d1) this.f9660c).put((Comparable) entry.getKey(), entry.getValue());
                return true;
            default:
                return super.add(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f9659b) {
            case 0:
                ((C3302e) this.f9660c).clear();
                break;
            case 1:
                ((C3302e) this.f9660c).clear();
                break;
            default:
                ((C1141d1) this.f9660c).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        C3301d c3301dM5223a;
        switch (this.f9659b) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                C3302e c3302e = (C3302e) this.f9660c;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                C3301d c3301d = null;
                if (key != null) {
                    try {
                        c3301dM5223a = c3302e.m5223a(key, false);
                    } catch (ClassCastException unused) {
                        c3301dM5223a = null;
                    }
                    break;
                } else {
                    c3301dM5223a = null;
                }
                if (c3301dM5223a != null && Objects.equals(c3301dM5223a.f9667h, entry.getValue())) {
                    c3301d = c3301dM5223a;
                }
                return c3301d != null;
            case 1:
                return ((C3302e) this.f9660c).containsKey(obj);
            default:
                Map.Entry entry2 = (Map.Entry) obj;
                Object obj2 = ((C1141d1) this.f9660c).get(entry2.getKey());
                Object value = entry2.getValue();
                return obj2 == value || (obj2 != null && obj2.equals(value));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f9659b) {
            case 0:
                return new C3299b((C3302e) this.f9660c, 0);
            case 1:
                return new C3299b((C3302e) this.f9660c, 1);
            default:
                return new C1153h1((C1141d1) this.f9660c);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        C3301d c3301dM5223a;
        switch (this.f9659b) {
            case 0:
                C3302e c3302e = (C3302e) this.f9660c;
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                C3301d c3301d = null;
                if (key != null) {
                    try {
                        c3301dM5223a = c3302e.m5223a(key, false);
                    } catch (ClassCastException unused) {
                        c3301dM5223a = null;
                    }
                    break;
                } else {
                    c3301dM5223a = null;
                }
                if (c3301dM5223a != null && Objects.equals(c3301dM5223a.f9667h, entry.getValue())) {
                    c3301d = c3301dM5223a;
                }
                if (c3301d == null) {
                    return false;
                }
                c3302e.m5225c(c3301d, true);
                return true;
            case 1:
                C3302e c3302e2 = (C3302e) this.f9660c;
                C3301d c3301dM5223a2 = null;
                if (obj != null) {
                    try {
                        c3301dM5223a2 = c3302e2.m5223a(obj, false);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (c3301dM5223a2 != null) {
                    c3302e2.m5225c(c3301dM5223a2, true);
                }
                return c3301dM5223a2 != null;
            default:
                Map.Entry entry2 = (Map.Entry) obj;
                if (!contains(entry2)) {
                    return false;
                }
                ((C1141d1) this.f9660c).remove(entry2.getKey());
                return true;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f9659b) {
            case 0:
                return ((C3302e) this.f9660c).f9672d;
            case 1:
                return ((C3302e) this.f9660c).f9672d;
            default:
                return ((C1141d1) this.f9660c).size();
        }
    }
}
