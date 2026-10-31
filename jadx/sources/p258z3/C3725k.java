package p258z3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import p099j1.C1929i;
import p134m3.AbstractC2381a;
import p154o3.AbstractC2585c;
import p166p3.C2968a;
import p248y3.C3644a;

/* JADX INFO: renamed from: z3.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3725k extends Drawable implements TintAwareDrawable, InterfaceC3740z {

    /* JADX INFO: renamed from: G */
    public static final Paint f11039G;

    /* JADX INFO: renamed from: H */
    public static final C3724j[] f11040H;

    /* JADX INFO: renamed from: A */
    public C3729o f11041A;

    /* JADX INFO: renamed from: B */
    public SpringForce f11042B;

    /* JADX INFO: renamed from: C */
    public final SpringAnimation[] f11043C;

    /* JADX INFO: renamed from: D */
    public float[] f11044D;

    /* JADX INFO: renamed from: E */
    public float[] f11045E;

    /* JADX INFO: renamed from: F */
    public InterfaceC3723i f11046F;

    /* JADX INFO: renamed from: b */
    public final C3721g f11047b;

    /* JADX INFO: renamed from: c */
    public C3722h f11048c;

    /* JADX INFO: renamed from: d */
    public final AbstractC3738x[] f11049d;

    /* JADX INFO: renamed from: e */
    public final AbstractC3738x[] f11050e;

    /* JADX INFO: renamed from: f */
    public final BitSet f11051f;

    /* JADX INFO: renamed from: g */
    public boolean f11052g;

    /* JADX INFO: renamed from: h */
    public boolean f11053h;

    /* JADX INFO: renamed from: i */
    public final Matrix f11054i;

    /* JADX INFO: renamed from: j */
    public final Path f11055j;

    /* JADX INFO: renamed from: k */
    public final Path f11056k;

    /* JADX INFO: renamed from: l */
    public final RectF f11057l;

    /* JADX INFO: renamed from: m */
    public final RectF f11058m;

    /* JADX INFO: renamed from: n */
    public final Region f11059n;

    /* JADX INFO: renamed from: o */
    public final Region f11060o;

    /* JADX INFO: renamed from: p */
    public final Paint f11061p;

    /* JADX INFO: renamed from: q */
    public final Paint f11062q;

    /* JADX INFO: renamed from: r */
    public final C3644a f11063r;

    /* JADX INFO: renamed from: s */
    public final C3721g f11064s;

    /* JADX INFO: renamed from: t */
    public final C3731q f11065t;

    /* JADX INFO: renamed from: u */
    public PorterDuffColorFilter f11066u;

    /* JADX INFO: renamed from: v */
    public PorterDuffColorFilter f11067v;

    /* JADX INFO: renamed from: w */
    public int f11068w;

    /* JADX INFO: renamed from: x */
    public final RectF f11069x;

    /* JADX INFO: renamed from: y */
    public boolean f11070y;

    /* JADX INFO: renamed from: z */
    public boolean f11071z;

    static {
        Paint paint = new Paint(1);
        f11039G = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        f11040H = new C3724j[4];
        int i10 = 0;
        while (true) {
            C3724j[] c3724jArr = f11040H;
            if (i10 >= c3724jArr.length) {
                return;
            }
            c3724jArr[i10] = new C3724j(i10);
            i10++;
        }
    }

    public C3725k(C3722h c3722h) {
        this.f11047b = new C3721g(this);
        this.f11049d = new AbstractC3738x[4];
        this.f11050e = new AbstractC3738x[4];
        this.f11051f = new BitSet(8);
        this.f11054i = new Matrix();
        this.f11055j = new Path();
        this.f11056k = new Path();
        this.f11057l = new RectF();
        this.f11058m = new RectF();
        this.f11059n = new Region();
        this.f11060o = new Region();
        Paint paint = new Paint(1);
        this.f11061p = paint;
        Paint paint2 = new Paint(1);
        this.f11062q = paint2;
        this.f11063r = new C3644a();
        this.f11065t = Looper.getMainLooper().getThread() == Thread.currentThread() ? AbstractC3730p.f11098a : new C3731q();
        this.f11069x = new RectF();
        this.f11070y = true;
        this.f11071z = true;
        this.f11043C = new SpringAnimation[4];
        this.f11048c = c3722h;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m5954w();
        m5952u(getState());
        this.f11064s = new C3721g(this);
    }

    /* JADX INFO: renamed from: c */
    public static float m5934c(RectF rectF, C3729o c3729o, float[] fArr) {
        if (fArr == null) {
            if (c3729o.m5962f(rectF)) {
                return c3729o.f11090e.mo5920a(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f8 = fArr[0];
            for (int i10 = 1; i10 < fArr.length; i10++) {
                if (fArr[i10] != f8) {
                    return -1.0f;
                }
            }
        }
        if (c3729o.m5961e()) {
            return fArr[0];
        }
        return -1.0f;
    }

    /* JADX INFO: renamed from: b */
    public final void m5935b(RectF rectF, Path path) {
        C3722h c3722h = this.f11048c;
        this.f11065t.m5964a(c3722h.f11021a, this.f11044D, c3722h.f11030j, rectF, this.f11064s, path);
        if (this.f11048c.f11029i != 1.0f) {
            Matrix matrix = this.f11054i;
            matrix.reset();
            float f8 = this.f11048c.f11029i;
            matrix.setScale(f8, f8, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f11069x, true);
    }

    /* JADX INFO: renamed from: d */
    public final int m5936d(int i10) {
        int i11;
        C3722h c3722h = this.f11048c;
        float f8 = c3722h.f11034n + 0.0f + c3722h.f11033m;
        C2968a c2968a = c3722h.f11023c;
        if (c2968a == null || !c2968a.f8253a || ColorUtils.setAlphaComponent(i10, 255) != c2968a.f8256d) {
            return i10;
        }
        float f10 = c2968a.f8257e;
        float fMin = (f10 <= 0.0f || f8 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f8 / f10)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i10);
        int iM3748c = AbstractC2381a.m3748c(fMin, ColorUtils.setAlphaComponent(i10, 255), c2968a.f8254b);
        if (fMin > 0.0f && (i11 = c2968a.f8255c) != 0) {
            iM3748c = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i11, C2968a.f8252f), iM3748c);
        }
        return ColorUtils.setAlphaComponent(iM3748c, iAlpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.f11066u;
        Paint paint2 = this.f11061p;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i10 = this.f11048c.f11032l;
        paint2.setAlpha(((i10 + (i10 >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.f11067v;
        Paint paint3 = this.f11062q;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.f11048c.f11031k);
        int alpha2 = paint3.getAlpha();
        int i11 = this.f11048c.f11032l;
        paint3.setAlpha(((i11 + (i11 >>> 7)) * alpha2) >>> 8);
        Paint.Style style = this.f11048c.f11037q;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            boolean z9 = this.f11052g;
            paint = paint2;
            Path path = this.f11055j;
            if (z9) {
                m5935b(m5939h(), path);
                this.f11052g = false;
            }
            C3722h c3722h = this.f11048c;
            c3722h.getClass();
            if (c3722h.f11035o > 0 && !m5945n() && !path.isConvex() && Build.VERSION.SDK_INT < 29) {
                canvas.save();
                double d = 0;
                canvas.translate((int) (Math.sin(Math.toRadians(d)) * ((double) this.f11048c.f11036p)), (int) (Math.cos(Math.toRadians(d)) * ((double) this.f11048c.f11036p)));
                if (this.f11070y) {
                    RectF rectF = this.f11069x;
                    int iWidth = (int) (rectF.width() - getBounds().width());
                    int iHeight = (int) (rectF.height() - getBounds().height());
                    if (iWidth < 0 || iHeight < 0) {
                        C1929i.m3030l("Invalid shadow bounds. Check that the treatments result in a valid path.");
                        return;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f11048c.f11035o * 2) + ((int) rectF.width()) + iWidth, (this.f11048c.f11035o * 2) + ((int) rectF.height()) + iHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    float f8 = (getBounds().left - this.f11048c.f11035o) - iWidth;
                    float f10 = (getBounds().top - this.f11048c.f11035o) - iHeight;
                    canvas2.translate(-f8, -f10);
                    m5937e(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f8, f10, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    m5937e(canvas);
                    canvas.restore();
                }
            }
            m5938f(canvas, paint, path, this.f11048c.f11021a, this.f11044D, m5939h());
        } else {
            paint = paint2;
        }
        if (m5943l()) {
            if (this.f11053h) {
                C3729o c3729o = this.f11048c.f11021a;
                C3728n c3728nM5963g = c3729o.m5963g();
                InterfaceC3717d interfaceC3717d = c3729o.f11090e;
                C3721g c3721g = this.f11047b;
                c3728nM5963g.f11077e = c3721g.m5933a(interfaceC3717d);
                c3728nM5963g.f11078f = c3721g.m5933a(c3729o.f11091f);
                c3728nM5963g.f11080h = c3721g.m5933a(c3729o.f11093h);
                c3728nM5963g.f11079g = c3721g.m5933a(c3729o.f11092g);
                this.f11041A = c3728nM5963g.m5956a();
                float[] fArr = this.f11044D;
                if (fArr != null) {
                    if (this.f11045E == null) {
                        this.f11045E = new float[fArr.length];
                    }
                    float fM5941j = m5941j();
                    int i12 = 0;
                    while (true) {
                        float[] fArr2 = this.f11044D;
                        if (i12 >= fArr2.length) {
                            break;
                        }
                        this.f11045E[i12] = Math.max(0.0f, fArr2[i12] - fM5941j);
                        i12++;
                    }
                } else {
                    this.f11045E = null;
                }
                C3729o c3729o2 = this.f11041A;
                float[] fArr3 = this.f11045E;
                float f11 = this.f11048c.f11030j;
                RectF rectFM5939h = m5939h();
                RectF rectF2 = this.f11058m;
                rectF2.set(rectFM5939h);
                float fM5941j2 = m5941j();
                rectF2.inset(fM5941j2, fM5941j2);
                this.f11065t.m5964a(c3729o2, fArr3, f11, rectF2, null, this.f11056k);
                this.f11053h = false;
            }
            mo2532g(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    /* JADX INFO: renamed from: e */
    public final void m5937e(Canvas canvas) {
        if (this.f11051f.cardinality() > 0) {
            Log.w("k", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i10 = this.f11048c.f11036p;
        Path path = this.f11055j;
        C3644a c3644a = this.f11063r;
        if (i10 != 0) {
            canvas.drawPath(path, c3644a.f10829a);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            AbstractC3738x abstractC3738x = this.f11049d[i11];
            int i12 = this.f11048c.f11035o;
            Matrix matrix = AbstractC3738x.f11127b;
            abstractC3738x.mo5966a(matrix, c3644a, i12, canvas);
            this.f11050e[i11].mo5966a(matrix, c3644a, this.f11048c.f11035o, canvas);
        }
        if (this.f11070y) {
            double d = 0;
            int iSin = (int) (Math.sin(Math.toRadians(d)) * ((double) this.f11048c.f11036p));
            int iCos = (int) (Math.cos(Math.toRadians(d)) * ((double) this.f11048c.f11036p));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, f11039G);
            canvas.translate(iSin, iCos);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m5938f(Canvas canvas, Paint paint, Path path, C3729o c3729o, float[] fArr, RectF rectF) {
        float fM5934c = m5934c(rectF, c3729o, fArr);
        if (fM5934c < 0.0f) {
            canvas.drawPath(path, paint);
        } else {
            float f8 = fM5934c * this.f11048c.f11030j;
            canvas.drawRoundRect(rectF, f8, f8, paint);
        }
    }

    /* JADX INFO: renamed from: g */
    public void mo2532g(Canvas canvas) {
        C3729o c3729o = this.f11041A;
        float[] fArr = this.f11045E;
        RectF rectFM5939h = m5939h();
        RectF rectF = this.f11058m;
        rectF.set(rectFM5939h);
        float fM5941j = m5941j();
        rectF.inset(fM5941j, fM5941j);
        m5938f(canvas, this.f11062q, this.f11056k, c3729o, fArr, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11048c.f11032l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f11048c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f11048c.getClass();
        RectF rectFM5939h = m5939h();
        if (rectFM5939h.isEmpty()) {
            return;
        }
        float fM5934c = m5934c(rectFM5939h, this.f11048c.f11021a, this.f11044D);
        if (fM5934c >= 0.0f) {
            outline.setRoundRect(getBounds(), fM5934c * this.f11048c.f11030j);
            return;
        }
        boolean z9 = this.f11052g;
        Path path = this.f11055j;
        if (z9) {
            m5935b(rectFM5939h, path);
            this.f11052g = false;
        }
        AbstractC2585c.m4030e(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f11048c.f11028h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f11059n;
        region.set(bounds);
        RectF rectFM5939h = m5939h();
        Path path = this.f11055j;
        m5935b(rectFM5939h, path);
        Region region2 = this.f11060o;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    /* JADX INFO: renamed from: h */
    public final RectF m5939h() {
        Rect bounds = getBounds();
        RectF rectF = this.f11057l;
        rectF.set(bounds);
        return rectF;
    }

    /* JADX INFO: renamed from: i */
    public final float m5940i() {
        float[] fArr = this.f11044D;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF rectFM5939h = m5939h();
        C3729o c3729o = this.f11048c.f11021a;
        C3731q c3731q = this.f11065t;
        c3731q.getClass();
        float fMo5920a = c3729o.f11090e.mo5920a(rectFM5939h);
        C3729o c3729o2 = this.f11048c.f11021a;
        c3731q.getClass();
        float fMo5920a2 = c3729o2.f11093h.mo5920a(rectFM5939h) + fMo5920a;
        C3729o c3729o3 = this.f11048c.f11021a;
        c3731q.getClass();
        float fMo5920a3 = fMo5920a2 - c3729o3.f11092g.mo5920a(rectFM5939h);
        C3729o c3729o4 = this.f11048c.f11021a;
        c3731q.getClass();
        return (fMo5920a3 - c3729o4.f11091f.mo5920a(rectFM5939h)) / 2.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f11052g = true;
        this.f11053h = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f11048c.f11026f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.f11048c.getClass();
        ColorStateList colorStateList2 = this.f11048c.f11025e;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f11048c.f11024d;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        C3714b0 c3714b0 = this.f11048c.f11022b;
        return c3714b0 != null && c3714b0.m5928d();
    }

    /* JADX INFO: renamed from: j */
    public final float m5941j() {
        if (m5943l()) {
            return this.f11062q.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: k */
    public final float m5942k() {
        float[] fArr = this.f11044D;
        return fArr != null ? fArr[3] : this.f11048c.f11021a.f11090e.mo5920a(m5939h());
    }

    /* JADX INFO: renamed from: l */
    public final boolean m5943l() {
        Paint.Style style = this.f11048c.f11037q;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f11062q.getStrokeWidth() > 0.0f;
    }

    /* JADX INFO: renamed from: m */
    public final void m5944m(Context context) {
        this.f11048c.f11023c = new C2968a(context);
        m5955x();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f11048c = new C3722h(this.f11048c);
        return this;
    }

    /* JADX INFO: renamed from: n */
    public final boolean m5945n() {
        if (!this.f11048c.f11021a.m5962f(m5939h())) {
            float[] fArr = this.f11044D;
            if (fArr != null) {
                if (fArr.length > 1) {
                    float f8 = fArr[0];
                    for (int i10 = 1; i10 < fArr.length; i10++) {
                        if (fArr[i10] == f8) {
                        }
                    }
                    if (this.f11048c.f11021a.m5961e()) {
                    }
                } else if (this.f11048c.f11021a.m5961e()) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: renamed from: o */
    public final void m5946o(SpringForce springForce) {
        if (this.f11042B == springForce) {
            return;
        }
        this.f11042B = springForce;
        int i10 = 0;
        while (true) {
            SpringAnimation[] springAnimationArr = this.f11043C;
            if (i10 >= springAnimationArr.length) {
                m5953v(getState(), true);
                invalidateSelf();
                return;
            } else {
                if (springAnimationArr[i10] == null) {
                    springAnimationArr[i10] = new SpringAnimation(this, f11040H[i10]);
                }
                springAnimationArr[i10].setSpring(new SpringForce().setDampingRatio(springForce.getDampingRatio()).setStiffness(springForce.getStiffness()));
                i10++;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f11052g = true;
        this.f11053h = true;
        super.onBoundsChange(rect);
        if (this.f11048c.f11022b != null && !rect.isEmpty()) {
            m5953v(getState(), this.f11071z);
        }
        this.f11071z = rect.isEmpty();
    }

    @Override // android.graphics.drawable.Drawable, p192s3.InterfaceC3195i
    public boolean onStateChange(int[] iArr) {
        if (this.f11048c.f11022b != null) {
            m5953v(iArr, false);
        }
        boolean z9 = m5952u(iArr) || m5954w();
        if (z9) {
            invalidateSelf();
        }
        return z9;
    }

    /* JADX INFO: renamed from: p */
    public final void m5947p(float f8) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11034n != f8) {
            c3722h.f11034n = f8;
            m5955x();
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m5948q(ColorStateList colorStateList) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11024d != colorStateList) {
            c3722h.f11024d = colorStateList;
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m5949r(float f8) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11030j != f8) {
            c3722h.f11030j = f8;
            this.f11052g = true;
            this.f11053h = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m5950s() {
        this.f11063r.m5832a(-12303292);
        this.f11048c.getClass();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11032l != i10) {
            c3722h.f11032l = i10;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f11048c.getClass();
        super.invalidateSelf();
    }

    @Override // p258z3.InterfaceC3740z
    public final void setShapeAppearanceModel(C3729o c3729o) {
        C3722h c3722h = this.f11048c;
        c3722h.f11021a = c3729o;
        c3722h.f11022b = null;
        this.f11044D = null;
        this.f11045E = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f11048c.f11026f = colorStateList;
        m5954w();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11027g != mode) {
            c3722h.f11027g = mode;
            m5954w();
            super.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m5951t(C3714b0 c3714b0) {
        C3722h c3722h = this.f11048c;
        if (c3722h.f11022b != c3714b0) {
            c3722h.f11022b = c3714b0;
            m5953v(getState(), true);
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: u */
    public final boolean m5952u(int[] iArr) {
        boolean z9;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f11048c.f11024d == null || color2 == (colorForState2 = this.f11048c.f11024d.getColorForState(iArr, (color2 = (paint2 = this.f11061p).getColor())))) {
            z9 = false;
        } else {
            paint2.setColor(colorForState2);
            z9 = true;
        }
        if (this.f11048c.f11025e == null || color == (colorForState = this.f11048c.f11025e.getColorForState(iArr, (color = (paint = this.f11062q).getColor())))) {
            return z9;
        }
        paint.setColor(colorForState);
        return true;
    }

    /* JADX INFO: renamed from: v */
    public final void m5953v(int[] iArr, boolean z9) {
        C3729o c3729oM5956a;
        InterfaceC3717d interfaceC3717d;
        int i10;
        RectF rectFM5939h = m5939h();
        if (this.f11048c.f11022b == null || rectFM5939h.isEmpty()) {
            return;
        }
        boolean z10 = z9 | (this.f11042B == null);
        if (this.f11044D == null) {
            this.f11044D = new float[4];
        }
        C3714b0 c3714b0 = this.f11048c.f11022b;
        C3729o[] c3729oArr = c3714b0.f11007d;
        int i11 = c3714b0.f11004a;
        int[][] iArr2 = c3714b0.f11006c;
        C3712a0 c3712a0 = c3714b0.f11011h;
        C3712a0 c3712a1 = c3714b0.f11010g;
        C3712a0 c3712a2 = c3714b0.f11009f;
        C3712a0 c3712a3 = c3714b0.f11008e;
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                i12 = -1;
                break;
            } else if (StateSet.stateSetMatches(iArr2[i12], iArr)) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int i13 = 0;
            while (true) {
                if (i13 >= i11) {
                    i10 = -1;
                    break;
                } else {
                    if (StateSet.stateSetMatches(iArr2[i13], iArr3)) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                }
            }
            i12 = i10;
        }
        if (c3712a3 == null && c3712a2 == null && c3712a1 == null && c3712a0 == null) {
            c3729oM5956a = c3729oArr[i12];
        } else {
            C3728n c3728nM5963g = c3729oArr[i12].m5963g();
            if (c3712a3 != null) {
                c3728nM5963g.f11077e = c3712a3.m5923c(iArr);
            }
            if (c3712a2 != null) {
                c3728nM5963g.f11078f = c3712a2.m5923c(iArr);
            }
            if (c3712a1 != null) {
                c3728nM5963g.f11080h = c3712a1.m5923c(iArr);
            }
            if (c3712a0 != null) {
                c3728nM5963g.f11079g = c3712a0.m5923c(iArr);
            }
            c3729oM5956a = c3728nM5963g.m5956a();
        }
        int i14 = 0;
        while (i14 < 4) {
            this.f11065t.getClass();
            if (i14 == 1) {
                interfaceC3717d = c3729oM5956a.f11092g;
            } else if (i14 != 2) {
                interfaceC3717d = i14 != 3 ? c3729oM5956a.f11091f : c3729oM5956a.f11090e;
            } else {
                interfaceC3717d = c3729oM5956a.f11093h;
            }
            float fMo5920a = interfaceC3717d.mo5920a(rectFM5939h);
            if (z10) {
                this.f11044D[i14] = fMo5920a;
            }
            SpringAnimation[] springAnimationArr = this.f11043C;
            SpringAnimation springAnimation = springAnimationArr[i14];
            if (springAnimation != null) {
                springAnimation.animateToFinalPosition(fMo5920a);
                if (z10) {
                    springAnimationArr[i14].skipToEnd();
                }
            }
            i14++;
        }
        if (z10) {
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: w */
    public final boolean m5954w() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f11066u;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f11067v;
        C3722h c3722h = this.f11048c;
        ColorStateList colorStateList = c3722h.f11026f;
        PorterDuff.Mode mode = c3722h.f11027g;
        if (colorStateList == null || mode == null) {
            int color = this.f11061p.getColor();
            int iM5936d = m5936d(color);
            this.f11068w = iM5936d;
            porterDuffColorFilter = iM5936d != color ? new PorterDuffColorFilter(iM5936d, PorterDuff.Mode.SRC_IN) : null;
        } else {
            int iM5936d2 = m5936d(colorStateList.getColorForState(getState(), 0));
            this.f11068w = iM5936d2;
            porterDuffColorFilter = new PorterDuffColorFilter(iM5936d2, mode);
        }
        this.f11066u = porterDuffColorFilter;
        this.f11048c.getClass();
        this.f11067v = null;
        this.f11048c.getClass();
        return (ObjectsCompat.equals(porterDuffColorFilter2, this.f11066u) && ObjectsCompat.equals(porterDuffColorFilter3, this.f11067v)) ? false : true;
    }

    /* JADX INFO: renamed from: x */
    public final void m5955x() {
        C3722h c3722h = this.f11048c;
        float f8 = c3722h.f11034n + 0.0f;
        c3722h.f11035o = (int) Math.ceil(0.75f * f8);
        this.f11048c.f11036p = (int) Math.ceil(f8 * 0.25f);
        m5954w();
        super.invalidateSelf();
    }

    public C3725k(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(C3729o.m5959c(context, attributeSet, i10, i11).m5956a());
    }

    public C3725k(C3729o c3729o) {
        this(new C3722h(c3729o));
    }

    public C3725k() {
        this(new C3729o());
    }
}
