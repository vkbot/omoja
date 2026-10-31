package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class w implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y f1578b;
    public y c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(y yVar) {
        this.f1578b = yVar;
        if (yVar.i()) {
            j1.i.k("Default instance must be immutable.");
            throw null;
        }
        this.c = yVar.k();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Object obj, Object obj2) {
        y0 y0Var = y0.c;
        y0Var.getClass();
        y0Var.a(obj.getClass()).b(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y a() {
        y yVarB = b();
        yVarB.getClass();
        if (y.h(yVarB, true)) {
            return yVarB;
        }
        throw new i1();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y b() {
        boolean zI = this.c.i();
        y yVar = this.c;
        if (!zI) {
            return yVar;
        }
        yVar.getClass();
        y0 y0Var = y0.c;
        y0Var.getClass();
        y0Var.a(yVar.getClass()).c(yVar);
        yVar.j();
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (this.c.i()) {
            return;
        }
        y yVarK = this.f1578b.k();
        d(yVarK, this.c);
        this.c = yVarK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object clone() {
        w wVar = (w) this.f1578b.e(5);
        wVar.c = b();
        return wVar;
    }
}
