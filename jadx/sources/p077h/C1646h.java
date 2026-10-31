package p077h;

import java.security.MessageDigest;
import p025c0.C0934c;

/* JADX INFO: renamed from: h.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1646h implements InterfaceC1643e {

    /* JADX INFO: renamed from: b */
    public final C0934c f4182b = new C0934c();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        for (int i10 = 0; i10 < this.f4182b.getSize(); i10++) {
            C1645g c1645g = (C1645g) this.f4182b.keyAt(i10);
            Object objValueAt = this.f4182b.valueAt(i10);
            InterfaceC1644f interfaceC1644f = c1645g.f4179b;
            if (c1645g.f4181d == null) {
                c1645g.f4181d = c1645g.f4180c.getBytes(InterfaceC1643e.f4176a);
            }
            interfaceC1644f.mo1139a(c1645g.f4181d, objValueAt, messageDigest);
        }
    }

    /* JADX INFO: renamed from: c */
    public final Object m2729c(C1645g c1645g) {
        C0934c c0934c = this.f4182b;
        return c0934c.containsKey(c1645g) ? c0934c.get(c1645g) : c1645g.f4178a;
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C1646h) {
            return this.f4182b.equals(((C1646h) obj).f4182b);
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return this.f4182b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f4182b + '}';
    }
}
