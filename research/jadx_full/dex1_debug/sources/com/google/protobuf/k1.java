package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k1 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j1 a(Object obj) {
        y yVar = (y) obj;
        j1 j1Var = yVar.unknownFields;
        if (j1Var != j1.f1521f) {
            return j1Var;
        }
        j1 j1Var2 = new j1(0, new int[8], new Object[8], true);
        yVar.unknownFields = j1Var2;
        return j1Var2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(Object obj, c3.i iVar) throws d0 {
        int i9 = iVar.f487a;
        j jVar = (j) iVar.d;
        int i10 = i9 >>> 3;
        int i11 = i9 & 7;
        if (i11 == 0) {
            iVar.z(0);
            ((j1) obj).c(i10 << 3, Long.valueOf(jVar.o()));
            return true;
        }
        if (i11 == 1) {
            iVar.z(1);
            ((j1) obj).c((i10 << 3) | 1, Long.valueOf(jVar.l()));
            return true;
        }
        if (i11 == 2) {
            ((j1) obj).c((i10 << 3) | 2, iVar.g());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw d0.b();
            }
            iVar.z(5);
            ((j1) obj).c((i10 << 3) | 5, Integer.valueOf(jVar.k()));
            return true;
        }
        j1 j1Var = new j1(0, new int[8], new Object[8], true);
        int i12 = i10 << 3;
        int i13 = i12 | 4;
        while (iVar.c() != Integer.MAX_VALUE && b(j1Var, iVar)) {
        }
        if (i13 != iVar.f487a) {
            throw new d0("Protocol message end-group tag did not match expected tag.");
        }
        if (j1Var.e) {
            j1Var.e = false;
        }
        ((j1) obj).c(i12 | 3, j1Var);
        return true;
    }
}
