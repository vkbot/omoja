package p228w3;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: renamed from: w3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3520e extends AbstractC3522g {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Context f10437a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ TextPaint f10438b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC3522g f10439c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3521f f10440d;

    public C3520e(C3521f c3521f, Context context, TextPaint textPaint, AbstractC3522g abstractC3522g) {
        this.f10440d = c3521f;
        this.f10437a = context;
        this.f10438b = textPaint;
        this.f10439c = abstractC3522g;
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: a */
    public final void mo3502a(int i10) {
        this.f10439c.mo3502a(i10);
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: b */
    public final void mo3503b(Typeface typeface, boolean z9) {
        this.f10440d.m5596f(this.f10437a, this.f10438b, typeface);
        this.f10439c.mo3503b(typeface, z9);
    }
}
