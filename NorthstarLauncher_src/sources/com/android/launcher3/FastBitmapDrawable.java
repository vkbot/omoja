package com.android.launcher3;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.android.launcher3.graphics.PlaceHolderIconDrawable;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.Themes;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
public class FastBitmapDrawable extends Drawable {
    public static final int CLICK_FEEDBACK_DURATION = 200;
    private static final float DISABLED_BRIGHTNESS = 0.5f;
    private static final float DISABLED_DESATURATION = 1.0f;
    private static final float PRESSED_SCALE = 1.1f;
    private static final Property<FastBitmapDrawable, Float> SCALE = new Property<FastBitmapDrawable, Float>(Float.TYPE, "scale") { // from class: com.android.launcher3.FastBitmapDrawable.1
        @Override // android.util.Property
        public Float get(FastBitmapDrawable fastBitmapDrawable) {
            return Float.valueOf(fastBitmapDrawable.mScale);
        }

        @Override // android.util.Property
        public void set(FastBitmapDrawable fastBitmapDrawable, Float value) {
            fastBitmapDrawable.mScale = value.floatValue();
            fastBitmapDrawable.invalidateSelf();
        }
    };
    private static ColorFilter sDisabledFColorFilter;
    private int mAlpha;
    protected Bitmap mBitmap;
    private float mDisabledAlpha;
    protected final int mIconColor;
    private boolean mIsDisabled;
    private boolean mIsPressed;
    protected final Paint mPaint;
    private float mScale;
    private ObjectAnimator mScaleAnimation;

    public interface Factory {
        FastBitmapDrawable newDrawable();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    public float getAnimatedScale() {
        if (this.mScaleAnimation == null) {
            return 1.0f;
        }
        return this.mScale;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getScale() {
        return this.mScale;
    }

    protected boolean isDisabled() {
        return this.mIsDisabled;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
    }

    public FastBitmapDrawable(Bitmap b) {
        this(b, 0);
    }

    public FastBitmapDrawable(BitmapInfo info) {
        this(info.icon, info.color);
    }

    protected FastBitmapDrawable(Bitmap b, int iconColor) {
        this(b, iconColor, false);
    }

    protected FastBitmapDrawable(Bitmap b, int iconColor, boolean isDisabled) {
        this.mPaint = new Paint(3);
        this.mDisabledAlpha = 1.0f;
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mBitmap = b;
        this.mIconColor = iconColor;
        setFilterBitmap(true);
        setIsDisabled(isDisabled);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mScale != 1.0f) {
            int iSave = canvas.save();
            Rect bounds = getBounds();
            float f = this.mScale;
            canvas.scale(f, f, bounds.exactCenterX(), bounds.exactCenterY());
            drawInternal(canvas, bounds);
            canvas.restoreToCount(iSave);
            return;
        }
        drawInternal(canvas, getBounds());
    }

    protected void drawInternal(Canvas canvas, Rect bounds) {
        canvas.drawBitmap(this.mBitmap, (Rect) null, bounds, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.mAlpha != alpha) {
            this.mAlpha = alpha;
            this.mPaint.setAlpha(alpha);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.mPaint.setFilterBitmap(filterBitmap);
        this.mPaint.setAntiAlias(filterBitmap);
    }

    public void setScale(float scale) {
        ObjectAnimator objectAnimator = this.mScaleAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mScaleAnimation = null;
        }
        this.mScale = scale;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mBitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mBitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        int length = state.length;
        for (int i = 0; i < length && state[i] != 16842919; i++) {
        }
        return false;
    }

    public void setIsDisabled(boolean isDisabled) {
        if (this.mIsDisabled != isDisabled) {
            this.mIsDisabled = isDisabled;
            updateFilter();
        }
    }

    private synchronized ColorFilter getDisabledColorFilter() {
        if (sDisabledFColorFilter == null) {
            ColorMatrix colorMatrix = new ColorMatrix();
            ColorMatrix colorMatrix2 = new ColorMatrix();
            colorMatrix2.setSaturation(0.0f);
            float[] array = colorMatrix.getArray();
            array[0] = 0.5f;
            array[6] = 0.5f;
            array[12] = 0.5f;
            float f = WorkQueueKt.MASK;
            array[4] = f;
            array[9] = f;
            array[14] = f;
            array[18] = this.mDisabledAlpha;
            colorMatrix2.preConcat(colorMatrix);
            sDisabledFColorFilter = new ColorMatrixColorFilter(colorMatrix2);
        }
        return sDisabledFColorFilter;
    }

    protected void updateFilter() {
        this.mPaint.setColorFilter(this.mIsDisabled ? getDisabledColorFilter() : null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return new MyConstantState(this.mBitmap, this.mIconColor, this.mIsDisabled);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class MyConstantState extends Drawable.ConstantState {
        protected final Bitmap mBitmap;
        protected final int mIconColor;
        protected final boolean mIsDisabled;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public MyConstantState(Bitmap bitmap, int color, boolean isDisabled) {
            this.mBitmap = bitmap;
            this.mIconColor = color;
            this.mIsDisabled = isDisabled;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public FastBitmapDrawable newDrawable() {
            return new FastBitmapDrawable(this.mBitmap, this.mIconColor, this.mIsDisabled);
        }
    }

    public static FastBitmapDrawable newIcon(Context context, ItemInfoWithIcon info) {
        FastBitmapDrawable fastBitmapDrawableNewIcon;
        if (E0xCustomFastBitmapDrawable.isCustomDrawIcon(info)) {
            fastBitmapDrawableNewIcon = new E0xCustomFastBitmapDrawable(context, info);
        } else {
            fastBitmapDrawableNewIcon = newIcon(context, info.bitmap);
        }
        fastBitmapDrawableNewIcon.setIsDisabled(info.isDisabled());
        return fastBitmapDrawableNewIcon;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FastBitmapDrawable newIcon(Context context, BitmapInfo info) {
        FastBitmapDrawable fastBitmapDrawable;
        FastBitmapDrawable fastBitmapDrawableNewDrawable;
        if (info instanceof Factory) {
            fastBitmapDrawableNewDrawable = ((Factory) info).newDrawable();
        } else {
            if (info.isLowRes()) {
                fastBitmapDrawable = new PlaceHolderIconDrawable(info, context);
            } else {
                fastBitmapDrawable = new FastBitmapDrawable(info);
            }
            fastBitmapDrawableNewDrawable = fastBitmapDrawable;
        }
        fastBitmapDrawableNewDrawable.mDisabledAlpha = Themes.getFloat(context, R.attr.disabledIconAlpha, 1.0f);
        return fastBitmapDrawableNewDrawable;
    }
}
