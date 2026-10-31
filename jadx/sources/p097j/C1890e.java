package p097j;

import java.security.MessageDigest;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: j.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1890e implements InterfaceC1643e {

    /* JADX INFO: renamed from: b */
    public final InterfaceC1643e f4883b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1643e f4884c;

    public C1890e(InterfaceC1643e interfaceC1643e, InterfaceC1643e interfaceC1643e2) {
        this.f4883b = interfaceC1643e;
        this.f4884c = interfaceC1643e2;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        this.f4883b.mo917b(messageDigest);
        this.f4884c.mo917b(messageDigest);
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C1890e) {
            C1890e c1890e = (C1890e) obj;
            if (this.f4883b.equals(c1890e.f4883b) && this.f4884c.equals(c1890e.f4884c)) {
                return true;
            }
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return this.f4884c.hashCode() + (this.f4883b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f4883b + ", signature=" + this.f4884c + '}';
    }
}
