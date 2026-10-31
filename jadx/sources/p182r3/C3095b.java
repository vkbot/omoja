package p182r3;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;
import p154o3.AbstractC2585c;
import p258z3.AbstractC3730p;
import p258z3.C3729o;
import p258z3.C3731q;
import p258z3.InterfaceC3717d;

/* JADX INFO: renamed from: r3.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3095b extends Drawable {

    /* JADX INFO: renamed from: b */
    public final Paint f8796b;

    /* JADX INFO: renamed from: h */
    public float f8802h;

    /* JADX INFO: renamed from: i */
    public int f8803i;

    /* JADX INFO: renamed from: j */
    public int f8804j;

    /* JADX INFO: renamed from: k */
    public int f8805k;

    /* JADX INFO: renamed from: l */
    public int f8806l;

    /* JADX INFO: renamed from: m */
    public int f8807m;

    /* JADX INFO: renamed from: o */
    public C3729o f8809o;

    /* JADX INFO: renamed from: p */
    public ColorStateList f8810p;

    /* JADX INFO: renamed from: a */
    public final C3731q f8795a = AbstractC3730p.f11098a;

    /* JADX INFO: renamed from: c */
    public final Path f8797c = new Path();

    /* JADX INFO: renamed from: d */
    public final Rect f8798d = new Rect();

    /* JADX INFO: renamed from: e */
    public final RectF f8799e = new RectF();

    /* JADX INFO: renamed from: f */
    public final RectF f8800f = new RectF();

    /* JADX INFO: renamed from: g */
    public final C3094a f8801g = new C3094a(this);

    /* JADX INFO: renamed from: n */
    public boolean f8808n = true;

    public C3095b(C3729o c3729o) {
        this.f8809o = c3729o;
        Paint paint = new Paint(1);
        this.f8796b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z9 = this.f8808n;
        Rect rect = this.f8798d;
        Paint paint = this.f8796b;
        if (z9) {
            copyBounds(rect);
            float fHeight = this.f8802h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.f8803i, this.f8807m), ColorUtils.compositeColors(this.f8804j, this.f8807m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f8804j, 0), this.f8807m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f8806l, 0), this.f8807m), ColorUtils.compositeColors(this.f8806l, this.f8807m), ColorUtils.compositeColors(this.f8805k, this.f8807m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP));
            this.f8808n = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.f8799e;
        rectF.set(rect);
        InterfaceC3717d interfaceC3717d = this.f8809o.f11090e;
        Rect bounds = getBounds();
        RectF rectF2 = this.f8800f;
        rectF2.set(bounds);
        float fMin = Math.min(interfaceC3717d.mo5920a(rectF2), rectF.width() / 2.0f);
        C3729o c3729o = this.f8809o;
        rectF2.set(getBounds());
        if (c3729o.m5962f(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f8801g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f8802h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        C3729o c3729o = this.f8809o;
        Rect bounds = getBounds();
        RectF rectF = this.f8800f;
        rectF.set(bounds);
        if (c3729o.m5962f(rectF)) {
            InterfaceC3717d interfaceC3717d = this.f8809o.f11090e;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), interfaceC3717d.mo5920a(rectF));
            return;
        }
        Rect rect = this.f8798d;
        copyBounds(rect);
        RectF rectF2 = this.f8799e;
        rectF2.set(rect);
        C3729o c3729o2 = this.f8809o;
        C3731q c3731q = this.f8795a;
        Path path = this.f8797c;
        c3731q.m5964a(c3729o2, null, 1.0f, rectF2, null, path);
        AbstractC2585c.m4030e(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        C3729o c3729o = this.f8809o;
        Rect bounds = getBounds();
        RectF rectF = this.f8800f;
        rectF.set(bounds);
        if (!c3729o.m5962f(rectF)) {
            return true;
        }
        int iRound = Math.round(this.f8802h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f8810p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f8808n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f8810p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f8807m)) != this.f8807m) {
            this.f8808n = true;
            this.f8807m = colorForState;
        }
        if (this.f8808n) {
            invalidateSelf();
        }
        return this.f8808n;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        this.f8796b.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f8796b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
