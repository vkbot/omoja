package z3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Region$Op;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.os.Build$VERSION;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class k extends Drawable implements TintAwareDrawable, z {
    public static final Paint G;
    public static final j[] H;
    public o A;
    public SpringForce B;
    public final SpringAnimation[] C;
    public float[] D;
    public float[] E;
    public i F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f6228b;
    public h c;
    public final x[] d;
    public final x[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BitSet f6229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f6231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Matrix f6232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f6233j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Path f6234k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final RectF f6235l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final RectF f6236m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Region f6237n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Region f6238o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Paint f6239p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Paint f6240q;
    public final y3.a r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final g f6241s;
    public final q t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PorterDuffColorFilter f6242u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public PorterDuffColorFilter f6243v;
    public int w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final RectF f6244x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f6245y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f6246z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Paint paint = new Paint(1);
        G = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff$Mode.DST_OUT));
        H = new j[4];
        int i9 = 0;
        while (true) {
            j[] jVarArr = H;
            if (i9 >= jVarArr.length) {
                return;
            }
            jVarArr[i9] = new j(i9);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(h hVar) {
        this.f6228b = new g(this);
        this.d = new x[4];
        this.e = new x[4];
        this.f6229f = new BitSet(8);
        this.f6232i = new Matrix();
        this.f6233j = new Path();
        this.f6234k = new Path();
        this.f6235l = new RectF();
        this.f6236m = new RectF();
        this.f6237n = new Region();
        this.f6238o = new Region();
        Paint paint = new Paint(1);
        this.f6239p = paint;
        Paint paint2 = new Paint(1);
        this.f6240q = paint2;
        this.r = new y3.a();
        this.t = Looper.getMainLooper().getThread() == Thread.currentThread() ? p.f6267a : new q();
        this.f6244x = new RectF();
        this.f6245y = true;
        this.f6246z = true;
        this.C = new SpringAnimation[4];
        this.c = hVar;
        paint2.setStyle(Paint$Style.STROKE);
        paint.setStyle(Paint$Style.FILL);
        w();
        u(getState());
        this.f6241s = new g(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float c(RectF rectF, o oVar, float[] fArr) {
        if (fArr == null) {
            if (oVar.f(rectF)) {
                return oVar.e.a(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f8 = fArr[0];
            for (int i9 = 1; i9 < fArr.length; i9++) {
                if (fArr[i9] != f8) {
                    return -1.0f;
                }
            }
        }
        if (oVar.e()) {
            return fArr[0];
        }
        return -1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(RectF rectF, Path path) {
        h hVar = this.c;
        this.t.a(hVar.f6213a, this.D, hVar.f6219j, rectF, this.f6241s, path);
        if (this.c.f6218i != 1.0f) {
            Matrix matrix = this.f6232i;
            matrix.reset();
            float f8 = this.c.f6218i;
            matrix.setScale(f8, f8, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f6244x, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int d(int i9) {
        int i10;
        h hVar = this.c;
        float f8 = hVar.f6223n + 0.0f + hVar.f6222m;
        p3.a aVar = hVar.c;
        if (aVar == null || !aVar.f4583a || ColorUtils.setAlphaComponent(i9, 255) != aVar.d) {
            return i9;
        }
        float f9 = aVar.e;
        float fMin = (f9 <= 0.0f || f8 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f8 / f9)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i9);
        int iC = m3.a.c(fMin, ColorUtils.setAlphaComponent(i9, 255), aVar.f4584b);
        if (fMin > 0.0f && (i10 = aVar.c) != 0) {
            iC = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i10, p3.a.f4582f), iC);
        }
        return ColorUtils.setAlphaComponent(iC, iAlpha);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.f6242u;
        Paint paint2 = this.f6239p;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i9 = this.c.f6221l;
        paint2.setAlpha(((i9 + (i9 >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.f6243v;
        Paint paint3 = this.f6240q;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.c.f6220k);
        int alpha2 = paint3.getAlpha();
        int i10 = this.c.f6221l;
        paint3.setAlpha(((i10 + (i10 >>> 7)) * alpha2) >>> 8);
        Paint$Style paint$Style = this.c.f6226q;
        if (paint$Style == Paint$Style.FILL_AND_STROKE || paint$Style == Paint$Style.FILL) {
            boolean z8 = this.f6230g;
            paint = paint2;
            Path path = this.f6233j;
            if (z8) {
                b(h(), path);
                this.f6230g = false;
            }
            h hVar = this.c;
            hVar.getClass();
            if (hVar.f6224o > 0 && !n() && !path.isConvex() && Build$VERSION.SDK_INT < 29) {
                canvas.save();
                double d = 0;
                canvas.translate((int) (Math.sin(Math.toRadians(d)) * ((double) this.c.f6225p)), (int) (Math.cos(Math.toRadians(d)) * ((double) this.c.f6225p)));
                if (this.f6245y) {
                    RectF rectF = this.f6244x;
                    int iWidth = (int) (rectF.width() - getBounds().width());
                    int iHeight = (int) (rectF.height() - getBounds().height());
                    if (iWidth < 0 || iHeight < 0) {
                        j1.i.l("Invalid shadow bounds. Check that the treatments result in a valid path.");
                        return;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.c.f6224o * 2) + ((int) rectF.width()) + iWidth, (this.c.f6224o * 2) + ((int) rectF.height()) + iHeight, Bitmap$Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    float f8 = (getBounds().left - this.c.f6224o) - iWidth;
                    float f9 = (getBounds().top - this.c.f6224o) - iHeight;
                    canvas2.translate(-f8, -f9);
                    e(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f8, f9, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    e(canvas);
                    canvas.restore();
                }
            }
            f(canvas, paint, path, this.c.f6213a, this.D, h());
        } else {
            paint = paint2;
        }
        if (l()) {
            if (this.f6231h) {
                o oVar = this.c.f6213a;
                n nVarG = oVar.g();
                d dVar = oVar.e;
                g gVar = this.f6228b;
                nVarG.e = gVar.a(dVar);
                nVarG.f6250f = gVar.a(oVar.f6260f);
                nVarG.f6252h = gVar.a(oVar.f6262h);
                nVarG.f6251g = gVar.a(oVar.f6261g);
                this.A = nVarG.a();
                float[] fArr = this.D;
                if (fArr != null) {
                    if (this.E == null) {
                        this.E = new float[fArr.length];
                    }
                    float fJ = j();
                    int i11 = 0;
                    while (true) {
                        float[] fArr2 = this.D;
                        if (i11 >= fArr2.length) {
                            break;
                        }
                        this.E[i11] = Math.max(0.0f, fArr2[i11] - fJ);
                        i11++;
                    }
                } else {
                    this.E = null;
                }
                o oVar2 = this.A;
                float[] fArr3 = this.E;
                float f10 = this.c.f6219j;
                RectF rectFH = h();
                RectF rectF2 = this.f6236m;
                rectF2.set(rectFH);
                float fJ2 = j();
                rectF2.inset(fJ2, fJ2);
                this.t.a(oVar2, fArr3, f10, rectF2, null, this.f6234k);
                this.f6231h = false;
            }
            g(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Canvas canvas) {
        if (this.f6229f.cardinality() > 0) {
            Log.w("k", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i9 = this.c.f6225p;
        Path path = this.f6233j;
        y3.a aVar = this.r;
        if (i9 != 0) {
            canvas.drawPath(path, aVar.f6127a);
        }
        for (int i10 = 0; i10 < 4; i10++) {
            x xVar = this.d[i10];
            int i11 = this.c.f6224o;
            Matrix matrix = x.f6283b;
            xVar.a(matrix, aVar, i11, canvas);
            this.e[i10].a(matrix, aVar, this.c.f6224o, canvas);
        }
        if (this.f6245y) {
            double d = 0;
            int iSin = (int) (Math.sin(Math.toRadians(d)) * ((double) this.c.f6225p));
            int iCos = (int) (Math.cos(Math.toRadians(d)) * ((double) this.c.f6225p));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, G);
            canvas.translate(iSin, iCos);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(Canvas canvas, Paint paint, Path path, o oVar, float[] fArr, RectF rectF) {
        float fC = c(rectF, oVar, fArr);
        if (fC < 0.0f) {
            canvas.drawPath(path, paint);
        } else {
            float f8 = fC * this.c.f6219j;
            canvas.drawRoundRect(rectF, f8, f8, paint);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g(Canvas canvas) {
        o oVar = this.A;
        float[] fArr = this.E;
        RectF rectFH = h();
        RectF rectF = this.f6236m;
        rectF.set(rectFH);
        float fJ = j();
        rectF.inset(fJ, fJ);
        f(canvas, this.f6240q, this.f6234k, oVar, fArr, rectF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.c.f6221l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final Drawable$ConstantState getConstantState() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.c.getClass();
        RectF rectFH = h();
        if (rectFH.isEmpty()) {
            return;
        }
        float fC = c(rectFH, this.c.f6213a, this.D);
        if (fC >= 0.0f) {
            outline.setRoundRect(getBounds(), fC * this.c.f6219j);
            return;
        }
        boolean z8 = this.f6230g;
        Path path = this.f6233j;
        if (z8) {
            b(rectFH, path);
            this.f6230g = false;
        }
        o3.c.e(outline, path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.c.f6217h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f6237n;
        region.set(bounds);
        RectF rectFH = h();
        Path path = this.f6233j;
        b(rectFH, path);
        Region region2 = this.f6238o;
        region2.setPath(path, region);
        region.op(region2, Region$Op.DIFFERENCE);
        return region;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RectF h() {
        Rect bounds = getBounds();
        RectF rectF = this.f6235l;
        rectF.set(bounds);
        return rectF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float i() {
        float[] fArr = this.D;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF rectFH = h();
        o oVar = this.c.f6213a;
        q qVar = this.t;
        qVar.getClass();
        float fA = oVar.e.a(rectFH);
        o oVar2 = this.c.f6213a;
        qVar.getClass();
        float fA2 = oVar2.f6262h.a(rectFH) + fA;
        o oVar3 = this.c.f6213a;
        qVar.getClass();
        float fA3 = fA2 - oVar3.f6261g.a(rectFH);
        o oVar4 = this.c.f6213a;
        qVar.getClass();
        return (fA3 - oVar4.f6260f.a(rectFH)) / 2.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f6230g = true;
        this.f6231h = true;
        super.invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.c.f6215f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.c.getClass();
        ColorStateList colorStateList2 = this.c.e;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.c.d;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        b0 b0Var = this.c.f6214b;
        return b0Var != null && b0Var.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float j() {
        if (l()) {
            return this.f6240q.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float k() {
        float[] fArr = this.D;
        return fArr != null ? fArr[3] : this.c.f6213a.e.a(h());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean l() {
        Paint$Style paint$Style = this.c.f6226q;
        return (paint$Style == Paint$Style.FILL_AND_STROKE || paint$Style == Paint$Style.STROKE) && this.f6240q.getStrokeWidth() > 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(Context context) {
        this.c.c = new p3.a(context);
        x();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.c = new h(this.c);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean n() {
        if (!this.c.f6213a.f(h())) {
            float[] fArr = this.D;
            if (fArr != null) {
                if (fArr.length > 1) {
                    float f8 = fArr[0];
                    for (int i9 = 1; i9 < fArr.length; i9++) {
                        if (fArr[i9] == f8) {
                        }
                    }
                    if (this.c.f6213a.e()) {
                    }
                } else if (this.c.f6213a.e()) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o(SpringForce springForce) {
        if (this.B == springForce) {
            return;
        }
        this.B = springForce;
        int i9 = 0;
        while (true) {
            SpringAnimation[] springAnimationArr = this.C;
            if (i9 >= springAnimationArr.length) {
                v(getState(), true);
                invalidateSelf();
                return;
            } else {
                if (springAnimationArr[i9] == null) {
                    springAnimationArr[i9] = new SpringAnimation(this, H[i9]);
                }
                springAnimationArr[i9].setSpring(new SpringForce().setDampingRatio(springForce.getDampingRatio()).setStiffness(springForce.getStiffness()));
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f6230g = true;
        this.f6231h = true;
        super.onBoundsChange(rect);
        if (this.c.f6214b != null && !rect.isEmpty()) {
            v(getState(), this.f6246z);
        }
        this.f6246z = rect.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable, s3.i
    public boolean onStateChange(int[] iArr) {
        if (this.c.f6214b != null) {
            v(iArr, false);
        }
        boolean z8 = u(iArr) || w();
        if (z8) {
            invalidateSelf();
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(float f8) {
        h hVar = this.c;
        if (hVar.f6223n != f8) {
            hVar.f6223n = f8;
            x();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q(ColorStateList colorStateList) {
        h hVar = this.c;
        if (hVar.d != colorStateList) {
            hVar.d = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(float f8) {
        h hVar = this.c;
        if (hVar.f6219j != f8) {
            hVar.f6219j = f8;
            this.f6230g = true;
            this.f6231h = true;
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        this.r.a(-12303292);
        this.c.getClass();
        super.invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        h hVar = this.c;
        if (hVar.f6221l != i9) {
            hVar.f6221l = i9;
            super.invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.c.getClass();
        super.invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.z
    public final void setShapeAppearanceModel(o oVar) {
        h hVar = this.c;
        hVar.f6213a = oVar;
        hVar.f6214b = null;
        this.D = null;
        this.E = null;
        invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTint(int i9) {
        setTintList(ColorStateList.valueOf(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.c.f6215f = colorStateList;
        w();
        super.invalidateSelf();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff$Mode porterDuff$Mode) {
        h hVar = this.c;
        if (hVar.f6216g != porterDuff$Mode) {
            hVar.f6216g = porterDuff$Mode;
            w();
            super.invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(b0 b0Var) {
        h hVar = this.c;
        if (hVar.f6214b != b0Var) {
            hVar.f6214b = b0Var;
            v(getState(), true);
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean u(int[] iArr) {
        boolean z8;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.c.d == null || color2 == (colorForState2 = this.c.d.getColorForState(iArr, (color2 = (paint2 = this.f6239p).getColor())))) {
            z8 = false;
        } else {
            paint2.setColor(colorForState2);
            z8 = true;
        }
        if (this.c.e == null || color == (colorForState = this.c.e.getColorForState(iArr, (color = (paint = this.f6240q).getColor())))) {
            return z8;
        }
        paint.setColor(colorForState);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(int[] iArr, boolean z8) {
        o oVarA;
        d dVar;
        int i9;
        RectF rectFH = h();
        if (this.c.f6214b == null || rectFH.isEmpty()) {
            return;
        }
        boolean z9 = z8 | (this.B == null);
        if (this.D == null) {
            this.D = new float[4];
        }
        b0 b0Var = this.c.f6214b;
        o[] oVarArr = b0Var.d;
        int i10 = b0Var.f6201a;
        int[][] iArr2 = b0Var.c;
        a0 a0Var = b0Var.f6205h;
        a0 a0Var2 = b0Var.f6204g;
        a0 a0Var3 = b0Var.f6203f;
        a0 a0Var4 = b0Var.e;
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                i11 = -1;
                break;
            } else if (StateSet.stateSetMatches(iArr2[i11], iArr)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int i12 = 0;
            while (true) {
                if (i12 >= i10) {
                    i9 = -1;
                    break;
                } else {
                    if (StateSet.stateSetMatches(iArr2[i12], iArr3)) {
                        i9 = i12;
                        break;
                    }
                    i12++;
                }
            }
            i11 = i9;
        }
        if (a0Var4 == null && a0Var3 == null && a0Var2 == null && a0Var == null) {
            oVarA = oVarArr[i11];
        } else {
            n nVarG = oVarArr[i11].g();
            if (a0Var4 != null) {
                nVarG.e = a0Var4.c(iArr);
            }
            if (a0Var3 != null) {
                nVarG.f6250f = a0Var3.c(iArr);
            }
            if (a0Var2 != null) {
                nVarG.f6252h = a0Var2.c(iArr);
            }
            if (a0Var != null) {
                nVarG.f6251g = a0Var.c(iArr);
            }
            oVarA = nVarG.a();
        }
        int i13 = 0;
        while (i13 < 4) {
            this.t.getClass();
            if (i13 == 1) {
                dVar = oVarA.f6261g;
            } else if (i13 != 2) {
                dVar = i13 != 3 ? oVarA.f6260f : oVarA.e;
            } else {
                dVar = oVarA.f6262h;
            }
            float fA = dVar.a(rectFH);
            if (z9) {
                this.D[i13] = fA;
            }
            SpringAnimation[] springAnimationArr = this.C;
            SpringAnimation springAnimation = springAnimationArr[i13];
            if (springAnimation != null) {
                springAnimation.animateToFinalPosition(fA);
                if (z9) {
                    springAnimationArr[i13].skipToEnd();
                }
            }
            i13++;
        }
        if (z9) {
            invalidateSelf();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean w() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f6242u;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f6243v;
        h hVar = this.c;
        ColorStateList colorStateList = hVar.f6215f;
        PorterDuff$Mode porterDuff$Mode = hVar.f6216g;
        if (colorStateList == null || porterDuff$Mode == null) {
            int color = this.f6239p.getColor();
            int iD = d(color);
            this.w = iD;
            porterDuffColorFilter = iD != color ? new PorterDuffColorFilter(iD, PorterDuff$Mode.SRC_IN) : null;
        } else {
            int iD2 = d(colorStateList.getColorForState(getState(), 0));
            this.w = iD2;
            porterDuffColorFilter = new PorterDuffColorFilter(iD2, porterDuff$Mode);
        }
        this.f6242u = porterDuffColorFilter;
        this.c.getClass();
        this.f6243v = null;
        this.c.getClass();
        return (ObjectsCompat.equals(porterDuffColorFilter2, this.f6242u) && ObjectsCompat.equals(porterDuffColorFilter3, this.f6243v)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x() {
        h hVar = this.c;
        float f8 = hVar.f6223n + 0.0f;
        hVar.f6224o = (int) Math.ceil(0.75f * f8);
        this.c.f6225p = (int) Math.ceil(f8 * 0.25f);
        w();
        super.invalidateSelf();
    }

    public k(Context context, AttributeSet attributeSet, int i9, int i10) {
        this(o.c(context, attributeSet, i9, i10).a());
    }

    public k(o oVar) {
        this(new h(oVar));
    }

    public k() {
        this(new o());
    }
}
