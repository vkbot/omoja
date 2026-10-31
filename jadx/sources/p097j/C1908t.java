package p097j;

import java.util.concurrent.Executor;
import p244y.C3621f;

/* JADX INFO: renamed from: j.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1908t {

    /* JADX INFO: renamed from: a */
    public final C3621f f4997a;

    /* JADX INFO: renamed from: b */
    public final Executor f4998b;

    public C1908t(C3621f c3621f, Executor executor) {
        this.f4997a = c3621f;
        this.f4998b = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1908t) {
            return this.f4997a.equals(((C1908t) obj).f4997a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4997a.hashCode();
    }
}
