package z5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements k {
    public static final k[] c = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map f6326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k[] f6327b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.k
    public final m a(b bVar, Map map) {
        c(map);
        return b(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m b(b bVar) throws i {
        k[] kVarArr = this.f6327b;
        if (kVarArr != null) {
            for (k kVar : kVarArr) {
                try {
                    return kVar.a(bVar, this.f6326a);
                } catch (l unused) {
                }
            }
        }
        throw i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Map map) {
        this.f6326a = map;
        boolean z8 = map != null && map.containsKey(d.e);
        Collection collection = map == null ? null : (Collection) map.get(d.d);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z9 = collection.contains(a.f6310p) || collection.contains(a.f6311q) || collection.contains(a.f6303i) || collection.contains(a.f6302h) || collection.contains(a.c) || collection.contains(a.d) || collection.contains(a.e) || collection.contains(a.f6300f) || collection.contains(a.f6304j) || collection.contains(a.f6308n) || collection.contains(a.f6309o);
            if (z9 && !z8) {
                arrayList.add(new n6.g(map, 0));
            }
            if (collection.contains(a.f6307m)) {
                arrayList.add(new v6.a());
            }
            if (collection.contains(a.f6301g)) {
                arrayList.add(new i6.a());
            }
            if (collection.contains(a.f6299b)) {
                arrayList.add(new a6.b());
            }
            if (collection.contains(a.f6306l)) {
                arrayList.add(new r6.b());
            }
            if (collection.contains(a.f6305k)) {
                arrayList.add(new l6.a());
            }
            if (z9 && z8) {
                arrayList.add(new n6.g(map, 0));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z8) {
                arrayList.add(new n6.g(map, 0));
            }
            arrayList.add(new v6.a());
            arrayList.add(new i6.a());
            arrayList.add(new a6.b());
            arrayList.add(new r6.b());
            arrayList.add(new l6.a());
            if (z8) {
                arrayList.add(new n6.g(map, 0));
            }
        }
        this.f6327b = (k[]) arrayList.toArray(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.k
    public final void reset() {
        k[] kVarArr = this.f6327b;
        if (kVarArr != null) {
            for (k kVar : kVarArr) {
                kVar.reset();
            }
        }
    }
}
