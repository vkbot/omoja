package p200t4;

/* JADX INFO: renamed from: t4.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3255p {

    /* JADX INFO: renamed from: a */
    public final Class f9544a;

    /* JADX INFO: renamed from: b */
    public final Class f9545b;

    public C3255p(Class cls, Class cls2) {
        this.f9544a = cls;
        this.f9545b = cls2;
    }

    /* JADX INFO: renamed from: a */
    public static C3255p m5189a(Class cls) {
        return new C3255p(InterfaceC3254o.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3255p.class != obj.getClass()) {
            return false;
        }
        C3255p c3255p = (C3255p) obj;
        if (this.f9545b.equals(c3255p.f9545b)) {
            return this.f9544a.equals(c3255p.f9544a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9544a.hashCode() + (this.f9545b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.f9545b;
        Class cls2 = this.f9544a;
        if (cls2 == InterfaceC3254o.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
