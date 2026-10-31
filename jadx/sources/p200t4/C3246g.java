package p200t4;

/* JADX INFO: renamed from: t4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3246g {

    /* JADX INFO: renamed from: a */
    public final C3255p f9527a;

    /* JADX INFO: renamed from: b */
    public final boolean f9528b;

    public C3246g(C3255p c3255p, boolean z9) {
        this.f9527a = c3255p;
        this.f9528b = z9;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3246g) {
            C3246g c3246g = (C3246g) obj;
            if (c3246g.f9527a.equals(this.f9527a) && c3246g.f9528b == this.f9528b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f9527a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f9528b).hashCode();
    }
}
