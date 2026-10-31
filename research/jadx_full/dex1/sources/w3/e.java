package w3;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f5895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextPaint f5896b;
    public final /* synthetic */ g c;
    public final /* synthetic */ f d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(f fVar, Context context, TextPaint textPaint, g gVar) {
        this.d = fVar;
        this.f5895a = context;
        this.f5896b = textPaint;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void a(int i9) {
        this.c.a(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void b(Typeface typeface, boolean z8) {
        this.d.f(this.f5895a, this.f5896b, typeface);
        this.c.b(typeface, z8);
    }
}
