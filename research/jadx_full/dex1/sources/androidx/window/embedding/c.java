package androidx.window.embedding;

import android.util.Pair;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EmbeddingAdapter f223b;
    public final /* synthetic */ Set c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(EmbeddingAdapter embeddingAdapter, Set set, int i9) {
        this.f222a = i9;
        this.f223b = embeddingAdapter;
        this.c = set;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f222a) {
            case 0:
                return EmbeddingAdapter.a(this.f223b, this.c, (Pair) obj);
            default:
                return EmbeddingAdapter.d(this.f223b, this.c, (Pair) obj);
        }
    }
}
