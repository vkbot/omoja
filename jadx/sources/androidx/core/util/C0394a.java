package androidx.core.util;

import androidx.core.content.IntentSanitizer;

/* JADX INFO: renamed from: androidx.core.util.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0394a implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f382a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Predicate f383b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f384c;

    public /* synthetic */ C0394a(Class cls, Predicate predicate) {
        this.f382a = 2;
        this.f384c = cls;
        this.f383b = predicate;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f382a) {
            case 0:
                return this.f383b.lambda$or$2((Predicate) this.f384c, obj);
            case 1:
                return this.f383b.lambda$and$0((Predicate) this.f384c, obj);
            default:
                return IntentSanitizer.Builder.lambda$allowExtra$13((Class) this.f384c, this.f383b, obj);
        }
    }

    public /* synthetic */ C0394a(Predicate predicate, Predicate predicate2, int i10) {
        this.f382a = i10;
        this.f383b = predicate;
        this.f384c = predicate2;
    }
}
