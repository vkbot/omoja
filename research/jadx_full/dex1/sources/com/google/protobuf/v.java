package com.google.protobuf;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v implements r0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v f1575b = new v(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1576a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v(int i9) {
        this.f1576a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r0
    public final a1 a(Class cls) {
        switch (this.f1576a) {
            case 0:
                if (y.class.isAssignableFrom(cls)) {
                    try {
                        return (a1) y.f(cls.asSubclass(y.class)).e(3);
                    } catch (Exception e) {
                        ai.onnxruntime.b.o("Unable to get message info for ".concat(cls.getName()), e);
                    }
                } else {
                    j1.i.k("Unsupported message type: ".concat(cls.getName()));
                }
                return null;
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r0
    public final boolean b(Class cls) {
        switch (this.f1576a) {
            case 0:
                return y.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
