package androidx.core.content;

import android.content.ClipData;
import android.content.ComponentName;
import android.net.Uri;
import androidx.core.util.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f137a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9) {
        this.f137a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f137a) {
            case 0:
                return IntentSanitizer$Builder.j((ComponentName) obj);
            case 1:
                return IntentSanitizer$Builder.i(obj);
            case 2:
                return IntentSanitizer$Builder.p((String) obj);
            case 3:
                return IntentSanitizer$Builder.l((Uri) obj);
            case 4:
                return IntentSanitizer$Builder.b((String) obj);
            case 5:
                return IntentSanitizer$Builder.k((String) obj);
            case 6:
                return IntentSanitizer$Builder.f((String) obj);
            case 7:
                return IntentSanitizer$Builder.a((ComponentName) obj);
            case 8:
                return IntentSanitizer$Builder.m((Uri) obj);
            case 9:
                return IntentSanitizer$Builder.q((ClipData) obj);
            case 10:
                return IntentSanitizer$Builder.o(obj);
            default:
                return Predicate.d(obj);
        }
    }
}
