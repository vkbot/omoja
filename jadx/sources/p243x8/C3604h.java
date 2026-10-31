package p243x8;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: x8.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3604h extends C3605i {

    /* JADX INFO: renamed from: a */
    public final Throwable f10694a;

    public C3604h(Throwable th) {
        this.f10694a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3604h) {
            return Intrinsics.areEqual(this.f10694a, ((C3604h) obj).f10694a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10694a.hashCode();
    }

    @Override // p243x8.C3605i
    public final String toString() {
        return "Closed(" + this.f10694a + ')';
    }
}
