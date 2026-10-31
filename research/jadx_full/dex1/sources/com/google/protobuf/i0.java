package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i0 extends j0 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final void a(Object obj, long j9) {
        b bVar = (b) ((a0) s1.c.i(obj, j9));
        if (bVar.f1472b) {
            bVar.f1472b = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final void b(long j9, Object obj, Object obj2) {
        r1 r1Var = s1.c;
        a0 a0VarC = (a0) r1Var.i(obj, j9);
        a0 a0Var = (a0) r1Var.i(obj2, j9);
        int size = a0VarC.size();
        int size2 = a0Var.size();
        if (size > 0 && size2 > 0) {
            if (!((b) a0VarC).f1472b) {
                a0VarC = a0VarC.c(size2 + size);
            }
            a0VarC.addAll(a0Var);
        }
        if (size > 0) {
            a0Var = a0VarC;
        }
        s1.p(j9, obj, a0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.j0
    public final List c(Object obj, long j9) {
        a0 a0Var = (a0) s1.c.i(obj, j9);
        if (((b) a0Var).f1472b) {
            return a0Var;
        }
        int size = a0Var.size();
        a0 a0VarC = a0Var.c(size == 0 ? 10 : size * 2);
        s1.p(j9, obj, a0VarC);
        return a0VarC;
    }
}
