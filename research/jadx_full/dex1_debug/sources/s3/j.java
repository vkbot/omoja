package s3;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {
    public float c;
    public float d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WeakReference f5292f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public w3.f f5293g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f5290a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l3.a f5291b = new l3.a(1, this);
    public boolean e = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(i iVar) {
        this.f5292f = new WeakReference(null);
        this.f5292f = new WeakReference(iVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(String str) {
        TextPaint textPaint = this.f5290a;
        this.c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.e = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(w3.f fVar, Context context) {
        if (this.f5293g != fVar) {
            this.f5293g = fVar;
            if (fVar != null) {
                TextPaint textPaint = this.f5290a;
                l3.a aVar = this.f5291b;
                fVar.e(context, textPaint, aVar);
                i iVar = (i) this.f5292f.get();
                if (iVar != null) {
                    textPaint.drawableState = iVar.getState();
                }
                fVar.d(context, textPaint, aVar);
                this.e = true;
            }
            i iVar2 = (i) this.f5292f.get();
            if (iVar2 != null) {
                iVar2.a();
                iVar2.onStateChange(iVar2.getState());
            }
        }
    }
}
