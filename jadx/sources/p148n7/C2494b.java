package p148n7;

import com.bumptech.glide.AbstractC1031d;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: renamed from: n7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2494b {

    /* JADX INFO: renamed from: b */
    public static final C2494b f6881b = new C2494b(new IdentityHashMap());

    /* JADX INFO: renamed from: a */
    public final IdentityHashMap f6882a;

    public C2494b(IdentityHashMap identityHashMap) {
        this.f6882a = identityHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2494b.class != obj.getClass()) {
            return false;
        }
        IdentityHashMap identityHashMap = ((C2494b) obj).f6882a;
        IdentityHashMap identityHashMap2 = this.f6882a;
        if (identityHashMap2.size() != identityHashMap.size()) {
            return false;
        }
        for (Map.Entry entry : identityHashMap2.entrySet()) {
            if (!identityHashMap.containsKey(entry.getKey()) || !AbstractC1031d.m1276f(entry.getValue(), identityHashMap.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (Map.Entry entry : this.f6882a.entrySet()) {
            iHashCode += Arrays.hashCode(new Object[]{entry.getKey(), entry.getValue()});
        }
        return iHashCode;
    }

    public final String toString() {
        return this.f6882a.toString();
    }
}
