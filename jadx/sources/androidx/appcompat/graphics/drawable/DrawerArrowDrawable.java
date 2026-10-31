package androidx.appcompat.graphics.drawable;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0148R;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    private static final float ARROW_HEAD_ANGLE = (float) Math.toRadians(45.0d);
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private int mDirection;
    private float mMaxCutForBarSize;
    private final Paint mPaint;
    private final Path mPath;
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private boolean mVerticalMirror;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ArrowDirection {
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mPath = new Path();
        this.mVerticalMirror = false;
        this.mDirection = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, C0148R.styleable.DrawerArrowToggle, C0148R.attr.drawerArrowStyle, C0148R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(typedArrayObtainStyledAttributes.getColor(C0148R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(typedArrayObtainStyledAttributes.getBoolean(C0148R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.mSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0148R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = Math.round(typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.mArrowHeadLength = Math.round(typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.mArrowShaftLength = typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static float lerp(float f8, float f10, float f11) {
        return AbstractC0074a.m151b(f10, f8, f11, f8);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int i10 = this.mDirection;
        boolean z9 = false;
        if (i10 != 0 && (i10 == 1 || (i10 == 3 ? DrawableCompat.getLayoutDirection(this) == 0 : DrawableCompat.getLayoutDirection(this) == 1))) {
            z9 = true;
        }
        float f8 = this.mArrowHeadLength;
        float fLerp = lerp(this.mBarLength, (float) Math.sqrt(f8 * f8 * 2.0f), this.mProgress);
        float fLerp2 = lerp(this.mBarLength, this.mArrowShaftLength, this.mProgress);
        float fRound = Math.round(lerp(0.0f, this.mMaxCutForBarSize, this.mProgress));
        float fLerp3 = lerp(0.0f, ARROW_HEAD_ANGLE, this.mProgress);
        float fLerp4 = lerp(z9 ? 0.0f : -180.0f, z9 ? 180.0f : 0.0f, this.mProgress);
        double d = fLerp;
        double d10 = fLerp3;
        boolean z10 = z9;
        float fRound2 = Math.round(Math.cos(d10) * d);
        float fRound3 = Math.round(Math.sin(d10) * d);
        this.mPath.rewind();
        float fLerp5 = lerp(this.mPaint.getStrokeWidth() + this.mBarGap, -this.mMaxCutForBarSize, this.mProgress);
        float f10 = (-fLerp2) / 2.0f;
        this.mPath.moveTo(f10 + fRound, 0.0f);
        this.mPath.rLineTo(fLerp2 - (fRound * 2.0f), 0.0f);
        this.mPath.moveTo(f10, fLerp5);
        this.mPath.rLineTo(fRound2, fRound3);
        this.mPath.moveTo(f10, -fLerp5);
        this.mPath.rLineTo(fRound2, -fRound3);
        this.mPath.close();
        canvas.save();
        float strokeWidth = this.mPaint.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        float f11 = this.mBarGap;
        canvas.translate(bounds.centerX(), (strokeWidth * 1.5f) + f11 + ((((int) (fHeight - (f11 * 2.0f))) / 4) * 2));
        if (this.mSpin) {
            canvas.rotate(fLerp4 * (this.mVerticalMirror ^ z10 ? -1 : 1));
        } else if (z10) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
    }

    public float getArrowHeadLength() {
        return this.mArrowHeadLength;
    }

    public float getArrowShaftLength() {
        return this.mArrowShaftLength;
    }

    public float getBarLength() {
        return this.mBarLength;
    }

    public float getBarThickness() {
        return this.mPaint.getStrokeWidth();
    }

    @ColorInt
    public int getColor() {
        return this.mPaint.getColor();
    }

    public int getDirection() {
        return this.mDirection;
    }

    public float getGapSize() {
        return this.mBarGap;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public final Paint getPaint() {
        return this.mPaint;
    }

    @FloatRange(from = 0.0d, m378to = 1.0d)
    public float getProgress() {
        return this.mProgress;
    }

    public boolean isSpinEnabled() {
        return this.mSpin;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(i10);
            invalidateSelf();
        }
    }

    public void setArrowHeadLength(float f8) {
        if (this.mArrowHeadLength != f8) {
            this.mArrowHeadLength = f8;
            invalidateSelf();
        }
    }

    public void setArrowShaftLength(float f8) {
        if (this.mArrowShaftLength != f8) {
            this.mArrowShaftLength = f8;
            invalidateSelf();
        }
    }

    public void setBarLength(float f8) {
        if (this.mBarLength != f8) {
            this.mBarLength = f8;
            invalidateSelf();
        }
    }

    public void setBarThickness(float f8) {
        if (this.mPaint.getStrokeWidth() != f8) {
            this.mPaint.setStrokeWidth(f8);
            this.mMaxCutForBarSize = (float) (Math.cos(ARROW_HEAD_ANGLE) * ((double) (f8 / 2.0f)));
            invalidateSelf();
        }
    }

    public void setColor(@ColorInt int i10) {
        if (i10 != this.mPaint.getColor()) {
            this.mPaint.setColor(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setDirection(int i10) {
        if (i10 != this.mDirection) {
            this.mDirection = i10;
            invalidateSelf();
        }
    }

    public void setGapSize(float f8) {
        if (f8 != this.mBarGap) {
            this.mBarGap = f8;
            invalidateSelf();
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, m378to = 1.0d) float f8) {
        if (this.mProgress != f8) {
            this.mProgress = f8;
            invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean z9) {
        if (this.mSpin != z9) {
            this.mSpin = z9;
            invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean z9) {
        if (this.mVerticalMirror != z9) {
            this.mVerticalMirror = z9;
            invalidateSelf();
        }
    }
}
