package androidx.core.content;

import android.content.ComponentName;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.util.Predicate;

/* JADX INFO: renamed from: androidx.core.content.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0332c implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f334a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f335b;

    public /* synthetic */ C0332c(int i10, Object obj) {
        this.f334a = i10;
        this.f335b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f334a) {
            case 0:
                return ((ComponentName) this.f335b).equals((ComponentName) obj);
            default:
                return UriMatcherCompat.lambda$asPredicate$0((UriMatcher) this.f335b, (Uri) obj);
        }
    }
}
