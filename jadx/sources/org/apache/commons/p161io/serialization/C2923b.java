package org.apache.commons.p161io.serialization;

import java.util.function.Function;

/* JADX INFO: renamed from: org.apache.commons.io.serialization.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2923b implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8115b;

    public /* synthetic */ C2923b(int i10) {
        this.f8115b = i10;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f8115b) {
            case 0:
                return new WildcardClassNameMatcher((String) obj);
            case 1:
                return ObjectStreamClassPredicate.lambda$accept$0((Class) obj);
            default:
                return ObjectStreamClassPredicate.lambda$reject$1((Class) obj);
        }
    }
}
