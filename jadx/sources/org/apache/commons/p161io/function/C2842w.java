package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2842w implements IOPredicate {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8020b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOPredicate f8021c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ IOPredicate f8022d;

    public /* synthetic */ C2842w(IOPredicate iOPredicate, IOPredicate iOPredicate2, int i10) {
        this.f8020b = i10;
        this.f8021c = iOPredicate;
        this.f8022d = iOPredicate2;
    }

    @Override // org.apache.commons.p161io.function.IOPredicate
    public final boolean test(Object obj) {
        switch (this.f8020b) {
            case 0:
                return this.f8021c.lambda$or$4(this.f8022d, obj);
            default:
                return this.f8021c.lambda$and$1(this.f8022d, obj);
        }
    }
}
