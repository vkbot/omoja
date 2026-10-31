package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t1 extends n7.h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4444a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.f0 f4445b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t1(Throwable th) {
        n7.f1 f1VarG = n7.f1.f3929l.h("Panic! This is a bug!").g(th);
        n7.f0 f0Var = n7.f0.e;
        o4.b.d("drop status shouldn't be OK", !f1VarG.f());
        this.f4445b = new n7.f0(null, null, f1VarG, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.h0
    public final n7.f0 a(g3 g3Var) {
        switch (this.f4444a) {
            case 0:
                break;
        }
        return this.f4445b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        switch (this.f4444a) {
            case 0:
                com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(t1.class.getSimpleName());
                sVar.c(this.f4445b, "panicPickResult");
                return sVar.toString();
            default:
                return "FixedResultPicker(" + this.f4445b + ")";
        }
    }

    public t1(n7.f0 f0Var) {
        o4.b.i(f0Var, "result");
        this.f4445b = f0Var;
    }
}
