package com.google.protobuf;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f1526b = new v(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1527a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l0() {
        r0 r0Var;
        try {
            r0Var = (r0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            r0Var = f1526b;
        }
        r0[] r0VarArr = {v.f1575b, r0Var};
        k0 k0Var = new k0();
        k0Var.f1525a = r0VarArr;
        Charset charset = b0.f1473a;
        this.f1527a = k0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(int i9, Object obj, b1 b1Var) {
        n nVar = (n) this.f1527a;
        nVar.w(i9, 3);
        b1Var.a((a) obj, nVar.f1535a);
        nVar.w(i9, 4);
    }

    public l0(n nVar) {
        b0.a(nVar, "output");
        this.f1527a = nVar;
        nVar.f1535a = this;
    }
}
