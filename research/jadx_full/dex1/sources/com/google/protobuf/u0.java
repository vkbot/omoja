package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u0 implements b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k1 f1574b;
    public final r c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u0(k1 k1Var, r rVar, a aVar) {
        this.f1574b = k1Var;
        rVar.getClass();
        this.c = rVar;
        this.f1573a = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final void a(Object obj, l0 l0Var) {
        this.c.getClass();
        q.q(obj);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final void b(Object obj, Object obj2) {
        c1.j(this.f1574b, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final void c(Object obj) {
        this.f1574b.getClass();
        j1 j1Var = ((y) obj).unknownFields;
        if (j1Var.e) {
            j1Var.e = false;
        }
        this.c.getClass();
        q.q(obj);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final boolean d(Object obj) {
        this.c.getClass();
        q.q(obj);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final int e(y yVar) {
        this.f1574b.getClass();
        return yVar.unknownFields.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final int f(y yVar) {
        this.f1574b.getClass();
        j1 j1Var = yVar.unknownFields;
        int i9 = j1Var.d;
        if (i9 != -1) {
            return i9;
        }
        int iD = 0;
        for (int i10 = 0; i10 < j1Var.f1522a; i10++) {
            int i11 = j1Var.f1523b[i10] >>> 3;
            g gVar = (g) j1Var.c[i10];
            int iD2 = n.d(i11) + n.c(2) + (n.c(1) * 2);
            int iC = n.c(3);
            int size = gVar.size();
            iD += n.d(size) + size + iC + iD2;
        }
        j1Var.d = iD;
        return iD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final boolean g(y yVar, y yVar2) {
        this.f1574b.getClass();
        return yVar.unknownFields.equals(yVar2.unknownFields);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final void h(Object obj, c3.i iVar, p pVar) {
        this.f1574b.getClass();
        k1.a(obj);
        this.c.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.b1
    public final y i() {
        a aVar = this.f1573a;
        return aVar instanceof y ? ((y) aVar).k() : ((w) ((y) aVar).e(5)).b();
    }
}
