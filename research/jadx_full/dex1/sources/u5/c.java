package u5;

import com.google.protobuf.d1;
import com.google.protobuf.h1;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map$Entry;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class c extends AbstractSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5475b;
    public final /* synthetic */ AbstractMap c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(AbstractMap abstractMap, int i9) {
        this.f5475b = i9;
        this.c = abstractMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        switch (this.f5475b) {
            case 2:
                Map$Entry map$Entry = (Map$Entry) obj;
                if (contains(map$Entry)) {
                    return false;
                }
                ((d1) this.c).f((Comparable) map$Entry.getKey(), map$Entry.getValue());
                return true;
            default:
                return super.add(obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f5475b) {
            case 0:
                ((e) this.c).clear();
                break;
            case 1:
                ((e) this.c).clear();
                break;
            default:
                ((d1) this.c).clear();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        d dVarA;
        switch (this.f5475b) {
            case 0:
                if (!(obj instanceof Map$Entry)) {
                    return false;
                }
                e eVar = (e) this.c;
                Map$Entry map$Entry = (Map$Entry) obj;
                Object key = map$Entry.getKey();
                d dVar = null;
                if (key != null) {
                    try {
                        dVarA = eVar.a(key, false);
                    } catch (ClassCastException unused) {
                        dVarA = null;
                    }
                    break;
                } else {
                    dVarA = null;
                }
                if (dVarA != null && Objects.equals(dVarA.f5479h, map$Entry.getValue())) {
                    dVar = dVarA;
                }
                return dVar != null;
            case 1:
                return ((e) this.c).containsKey(obj);
            default:
                Map$Entry map$Entry2 = (Map$Entry) obj;
                Object obj2 = ((d1) this.c).get(map$Entry2.getKey());
                Object value = map$Entry2.getValue();
                return obj2 == value || (obj2 != null && obj2.equals(value));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f5475b) {
            case 0:
                return new b((e) this.c, 0);
            case 1:
                return new b((e) this.c, 1);
            default:
                return new h1((d1) this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        d dVarA;
        switch (this.f5475b) {
            case 0:
                e eVar = (e) this.c;
                if (!(obj instanceof Map$Entry)) {
                    return false;
                }
                Map$Entry map$Entry = (Map$Entry) obj;
                Object key = map$Entry.getKey();
                d dVar = null;
                if (key != null) {
                    try {
                        dVarA = eVar.a(key, false);
                    } catch (ClassCastException unused) {
                        dVarA = null;
                    }
                    break;
                } else {
                    dVarA = null;
                }
                if (dVarA != null && Objects.equals(dVarA.f5479h, map$Entry.getValue())) {
                    dVar = dVarA;
                }
                if (dVar == null) {
                    return false;
                }
                eVar.c(dVar, true);
                return true;
            case 1:
                e eVar2 = (e) this.c;
                d dVarA2 = null;
                if (obj != null) {
                    try {
                        dVarA2 = eVar2.a(obj, false);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (dVarA2 != null) {
                    eVar2.c(dVarA2, true);
                }
                return dVarA2 != null;
            default:
                Map$Entry map$Entry2 = (Map$Entry) obj;
                if (!contains(map$Entry2)) {
                    return false;
                }
                ((d1) this.c).remove(map$Entry2.getKey());
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f5475b) {
            case 0:
                return ((e) this.c).d;
            case 1:
                return ((e) this.c).d;
            default:
                return ((d1) this.c).size();
        }
    }
}
