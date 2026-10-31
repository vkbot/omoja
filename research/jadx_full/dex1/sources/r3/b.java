package r3;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader$TileMode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import androidx.core.graphics.ColorUtils;
import z3.o;
import z3.p;
import z3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends Drawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f4941b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f4944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4947k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4948l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4949m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o f4951o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f4952p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f4940a = p.f6267a;
    public final Path c = new Path();
    public final Rect d = new Rect();
    public final RectF e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f4942f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f4943g = new a(this);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4950n = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(o oVar) {
        this.f4951o = oVar;
        Paint paint = new Paint(1);
        this.f4941b = paint;
        paint.setStyle(Paint$Style.STROKE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z8 = this.f4950n;
        Rect rect = this.d;
        Paint paint = this.f4941b;
        if (z8) {
            copyBounds(rect);
            float fHeight = this.f4944h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.f4945i, this.f4949m), ColorUtils.compositeColors(this.f4946j, this.f4949m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f4946j, 0), this.f4949m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f4948l, 0), this.f4949m), ColorUtils.compositeColors(this.f4948l, this.f4949m), ColorUtils.compositeColors(this.f4947k, this.f4949m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader$TileMode.CLAMP));
            this.f4950n = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.e;
        rectF.set(rect);
        z3.d dVar = this.f4951o.e;
        Rect bounds = getBounds();
        RectF rectF2 = this.f4942f;
        rectF2.set(bounds);
        float fMin = Math.min(dVar.a(rectF2), rectF.width() / 2.0f);
        o oVar = this.f4951o;
        rectF2.set(getBounds());
        if (oVar.f(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final Drawable$ConstantState getConstantState() {
        return this.f4943g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f4944h > 0.0f ? -3 : -2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        o oVar = this.f4951o;
        Rect bounds = getBounds();
        RectF rectF = this.f4942f;
        rectF.set(bounds);
        if (oVar.f(rectF)) {
            z3.d dVar = this.f4951o.e;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), dVar.a(rectF));
            return;
        }
        Rect rect = this.d;
        copyBounds(rect);
        RectF rectF2 = this.e;
        rectF2.set(rect);
        o oVar2 = this.f4951o;
        q qVar = this.f4940a;
        Path path = this.c;
        qVar.a(oVar2, null, 1.0f, rectF2, null, path);
        o3.c.e(outline, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        o oVar = this.f4951o;
        Rect bounds = getBounds();
        RectF rectF = this.f4942f;
        rectF.set(bounds);
        if (!oVar.f(rectF)) {
            return true;
        }
        int iRound = Math.round(this.f4944h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f4952p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f4950n = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f4952p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f4949m)) != this.f4949m) {
            this.f4950n = true;
            this.f4949m = colorForState;
        }
        if (this.f4950n) {
            invalidateSelf();
        }
        return this.f4950n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i9) {
        this.f4941b.setAlpha(i9);
        invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f4941b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
