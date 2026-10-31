package androidx.core.content;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.util.Predicate;

/* JADX INFO: renamed from: androidx.core.content.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0331b implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f332a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ String f333b;

    public /* synthetic */ C0331b(String str, int i10) {
        this.f332a = i10;
        this.f333b = str;
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f332a) {
            case 0:
                return IntentSanitizer.Builder.lambda$allowExtraOutput$16(this.f333b, (Uri) obj);
            case 1:
                return this.f333b.equals((String) obj);
            case 2:
                return IntentSanitizer.Builder.lambda$allowComponentWithPackage$9(this.f333b, (ComponentName) obj);
            case 3:
                return IntentSanitizer.Builder.lambda$allowDataWithAuthority$8(this.f333b, (Uri) obj);
            case 4:
                return IntentSanitizer.Builder.lambda$allowClipDataUriWithAuthority$11(this.f333b, (Uri) obj);
            default:
                return IntentSanitizer.Builder.lambda$allowExtraStreamUriWithAuthority$15(this.f333b, (Uri) obj);
        }
    }
}
