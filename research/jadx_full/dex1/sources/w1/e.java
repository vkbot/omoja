package w1;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Align;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e extends View implements Observer {
    public final ArrayList A;
    public x1.b B;
    public float C;
    public boolean D;
    public boolean E;
    public float F;
    public float G;
    public Locale H;
    public float I;
    public float J;
    public b K;
    public float L;
    public float M;
    public boolean N;
    public Bitmap O;
    public Canvas P;
    public Function1 Q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f5842b;
    public TextPaint c;
    public final TextPaint d;
    public final TextPaint e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f5843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f5849l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5850m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f5851n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5852o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ValueAnimator f5853p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ValueAnimator f5854q;
    public boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Function3 f5855s;
    public Function2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final e3.c f5856u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Bitmap f5857v;
    public final Paint w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f5858x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f5859y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f5860z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f5842b = new Paint(1);
        this.c = new TextPaint(1);
        TextPaint textPaint = new TextPaint(1);
        this.d = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.e = textPaint2;
        this.f5843f = "Km/h";
        this.f5844g = true;
        this.f5846i = 100.0f;
        this.f5847j = getMinSpeed();
        this.f5849l = getMinSpeed();
        this.f5851n = 4.0f;
        this.f5852o = 1000;
        i iVar = (i) this;
        this.f5856u = new e3.c(6, iVar);
        Bitmap$Config bitmap$Config = Bitmap$Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, bitmap$Config);
        bitmapCreateBitmap.getClass();
        this.f5857v = bitmapCreateBitmap;
        this.w = new Paint(1);
        ArrayList arrayList = new ArrayList();
        this.A = arrayList;
        this.C = g(30.0f);
        Locale locale = Locale.getDefault();
        locale.getClass();
        this.H = locale;
        this.I = 0.1f;
        this.J = 0.1f;
        this.K = b.f5835h;
        this.L = g(1.0f);
        this.M = g(20.0f);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(1, 1, bitmap$Config);
        bitmapCreateBitmap2.getClass();
        this.O = bitmapCreateBitmap2;
        this.Q = new c(iVar, 2);
        this.c.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.c.setTextSize(g(10.0f));
        this.c.setTextAlign(Paint$Align.CENTER);
        textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        textPaint.setTextSize(g(18.0f));
        textPaint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        textPaint2.setTextSize(g(15.0f));
        x1.b bVar = new x1.b(0.0f, 0.6f, getSpeedometerWidth(), -16711936);
        bVar.q(this);
        arrayList.add(bVar);
        x1.b bVar2 = new x1.b(0.6f, 0.87f, getSpeedometerWidth(), InputDeviceCompat.SOURCE_ANY);
        bVar2.q(this);
        arrayList.add(bVar2);
        x1.b bVar3 = new x1.b(0.87f, 1.0f, getSpeedometerWidth(), SupportMenu.CATEGORY_MASK);
        bVar3.q(this);
        arrayList.add(bVar3);
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f.f5861a, 0, 0);
        typedArrayObtainStyledAttributes.getClass();
        float f8 = typedArrayObtainStyledAttributes.getFloat(2, getMaxSpeed());
        float f9 = typedArrayObtainStyledAttributes.getFloat(3, getMinSpeed());
        j(f9, f8);
        this.f5847j = f9;
        setCurrentSpeed(f9);
        setSpeedometerWidth(typedArrayObtainStyledAttributes.getDimension(10, getSpeedometerWidth()));
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            x1.b bVar4 = (x1.b) obj;
            bVar4.c = getSpeedometerWidth();
            e eVar = bVar4.f6020b;
            if (eVar != null) {
                eVar.i();
            }
        }
        setWithTremble(typedArrayObtainStyledAttributes.getBoolean(22, this.f5844g));
        TextPaint textPaint3 = this.c;
        textPaint3.setColor(typedArrayObtainStyledAttributes.getColor(11, textPaint3.getColor()));
        TextPaint textPaint4 = this.c;
        textPaint4.setTextSize(typedArrayObtainStyledAttributes.getDimension(13, textPaint4.getTextSize()));
        textPaint.setColor(typedArrayObtainStyledAttributes.getColor(4, textPaint.getColor()));
        textPaint.setTextSize(typedArrayObtainStyledAttributes.getDimension(8, textPaint.getTextSize()));
        textPaint2.setColor(typedArrayObtainStyledAttributes.getColor(19, textPaint2.getColor()));
        textPaint2.setTextSize(typedArrayObtainStyledAttributes.getDimension(20, textPaint2.getTextSize()));
        String string = typedArrayObtainStyledAttributes.getString(17);
        setUnit(string == null ? this.f5843f : string);
        setTrembleDegree(typedArrayObtainStyledAttributes.getFloat(15, this.f5851n));
        setTrembleDuration(typedArrayObtainStyledAttributes.getInt(16, this.f5852o));
        setSpeedometerTextRightToLeft(typedArrayObtainStyledAttributes.getBoolean(12, this.D));
        setAccelerate(typedArrayObtainStyledAttributes.getFloat(0, this.I));
        setDecelerate(typedArrayObtainStyledAttributes.getFloat(1, this.J));
        setUnitUnderSpeedText(typedArrayObtainStyledAttributes.getBoolean(21, this.N));
        setUnitSpeedInterval(typedArrayObtainStyledAttributes.getDimension(18, this.L));
        setSpeedTextPadding(typedArrayObtainStyledAttributes.getDimension(6, this.M));
        String string2 = typedArrayObtainStyledAttributes.getString(9);
        if (string2 != null && !isInEditMode()) {
            setSpeedTextTypeface(Typeface.createFromAsset(context.getAssets(), string2));
        }
        String string3 = typedArrayObtainStyledAttributes.getString(14);
        if (string3 != null && !isInEditMode()) {
            setTextTypeface(Typeface.createFromAsset(context.getAssets(), string3));
        }
        int i10 = typedArrayObtainStyledAttributes.getInt(7, -1);
        if (i10 != -1) {
            setSpeedTextPosition(b.values()[i10]);
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(5, -1);
        if (i11 == 0) {
            setSpeedTextListener(new c(iVar, 0));
        } else if (i11 == 1) {
            setSpeedTextListener(new c(iVar, 1));
        }
        typedArrayObtainStyledAttributes.recycle();
        float f10 = this.I;
        if (f10 > 1.0f || f10 <= 0.0f) {
            j1.i.k("accelerate must be between (0, 1]");
            throw null;
        }
        float f11 = this.J;
        if (f11 > 1.0f || f11 <= 0.0f) {
            j1.i.k("decelerate must be between (0, 1]");
            throw null;
        }
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(e eVar, ValueAnimator valueAnimator) {
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        eVar.f5850m = ((Float) animatedValue).floatValue() > eVar.f5849l;
        Object animatedValue2 = valueAnimator.getAnimatedValue();
        animatedValue2.getClass();
        eVar.setCurrentSpeed(((Float) animatedValue2).floatValue());
        eVar.postInvalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(e eVar, ValueAnimator valueAnimator) {
        eVar.getClass();
        Object animatedValue = valueAnimator.getAnimatedValue();
        animatedValue.getClass();
        eVar.setCurrentSpeed(((Float) animatedValue).floatValue());
        eVar.postInvalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final float getSpeedUnitTextHeight() {
        boolean z8 = this.N;
        TextPaint textPaint = this.e;
        TextPaint textPaint2 = this.d;
        if (!z8) {
            return Math.max(textPaint2.getTextSize(), textPaint.getTextSize());
        }
        return textPaint.getTextSize() + textPaint2.getTextSize() + this.L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final float getSpeedUnitTextWidth() {
        boolean z8 = this.N;
        TextPaint textPaint = this.e;
        TextPaint textPaint2 = this.d;
        if (z8) {
            return Math.max(textPaint2.measureText(getSpeedText().toString()), textPaint.measureText(this.f5843f));
        }
        return textPaint.measureText(this.f5843f) + textPaint2.measureText(getSpeedText().toString()) + this.L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void setCurrentSpeed(float f8) {
        this.f5849l = f8;
        int i9 = (int) f8;
        if (i9 != this.f5848k && this.f5855s != null) {
            ValueAnimator valueAnimator = this.f5854q;
            boolean z8 = valueAnimator != null && valueAnimator.isRunning();
            boolean z9 = i9 > this.f5848k;
            int i10 = z9 ? 1 : -1;
            while (true) {
                int i11 = this.f5848k;
                if (i11 == i9) {
                    break;
                }
                this.f5848k = i11 + i10;
                Function3 function3 = this.f5855s;
                function3.getClass();
                function3.invoke(this, Boolean.valueOf(z9), Boolean.valueOf(z8));
            }
        }
        this.f5848k = i9;
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void setSpeedTextPadding(float f8) {
        this.M = f8;
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void setUnitSpeedInterval(float f8) {
        this.L = f8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        this.r = true;
        ValueAnimator valueAnimator = this.f5853p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.r = false;
        d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        this.r = true;
        ValueAnimator valueAnimator = this.f5854q;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.r = false;
        this.f5854q = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        x1.b bVar;
        ArrayList arrayList = this.A;
        int size = arrayList.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                bVar = null;
                break;
            }
            Object obj = arrayList.get(i9);
            i9++;
            bVar = (x1.b) obj;
            if (getMinSpeed() + ((getMaxSpeed() - getMinSpeed()) * bVar.e) <= this.f5849l) {
                if (getMinSpeed() + ((getMaxSpeed() - getMinSpeed()) * bVar.f6021f) >= this.f5849l) {
                    break;
                }
            }
        }
        x1.b bVar2 = this.B;
        if (bVar2 != bVar) {
            Function2 function2 = this.t;
            if (function2 != null) {
                function2.invoke(bVar2, bVar);
            }
            this.B = bVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        if (this.f5851n < 0.0f) {
            j1.i.k("trembleDegree  can't be Negative");
        } else {
            if (this.f5852o >= 0) {
                return;
            }
            j1.i.k("trembleDuration  can't be Negative");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float g(float f8) {
        return f8 * getContext().getResources().getDisplayMetrics().density;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getAccelerate() {
        return this.I;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Bitmap getBackgroundBitmap() {
        return this.f5857v;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCurrentIntSpeed() {
        return this.f5848k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final x1.b getCurrentSection() {
        return this.B;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getCurrentSpeed() {
        return this.f5849l;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getDecelerate() {
        return this.J;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getHeightPa() {
        return this.f5860z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Locale getLocale() {
        return this.H;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMaxSpeed() {
        return this.f5846i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getMinSpeed() {
        return this.f5845h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getOffsetSpeed() {
        return (this.f5849l - getMinSpeed()) / (getMaxSpeed() - getMinSpeed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Function2<x1.b, x1.b, Unit> getOnSectionChangeListener() {
        return this.t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Function3<e, Boolean, Boolean, Unit> getOnSpeedChangeListener() {
        return this.f5855s;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getPadding() {
        return this.f5858x;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getPercentSpeed() {
        return ((this.f5849l - getMinSpeed()) * 100.0f) / (getMaxSpeed() - getMinSpeed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<x1.b> getSections() {
        return this.A;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getSpeed() {
        return this.f5847j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CharSequence getSpeedText() {
        return (CharSequence) this.Q.invoke(Float.valueOf(this.f5849l));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getSpeedTextColor() {
        return this.d.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Function1<Float, CharSequence> getSpeedTextListener() {
        return this.Q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b getSpeedTextPosition() {
        return this.K;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getSpeedTextSize() {
        return this.d.getTextSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Typeface getSpeedTextTypeface() {
        return this.d.getTypeface();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final RectF getSpeedUnitTextBounds() {
        float f8 = ((this.f5859y * this.K.f5837b) - this.F) + this.f5858x;
        float speedUnitTextWidth = getSpeedUnitTextWidth();
        b bVar = this.K;
        float f9 = (this.M * bVar.f5838f) + (f8 - (speedUnitTextWidth * bVar.d));
        float f10 = ((this.f5860z * bVar.c) - this.G) + this.f5858x;
        float speedUnitTextHeight = getSpeedUnitTextHeight();
        b bVar2 = this.K;
        float f11 = (this.M * bVar2.f5839g) + (f10 - (speedUnitTextHeight * bVar2.e));
        return new RectF(f9, f11, getSpeedUnitTextWidth() + f9, getSpeedUnitTextHeight() + f11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getSpeedometerTextRightToLeft() {
        return this.D;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpeedometerWidth() {
        return this.C;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getTextColor() {
        return this.c.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TextPaint getTextPaint() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getTextSize() {
        return this.c.getTextSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Typeface getTextTypeface() {
        return this.c.getTypeface();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getTranslatedDx() {
        return this.F;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getTranslatedDy() {
        return this.G;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getTrembleDegree() {
        return this.f5851n;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getTrembleDuration() {
        return this.f5852o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getUnit() {
        return this.f5843f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getUnitTextColor() {
        return this.e.getColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float getUnitTextSize() {
        return this.e.getTextSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getUnitUnderSpeedText() {
        return this.N;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getViewSize() {
        return Math.max(getWidth(), getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getViewSizePa() {
        return Math.max(this.f5859y, this.f5860z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getWidthPa() {
        return this.f5859y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getWithTremble() {
        return this.f5844g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(Canvas canvas) {
        float width;
        float fMeasureText;
        RectF speedUnitTextBounds = getSpeedUnitTextBounds();
        String string = getSpeedText().toString();
        this.O.eraseColor(0);
        boolean z8 = this.N;
        TextPaint textPaint = this.d;
        TextPaint textPaint2 = this.e;
        if (z8) {
            Canvas canvas2 = this.P;
            if (canvas2 != null) {
                canvas2.drawText(string, this.O.getWidth() * 0.5f, (this.O.getHeight() * 0.5f) - (this.L * 0.5f), textPaint);
            }
            Canvas canvas3 = this.P;
            if (canvas3 != null) {
                canvas3.drawText(this.f5843f, this.O.getWidth() * 0.5f, (this.L * 0.5f) + textPaint2.getTextSize() + (this.O.getHeight() * 0.5f), textPaint2);
            }
        } else {
            boolean z9 = this.D;
            Bitmap bitmap = this.O;
            if (z9) {
                fMeasureText = (bitmap.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
                width = textPaint2.measureText(this.f5843f) + fMeasureText + this.L;
            } else {
                width = (bitmap.getWidth() * 0.5f) - (getSpeedUnitTextWidth() * 0.5f);
                fMeasureText = textPaint.measureText(string) + width + this.L;
            }
            float speedUnitTextHeight = (getSpeedUnitTextHeight() * 0.5f) + (this.O.getHeight() * 0.5f);
            Canvas canvas4 = this.P;
            if (canvas4 != null) {
                canvas4.drawText(string, width, speedUnitTextHeight, textPaint);
            }
            Canvas canvas5 = this.P;
            if (canvas5 != null) {
                canvas5.drawText(this.f5843f, fMeasureText, speedUnitTextHeight, textPaint2);
            }
        }
        Bitmap bitmap2 = this.O;
        canvas.drawBitmap(bitmap2, (speedUnitTextBounds.width() * 0.5f) + (speedUnitTextBounds.left - (bitmap2.getWidth() * 0.5f)), (speedUnitTextBounds.height() * 0.5f) + (speedUnitTextBounds.top - (this.O.getHeight() * 0.5f)), this.f5842b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        if (this.E) {
            m();
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.E;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(float f8, float f9) {
        if (f8 >= f9) {
            j1.i.k("minSpeed must be smaller than maxSpeed !!");
            return;
        }
        c();
        this.f5845h = f8;
        this.f5846i = f9;
        e();
        i();
        if (this.E) {
            setSpeedAt(this.f5847j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        ValueAnimator valueAnimator = this.f5854q;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(float f8) {
        if (f8 > getMaxSpeed()) {
            f8 = getMaxSpeed();
        } else if (f8 < getMinSpeed()) {
            f8 = getMinSpeed();
        }
        if (f8 == this.f5847j) {
            return;
        }
        this.f5847j = f8;
        this.f5850m = f8 > this.f5849l;
        c();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f5849l, f8);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.setDuration(1000L);
        valueAnimatorOfFloat.addUpdateListener(new a((ImageSpeedometer) this, 1));
        valueAnimatorOfFloat.addListener(this.f5856u);
        this.f5853p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        float minSpeed;
        float f8;
        d();
        if (this.f5844g) {
            Random random = new Random();
            float fNextFloat = random.nextFloat() * this.f5851n * (random.nextBoolean() ? -1 : 1);
            if (this.f5847j + fNextFloat <= getMaxSpeed()) {
                if (this.f5847j + fNextFloat < getMinSpeed()) {
                    minSpeed = getMinSpeed();
                    f8 = this.f5847j;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f5849l, this.f5847j + fNextFloat);
                valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
                valueAnimatorOfFloat.setDuration(this.f5852o);
                valueAnimatorOfFloat.addUpdateListener(new a(this, 0));
                valueAnimatorOfFloat.addListener(this.f5856u);
                this.f5854q = valueAnimatorOfFloat;
                valueAnimatorOfFloat.start();
            }
            minSpeed = getMaxSpeed();
            f8 = this.f5847j;
            fNextFloat = minSpeed - f8;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f5849l, this.f5847j + fNextFloat);
            valueAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfFloat2.setDuration(this.f5852o);
            valueAnimatorOfFloat2.addUpdateListener(new a(this, 0));
            valueAnimatorOfFloat2.addListener(this.f5856u);
            this.f5854q = valueAnimatorOfFloat2;
            valueAnimatorOfFloat2.start();
        }
    }

    public abstract void m();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(int i9, int i10, int i11, int i12) {
        this.f5858x = Math.max(Math.max(i9, i11), Math.max(i10, i12));
        this.f5859y = getWidth() - (this.f5858x * 2);
        this.f5860z = getHeight() - (this.f5858x * 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.E = true;
        if (isInEditMode()) {
            return;
        }
        m();
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
        this.E = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.getClass();
        canvas.translate(this.F, this.G);
        canvas.drawBitmap(this.f5857v, 0.0f, 0.0f, this.w);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        int i13;
        super.onSizeChanged(i9, i10, i11, i12);
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int i14 = this.f5859y;
        if (i14 > 0 && (i13 = this.f5860z) > 0) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i14, i13, Bitmap$Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            this.O = bitmapCreateBitmap;
        }
        this.P = new Canvas(this.O);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z8) {
        super.onVisibilityAggregated(z8);
        ValueAnimator valueAnimator = this.f5853p;
        if (valueAnimator != null) {
            valueAnimator.isRunning();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setAccelerate(float f8) {
        this.I = f8;
        if (f8 > 1.0f || f8 <= 0.0f) {
            j1.i.k("accelerate must be between (0, 1]");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setBackgroundBitmap(Bitmap bitmap) {
        bitmap.getClass();
        this.f5857v = bitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setDecelerate(float f8) {
        this.J = f8;
        if (f8 > 1.0f || f8 <= 0.0f) {
            j1.i.k("decelerate must be between (0, 1]");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLocale(Locale locale) {
        locale.getClass();
        this.H = locale;
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMaxSpeed(float f8) {
        j(getMinSpeed(), f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setMinSpeed(float f8) {
        j(f8, getMaxSpeed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setOnSectionChangeListener(Function2<? super x1.b, ? super x1.b, Unit> function2) {
        this.t = function2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setOnSpeedChangeListener(Function3<? super e, ? super Boolean, ? super Boolean, Unit> function3) {
        this.f5855s = function3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void setPadding(int i9, int i10, int i11, int i12) {
        n(i9, i10, i11, i12);
        int i13 = this.f5858x;
        super.setPadding(i13, i13, i13, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void setPaddingRelative(int i9, int i10, int i11, int i12) {
        n(i9, i10, i11, i12);
        int i13 = this.f5858x;
        super.setPaddingRelative(i13, i13, i13, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedAt(float f8) {
        if (f8 > getMaxSpeed()) {
            f8 = getMaxSpeed();
        } else if (f8 < getMinSpeed()) {
            f8 = getMinSpeed();
        }
        this.f5850m = f8 > this.f5849l;
        this.f5847j = f8;
        setCurrentSpeed(f8);
        c();
        invalidate();
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedTextColor(int i9) {
        this.d.setColor(i9);
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedTextListener(Function1<? super Float, ? extends CharSequence> function1) {
        function1.getClass();
        this.Q = function1;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedTextPosition(b bVar) {
        bVar.getClass();
        this.K = bVar;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedTextSize(float f8) {
        this.d.setTextSize(f8);
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedTextTypeface(Typeface typeface) {
        this.d.setTypeface(typeface);
        this.e.setTypeface(typeface);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setSpeedometerTextRightToLeft(boolean z8) {
        this.D = z8;
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpeedometerWidth(float f8) {
        this.C = f8;
        d dVar = new d(f8);
        ArrayList arrayList = new ArrayList(getSections());
        ArrayList arrayList2 = this.A;
        int size = arrayList2.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            ((x1.b) obj).f6020b = null;
        }
        arrayList2.clear();
        i();
        int size2 = arrayList.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList.get(i11);
            i11++;
            x1.b bVar = (x1.b) obj2;
            bVar.getClass();
            dVar.invoke(bVar);
        }
        int size3 = arrayList.size();
        while (i9 < size3) {
            Object obj3 = arrayList.get(i9);
            i9++;
            x1.b bVar2 = (x1.b) obj3;
            bVar2.q(this);
            arrayList2.add(bVar2);
            int iIndexOf = arrayList2.indexOf(bVar2);
            float f9 = bVar2.e;
            float f10 = bVar2.f6021f;
            if (f9 >= f10) {
                j1.i.k("endOffset must be bigger than startOffset");
                return;
            }
            x1.b bVar3 = (x1.b) CollectionsKt.getOrNull(arrayList2, iIndexOf - 1);
            if (bVar3 != null) {
                float f11 = bVar3.f6021f;
                if (f11 > f9 || f11 >= f10) {
                    l9.i.d(ai.onnxruntime.a.f(iIndexOf, "Section at index (", ") is conflicted with previous section"));
                    return;
                }
            }
            x1.b bVar4 = (x1.b) CollectionsKt.getOrNull(arrayList2, iIndexOf + 1);
            if (bVar4 != null) {
                float f12 = bVar4.e;
                if (f12 < f10 || f12 <= f9) {
                    l9.i.d(ai.onnxruntime.a.f(iIndexOf, "Section at index (", ") is conflicted with next section"));
                    return;
                }
            }
        }
        i();
        if (this.E) {
            i();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTextColor(int i9) {
        this.c.setColor(i9);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTextPaint(TextPaint textPaint) {
        textPaint.getClass();
        this.c = textPaint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTextSize(float f8) {
        this.c.setTextSize(f8);
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTextTypeface(Typeface typeface) {
        this.c.setTypeface(typeface);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTranslatedDx(float f8) {
        this.F = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTranslatedDy(float f8) {
        this.G = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTrembleDegree(float f8) {
        this.f5851n = f8;
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTrembleDuration(int i9) {
        this.f5852o = i9;
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUnit(String str) {
        str.getClass();
        this.f5843f = str;
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUnitTextColor(int i9) {
        this.e.setColor(i9);
        if (this.E) {
            invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUnitTextSize(float f8) {
        this.e.setTextSize(f8);
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setUnitUnderSpeedText(boolean z8) {
        this.N = z8;
        TextPaint textPaint = this.e;
        TextPaint textPaint2 = this.d;
        if (z8) {
            Paint$Align paint$Align = Paint$Align.CENTER;
            textPaint2.setTextAlign(paint$Align);
            textPaint.setTextAlign(paint$Align);
        } else {
            Paint$Align paint$Align2 = Paint$Align.LEFT;
            textPaint2.setTextAlign(paint$Align2);
            textPaint.setTextAlign(paint$Align2);
        }
        i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setWithTremble(boolean z8) {
        this.f5844g = z8;
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        i();
    }
}
