package androidx.window.embedding;

import android.util.Pair;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: renamed from: androidx.window.embedding.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0846c implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f528a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ EmbeddingAdapter f529b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Set f530c;

    public /* synthetic */ C0846c(EmbeddingAdapter embeddingAdapter, Set set, int i10) {
        this.f528a = i10;
        this.f529b = embeddingAdapter;
        this.f530c = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f528a) {
            case 0:
                return EmbeddingAdapter.m6077translateActivityPairPredicates$lambda1(this.f529b, this.f530c, (Pair) obj);
            default:
                return EmbeddingAdapter.m6076translateActivityIntentPredicates$lambda3(this.f529b, this.f530c, (Pair) obj);
        }
    }
}
