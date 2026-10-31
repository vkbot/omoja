package p006a5;

/* JADX INFO: renamed from: a5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0016a implements InterfaceC0019d {

    /* JADX INFO: renamed from: a */
    public final int f65a;

    public C0016a(int i10) {
        this.f65a = i10;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return InterfaceC0019d.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InterfaceC0019d)) {
            return false;
        }
        InterfaceC0019d interfaceC0019d = (InterfaceC0019d) obj;
        return this.f65a == interfaceC0019d.tag() && EnumC0018c.f67b.equals(interfaceC0019d.intEncoding());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (14552422 ^ this.f65a) + (EnumC0018c.f67b.hashCode() ^ 2041407134);
    }

    @Override // p006a5.InterfaceC0019d
    public final EnumC0018c intEncoding() {
        return EnumC0018c.f67b;
    }

    @Override // p006a5.InterfaceC0019d
    public final int tag() {
        return this.f65a;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f65a + "intEncoding=" + EnumC0018c.f67b + ')';
    }
}
