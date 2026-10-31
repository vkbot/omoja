package p108k;

/* JADX INFO: renamed from: k.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2017e implements InterfaceC2021i {

    /* JADX INFO: renamed from: a */
    public final C2018f f5503a;

    /* JADX INFO: renamed from: b */
    public int f5504b;

    /* JADX INFO: renamed from: c */
    public Class f5505c;

    public C2017e(C2018f c2018f) {
        this.f5503a = c2018f;
    }

    @Override // p108k.InterfaceC2021i
    /* JADX INFO: renamed from: a */
    public final void mo3102a() {
        this.f5503a.m3097c(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2017e) {
            C2017e c2017e = (C2017e) obj;
            if (this.f5504b == c2017e.f5504b && this.f5505c == c2017e.f5505c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f5504b * 31;
        Class cls = this.f5505c;
        return i10 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.f5504b + "array=" + this.f5505c + '}';
    }
}
