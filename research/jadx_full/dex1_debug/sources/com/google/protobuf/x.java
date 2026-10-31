package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x implements x0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p f1581b = p.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f1582a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(y yVar) {
        this.f1582a = yVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y a(j jVar, p pVar) {
        y yVarK = this.f1582a.k();
        try {
            y0 y0Var = y0.c;
            y0Var.getClass();
            b1 b1VarA = y0Var.a(yVarK.getClass());
            c3.i iVar = jVar.c;
            if (iVar == null) {
                iVar = new c3.i(jVar);
            }
            b1VarA.h(yVarK, iVar, pVar);
            b1VarA.c(yVarK);
            return yVarK;
        } catch (d0 e) {
            if (e.f1487b) {
                throw new d0(e.getMessage(), e);
            }
            throw e;
        } catch (i1 e6) {
            throw new d0(e6.getMessage());
        } catch (IOException e9) {
            if (e9.getCause() instanceof d0) {
                throw ((d0) e9.getCause());
            }
            throw new d0(e9.getMessage(), e9);
        } catch (RuntimeException e10) {
            if (e10.getCause() instanceof d0) {
                throw ((d0) e10.getCause());
            }
            throw e10;
        }
    }
}
