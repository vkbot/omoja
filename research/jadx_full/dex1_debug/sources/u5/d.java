package u5;

import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Map$Entry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f5476b;
    public d c;
    public d d;
    public d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f5477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f5478g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f5479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5480i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(d dVar, Object obj, d dVar2, d dVar3) {
        this.f5476b = dVar;
        this.f5478g = obj;
        this.f5480i = 1;
        this.e = dVar2;
        this.f5477f = dVar3;
        dVar3.e = this;
        dVar2.f5477f = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map$Entry) {
            Map$Entry map$Entry = (Map$Entry) obj;
            Object obj2 = this.f5478g;
            if (obj2 != null ? obj2.equals(map$Entry.getKey()) : map$Entry.getKey() == null) {
                Object obj3 = this.f5479h;
                if (obj3 == null) {
                    if (map$Entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(map$Entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public final Object getKey() {
        return this.f5478g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public final Object getValue() {
        return this.f5479h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public final int hashCode() {
        Object obj = this.f5478g;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f5479h;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public final Object setValue(Object obj) {
        if (obj == null) {
            n0.b.n("value == null");
            return null;
        }
        Object obj2 = this.f5479h;
        this.f5479h = obj;
        return obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f5478g + "=" + this.f5479h;
    }

    public d() {
        this.f5478g = null;
        this.f5477f = this;
        this.e = this;
    }
}
