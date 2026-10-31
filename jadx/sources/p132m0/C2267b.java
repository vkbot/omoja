package p132m0;

import java.util.function.BooleanSupplier;

/* JADX INFO: renamed from: m0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2267b implements BooleanSupplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2302i f5938a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5939b;

    public /* synthetic */ C2267b(C2302i c2302i, int i10) {
        this.f5938a = c2302i;
        this.f5939b = i10;
    }

    @Override // java.util.function.BooleanSupplier
    public final boolean getAsBoolean() {
        return this.f5939b == this.f5938a.f6136j;
    }
}
