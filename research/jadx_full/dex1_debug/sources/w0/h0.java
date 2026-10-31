package w0;

import java.util.function.BooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h0 implements BooleanSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l0 f5649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5650b;
    public final /* synthetic */ int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h0(l0 l0Var, int i9, int i10) {
        this.f5649a = l0Var;
        this.f5650b = i9;
        this.c = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BooleanSupplier
    public final boolean getAsBoolean() {
        l0 l0Var = this.f5649a;
        return l0Var.c(this.f5650b) && !l0Var.f5700k && l0Var.f5697h.get() == this.c && l0Var.j0();
    }
}
