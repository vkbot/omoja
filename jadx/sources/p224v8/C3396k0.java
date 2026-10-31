package p224v8;

/* JADX INFO: renamed from: v8.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3396k0 implements InterfaceC3426u0 {

    /* JADX INFO: renamed from: b */
    public final boolean f9893b;

    public C3396k0(boolean z9) {
        this.f9893b = z9;
    }

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: b */
    public final boolean mo5292b() {
        return this.f9893b;
    }

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: c */
    public final C3394j1 mo5293c() {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f9893b ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
