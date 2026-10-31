package i9;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a0 extends f1 {
    public final g9.c l;
    public final Lazy m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(String str, int i) {
        super(str, null, i);
        str.getClass();
        this.l = g9.c.f;
        this.m = LazyKt.lazy(new z(i, str, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof g9.e)) {
            return false;
        }
        g9.e eVar = (g9.e) obj;
        return eVar.getKind() == g9.c.f && Intrinsics.areEqual(this.a, eVar.a()) && Intrinsics.areEqual(d1.b(this), d1.b(eVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1, g9.e
    public final g9.e f(int i) {
        return ((g9.e[]) this.m.getValue())[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1, g9.e
    public final com.bumptech.glide.d getKind() {
        return this.l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1
    public final int hashCode() {
        int iHashCode = this.a.hashCode();
        g9.g gVar = new g9.g(this);
        int iHashCode2 = 1;
        while (gVar.hasNext()) {
            int i = iHashCode2 * 31;
            String str = (String) gVar.next();
            iHashCode2 = i + (str != null ? str.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.f1
    public final String toString() {
        return CollectionsKt.l(new g9.h(this), ", ", this.a + '(', ")", (Function1) null, 56);
    }
}
