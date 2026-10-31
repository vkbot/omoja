package w1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View$MeasureSpec;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class i extends e {
    public y1.b R;
    public final PointF S;
    public boolean T;
    public int U;
    public final Paint V;
    public final Paint W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Paint f5873a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final Path f5874b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f5875c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f5876d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public float f5877e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5878f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f5879g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f5880h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f5881i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final ArrayList f5882j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public g f5883k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final int f5884l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public List f5885m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f5886n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public float f5887o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public float f5888p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Function2 f5889q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public float f5890r0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.R = new y1.e(context);
        this.S = new PointF(0.5f, 0.5f);
        this.U = -1140893918;
        Paint paint = new Paint(1);
        this.V = paint;
        Paint paint2 = new Paint(1);
        this.W = paint2;
        Paint paint3 = new Paint(1);
        this.f5873a0 = paint3;
        this.f5874b0 = new Path();
        this.f5877e0 = g(9.0f);
        this.f5878f0 = -1;
        this.f5879g0 = 135;
        this.f5880h0 = 405;
        this.f5881i0 = 135;
        this.f5882j0 = new ArrayList();
        this.f5883k0 = g.NORMAL;
        this.f5885m0 = CollectionsKt.emptyList();
        this.f5886n0 = true;
        this.f5888p0 = g(3.0f) + getSpeedometerWidth();
        Paint$Style paint$Style = Paint$Style.STROKE;
        paint2.setStyle(paint$Style);
        paint3.setStyle(paint$Style);
        setMarkColor(-1);
        setMarkWidth(g(3.0f));
        setMarkStyle(x1.c.c);
        ImageSpeedometer imageSpeedometer = (ImageSpeedometer) this;
        imageSpeedometer.setBackgroundCircleColor(0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f.c, 0, 0);
            typedArrayObtainStyledAttributes.getClass();
            int i9 = typedArrayObtainStyledAttributes.getInt(13, -1);
            if (i9 != -1 && i9 != 0) {
                setSpeedometerMode(g.values()[i9]);
            }
            int i10 = typedArrayObtainStyledAttributes.getInt(3, -1);
            if (i10 != -1) {
                setIndicator(y1.a.values()[i10]);
            }
            setMarksNumber(typedArrayObtainStyledAttributes.getInt(11, this.f5875c0));
            setMarksPadding(typedArrayObtainStyledAttributes.getDimension(12, this.f5876d0));
            setMarkHeight(typedArrayObtainStyledAttributes.getDimension(8, this.f5877e0));
            setMarkWidth(typedArrayObtainStyledAttributes.getDimension(10, getMarkWidth()));
            setMarkColor(typedArrayObtainStyledAttributes.getColor(7, getMarkColor()));
            int i11 = typedArrayObtainStyledAttributes.getInt(9, -1);
            if (i11 != -1) {
                setMarkStyle(x1.c.values()[i11]);
            }
            setBackgroundCircleColor(typedArrayObtainStyledAttributes.getColor(0, this.f5878f0));
            this.f5879g0 = typedArrayObtainStyledAttributes.getInt(14, this.f5879g0);
            this.f5880h0 = typedArrayObtainStyledAttributes.getInt(2, this.f5880h0);
            y1.b bVar = this.R;
            bVar.h(typedArrayObtainStyledAttributes.getDimension(6, bVar.d));
            this.f5884l0 = (int) typedArrayObtainStyledAttributes.getDimension(1, this.f5884l0);
            setTickNumber(typedArrayObtainStyledAttributes.getInteger(15, this.f5885m0.size()));
            this.f5886n0 = typedArrayObtainStyledAttributes.getBoolean(17, this.f5886n0);
            setTickPadding(typedArrayObtainStyledAttributes.getDimension(16, this.f5888p0));
            y1.b bVar2 = this.R;
            bVar2.g(typedArrayObtainStyledAttributes.getColor(4, bVar2.e));
            this.T = typedArrayObtainStyledAttributes.getBoolean(19, this.T);
            this.U = typedArrayObtainStyledAttributes.getColor(5, this.U);
            int i12 = typedArrayObtainStyledAttributes.getInt(18, -1);
            if (i12 == 0) {
                setOnPrintTickLabel(new h(imageSpeedometer, 0));
            } else if (i12 == 1) {
                setOnPrintTickLabel(new h(imageSpeedometer, 1));
            }
            this.f5881i0 = this.f5879g0;
            typedArrayObtainStyledAttributes.recycle();
            o();
        }
        paint.setColor(this.f5878f0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getBackgroundCircleColor() {
        return this.f5878f0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getDegree() {
        return this.f5881i0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getEndDegree() {
        return this.f5880h0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getFulcrumX() {
        return this.S.x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getFulcrumY() {
        return this.S.y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y1.b getIndicator() {
        return this.R;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getIndicatorLightColor() {
        return this.U;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getInitTickPadding() {
        return this.f5887o0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMarkColor() {
        return this.f5873a0.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMarkHeight() {
        return this.f5877e0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Paint getMarkPaint() {
        return this.f5873a0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final x1.c getMarkStyle() {
        return this.f5873a0.getStrokeCap() == Paint$Cap.ROUND ? x1.c.f6024b : x1.c.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMarkWidth() {
        return this.f5873a0.getStrokeWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getMarksNumber() {
        return this.f5875c0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMarksPadding() {
        return this.f5876d0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Function2<Integer, Float, CharSequence> getOnPrintTickLabel() {
        return this.f5889q0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getSize() {
        g gVar = this.f5883k0;
        if (gVar == g.NORMAL) {
            return getWidth();
        }
        return gVar.d ? Math.max(getWidth(), getHeight()) : (Math.max(getWidth(), getHeight()) * 2) - (this.f5884l0 * 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getSizePa() {
        return getSize() - (getPadding() * 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g getSpeedometerMode() {
        return this.f5883k0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.e
    public float getSpeedometerWidth() {
        return super.getSpeedometerWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getStartDegree() {
        return this.f5879g0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getTickNumber() {
        return this.f5885m0.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getTickPadding() {
        return this.f5888p0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Float> getTicks() {
        return this.f5885m0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewBottom() {
        return (getHeight() * 0.5f) + getViewCenterY();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewCenterX() {
        int iOrdinal = this.f5883k0.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 3) {
                if (iOrdinal != 5) {
                    if (iOrdinal != 6 && iOrdinal != 7) {
                        if (iOrdinal != 8) {
                            return getSize() * 0.5f;
                        }
                    }
                }
            }
            return (getWidth() * 0.5f) + (getSize() * 0.5f);
        }
        return (getSize() * 0.5f) - (getWidth() * 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewCenterY() {
        switch (this.f5883k0.ordinal()) {
            case 2:
            case 5:
            case 6:
                return (getSize() * 0.5f) - (getHeight() * 0.5f);
            case 3:
            default:
                return getSize() * 0.5f;
            case 4:
            case 7:
            case 8:
                return (getHeight() * 0.5f) + (getSize() * 0.5f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewLeft() {
        return getViewCenterX() - (getWidth() * 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewRight() {
        return (getWidth() * 0.5f) + getViewCenterX();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getViewTop() {
        return getViewCenterY() - (getHeight() * 0.5f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        int i9 = this.f5879g0;
        if (i9 < 0) {
            j1.i.k("StartDegree can't be Negative");
            return;
        }
        int i10 = this.f5880h0;
        if (i10 < 0) {
            j1.i.k("EndDegree can't be Negative");
            return;
        }
        if (i9 >= i10) {
            j1.i.k("EndDegree must be bigger than StartDegree !");
            return;
        }
        if (i10 - i9 > 360) {
            j1.i.k("(EndDegree - StartDegree) must be smaller than 360 !");
            return;
        }
        g gVar = this.f5883k0;
        if (i9 < gVar.f5870b) {
            throw new IllegalArgumentException(("StartDegree must be bigger than " + this.f5883k0.f5870b + " in " + this.f5883k0 + " Mode !").toString());
        }
        if (i10 <= gVar.c) {
            return;
        }
        throw new IllegalArgumentException(("EndDegree must be smaller than " + this.f5883k0.c + " in " + this.f5883k0 + " Mode !").toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.e, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        this.f5881i0 = p(getCurrentSpeed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onMeasure(int i9, int i10) {
        int iG = (int) g(250.0f);
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i9);
        int size2 = View$MeasureSpec.getSize(i10);
        if (mode == 1073741824 && mode2 == 1073741824) {
            size = Math.min(size, size2);
        } else if (mode != 1073741824) {
            if (mode2 == 1073741824) {
                size = size2;
            } else if ((mode == 0 && mode2 == 0) || (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE)) {
                size = Math.min(iG, Math.min(size, size2));
            } else {
                size = mode == Integer.MIN_VALUE ? Math.min(iG, size) : Math.min(iG, size2);
            }
        }
        int iMax = Math.max(size, Math.max(getSuggestedMinimumWidth(), getSuggestedMinimumHeight()));
        g gVar = this.f5883k0;
        int i11 = gVar.e;
        int i12 = iMax / i11;
        int i13 = iMax / gVar.f5871f;
        if (gVar.d) {
            int i14 = this.f5884l0;
            if (i11 == 2) {
                i12 += i14;
            } else {
                i13 += i14;
            }
        }
        setMeasuredDimension(i12, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.e, android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.R.i();
        s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float p(float f8) {
        return (((f8 - getMinSpeed()) * (this.f5880h0 - this.f5879g0)) / (getMaxSpeed() - getMinSpeed())) + this.f5879g0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float q(float f8) {
        return getMinSpeed() + (((getMaxSpeed() - getMinSpeed()) * (f8 - this.f5879g0)) / (this.f5880h0 - this.f5879g0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(int i9, int i10) {
        this.f5879g0 = i9;
        this.f5880h0 = i10;
        o();
        c();
        this.f5881i0 = p(getSpeed());
        if (this.E) {
            i();
            l();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        g gVar = this.f5883k0;
        gVar.getClass();
        g gVar2 = g.RIGHT;
        g gVar3 = g.BOTTOM_RIGHT;
        setTranslatedDx((gVar == gVar2 || gVar == g.TOP_RIGHT || gVar == gVar3) ? ((-getSize()) * 0.5f) + this.f5884l0 : 0.0f);
        g gVar4 = this.f5883k0;
        gVar4.getClass();
        setTranslatedDy((gVar4 == g.BOTTOM || gVar4 == g.BOTTOM_LEFT || gVar4 == gVar3) ? ((-getSize()) * 0.5f) + this.f5884l0 : 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setBackgroundCircleColor(int i9) {
        this.f5878f0 = i9;
        this.V.setColor(i9);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEndDegree(int i9) {
        r(this.f5879g0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIndicator(y1.a aVar) {
        y1.b eVar;
        aVar.getClass();
        int i9 = y1.b.f6110f;
        Context context = getContext();
        context.getClass();
        switch (aVar.ordinal()) {
            case 0:
                eVar = new y1.e(context);
                break;
            case 1:
                eVar = new y1.c(context, 2);
                break;
            case 2:
                eVar = new y1.c(context, 3);
                break;
            case 3:
                y1.c cVar = new y1.c(context, 4);
                cVar.f6115i = new Path();
                cVar.h(25.0f * cVar.f6112b);
                eVar = cVar;
                break;
            case 4:
                eVar = new y1.f(context);
                break;
            case 5:
                eVar = new y1.c(context, 1.0f);
                break;
            case 6:
                eVar = new y1.c(context, 0.5f);
                break;
            case 7:
                eVar = new y1.c(context, 0.25f);
                break;
            case 8:
                eVar = new y1.c(context, 0);
                break;
            case 9:
                eVar = new y1.d(context);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        eVar.deleteObservers();
        eVar.addObserver(this);
        eVar.c = this;
        eVar.i();
        setIndicator(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setIndicatorLightColor(int i9) {
        this.U = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setInitTickPadding(float f8) {
        this.f5887o0 = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarkColor(int i9) {
        this.f5873a0.setColor(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarkHeight(float f8) {
        this.f5877e0 = f8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarkStyle(x1.c cVar) {
        cVar.getClass();
        x1.c cVar2 = x1.c.f6024b;
        Paint paint = this.f5873a0;
        if (cVar == cVar2) {
            paint.setStrokeCap(Paint$Cap.ROUND);
        } else {
            paint.setStrokeCap(Paint$Cap.BUTT);
        }
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarkWidth(float f8) {
        this.f5873a0.setStrokeWidth(f8);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarksNumber(int i9) {
        this.f5875c0 = i9;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMarksPadding(float f8) {
        this.f5876d0 = f8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setOnPrintTickLabel(Function2<? super Integer, ? super Float, ? extends CharSequence> function2) {
        this.f5889q0 = function2;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedometerMode(g gVar) {
        gVar.getClass();
        this.f5883k0 = gVar;
        if (gVar != g.NORMAL) {
            this.f5879g0 = gVar.f5870b;
            this.f5880h0 = gVar.c;
        }
        s();
        c();
        this.f5881i0 = p(getSpeed());
        this.R.i();
        if (this.E) {
            requestLayout();
            i();
            l();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w1.e
    public void setSpeedometerWidth(float f8) {
        super.setSpeedometerWidth(f8);
        if (this.E) {
            this.R.i();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setStartDegree(int i9) {
        r(i9, this.f5880h0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTickNumber(int i9) {
        if (i9 < 0) {
            j1.i.k("tickNumber mustn't be negative");
            return;
        }
        ArrayList arrayList = new ArrayList();
        float f8 = i9 == 1 ? 0.0f : 1.0f / (i9 - 1);
        for (int i10 = 0; i10 < i9; i10++) {
            arrayList.add(Float.valueOf(i10 * f8));
        }
        setTicks(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTickPadding(float f8) {
        this.f5888p0 = f8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTickRotation(boolean z8) {
        this.f5886n0 = z8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTicks(List<Float> list) {
        list.getClass();
        this.f5885m0 = list;
        Iterator<Float> it = list.iterator();
        while (it.hasNext()) {
            float fFloatValue = it.next().floatValue();
            if (fFloatValue < 0.0f || fFloatValue > 1.0f) {
                j1.i.k("ticks must be between [0f, 1f] !!");
                return;
            }
        }
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setWithIndicatorLight(boolean z8) {
        this.T = z8;
    }

    public final void setIndicator(y1.b bVar) {
        bVar.getClass();
        this.R.deleteObservers();
        bVar.deleteObservers();
        bVar.addObserver(this);
        bVar.c = this;
        bVar.i();
        this.R = bVar;
        if (this.E) {
            bVar.deleteObservers();
            bVar.addObserver(this);
            bVar.c = this;
            bVar.i();
            invalidate();
        }
    }
}
