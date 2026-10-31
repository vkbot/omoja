package androidx.window.embedding;

import android.app.Activity;
import android.content.Intent;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: renamed from: androidx.window.embedding.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0844a implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f525a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Set f526b;

    public /* synthetic */ C0844a(Set set, int i10) {
        this.f525a = i10;
        this.f526b = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f525a) {
            case 0:
                return EmbeddingAdapter.m6079translateIntentPredicates$lambda8(this.f526b, (Intent) obj);
            default:
                return EmbeddingAdapter.m6078translateActivityPredicates$lambda6(this.f526b, (Activity) obj);
        }
    }
}
