package p015b0;

import java.security.MessageDigest;
import p025c0.AbstractC0938g;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: b0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0859b implements InterfaceC1643e {

    /* JADX INFO: renamed from: b */
    public final Object f538b;

    public C0859b(Object obj) {
        AbstractC0938g.m1072c(obj, "Argument must not be null");
        this.f538b = obj;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        messageDigest.update(this.f538b.toString().getBytes(InterfaceC1643e.f4176a));
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C0859b) {
            return this.f538b.equals(((C0859b) obj).f538b);
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        return this.f538b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f538b + '}';
    }
}
