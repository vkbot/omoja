package androidx.core.util;

/* JADX INFO: renamed from: androidx.core.util.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0395b implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f385a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f386b;

    public /* synthetic */ C0395b(int i10, Object obj) {
        this.f385a = i10;
        this.f386b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f385a) {
            case 0:
                return this.f386b.equals(obj);
            default:
                return ((Predicate) this.f386b).lambda$negate$1(obj);
        }
    }
}
