package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VectorDrawableCompat$VectorDrawableCompatState extends Drawable$ConstantState {
    boolean mAutoMirrored;
    boolean mCacheDirty;
    boolean mCachedAutoMirrored;
    Bitmap mCachedBitmap;
    int mCachedRootAlpha;
    int[] mCachedThemeAttrs;
    ColorStateList mCachedTint;
    PorterDuff$Mode mCachedTintMode;
    int mChangingConfigurations;
    Paint mTempPaint;
    ColorStateList mTint;
    PorterDuff$Mode mTintMode;
    VectorDrawableCompat$VPathRenderer mVPathRenderer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VectorDrawableCompat$VectorDrawableCompatState(VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState) {
        this.mTint = null;
        this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        if (vectorDrawableCompat$VectorDrawableCompatState != null) {
            this.mChangingConfigurations = vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
            VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer = new VectorDrawableCompat$VPathRenderer(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer);
            this.mVPathRenderer = vectorDrawableCompat$VPathRenderer;
            if (vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                vectorDrawableCompat$VPathRenderer.mFillPaint = new Paint(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mFillPaint);
            }
            if (vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                this.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mStrokePaint);
            }
            this.mTint = vectorDrawableCompat$VectorDrawableCompatState.mTint;
            this.mTintMode = vectorDrawableCompat$VectorDrawableCompatState.mTintMode;
            this.mAutoMirrored = vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canReuseBitmap(int i9, int i10) {
        return i9 == this.mCachedBitmap.getWidth() && i10 == this.mCachedBitmap.getHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canReuseCache() {
        return !this.mCacheDirty && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored && this.mCachedRootAlpha == this.mVPathRenderer.getRootAlpha();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createCachedBitmapIfNeeded(int i9, int i10) {
        if (this.mCachedBitmap == null || !canReuseBitmap(i9, i10)) {
            this.mCachedBitmap = Bitmap.createBitmap(i9, i10, Bitmap$Config.ARGB_8888);
            this.mCacheDirty = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
        canvas.drawBitmap(this.mCachedBitmap, (Rect) null, rect, getPaint(colorFilter));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Paint getPaint(ColorFilter colorFilter) {
        if (!hasTranslucentRoot() && colorFilter == null) {
            return null;
        }
        if (this.mTempPaint == null) {
            Paint paint = new Paint();
            this.mTempPaint = paint;
            paint.setFilterBitmap(true);
        }
        this.mTempPaint.setAlpha(this.mVPathRenderer.getRootAlpha());
        this.mTempPaint.setColorFilter(colorFilter);
        return this.mTempPaint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasTranslucentRoot() {
        return this.mVPathRenderer.getRootAlpha() < 255;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isStateful() {
        return this.mVPathRenderer.isStateful();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new VectorDrawableCompat(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onStateChanged(int[] iArr) {
        boolean zOnStateChanged = this.mVPathRenderer.onStateChanged(iArr);
        this.mCacheDirty |= zOnStateChanged;
        return zOnStateChanged;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateCacheStates() {
        this.mCachedTint = this.mTint;
        this.mCachedTintMode = this.mTintMode;
        this.mCachedRootAlpha = this.mVPathRenderer.getRootAlpha();
        this.mCachedAutoMirrored = this.mAutoMirrored;
        this.mCacheDirty = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateCachedBitmap(int i9, int i10) {
        this.mCachedBitmap.eraseColor(0);
        this.mVPathRenderer.draw(new Canvas(this.mCachedBitmap), i9, i10, null);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new VectorDrawableCompat(this);
    }

    public VectorDrawableCompat$VectorDrawableCompatState() {
        this.mTint = null;
        this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        this.mVPathRenderer = new VectorDrawableCompat$VPathRenderer();
    }
}
