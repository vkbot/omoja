package org.apache.commons.p161io.function;

import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.function.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2843x implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8023a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOPredicate f8024b;

    public /* synthetic */ C2843x(IOPredicate iOPredicate, int i10) {
        this.f8023a = i10;
        this.f8024b = iOPredicate;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f8023a) {
            case 0:
                return this.f8024b.lambda$asPredicate$2(obj);
            case 1:
                return Erase.test(this.f8024b, obj);
            case 2:
                return Erase.test(this.f8024b, obj);
            case 3:
                return Erase.test(this.f8024b, obj);
            default:
                return Erase.test(this.f8024b, obj);
        }
    }
}
