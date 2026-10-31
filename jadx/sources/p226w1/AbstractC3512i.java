package p226w1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import p099j1.C1929i;
import p236x1.EnumC3565c;
import p246y1.AbstractC3638b;
import p246y1.C3639c;
import p246y1.C3640d;
import p246y1.C3641e;
import p246y1.C3642f;
import p246y1.EnumC3637a;

/* JADX INFO: renamed from: w1.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3512i extends AbstractC3508e {

    /* JADX INFO: renamed from: R */
    public AbstractC3638b f10406R;

    /* JADX INFO: renamed from: S */
    public final PointF f10407S;

    /* JADX INFO: renamed from: T */
    public boolean f10408T;

    /* JADX INFO: renamed from: U */
    public int f10409U;

    /* JADX INFO: renamed from: V */
    public final Paint f10410V;

    /* JADX INFO: renamed from: W */
    public final Paint f10411W;

    /* JADX INFO: renamed from: a0 */
    public final Paint f10412a0;

    /* JADX INFO: renamed from: b0 */
    public final Path f10413b0;

    /* JADX INFO: renamed from: c0 */
    public int f10414c0;

    /* JADX INFO: renamed from: d0 */
    public float f10415d0;

    /* JADX INFO: renamed from: e0 */
    public float f10416e0;

    /* JADX INFO: renamed from: f0 */
    public int f10417f0;

    /* JADX INFO: renamed from: g0 */
    public int f10418g0;

    /* JADX INFO: renamed from: h0 */
    public int f10419h0;

    /* JADX INFO: renamed from: i0 */
    public float f10420i0;

    /* JADX INFO: renamed from: j0 */
    public final ArrayList f10421j0;

    /* JADX INFO: renamed from: k0 */
    public EnumC3510g f10422k0;

    /* JADX INFO: renamed from: l0 */
    public final int f10423l0;

    /* JADX INFO: renamed from: m0 */
    public List f10424m0;

    /* JADX INFO: renamed from: n0 */
    public boolean f10425n0;

    /* JADX INFO: renamed from: o0 */
    public float f10426o0;

    /* JADX INFO: renamed from: p0 */
    public float f10427p0;

    /* JADX INFO: renamed from: q0 */
    public Function2 f10428q0;

    /* JADX INFO: renamed from: r0 */
    public float f10429r0;

    public AbstractC3512i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10406R = new C3641e(context);
        this.f10407S = new PointF(0.5f, 0.5f);
        this.f10409U = -1140893918;
        Paint paint = new Paint(1);
        this.f10410V = paint;
        Paint paint2 = new Paint(1);
        this.f10411W = paint2;
        Paint paint3 = new Paint(1);
        this.f10412a0 = paint3;
        this.f10413b0 = new Path();
        this.f10416e0 = m5569g(9.0f);
        this.f10417f0 = -1;
        this.f10418g0 = 135;
        this.f10419h0 = 405;
        this.f10420i0 = 135;
        this.f10421j0 = new ArrayList();
        this.f10422k0 = EnumC3510g.NORMAL;
        this.f10424m0 = CollectionsKt.emptyList();
        this.f10425n0 = true;
        this.f10427p0 = m5569g(3.0f) + getSpeedometerWidth();
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint3.setStyle(style);
        setMarkColor(-1);
        setMarkWidth(m5569g(3.0f));
        setMarkStyle(EnumC3565c.f10624c);
        ImageSpeedometer imageSpeedometer = (ImageSpeedometer) this;
        imageSpeedometer.setBackgroundCircleColor(0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC3509f.f10391c, 0, 0);
            typedArrayObtainStyledAttributes.getClass();
            int i10 = typedArrayObtainStyledAttributes.getInt(13, -1);
            if (i10 != -1 && i10 != 0) {
                setSpeedometerMode(EnumC3510g.values()[i10]);
            }
            int i11 = typedArrayObtainStyledAttributes.getInt(3, -1);
            if (i11 != -1) {
                setIndicator(EnumC3637a.values()[i11]);
            }
            setMarksNumber(typedArrayObtainStyledAttributes.getInt(11, this.f10414c0));
            setMarksPadding(typedArrayObtainStyledAttributes.getDimension(12, this.f10415d0));
            setMarkHeight(typedArrayObtainStyledAttributes.getDimension(8, this.f10416e0));
            setMarkWidth(typedArrayObtainStyledAttributes.getDimension(10, getMarkWidth()));
            setMarkColor(typedArrayObtainStyledAttributes.getColor(7, getMarkColor()));
            int i12 = typedArrayObtainStyledAttributes.getInt(9, -1);
            if (i12 != -1) {
                setMarkStyle(EnumC3565c.values()[i12]);
            }
            setBackgroundCircleColor(typedArrayObtainStyledAttributes.getColor(0, this.f10417f0));
            this.f10418g0 = typedArrayObtainStyledAttributes.getInt(14, this.f10418g0);
            this.f10419h0 = typedArrayObtainStyledAttributes.getInt(2, this.f10419h0);
            AbstractC3638b abstractC3638b = this.f10406R;
            abstractC3638b.m5828h(typedArrayObtainStyledAttributes.getDimension(6, abstractC3638b.f10811d));
            this.f10423l0 = (int) typedArrayObtainStyledAttributes.getDimension(1, this.f10423l0);
            setTickNumber(typedArrayObtainStyledAttributes.getInteger(15, this.f10424m0.size()));
            this.f10425n0 = typedArrayObtainStyledAttributes.getBoolean(17, this.f10425n0);
            setTickPadding(typedArrayObtainStyledAttributes.getDimension(16, this.f10427p0));
            AbstractC3638b abstractC3638b2 = this.f10406R;
            abstractC3638b2.m5827g(typedArrayObtainStyledAttributes.getColor(4, abstractC3638b2.f10812e));
            this.f10408T = typedArrayObtainStyledAttributes.getBoolean(19, this.f10408T);
            this.f10409U = typedArrayObtainStyledAttributes.getColor(5, this.f10409U);
            int i13 = typedArrayObtainStyledAttributes.getInt(18, -1);
            if (i13 == 0) {
                setOnPrintTickLabel(new C3511h(imageSpeedometer, 0));
            } else if (i13 == 1) {
                setOnPrintTickLabel(new C3511h(imageSpeedometer, 1));
            }
            this.f10420i0 = this.f10418g0;
            typedArrayObtainStyledAttributes.recycle();
            m5576o();
        }
        paint.setColor(this.f10417f0);
    }

    public final int getBackgroundCircleColor() {
        return this.f10417f0;
    }

    public final float getDegree() {
        return this.f10420i0;
    }

    public final int getEndDegree() {
        return this.f10419h0;
    }

    public final float getFulcrumX() {
        return this.f10407S.x;
    }

    public final float getFulcrumY() {
        return this.f10407S.y;
    }

    public final AbstractC3638b getIndicator() {
        return this.f10406R;
    }

    public final int getIndicatorLightColor() {
        return this.f10409U;
    }

    public final float getInitTickPadding() {
        return this.f10426o0;
    }

    public final int getMarkColor() {
        return this.f10412a0.getColor();
    }

    public final float getMarkHeight() {
        return this.f10416e0;
    }

    public final Paint getMarkPaint() {
        return this.f10412a0;
    }

    public final EnumC3565c getMarkStyle() {
        return this.f10412a0.getStrokeCap() == Paint.Cap.ROUND ? EnumC3565c.f10623b : EnumC3565c.f10624c;
    }

    public final float getMarkWidth() {
        return this.f10412a0.getStrokeWidth();
    }

    public final int getMarksNumber() {
        return this.f10414c0;
    }

    public final float getMarksPadding() {
        return this.f10415d0;
    }

    public final Function2<Integer, Float, CharSequence> getOnPrintTickLabel() {
        return this.f10428q0;
    }

    public final int getSize() {
        EnumC3510g enumC3510g = this.f10422k0;
        if (enumC3510g == EnumC3510g.NORMAL) {
            return getWidth();
        }
        return enumC3510g.f10401d ? Math.max(getWidth(), getHeight()) : (Math.max(getWidth(), getHeight()) * 2) - (this.f10423l0 * 2);
    }

    public final int getSizePa() {
        return getSize() - (getPadding() * 2);
    }

    public final EnumC3510g getSpeedometerMode() {
        return this.f10422k0;
    }

    @Override // p226w1.AbstractC3508e
    public float getSpeedometerWidth() {
        return super.getSpeedometerWidth();
    }

    public final int getStartDegree() {
        return this.f10418g0;
    }

    public final int getTickNumber() {
        return this.f10424m0.size();
    }

    public final float getTickPadding() {
        return this.f10427p0;
    }

    public final List<Float> getTicks() {
        return this.f10424m0;
    }

    public final float getViewBottom() {
        return (getHeight() * 0.5f) + getViewCenterY();
    }

    public final float getViewCenterX() {
        int iOrdinal = this.f10422k0.ordinal();
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

    public final float getViewCenterY() {
        switch (this.f10422k0.ordinal()) {
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

    public final float getViewLeft() {
        return getViewCenterX() - (getWidth() * 0.5f);
    }

    public final float getViewRight() {
        return (getWidth() * 0.5f) + getViewCenterX();
    }

    public final float getViewTop() {
        return getViewCenterY() - (getHeight() * 0.5f);
    }

    /* JADX INFO: renamed from: o */
    public final void m5576o() {
        int i10 = this.f10418g0;
        if (i10 < 0) {
            C1929i.m3029k("StartDegree can't be Negative");
            return;
        }
        int i11 = this.f10419h0;
        if (i11 < 0) {
            C1929i.m3029k("EndDegree can't be Negative");
            return;
        }
        if (i10 >= i11) {
            C1929i.m3029k("EndDegree must be bigger than StartDegree !");
            return;
        }
        if (i11 - i10 > 360) {
            C1929i.m3029k("(EndDegree - StartDegree) must be smaller than 360 !");
            return;
        }
        EnumC3510g enumC3510g = this.f10422k0;
        if (i10 < enumC3510g.f10399b) {
            throw new IllegalArgumentException(("StartDegree must be bigger than " + this.f10422k0.f10399b + " in " + this.f10422k0 + " Mode !").toString());
        }
        if (i11 <= enumC3510g.f10400c) {
            return;
        }
        throw new IllegalArgumentException(("EndDegree must be smaller than " + this.f10422k0.f10400c + " in " + this.f10422k0 + " Mode !").toString());
    }

    @Override // p226w1.AbstractC3508e, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        this.f10420i0 = m5577p(getCurrentSpeed());
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iM5569g = (int) m5569g(250.0f);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824 && mode2 == 1073741824) {
            size = Math.min(size, size2);
        } else if (mode != 1073741824) {
            if (mode2 == 1073741824) {
                size = size2;
            } else if ((mode == 0 && mode2 == 0) || (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE)) {
                size = Math.min(iM5569g, Math.min(size, size2));
            } else {
                size = mode == Integer.MIN_VALUE ? Math.min(iM5569g, size) : Math.min(iM5569g, size2);
            }
        }
        int iMax = Math.max(size, Math.max(getSuggestedMinimumWidth(), getSuggestedMinimumHeight()));
        EnumC3510g enumC3510g = this.f10422k0;
        int i12 = enumC3510g.f10402e;
        int i13 = iMax / i12;
        int i14 = iMax / enumC3510g.f10403f;
        if (enumC3510g.f10401d) {
            int i15 = this.f10423l0;
            if (i12 == 2) {
                i13 += i15;
            } else {
                i14 += i15;
            }
        }
        setMeasuredDimension(i13, i14);
    }

    @Override // p226w1.AbstractC3508e, android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f10406R.mo5829i();
        m5580s();
    }

    /* JADX INFO: renamed from: p */
    public final float m5577p(float f8) {
        return (((f8 - getMinSpeed()) * (this.f10419h0 - this.f10418g0)) / (getMaxSpeed() - getMinSpeed())) + this.f10418g0;
    }

    /* JADX INFO: renamed from: q */
    public final float m5578q(float f8) {
        return getMinSpeed() + (((getMaxSpeed() - getMinSpeed()) * (f8 - this.f10418g0)) / (this.f10419h0 - this.f10418g0));
    }

    /* JADX INFO: renamed from: r */
    public final void m5579r(int i10, int i11) {
        this.f10418g0 = i10;
        this.f10419h0 = i11;
        m5576o();
        m5565c();
        this.f10420i0 = m5577p(getSpeed());
        if (this.f10351E) {
            m5571i();
            m5574l();
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m5580s() {
        EnumC3510g enumC3510g = this.f10422k0;
        enumC3510g.getClass();
        EnumC3510g enumC3510g2 = EnumC3510g.RIGHT;
        EnumC3510g enumC3510g3 = EnumC3510g.BOTTOM_RIGHT;
        setTranslatedDx((enumC3510g == enumC3510g2 || enumC3510g == EnumC3510g.TOP_RIGHT || enumC3510g == enumC3510g3) ? ((-getSize()) * 0.5f) + this.f10423l0 : 0.0f);
        EnumC3510g enumC3510g4 = this.f10422k0;
        enumC3510g4.getClass();
        setTranslatedDy((enumC3510g4 == EnumC3510g.BOTTOM || enumC3510g4 == EnumC3510g.BOTTOM_LEFT || enumC3510g4 == enumC3510g3) ? ((-getSize()) * 0.5f) + this.f10423l0 : 0.0f);
    }

    public final void setBackgroundCircleColor(int i10) {
        this.f10417f0 = i10;
        this.f10410V.setColor(i10);
        m5571i();
    }

    public final void setEndDegree(int i10) {
        m5579r(this.f10418g0, i10);
    }

    public void setIndicator(EnumC3637a enumC3637a) {
        AbstractC3638b c3641e;
        enumC3637a.getClass();
        int i10 = AbstractC3638b.f10807f;
        Context context = getContext();
        context.getClass();
        switch (enumC3637a.ordinal()) {
            case 0:
                c3641e = new C3641e(context);
                break;
            case 1:
                c3641e = new C3639c(context, 2);
                break;
            case 2:
                c3641e = new C3639c(context, 3);
                break;
            case 3:
                C3639c c3639c = new C3639c(context, 4);
                c3639c.f10815i = new Path();
                c3639c.m5828h(25.0f * c3639c.f10809b);
                c3641e = c3639c;
                break;
            case 4:
                c3641e = new C3642f(context);
                break;
            case 5:
                c3641e = new C3639c(context, 1.0f);
                break;
            case 6:
                c3641e = new C3639c(context, 0.5f);
                break;
            case 7:
                c3641e = new C3639c(context, 0.25f);
                break;
            case 8:
                c3641e = new C3639c(context, 0);
                break;
            case 9:
                c3641e = new C3640d(context);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        c3641e.deleteObservers();
        c3641e.addObserver(this);
        c3641e.f10810c = this;
        c3641e.mo5829i();
        setIndicator(c3641e);
    }

    public final void setIndicatorLightColor(int i10) {
        this.f10409U = i10;
    }

    public final void setInitTickPadding(float f8) {
        this.f10426o0 = f8;
    }

    public final void setMarkColor(int i10) {
        this.f10412a0.setColor(i10);
    }

    public final void setMarkHeight(float f8) {
        this.f10416e0 = f8;
        m5571i();
    }

    public final void setMarkStyle(EnumC3565c enumC3565c) {
        enumC3565c.getClass();
        EnumC3565c enumC3565c2 = EnumC3565c.f10623b;
        Paint paint = this.f10412a0;
        if (enumC3565c == enumC3565c2) {
            paint.setStrokeCap(Paint.Cap.ROUND);
        } else {
            paint.setStrokeCap(Paint.Cap.BUTT);
        }
        m5571i();
    }

    public final void setMarkWidth(float f8) {
        this.f10412a0.setStrokeWidth(f8);
        m5571i();
    }

    public final void setMarksNumber(int i10) {
        this.f10414c0 = i10;
        m5571i();
    }

    public final void setMarksPadding(float f8) {
        this.f10415d0 = f8;
        m5571i();
    }

    public final void setOnPrintTickLabel(Function2<? super Integer, ? super Float, ? extends CharSequence> function2) {
        this.f10428q0 = function2;
        m5571i();
    }

    public final void setSpeedometerMode(EnumC3510g enumC3510g) {
        enumC3510g.getClass();
        this.f10422k0 = enumC3510g;
        if (enumC3510g != EnumC3510g.NORMAL) {
            this.f10418g0 = enumC3510g.f10399b;
            this.f10419h0 = enumC3510g.f10400c;
        }
        m5580s();
        m5565c();
        this.f10420i0 = m5577p(getSpeed());
        this.f10406R.mo5829i();
        if (this.f10351E) {
            requestLayout();
            m5571i();
            m5574l();
        }
    }

    @Override // p226w1.AbstractC3508e
    public void setSpeedometerWidth(float f8) {
        super.setSpeedometerWidth(f8);
        if (this.f10351E) {
            this.f10406R.mo5829i();
        }
    }

    public final void setStartDegree(int i10) {
        m5579r(i10, this.f10419h0);
    }

    public final void setTickNumber(int i10) {
        if (i10 < 0) {
            C1929i.m3029k("tickNumber mustn't be negative");
            return;
        }
        ArrayList arrayList = new ArrayList();
        float f8 = i10 == 1 ? 0.0f : 1.0f / (i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Float.valueOf(i11 * f8));
        }
        setTicks(arrayList);
    }

    public final void setTickPadding(float f8) {
        this.f10427p0 = f8;
        m5571i();
    }

    public final void setTickRotation(boolean z9) {
        this.f10425n0 = z9;
        m5571i();
    }

    public final void setTicks(List<Float> list) {
        list.getClass();
        this.f10424m0 = list;
        Iterator<Float> it = list.iterator();
        while (it.hasNext()) {
            float fFloatValue = it.next().floatValue();
            if (fFloatValue < 0.0f || fFloatValue > 1.0f) {
                C1929i.m3029k("ticks must be between [0f, 1f] !!");
                return;
            }
        }
        m5571i();
    }

    public final void setWithIndicatorLight(boolean z9) {
        this.f10408T = z9;
    }

    public final void setIndicator(AbstractC3638b abstractC3638b) {
        abstractC3638b.getClass();
        this.f10406R.deleteObservers();
        abstractC3638b.deleteObservers();
        abstractC3638b.addObserver(this);
        abstractC3638b.f10810c = this;
        abstractC3638b.mo5829i();
        this.f10406R = abstractC3638b;
        if (this.f10351E) {
            abstractC3638b.deleteObservers();
            abstractC3638b.addObserver(this);
            abstractC3638b.f10810c = this;
            abstractC3638b.mo5829i();
            invalidate();
        }
    }
}
