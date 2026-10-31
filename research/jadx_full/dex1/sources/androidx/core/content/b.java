package androidx.core.content;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.util.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f134b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(String str, int i9) {
        this.f133a = i9;
        this.f134b = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f133a) {
            case 0:
                return IntentSanitizer$Builder.g(this.f134b, (Uri) obj);
            case 1:
                return this.f134b.equals((String) obj);
            case 2:
                return IntentSanitizer$Builder.c(this.f134b, (ComponentName) obj);
            case 3:
                return IntentSanitizer$Builder.n(this.f134b, (Uri) obj);
            case 4:
                return IntentSanitizer$Builder.d(this.f134b, (Uri) obj);
            default:
                return IntentSanitizer$Builder.h(this.f134b, (Uri) obj);
        }
    }
}
