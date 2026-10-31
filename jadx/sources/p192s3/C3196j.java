package p192s3;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;
import p124l3.C2200a;
import p228w3.C3521f;

/* JADX INFO: renamed from: s3.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3196j {

    /* JADX INFO: renamed from: c */
    public float f9364c;

    /* JADX INFO: renamed from: d */
    public float f9365d;

    /* JADX INFO: renamed from: f */
    public final WeakReference f9367f;

    /* JADX INFO: renamed from: g */
    public C3521f f9368g;

    /* JADX INFO: renamed from: a */
    public final TextPaint f9362a = new TextPaint(1);

    /* JADX INFO: renamed from: b */
    public final C2200a f9363b = new C2200a(1, this);

    /* JADX INFO: renamed from: e */
    public boolean f9366e = true;

    public C3196j(InterfaceC3195i interfaceC3195i) {
        this.f9367f = new WeakReference(null);
        this.f9367f = new WeakReference(interfaceC3195i);
    }

    /* JADX INFO: renamed from: a */
    public final void m5131a(String str) {
        TextPaint textPaint = this.f9362a;
        this.f9364c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.f9365d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.f9366e = false;
    }

    /* JADX INFO: renamed from: b */
    public final void m5132b(C3521f c3521f, Context context) {
        if (this.f9368g != c3521f) {
            this.f9368g = c3521f;
            if (c3521f != null) {
                TextPaint textPaint = this.f9362a;
                C2200a c2200a = this.f9363b;
                c3521f.m5595e(context, textPaint, c2200a);
                InterfaceC3195i interfaceC3195i = (InterfaceC3195i) this.f9367f.get();
                if (interfaceC3195i != null) {
                    textPaint.drawableState = interfaceC3195i.getState();
                }
                c3521f.m5594d(context, textPaint, c2200a);
                this.f9366e = true;
            }
            InterfaceC3195i interfaceC3195i2 = (InterfaceC3195i) this.f9367f.get();
            if (interfaceC3195i2 != null) {
                interfaceC3195i2.mo2262a();
                interfaceC3195i2.onStateChange(interfaceC3195i2.getState());
            }
        }
    }
}
