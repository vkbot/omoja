package androidx.core.util;

import androidx.core.content.IntentSanitizer$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f152b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(Class cls, Predicate predicate) {
        this.f151a = 2;
        this.c = cls;
        this.f152b = predicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f151a) {
            case 0:
                return Predicate.c(this.f152b, (Predicate) this.c, obj);
            case 1:
                return Predicate.e(this.f152b, (Predicate) this.c, obj);
            default:
                return IntentSanitizer$Builder.e((Class) this.c, this.f152b, obj);
        }
    }

    public /* synthetic */ a(Predicate predicate, Predicate predicate2, int i9) {
        this.f151a = i9;
        this.f152b = predicate;
        this.c = predicate2;
    }
}
