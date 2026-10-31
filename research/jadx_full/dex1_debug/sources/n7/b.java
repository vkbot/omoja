package n7;

import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3886b = new b(new IdentityHashMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IdentityHashMap f3887a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(IdentityHashMap identityHashMap) {
        this.f3887a = identityHashMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        IdentityHashMap identityHashMap = ((b) obj).f3887a;
        IdentityHashMap identityHashMap2 = this.f3887a;
        if (identityHashMap2.size() != identityHashMap.size()) {
            return false;
        }
        for (Map$Entry map$Entry : identityHashMap2.entrySet()) {
            if (!identityHashMap.containsKey(map$Entry.getKey()) || !com.bumptech.glide.d.f(map$Entry.getValue(), identityHashMap.get(map$Entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int iHashCode = 0;
        for (Map$Entry map$Entry : this.f3887a.entrySet()) {
            iHashCode += Arrays.hashCode(new Object[]{map$Entry.getKey(), map$Entry.getValue()});
        }
        return iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f3887a.toString();
    }
}
