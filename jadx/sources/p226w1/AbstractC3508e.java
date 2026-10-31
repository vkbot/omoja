package p226w1;

import ai.onnxruntime.AbstractC0074a;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;
import java.util.Random;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import p050e3.C1460c;
import p099j1.C1929i;
import p130l9.C2237i;
import p236x1.C3564b;

/* JADX INFO: renamed from: w1.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3508e extends View implements Observer {

    /* JADX INFO: renamed from: A */
    public final ArrayList f10347A;

    /* JADX INFO: renamed from: B */
    public C3564b f10348B;

    /* JADX INFO: renamed from: C */
    public float f10349C;

    /* JADX INFO: renamed from: D */
    public boolean f10350D;

    /* JADX INFO: renamed from: E */
    public boolean f10351E;

    /* JADX INFO: renamed from: F */
    public float f10352F;

    /* JADX INFO: renamed from: G */
    public float f10353G;

    /* JADX INFO: renamed from: H */
    public Locale f10354H;

    /* JADX INFO: renamed from: I */
    public float f10355I;

    /* JADX INFO: renamed from: J */
    public float f10356J;

    /* JADX INFO: renamed from: K */
    public EnumC3505b f10357K;

    /* JADX INFO: renamed from: L */
    public float f10358L;

    /* JADX INFO: renamed from: M */
    public float f10359M;

    /* JADX INFO: renamed from: N */
    public boolean f10360N;

    /* JADX INFO: renamed from: O */
    public Bitmap f10361O;

    /* JADX INFO: renamed from: P */
    public Canvas f10362P;

    /* JADX INFO: renamed from: Q */
    public Function1 f10363Q;

    /* JADX INFO: renamed from: b */
    public final Paint f10364b;

    /* JADX INFO: renamed from: c */
    public TextPaint f10365c;

    /* JADX INFO: renamed from: d */
    public final TextPaint f10366d;

    /* JADX INFO: renamed from: e */
    public final TextPaint f10367e;

    /* JADX INFO: renamed from: f */
    public String f10368f;

    /* JADX INFO: renamed from: g */
    public boolean f10369g;

    /* JADX INFO: renamed from: h */
    public float f10370h;

    /* JADX INFO: renamed from: i */
    public float f10371i;

    /* JADX INFO: renamed from: j */
    public float f10372j;

    /* JADX INFO: renamed from: k */
    public int f10373k;

    /* JADX INFO: renamed from: l */
    public float f10374l;

    /* JADX INFO: renamed from: m */
    public boolean f10375m;

    /* JADX INFO: renamed from: n */
    public float f10376n;

    /* JADX INFO: renamed from: o */
    public int f10377o;

    /* JADX INFO: renamed from: p */
    public ValueAnimator f10378p;

    /* JADX INFO: renamed from: q */
    public ValueAnimator f10379q;

    /* JADX INFO: renamed from: r */
    public boolean f10380r;

    /* JADX INFO: renamed from: s */
    public Function3 f10381s;

    /* JADX INFO: renamed from: t */
    public Function2 f10382t;

    /* JADX INFO: renamed from: u */
    public final C1460c f10383u;

    /* JADX INFO: renamed from: v */
    public Bitmap f10384v;

    /* JADX INFO: renamed from: w */
    public final Paint f10385w;

    /* JADX INFO: renamed from: x */
    public int f10386x;

    /* JADX INFO: renamed from: y */
    public int f10387y;

    /* JADX INFO: renamed from: z */
    public int f10388z;

    public AbstractC3508e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10364b = new Paint(1);
        this.f10365c = new TextPaint(1);
        TextPaint textPaint = new TextPaint(1);
        this.f10366d = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.f10367e = textPaint2;
        this.f10368f = "Km/h";
        this.f10369g = true;
        this.f10371i = 100.0f;
        this.f10372j = getMinSpeed();
        this.f10374l = getMinSpeed();
        this.f10376n = 4.0f;
        this.f10377o = 1000;
        AbstractC3512i abstractC3512i = (AbstractC3512i) this;
        this.f10383u = new C1460c(6, abstractC3512i);
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, config);
        bitmapCreateBitmap.getClass();
        this.f10384v = bitmapCreateBitmap;
        this.f10385w = new Paint(1);
        ArrayList arrayList = new ArrayList();
        this.f10347A = arrayList;
        this.f10349C = m5569g(30.0f);
        Locale locale = Locale.getDefault();
        locale.getClass();
        this.f10354H = locale;
        this.f10355I = 0.1f;
        this.f10356J = 0.1f;
        this.f10357K = EnumC3505b.f10336h;
        this.f10358L = m5569g(1.0f);
        this.f10359M = m5569g(20.0f);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(1, 1, config);
        bitmapCreateBitmap2.getClass();
        this.f10361O = bitmapCreateBitmap2;
        this.f10363Q = new C3506c(abstractC3512i, 2);
        this.f10365c.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f10365c.setTextSize(m5569g(10.0f));
        this.f10365c.setTextAlign(Paint.Align.CENTER);
        textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        textPaint.setTextSize(m5569g(18.0f));
        textPaint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        textPaint2.setTextSize(m5569g(15.0f));
        float f8 = 0.6f;
        C3564b c3564b = new C3564b(0.0f, f8, getSpeedometerWidth(), -16711936);
        c3564b.m5682q(this);
        arrayList.add(c3564b);
        float f10 = 0.87f;
        C3564b c3564b2 = new C3564b(f8, f10, getSpeedometerWidth(), InputDeviceCompat.SOURCE_ANY);
        c3564b2.m5682q(this);
        arrayList.add(c3564b2);
        C3564b c3564b3 = new C3564b(f10, 1.0f, getSpeedometerWidth(), SupportMenu.CATEGORY_MASK);
        c3564b3.m5682q(this);
        arrayList.add(c3564b3);
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC3509f.f10389a, 0, 0);
        typedArrayObtainStyledAttributes.getClass();
        float f11 = typedArrayObtainStyledAttributes.getFloat(2, getMaxSpeed());
        float f12 = typedArrayObtainStyledAttributes.getFloat(3, getMinSpeed());
        m5572j(f12, f11);
        this.f10372j = f12;
        setCurrentSpeed(f12);
        setSpeedometerWidth(typedArrayObtainStyledAttributes.getDimension(10, getSpeedometerWidth()));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3564b c3564b4 = (C3564b) obj;
            c3564b4.f10617c = getSpeedometerWidth();
            AbstractC3508e abstractC3508e = c3564b4.f10616b;
            if (abstractC3508e != null) {
                abstractC3508e.m5571i();
            }
        }
        setWithTremble(typedArrayObtainStyledAttributes.getBoolean(22, this.f10369g));
        TextPaint textPaint3 = this.f10365c;
        textPaint3.setColor(typedArrayObtainStyledAttributes.getColor(11, textPaint3.getColor()));
        TextPaint textPaint4 = this.f10365c;
        textPaint4.setTextSize(typedArrayObtainStyledAttributes.getDimension(13, textPaint4.getTextSize()));
        textPaint.setColor(typedArrayObtainStyledAttributes.getColor(4, textPaint.getColor()));
        textPaint.setTextSize(typedArrayObtainStyledAttributes.getDimension(8, textPaint.getTextSize()));
        textPaint2.setColor(typedArrayObtainStyledAttributes.getColor(19, textPaint2.getColor()));
        textPaint2.setTextSize(typedArrayObtainStyledAttributes.getDimension(20, textPaint2.getTextSize()));
        String string = typedArrayObtainStyledAttributes.getString(17);
        setUnit(string == null ? this.f10368f : string);
        setTrembleDegree(typedArrayObtainStyledAttributes.getFloat(15, this.f10376n));
        setTrembleDuration(typedArrayObtainStyledAttributes.getInt(16, this.f10377o));
        setSpeedometerTextRightToLeft(typedArrayObtainStyledAttributes.getBoolean(12, this.f10350D));
        setAccelerate(typedArrayObtainStyledAttributes.getFloat(0, this.f10355I));
        setDecelerate(typedArrayObtainStyledAttributes.getFloat(1, this.f10356J));
        setUnitUnderSpeedText(typedArrayObtainStyledAttributes.getBoolean(21, this.f10360N));
        setUnitSpeedInterval(typedArrayObtainStyledAttributes.getDimension(18, this.f10358L));
        setSpeedTextPadding(typedArrayObtainStyledAttributes.getDimension(6, this.f10359M));
        String string2 = typedArrayObtainStyledAttributes.getString(9);
        if (string2 != null && !isInEditMode()) {
            setSpeedTextTypeface(Typeface.createFromAsset(context.getAssets(), string2));
        }
        String string3 = typedArrayObtainStyledAttributes.getString(14);
        if (string3 != null && !isInEditMode()) {
            setTextTypeface(Typeface.createFromAsset(context.getAssets(), string3));
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(7, -1);
        if (i11 != -1) {
            setSpeedTextPosition(EnumC3505b.values()[i11]);
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(5, -1);
        if (i12 == 0) {
            setSpeedTextListener(new C3506c(abstractC3512i, 0));
        } else if (i12 == 1) {
            setSpeedTextListener(new C3506c(abstractC3512i, 1));
        }
        typedArrayObtainStyledAttributes.recycle();
        float f13 = this.f10355I;
        if (f13 > 1.0f || f13 <= 0.0f) {
            C1929i.m3029k("accelerate must be between (0, 1]");
            throw null;
        }
        float f14 = this.f10356J;
        if (f14 > 1.0f || f14 <= 0.0f) {
            C1929i.m3029k("decelerate must be between (0, 1]");
            throw null;
        }
        m5568f();
    }

    /* JADX INFO: renamed from: a */
    public static void m5563a(AbstractC3508e abstractC3508e, ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        abstractC3508e.f10375m = ((Float) animatedValue).floatValue() > abstractC3508e.f10374l;
        Object animatedValue2 = valueAnimator.getAnimatedValue();
        animatedValue2.getClass();
        abstractC3508e.setCurrentSpeed(((Float) animatedValue2).floatValue());
        abstractC3508e.postInvalidate();
    }

    /* JADX INFO: renamed from: b */
    public static void m5564b(AbstractC3508e abstractC3508e, ValueAnimator valueAnimator) {
        abstractC3508e.getClass();
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        abstractC3508e.setCurrentSpeed(((Float) animatedValue).floatValue());
        abstractC3508e.postInvalidate();
    }

    private final float getSpeedUnitTextHeight() {
        boolean z9 = this.f10360N;
        TextPaint textPaint = this.f10367e;
        TextPaint textPaint2 = this.f10366d;
        if (!z9) {
            return Math.max(textPaint2.getTextSize(), textPaint.getTextSize());
        }
        return textPaint.getTextSize() + textPaint2.getTextSize() + this.f10358L;
    }

    private final float getSpeedUnitTextWidth() {
        boolean z9 = this.f10360N;
        TextPaint textPaint = this.f10367e;
        TextPaint textPaint2 = this.f10366d;
        if (z9) {
            return Math.max(textPaint2.measureText(getSpeedText().toString()), textPaint.measureText(this.f10368f));
        }
        return textPaint.measureText(this.f10368f) + textPaint2.measureText(getSpeedText().toString()) + this.f10358L;
    }

    private final void setCurrentSpeed(float f8) {
        this.f10374l = f8;
        int i10 = (int) f8;
        if (i10 != this.f10373k && this.f10381s != null) {
            ValueAnimator valueAnimator = this.f10379q;
            boolean z9 = valueAnimator != null && valueAnimator.isRunning();
            boolean z10 = i10 > this.f10373k;
            int i11 = z10 ? 1 : -1;
            while (true) {
                int i12 = this.f10373k;
                if (i12 == i10) {
                    break;
                }
                this.f10373k = i12 + i11;
                Function3 function3 = this.f10381s;
                function3.getClass();
                function3.invoke(this, Boolean.valueOf(z10), Boolean.valueOf(z9));
            }
        }
        this.f10373k = i10;
        m5567e();
    }

    private final void setSpeedTextPadding(float f8) {
        this.f10359M = f8;
        if (this.f10351E) {
            invalidate();
        }
    }

    private final void setUnitSpeedInterval(float f8) {
        this.f10358L = f8;
        m5571i();
    }

    /* JADX INFO: renamed from: c */
    public final void m5565c() {
        this.f10380r = true;
        ValueAnimator valueAnimator = this.f10378p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f10380r = false;
        m5566d();
    }

    /* JADX INFO: renamed from: d */
    public final void m5566d() {
        this.f10380r = true;
        ValueAnimator valueAnimator = this.f10379q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f10380r = false;
        this.f10379q = null;
    }

    /* JADX INFO: renamed from: e */
    public final void m5567e() {
        C3564b c3564b;
        ArrayList arrayList = this.f10347A;
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                c3564b = null;
                break;
            }
            Object obj = arrayList.get(i10);
            i10++;
            c3564b = (C3564b) obj;
            if (getMinSpeed() + ((getMaxSpeed() - getMinSpeed()) * c3564b.f10619e) <= this.f10374l) {
                if (getMinSpeed() + ((getMaxSpeed() - getMinSpeed()) * c3564b.f10620f) >= this.f10374l) {
                    break;
                }
            }
        }
        C3564b c3564b2 = this.f10348B;
        if (c3564b2 != c3564b) {
            Function2 function2 = this.f10382t;
            if (function2 != null) {
                function2.invoke(c3564b2, c3564b);
            }
            this.f10348B = c3564b;
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m5568f() {
        if (this.f10376n < 0.0f) {
            C1929i.m3029k("trembleDegree  can't be Negative");
        } else {
            if (this.f10377o >= 0) {
                return;
            }
            C1929i.m3029k("trembleDuration  can't be Negative");
        }
    }

    /* JADX INFO: renamed from: g */
    public final float m5569g(float f8) {
        return f8 * getContext().getResources().getDisplayMetrics().density;
    }

    public final float getAccelerate() {
        return this.f10355I;
    }

    public final Bitmap getBackgroundBitmap() {
        return this.f10384v;
    }

    public final int getCurrentIntSpeed() {
        return this.f10373k;
    }

    public final C3564b getCurrentSection() {
        return this.f10348B;
    }

    public final float getCurrentSpeed() {
        return this.f10374l;
    }

    public final float getDecelerate() {
        return this.f10356J;
    }

    public final int getHeightPa() {
        return this.f10388z;
    }

    public final Locale getLocale() {
        return this.f10354H;
    }

    public final float getMaxSpeed() {
        return this.f10371i;
    }

    public final float getMinSpeed() {
        return this.f10370h;
    }

    public final float getOffsetSpeed() {
        return (this.f10374l - getMinSpeed()) / (getMaxSpeed() - getMinSpeed());
    }

    public final Function2<C3564b, C3564b, Unit> getOnSectionChangeListener() {
        return this.f10382t;
    }

    public final Function3<AbstractC3508e, Boolean, Boolean, Unit> getOnSpeedChangeListener() {
        return this.f10381s;
    }

    public final int getPadding() {
        return this.f10386x;
    }

    public final float getPercentSpeed() {
        return ((this.f10374l - getMinSpeed()) * 100.0f) / (getMaxSpeed() - getMinSpeed());
    }

    public final List<C3564b> getSections() {
        return this.f10347A;
    }

    public final float getSpeed() {
        return this.f10372j;
    }

    public final CharSequence getSpeedText() {
        return (CharSequence) this.f10363Q.invoke(Float.valueOf(this.f10374l));
    }

    public final int getSpeedTextColor() {
        return this.f10366d.getColor();
    }

    public final Function1<Float, CharSequence> getSpeedTextListener() {
        return this.f10363Q;
    }

    public final EnumC3505b getSpeedTextPosition() {
        return this.f10357K;
    }

    public final float getSpeedTextSize() {
        return this.f10366d.getTextSize();
    }

    public final Typeface getSpeedTextTypeface() {
        return this.f10366d.getTypeface();
    }

    public final RectF getSpeedUnitTextBounds() {
        float f8 = ((this.f10387y * this.f10357K.f10338b) - this.f10352F) + this.f10386x;
        float speedUnitTextWidth = getSpeedUnitTextWidth();
        EnumC3505b enumC3505b = this.f10357K;
        float f10 = (this.f10359M * enumC3505b.f10342f) + (f8 - (speedUnitTextWidth * enumC3505b.f10340d));
        float f11 = ((this.f10388z * enumC3505b.f10339c) - this.f10353G) + this.f10386x;
        float speedUnitTextHeight = getSpeedUnitTextHeight();
        EnumC3505b enumC3505b2 = this.f10357K;
        float f12 = (this.f10359M * enumC3505b2.f10343g) + (f11 - (speedUnitTextHeight * enumC3505b2.f10341e));
        return new RectF(f10, f12, getSpeedUnitTextWidth() + f10, getSpeedUnitTextHeight() + f12);
    }

    public final boolean getSpeedometerTextRightToLeft() {
        return this.f10350D;
    }

    public float getSpeedometerWidth() {
        return this.f10349C;
    }

    public final int getTextColor() {
        return this.f10365c.getColor();
    }

    public final TextPaint getTextPaint() {
        return this.f10365c;
    }

    public final float getTextSize() {
        return this.f10365c.getTextSize();
    }

    public final Typeface getTextTypeface() {
        return this.f10365c.getTypeface();
    }

    public final float getTranslatedDx() {
        return this.f10352F;
    }

    public final float getTranslatedDy() {
        return this.f10353G;
    }

    public final float getTrembleDegree() {
        return this.f10376n;
    }

    public final int getTrembleDuration() {
        return this.f10377o;
    }

    public final String getUnit() {
        return this.f10368f;
    }

    public final int getUnitTextColor() {
        return this.f10367e.getColor();
    }

    public final float getUnitTextSize() {
        return this.f10367e.getTextSize();
    }

    public final boolean getUnitUnderSpeedText() {
        return this.f10360N;
    }

    public final int getViewSize() {
        return Math.max(getWidth(), getHeight());
    }

    public final int getViewSizePa() {
        return Math.max(this.f10387y, this.f10388z);
    }

    public final int getWidthPa() {
        return this.f10387y;
    }

    public final boolean getWithTremble() {
        return this.f10369g;
    }

    /* JADX INFO: renamed from: h */
    public final void m5570h(Canvas canvas) {
        float width;
        float fMeasureText;
        RectF speedUnitTextBounds = getSpeedUnitTextBounds();
        String string = getSpeedText().toString();
        this.f10361O.eraseColor(0);
        boolean z9 = this.f10360N;
        TextPaint textPaint = this.f10366d;
        TextPaint textPaint2 = this.f10367e;
        if (z9) {
            Canvas canvas2 = this.f10362P;
            if (canvas2 != null) {
                canvas2.drawText(string, this.f10361O.getWidth() * 0.5f, (this.f10361O.getHeight() * 0.5f) - (this.f10358L * 0.5f), textPaint);
            }
            Canvas canvas3 = this.f10362P;
            if (canvas3 != null) {
                canvas3.drawText(this.f10368f, this.f10361O.getWidth() * 0.5f, (this.f10358L * 0.5f) + textPaint2.getTextSize() + (this.f10361O.getHeight() * 0.5f), textPaint2);
            }
        } else {
            boolean z10 = this.f10350D;
            Bitmap bitmap = this.f10361O;
            if (z10) {
                fMeasureText = (bitmap.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
                width = textPaint2.measureText(this.f10368f) + fMeasureText + this.f10358L;
            } else {
                width = (bitmap.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
                fMeasureText = textPaint.measureText(string) + width + this.f10358L;
            }
            float speedUnitTextHeight = (getSpeedUnitTextHeight() * 0.5f) + (this.f10361O.getHeight() * 0.5f);
            Canvas canvas4 = this.f10362P;
            if (canvas4 != null) {
                canvas4.drawText(string, width, speedUnitTextHeight, textPaint);
            }
            Canvas canvas5 = this.f10362P;
            if (canvas5 != null) {
                canvas5.drawText(this.f10368f, fMeasureText, speedUnitTextHeight, textPaint2);
            }
        }
        Bitmap bitmap2 = this.f10361O;
        canvas.drawBitmap(bitmap2, (speedUnitTextBounds.width() * 0.5f) + (speedUnitTextBounds.left - (bitmap2.getWidth() * 0.5f)), (speedUnitTextBounds.height() * 0.5f) + (speedUnitTextBounds.top - (this.f10361O.getHeight() * 0.5f)), this.f10364b);
    }

    /* JADX INFO: renamed from: i */
    public final void m5571i() {
        if (this.f10351E) {
            mo1680m();
            invalidate();
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f10351E;
    }

    /* JADX INFO: renamed from: j */
    public final void m5572j(float f8, float f10) {
        if (f8 >= f10) {
            C1929i.m3029k("minSpeed must be smaller than maxSpeed !!");
            return;
        }
        m5565c();
        this.f10370h = f8;
        this.f10371i = f10;
        m5567e();
        m5571i();
        if (this.f10351E) {
            setSpeedAt(this.f10372j);
        }
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        ValueAnimator valueAnimator = this.f10379q;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        m5566d();
    }

    /* JADX INFO: renamed from: k */
    public final void m5573k(float f8) {
        if (f8 > getMaxSpeed()) {
            f8 = getMaxSpeed();
        } else if (f8 < getMinSpeed()) {
            f8 = getMinSpeed();
        }
        if (f8 == this.f10372j) {
            return;
        }
        this.f10372j = f8;
        this.f10375m = f8 > this.f10374l;
        m5565c();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f10374l, f8);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.setDuration(1000L);
        valueAnimatorOfFloat.addUpdateListener(new C3504a((ImageSpeedometer) this, 1));
        valueAnimatorOfFloat.addListener(this.f10383u);
        this.f10378p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: renamed from: l */
    public final void m5574l() {
        float minSpeed;
        float f8;
        m5566d();
        if (this.f10369g) {
            Random random = new Random();
            float fNextFloat = random.nextFloat() * this.f10376n * (random.nextBoolean() ? -1 : 1);
            if (this.f10372j + fNextFloat <= getMaxSpeed()) {
                if (this.f10372j + fNextFloat < getMinSpeed()) {
                    minSpeed = getMinSpeed();
                    f8 = this.f10372j;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f10374l, this.f10372j + fNextFloat);
                valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
                valueAnimatorOfFloat.setDuration(this.f10377o);
                valueAnimatorOfFloat.addUpdateListener(new C3504a(this, 0));
                valueAnimatorOfFloat.addListener(this.f10383u);
                this.f10379q = valueAnimatorOfFloat;
                valueAnimatorOfFloat.start();
            }
            minSpeed = getMaxSpeed();
            f8 = this.f10372j;
            fNextFloat = minSpeed - f8;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f10374l, this.f10372j + fNextFloat);
            valueAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfFloat2.setDuration(this.f10377o);
            valueAnimatorOfFloat2.addUpdateListener(new C3504a(this, 0));
            valueAnimatorOfFloat2.addListener(this.f10383u);
            this.f10379q = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.start();
        }
    }

    /* JADX INFO: renamed from: m */
    public abstract void mo1680m();

    /* JADX INFO: renamed from: n */
    public final void m5575n(int i10, int i11, int i12, int i13) {
        this.f10386x = Math.max(Math.max(i10, i12), Math.max(i11, i13));
        this.f10387y = getWidth() - (this.f10386x * 2);
        this.f10388z = getHeight() - (this.f10386x * 2);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10351E = true;
        if (isInEditMode()) {
            return;
        }
        mo1680m();
        invalidate();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m5565c();
        this.f10351E = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        canvas.translate(this.f10352F, this.f10353G);
        canvas.drawBitmap(this.f10384v, 0.0f, 0.0f, this.f10385w);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        int i14;
        super.onSizeChanged(i10, i11, i12, i13);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int i15 = this.f10387y;
        if (i15 > 0 && (i14 = this.f10388z) > 0) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i15, i14, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            this.f10361O = bitmapCreateBitmap;
        }
        this.f10362P = new Canvas(this.f10361O);
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z9) {
        super.onVisibilityAggregated(z9);
        ValueAnimator valueAnimator = this.f10378p;
        if (valueAnimator != null) {
            valueAnimator.isRunning();
        }
    }

    public final void setAccelerate(float f8) {
        this.f10355I = f8;
        if (f8 > 1.0f || f8 <= 0.0f) {
            C1929i.m3029k("accelerate must be between (0, 1]");
        }
    }

    public final void setBackgroundBitmap(Bitmap bitmap) {
        bitmap.getClass();
        this.f10384v = bitmap;
    }

    public final void setDecelerate(float f8) {
        this.f10356J = f8;
        if (f8 > 1.0f || f8 <= 0.0f) {
            C1929i.m3029k("decelerate must be between (0, 1]");
        }
    }

    public final void setLocale(Locale locale) {
        locale.getClass();
        this.f10354H = locale;
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setMaxSpeed(float f8) {
        m5572j(getMinSpeed(), f8);
    }

    public final void setMinSpeed(float f8) {
        m5572j(f8, getMaxSpeed());
    }

    public final void setOnSectionChangeListener(Function2<? super C3564b, ? super C3564b, Unit> function2) {
        this.f10382t = function2;
    }

    public final void setOnSpeedChangeListener(Function3<? super AbstractC3508e, ? super Boolean, ? super Boolean, Unit> function3) {
        this.f10381s = function3;
    }

    @Override // android.view.View
    public final void setPadding(int i10, int i11, int i12, int i13) {
        m5575n(i10, i11, i12, i13);
        int i14 = this.f10386x;
        super.setPadding(i14, i14, i14, i14);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i10, int i11, int i12, int i13) {
        m5575n(i10, i11, i12, i13);
        int i14 = this.f10386x;
        super.setPaddingRelative(i14, i14, i14, i14);
    }

    public final void setSpeedAt(float f8) {
        if (f8 > getMaxSpeed()) {
            f8 = getMaxSpeed();
        } else if (f8 < getMinSpeed()) {
            f8 = getMinSpeed();
        }
        this.f10375m = f8 > this.f10374l;
        this.f10372j = f8;
        setCurrentSpeed(f8);
        m5565c();
        invalidate();
        m5574l();
    }

    public final void setSpeedTextColor(int i10) {
        this.f10366d.setColor(i10);
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setSpeedTextListener(Function1<? super Float, ? extends CharSequence> function1) {
        function1.getClass();
        this.f10363Q = function1;
        m5571i();
    }

    public final void setSpeedTextPosition(EnumC3505b enumC3505b) {
        enumC3505b.getClass();
        this.f10357K = enumC3505b;
        m5571i();
    }

    public final void setSpeedTextSize(float f8) {
        this.f10366d.setTextSize(f8);
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setSpeedTextTypeface(Typeface typeface) {
        this.f10366d.setTypeface(typeface);
        this.f10367e.setTypeface(typeface);
        m5571i();
    }

    public final void setSpeedometerTextRightToLeft(boolean z9) {
        this.f10350D = z9;
        m5571i();
    }

    public void setSpeedometerWidth(float f8) {
        this.f10349C = f8;
        C3507d c3507d = new C3507d(f8);
        ArrayList arrayList = new ArrayList(getSections());
        ArrayList arrayList2 = this.f10347A;
        int size = arrayList2.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList2.get(i11);
            i11++;
            ((C3564b) obj).f10616b = null;
        }
        arrayList2.clear();
        m5571i();
        int size2 = arrayList.size();
        int i12 = 0;
        while (i12 < size2) {
            Object obj2 = arrayList.get(i12);
            i12++;
            C3564b c3564b = (C3564b) obj2;
            c3564b.getClass();
            c3507d.invoke(c3564b);
        }
        int size3 = arrayList.size();
        while (i10 < size3) {
            Object obj3 = arrayList.get(i10);
            i10++;
            C3564b c3564b2 = (C3564b) obj3;
            c3564b2.m5682q(this);
            arrayList2.add(c3564b2);
            int iIndexOf = arrayList2.indexOf(c3564b2);
            float f10 = c3564b2.f10619e;
            float f11 = c3564b2.f10620f;
            if (f10 >= f11) {
                C1929i.m3029k("endOffset must be bigger than startOffset");
                return;
            }
            C3564b c3564b3 = (C3564b) CollectionsKt.getOrNull(arrayList2, iIndexOf - 1);
            if (c3564b3 != null) {
                float f12 = c3564b3.f10620f;
                if (f12 > f10 || f12 >= f11) {
                    C2237i.m3597d(AbstractC0074a.m155f(iIndexOf, "Section at index (", ") is conflicted with previous section"));
                    return;
                }
            }
            C3564b c3564b4 = (C3564b) CollectionsKt.getOrNull(arrayList2, iIndexOf + 1);
            if (c3564b4 != null) {
                float f13 = c3564b4.f10619e;
                if (f13 < f11 || f13 <= f10) {
                    C2237i.m3597d(AbstractC0074a.m155f(iIndexOf, "Section at index (", ") is conflicted with next section"));
                    return;
                }
            }
        }
        m5571i();
        if (this.f10351E) {
            m5571i();
        }
    }

    public final void setTextColor(int i10) {
        this.f10365c.setColor(i10);
        m5571i();
    }

    public final void setTextPaint(TextPaint textPaint) {
        textPaint.getClass();
        this.f10365c = textPaint;
    }

    public final void setTextSize(float f8) {
        this.f10365c.setTextSize(f8);
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setTextTypeface(Typeface typeface) {
        this.f10365c.setTypeface(typeface);
        m5571i();
    }

    public final void setTranslatedDx(float f8) {
        this.f10352F = f8;
    }

    public final void setTranslatedDy(float f8) {
        this.f10353G = f8;
    }

    public final void setTrembleDegree(float f8) {
        this.f10376n = f8;
        m5568f();
    }

    public final void setTrembleDuration(int i10) {
        this.f10377o = i10;
        m5568f();
    }

    public final void setUnit(String str) {
        str.getClass();
        this.f10368f = str;
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setUnitTextColor(int i10) {
        this.f10367e.setColor(i10);
        if (this.f10351E) {
            invalidate();
        }
    }

    public final void setUnitTextSize(float f8) {
        this.f10367e.setTextSize(f8);
        m5571i();
    }

    public final void setUnitUnderSpeedText(boolean z9) {
        this.f10360N = z9;
        TextPaint textPaint = this.f10367e;
        TextPaint textPaint2 = this.f10366d;
        if (z9) {
            Paint.Align align = Paint.Align.CENTER;
            textPaint2.setTextAlign(align);
            textPaint.setTextAlign(align);
        } else {
            Paint.Align align2 = Paint.Align.LEFT;
            textPaint2.setTextAlign(align2);
            textPaint.setTextAlign(align2);
        }
        m5571i();
    }

    public final void setWithTremble(boolean z9) {
        this.f10369g = z9;
        m5574l();
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        m5571i();
    }
}
