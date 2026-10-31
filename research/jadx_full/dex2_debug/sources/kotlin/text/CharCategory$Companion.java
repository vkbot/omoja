package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/CharCategory$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "valueOf", "Lkotlin/text/CharCategory;", "category", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CharCategory$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ CharCategory$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CharCategory valueOf(int category) {
        if (category >= 0 && category < 17) {
            return (CharCategory) CharCategory.getEntries().get(category);
        }
        if (18 <= category && category < 31) {
            return (CharCategory) CharCategory.getEntries().get(category - 1);
        }
        j1.i.k(ai.onnxruntime.a.f(category, "Category #", " is not defined."));
        return null;
    }

    private CharCategory$Companion() {
    }
}
