package j;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 implements h.e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c0.l f2769j = new c0.l(50);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k.g f2770b;
    public final h.e c;
    public final h.e d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Class f2772g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h.h f2773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h.l f2774i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f0(k.g gVar, h.e eVar, h.e eVar2, int i9, int i10, h.l lVar, Class cls, h.h hVar) {
        this.f2770b = gVar;
        this.c = eVar;
        this.d = eVar2;
        this.e = i9;
        this.f2771f = i10;
        this.f2774i = lVar;
        this.f2772g = cls;
        this.f2773h = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        Object objE;
        k.g gVar = this.f2770b;
        synchronized (gVar) {
            k.f fVar = gVar.f3135b;
            k.i iVarE = (k.i) ((ArrayDeque) fVar.f3128b).poll();
            if (iVarE == null) {
                iVarE = fVar.e();
            }
            k.e eVar = (k.e) iVarE;
            eVar.f3133b = 8;
            eVar.c = byte[].class;
            objE = gVar.e(eVar, byte[].class);
        }
        byte[] bArr = (byte[]) objE;
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f2771f).array();
        this.d.b(messageDigest);
        this.c.b(messageDigest);
        messageDigest.update(bArr);
        h.l lVar = this.f2774i;
        if (lVar != null) {
            lVar.b(messageDigest);
        }
        this.f2773h.b(messageDigest);
        c0.l lVar2 = f2769j;
        Class cls = this.f2772g;
        byte[] bytes = (byte[]) lVar2.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(h.e.f2409a);
            lVar2.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.f2770b.g(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            if (this.f2771f == f0Var.f2771f && this.e == f0Var.e && c0.p.b(this.f2774i, f0Var.f2774i) && this.f2772g.equals(f0Var.f2772g) && this.c.equals(f0Var.c) && this.d.equals(f0Var.d) && this.f2773h.equals(f0Var.f2773h)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        int iHashCode = ((((this.d.hashCode() + (this.c.hashCode() * 31)) * 31) + this.e) * 31) + this.f2771f;
        h.l lVar = this.f2774i;
        if (lVar != null) {
            iHashCode = (iHashCode * 31) + lVar.hashCode();
        }
        return this.f2773h.f2412b.hashCode() + ((this.f2772g.hashCode() + (iHashCode * 31)) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f2771f + ", decodedResourceClass=" + this.f2772g + ", transformation='" + this.f2774i + "', options=" + this.f2773h + '}';
    }
}
