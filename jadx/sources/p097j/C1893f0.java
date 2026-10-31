package p097j;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;
import p025c0.AbstractC0947p;
import p025c0.C0943l;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1650l;
import p108k.C2017e;
import p108k.C2018f;
import p108k.C2019g;
import p108k.InterfaceC2021i;

/* JADX INFO: renamed from: j.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1893f0 implements InterfaceC1643e {

    /* JADX INFO: renamed from: j */
    public static final C0943l f4895j = new C0943l(50);

    /* JADX INFO: renamed from: b */
    public final C2019g f4896b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1643e f4897c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC1643e f4898d;

    /* JADX INFO: renamed from: e */
    public final int f4899e;

    /* JADX INFO: renamed from: f */
    public final int f4900f;

    /* JADX INFO: renamed from: g */
    public final Class f4901g;

    /* JADX INFO: renamed from: h */
    public final C1646h f4902h;

    /* JADX INFO: renamed from: i */
    public final InterfaceC1650l f4903i;

    public C1893f0(C2019g c2019g, InterfaceC1643e interfaceC1643e, InterfaceC1643e interfaceC1643e2, int i10, int i11, InterfaceC1650l interfaceC1650l, Class cls, C1646h c1646h) {
        this.f4896b = c2019g;
        this.f4897c = interfaceC1643e;
        this.f4898d = interfaceC1643e2;
        this.f4899e = i10;
        this.f4900f = i11;
        this.f4903i = interfaceC1650l;
        this.f4901g = cls;
        this.f4902h = c1646h;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        Object objM3108e;
        C2019g c2019g = this.f4896b;
        synchronized (c2019g) {
            C2018f c2018f = c2019g.f5508b;
            InterfaceC2021i interfaceC2021iM3103e = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
            if (interfaceC2021iM3103e == null) {
                interfaceC2021iM3103e = c2018f.m3103e();
            }
            C2017e c2017e = (C2017e) interfaceC2021iM3103e;
            c2017e.f5504b = 8;
            c2017e.f5505c = byte[].class;
            objM3108e = c2019g.m3108e(c2017e, byte[].class);
        }
        byte[] bArr = (byte[]) objM3108e;
        ByteBuffer.wrap(bArr).putInt(this.f4899e).putInt(this.f4900f).array();
        this.f4898d.mo917b(messageDigest);
        this.f4897c.mo917b(messageDigest);
        messageDigest.update(bArr);
        InterfaceC1650l interfaceC1650l = this.f4903i;
        if (interfaceC1650l != null) {
            interfaceC1650l.mo917b(messageDigest);
        }
        this.f4902h.mo917b(messageDigest);
        C0943l c0943l = f4895j;
        Class cls = this.f4901g;
        byte[] bytes = (byte[]) c0943l.m1077a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(InterfaceC1643e.f4176a);
            c0943l.m1080d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.f4896b.m3110g(bArr);
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C1893f0) {
            C1893f0 c1893f0 = (C1893f0) obj;
            if (this.f4900f == c1893f0.f4900f && this.f4899e == c1893f0.f4899e && AbstractC0947p.m1085b(this.f4903i, c1893f0.f4903i) && this.f4901g.equals(c1893f0.f4901g) && this.f4897c.equals(c1893f0.f4897c) && this.f4898d.equals(c1893f0.f4898d) && this.f4902h.equals(c1893f0.f4902h)) {
                return true;
            }
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        int iHashCode = ((((this.f4898d.hashCode() + (this.f4897c.hashCode() * 31)) * 31) + this.f4899e) * 31) + this.f4900f;
        InterfaceC1650l interfaceC1650l = this.f4903i;
        if (interfaceC1650l != null) {
            iHashCode = (iHashCode * 31) + interfaceC1650l.hashCode();
        }
        return this.f4902h.f4182b.hashCode() + ((this.f4901g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f4897c + ", signature=" + this.f4898d + ", width=" + this.f4899e + ", height=" + this.f4900f + ", decodedResourceClass=" + this.f4901g + ", transformation='" + this.f4903i + "', options=" + this.f4902h + '}';
    }
}
