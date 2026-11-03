package com.android.launcher3.graphics;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.android.launcher3.R;
import com.android.launcher3.icons.BitmapRenderer;
import java.io.IOException;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class ShadowDrawable extends Drawable {
    private final Paint mPaint;
    private final ShadowDrawableState mState;

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public ShadowDrawable() {
        this(new ShadowDrawableState());
    }

    private ShadowDrawable(ShadowDrawableState state) {
        this.mPaint = new Paint(3);
        this.mState = state;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        if (this.mState.mLastDrawnBitmap == null) {
            regenerateBitmapCache();
        }
        canvas.drawBitmap(this.mState.mLastDrawnBitmap, (Rect) null, bounds, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.mPaint.setAlpha(alpha);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mState.mIntrinsicHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mState.mIntrinsicWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.mState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme t) {
        TypedArray typedArrayObtainStyledAttributes = t.obtainStyledAttributes(new int[]{R.attr.isWorkspaceDarkText});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        if (this.mState.mIsDark != z) {
            this.mState.mIsDark = z;
            this.mState.mLastDrawnBitmap = null;
            invalidateSelf();
        }
    }

    private void regenerateBitmapCache() {
        final Drawable drawableMutate = this.mState.mChildState.newDrawable().mutate();
        drawableMutate.setBounds(this.mState.mShadowSize, this.mState.mShadowSize, this.mState.mIntrinsicWidth - this.mState.mShadowSize, this.mState.mIntrinsicHeight - this.mState.mShadowSize);
        drawableMutate.setTint(this.mState.mIsDark ? this.mState.mDarkTintColor : -1);
        if (this.mState.mIsDark) {
            ShadowDrawableState shadowDrawableState = this.mState;
            int i = shadowDrawableState.mIntrinsicWidth;
            int i2 = this.mState.mIntrinsicHeight;
            Objects.requireNonNull(drawableMutate);
            shadowDrawableState.mLastDrawnBitmap = BitmapRenderer.createHardwareBitmap(i, i2, new BitmapRenderer() { // from class: com.android.launcher3.graphics.ShadowDrawable$$ExternalSyntheticLambda0
                @Override // com.android.launcher3.icons.BitmapRenderer
                public final void draw(Canvas canvas) {
                    drawableMutate.draw(canvas);
                }
            });
            return;
        }
        final Paint paint = new Paint(3);
        paint.setMaskFilter(new BlurMaskFilter(this.mState.mShadowSize, BlurMaskFilter.Blur.NORMAL));
        final int[] iArr = new int[2];
        int i3 = this.mState.mIntrinsicWidth;
        int i4 = this.mState.mIntrinsicHeight;
        Objects.requireNonNull(drawableMutate);
        final Bitmap bitmapExtractAlpha = BitmapRenderer.createSoftwareBitmap(i3, i4, new BitmapRenderer() { // from class: com.android.launcher3.graphics.ShadowDrawable$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                drawableMutate.draw(canvas);
            }
        }).extractAlpha(paint, iArr);
        paint.setMaskFilter(null);
        paint.setColor(this.mState.mShadowColor);
        ShadowDrawableState shadowDrawableState2 = this.mState;
        shadowDrawableState2.mLastDrawnBitmap = BitmapRenderer.createHardwareBitmap(shadowDrawableState2.mIntrinsicWidth, this.mState.mIntrinsicHeight, new BitmapRenderer() { // from class: com.android.launcher3.graphics.ShadowDrawable$$ExternalSyntheticLambda1
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                ShadowDrawable.lambda$regenerateBitmapCache$0(bitmapExtractAlpha, iArr, paint, drawableMutate, canvas);
            }
        });
    }

    static /* synthetic */ void lambda$regenerateBitmapCache$0(Bitmap bitmap, int[] iArr, Paint paint, Drawable drawable, Canvas canvas) {
        canvas.drawBitmap(bitmap, iArr[0], iArr[1], paint);
        drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources r, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainStyledAttributes;
        super.inflate(r, parser, attrs, theme);
        if (theme == null) {
            typedArrayObtainStyledAttributes = r.obtainAttributes(attrs, R.styleable.ShadowDrawable);
        } else {
            typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attrs, R.styleable.ShadowDrawable, 0, 0);
        }
        try {
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            if (drawable == null) {
                throw new XmlPullParserException("missing src attribute");
            }
            this.mState.mShadowColor = typedArrayObtainStyledAttributes.getColor(1, -16777216);
            this.mState.mShadowSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
            this.mState.mDarkTintColor = typedArrayObtainStyledAttributes.getColor(3, -16777216);
            this.mState.mIntrinsicHeight = drawable.getIntrinsicHeight() + (this.mState.mShadowSize * 2);
            this.mState.mIntrinsicWidth = drawable.getIntrinsicWidth() + (this.mState.mShadowSize * 2);
            this.mState.mChangingConfigurations = drawable.getChangingConfigurations();
            this.mState.mChildState = drawable.getConstantState();
            typedArrayObtainStyledAttributes.recycle();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private static class ShadowDrawableState extends Drawable.ConstantState {
        int mChangingConfigurations;
        Drawable.ConstantState mChildState;
        int mDarkTintColor;
        int mIntrinsicHeight;
        int mIntrinsicWidth;
        boolean mIsDark;
        Bitmap mLastDrawnBitmap;
        int mShadowColor;
        int mShadowSize;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        private ShadowDrawableState() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ShadowDrawable(this);
        }
    }
}
