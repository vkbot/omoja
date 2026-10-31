package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k0 implements r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r0[] f1525a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r0
    public final a1 a(Class cls) {
        for (r0 r0Var : this.f1525a) {
            if (r0Var.b(cls)) {
                return r0Var.a(cls);
            }
        }
        androidx.navigation.b.g("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r0
    public final boolean b(Class cls) {
        for (r0 r0Var : this.f1525a) {
            if (r0Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
