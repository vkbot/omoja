package p096i9;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: renamed from: i9.r0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1856r0 implements Map.Entry, KMappedMarker {

    /* JADX INFO: renamed from: b */
    public final Object f4818b;

    /* JADX INFO: renamed from: c */
    public final Object f4819c;

    public C1856r0(Object obj, Object obj2) {
        this.f4818b = obj;
        this.f4819c = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1856r0)) {
            return false;
        }
        C1856r0 c1856r0 = (C1856r0) obj;
        return Intrinsics.areEqual(this.f4818b, c1856r0.f4818b) && Intrinsics.areEqual(this.f4819c, c1856r0.f4819c);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f4818b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f4819c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f4818b;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f4819c;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return "MapEntry(key=" + this.f4818b + ", value=" + this.f4819c + ')';
    }
}
