package p025c0;

/* JADX INFO: renamed from: c0.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0945n {

    /* JADX INFO: renamed from: a */
    public Class f806a;

    /* JADX INFO: renamed from: b */
    public Class f807b;

    /* JADX INFO: renamed from: c */
    public Class f808c;

    public C0945n(Class cls, Class cls2, Class cls3) {
        this.f806a = cls;
        this.f807b = cls2;
        this.f808c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0945n.class != obj.getClass()) {
            return false;
        }
        C0945n c0945n = (C0945n) obj;
        return this.f806a.equals(c0945n.f806a) && this.f807b.equals(c0945n.f807b) && AbstractC0947p.m1085b(this.f808c, c0945n.f808c);
    }

    public final int hashCode() {
        int iHashCode = (this.f807b.hashCode() + (this.f806a.hashCode() * 31)) * 31;
        Class cls = this.f808c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f806a + ", second=" + this.f807b + '}';
    }
}
