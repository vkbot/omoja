package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j0 implements e5.b, f2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2210b;
    public final t8.a c;
    public final t8.a d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j0(t8.a aVar, t8.a aVar2, int i9) {
        this.f2210b = i9;
        this.c = aVar;
        this.d = aVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        switch (this.f2210b) {
            case 0:
                return new i0((y) this.c.get(), (i5.a) this.d.get());
            default:
                return new k2.h(new c5.e(15), new z3.f(14), k2.a.f3157f, (k2.j) this.c.get(), this.d);
        }
    }
}
