package w3;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat$FontCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends ResourcesCompat$FontCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f5893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f5894b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(f fVar, g gVar) {
        this.f5894b = fVar;
        this.f5893a = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.content.res.ResourcesCompat$FontCallback
    public final void onFontRetrievalFailed(int i9) {
        this.f5894b.f5907n = true;
        this.f5893a.a(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.content.res.ResourcesCompat$FontCallback
    public final void onFontRetrieved(Typeface typeface) {
        f fVar = this.f5894b;
        Typeface typefaceCreate = Typeface.create(typeface, fVar.d);
        fVar.f5909p = typefaceCreate;
        fVar.f5907n = true;
        this.f5893a.b(typefaceCreate, false);
    }
}
