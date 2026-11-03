package mega.blur.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import com.mega.internal.R;
import mega.blur.engine.Blur;
import mega.blur.engine.BlurConfig;
import mega.blur.engine.BlurEngine;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class BlurView extends View {
    private static final StopException STOP_EXCEPTION = new StopException();
    private static final String TAG = "BlurView";
    private static int sRenderCount;
    private Bitmap mBitmapToBlur;
    private BlurEngine mBlurImpl;
    private int mBlurRadius;
    private Bitmap mBlurredBitmap;
    private Canvas mBlurringCanvas;
    private View mDecorView;
    private boolean mDifferentRoot;
    private float mDownSampleFactor;
    private boolean mEnableRealtimeBlur;
    private boolean mIsRendering;
    private int mOverlayColor;
    private final Paint mPaint;
    private final ViewTreeObserver.OnPreDrawListener mPreDrawListener;
    private final Rect mRectDst;
    private final Rect mRectSrc;

    static /* synthetic */ int access$808() {
        int i = sRenderCount;
        sRenderCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$810() {
        int i = sRenderCount;
        sRenderCount = i - 1;
        return i;
    }

    public BlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRectSrc = new Rect();
        this.mRectDst = new Rect();
        this.mDownSampleFactor = 1.0f;
        this.mPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: mega.blur.view.BlurView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                Log.d(BlurView.TAG, "onPreDraw....");
                if (BlurView.this.mDecorView != null) {
                    int[] iArr = new int[2];
                    Bitmap bitmap = BlurView.this.mBlurredBitmap;
                    View view = BlurView.this.mDecorView;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (BlurView.this.isShown() && BlurView.this.prepare()) {
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        boolean z = BlurView.this.mBlurredBitmap != bitmap;
                        view.getLocationOnScreen(iArr);
                        int i = -iArr[0];
                        int i2 = -iArr[1];
                        BlurView.this.getLocationOnScreen(iArr);
                        int i3 = i + iArr[0];
                        int i4 = i2 + iArr[1];
                        BlurView.this.mBitmapToBlur.eraseColor(BlurView.this.mOverlayColor & ViewCompat.MEASURED_SIZE_MASK);
                        int iSave = BlurView.this.mBlurringCanvas.save();
                        BlurView.this.mIsRendering = true;
                        BlurView.access$808();
                        try {
                            BlurView.this.mBlurringCanvas.scale((BlurView.this.mBitmapToBlur.getWidth() * 1.0f) / BlurView.this.getWidth(), (BlurView.this.mBitmapToBlur.getHeight() * 1.0f) / BlurView.this.getHeight());
                            BlurView.this.mBlurringCanvas.translate(-i3, -i4);
                            if (view.getBackground() != null) {
                                view.getBackground().draw(BlurView.this.mBlurringCanvas);
                            }
                            view.draw(BlurView.this.mBlurringCanvas);
                        } catch (StopException unused) {
                        } catch (Throwable th) {
                            BlurView.this.mIsRendering = false;
                            BlurView.access$810();
                            BlurView.this.mBlurringCanvas.restoreToCount(iSave);
                            throw th;
                        }
                        BlurView.this.mIsRendering = false;
                        BlurView.access$810();
                        BlurView.this.mBlurringCanvas.restoreToCount(iSave);
                        MLog.e("draw bitmap: prepare " + (jCurrentTimeMillis2 - jCurrentTimeMillis) + ", prepare & draw " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        BlurView.this.mBlurImpl.execute(BlurView.this.mBitmapToBlur, BlurView.this.mBlurredBitmap);
                        if (!BlurView.this.mEnableRealtimeBlur) {
                            BlurView.this.removePreDrawListener();
                            BlurView.this.setBackground(new BitmapDrawable(BlurView.this.getResources(), BlurView.this.mBlurredBitmap));
                            return true;
                        }
                        if (z || BlurView.this.mDifferentRoot) {
                            BlurView.this.invalidate();
                        }
                    }
                    return true;
                }
                MLog.e(BlurView.TAG, "we don't support realtime in float view");
                return true;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BlurFrameLayout);
        this.mBlurRadius = typedArrayObtainStyledAttributes.getInt(R.styleable.BlurFrameLayout_blurRadius, 25);
        this.mDownSampleFactor = typedArrayObtainStyledAttributes.getFloat(R.styleable.BlurFrameLayout_blurDownSampleFactor, 1.0f);
        this.mOverlayColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BlurFrameLayout_blurOverlayColor, ViewCompat.MEASURED_SIZE_MASK);
        this.mEnableRealtimeBlur = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BlurFrameLayout_realtimeBlur, true);
        typedArrayObtainStyledAttributes.recycle();
        setupBlurImpl();
        this.mPaint = new Paint();
    }

    protected void setupBlurImpl() {
        BlurEngine blurEngine = this.mBlurImpl;
        if (blurEngine != null) {
            blurEngine.destroy();
        }
        this.mBlurImpl = new Blur(getContext(), new BlurConfig.Builder().radius(this.mBlurRadius).build());
    }

    public void setBlurRadius(int i) {
        int iMin = Math.min(i, 25);
        if (this.mBlurRadius != iMin) {
            this.mBlurRadius = iMin;
            setupBlurImpl();
            invalidate();
        }
    }

    public void setDownSampleFactor(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        }
        if (this.mDownSampleFactor != f) {
            this.mDownSampleFactor = f;
            releaseBitmap();
            invalidate();
        }
    }

    public void setOverlayColor(int i) {
        if (this.mOverlayColor != i) {
            this.mOverlayColor = i;
            invalidate();
        }
    }

    private void releaseBitmap() {
        Bitmap bitmap = this.mBitmapToBlur;
        if (bitmap != null) {
            bitmap.recycle();
            this.mBitmapToBlur = null;
        }
        Bitmap bitmap2 = this.mBlurredBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.mBlurredBitmap = null;
        }
    }

    protected void release() {
        releaseBitmap();
        this.mBlurImpl.destroy();
    }

    protected boolean prepare() {
        Bitmap bitmap;
        if (this.mBlurRadius == 0) {
            release();
            return false;
        }
        float f = this.mDownSampleFactor;
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f));
        int iMax2 = Math.max(1, (int) (height / f));
        if (this.mBlurringCanvas == null || (bitmap = this.mBlurredBitmap) == null || bitmap.getWidth() != iMax || this.mBlurredBitmap.getHeight() != iMax2) {
            releaseBitmap();
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                this.mBitmapToBlur = bitmapCreateBitmap;
                if (bitmapCreateBitmap != null) {
                    this.mBlurringCanvas = new Canvas(this.mBitmapToBlur);
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                    this.mBlurredBitmap = bitmapCreateBitmap2;
                    if (bitmapCreateBitmap2 != null) {
                        Log.e(TAG, "createBitmap...");
                    } else {
                        release();
                        return false;
                    }
                } else {
                    release();
                    return false;
                }
            } catch (OutOfMemoryError unused) {
                release();
                return false;
            } catch (Throwable unused2) {
                release();
                return false;
            }
        }
        return true;
    }

    protected View getActivityDecorView() {
        Context context = getContext();
        for (int i = 0; i < 4 && !(context instanceof Activity) && (context instanceof ContextWrapper); i++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView();
        }
        return null;
    }

    private void addPreDrawListener() {
        View view = this.mDecorView;
        if (view != null) {
            view.getViewTreeObserver().addOnPreDrawListener(this.mPreDrawListener);
        } else {
            getViewTreeObserver().addOnPreDrawListener(this.mPreDrawListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePreDrawListener() {
        View view = this.mDecorView;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.mPreDrawListener);
        } else {
            getViewTreeObserver().removeOnPreDrawListener(this.mPreDrawListener);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        MLog.d("onAttachedToWindow...");
        super.onAttachedToWindow();
        View activityDecorView = getActivityDecorView();
        this.mDecorView = activityDecorView;
        if (activityDecorView != null) {
            boolean z = activityDecorView.getRootView() != getRootView();
            this.mDifferentRoot = z;
            if (z) {
                this.mDecorView.postInvalidate();
            }
        } else {
            this.mDifferentRoot = false;
        }
        addPreDrawListener();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        MLog.d("onDetachedFromWindow...");
        removePreDrawListener();
        release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        MLog.e("draw");
        if (!this.mEnableRealtimeBlur) {
            super.draw(canvas);
        } else {
            if (this.mIsRendering) {
                throw STOP_EXCEPTION;
            }
            if (sRenderCount > 0) {
                return;
            }
            super.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        MLog.e("on draw");
        super.onDraw(canvas);
        if (this.mEnableRealtimeBlur) {
            drawBlurredBitmap(canvas, this.mBlurredBitmap, this.mOverlayColor);
        }
    }

    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i) {
        this.mRectDst.right = getWidth();
        this.mRectDst.bottom = getHeight();
        if (bitmap != null) {
            this.mRectSrc.right = bitmap.getWidth();
            this.mRectSrc.bottom = bitmap.getHeight();
            MLog.d(this.mRectSrc.toString());
            MLog.d(this.mRectDst.toString());
            canvas.drawBitmap(bitmap, this.mRectSrc, this.mRectDst, (Paint) null);
        }
        this.mPaint.setColor(i);
        canvas.drawRect(this.mRectDst, this.mPaint);
    }

    private static class StopException extends RuntimeException {
        private StopException() {
        }
    }
}
