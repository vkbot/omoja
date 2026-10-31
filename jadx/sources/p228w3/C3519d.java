package p228w3;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: renamed from: w3.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3519d extends ResourcesCompat.FontCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC3522g f10435a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3521f f10436b;

    public C3519d(C3521f c3521f, AbstractC3522g abstractC3522g) {
        this.f10436b = c3521f;
        this.f10435a = abstractC3522g;
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrievalFailed */
    public final void lambda$callbackFailAsync$1(int i10) {
        this.f10436b.f10454n = true;
        this.f10435a.mo3502a(i10);
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrieved */
    public final void lambda$callbackSuccessAsync$0(Typeface typeface) {
        C3521f c3521f = this.f10436b;
        Typeface typefaceCreate = Typeface.create(typeface, c3521f.f10444d);
        c3521f.f10456p = typefaceCreate;
        c3521f.f10454n = true;
        this.f10435a.mo3503b(typefaceCreate, false);
    }
}
