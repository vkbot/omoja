package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2841v implements IOPredicate, IOFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8018b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8019c;

    public /* synthetic */ C2841v(int i10, Object obj) {
        this.f8018b = i10;
        this.f8019c = obj;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        return ((IOBaseStream) this.f8019c).onClose((IORunnable) obj);
    }

    @Override // org.apache.commons.p161io.function.IOPredicate
    public boolean test(Object obj) {
        switch (this.f8018b) {
            case 0:
                return ((IOPredicate) this.f8019c).lambda$negate$3(obj);
            default:
                return this.f8019c.equals(obj);
        }
    }
}
