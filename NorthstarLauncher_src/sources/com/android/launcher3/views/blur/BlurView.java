package com.android.launcher3.views.blur;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.dragableviews.LocationNotifier;
import com.android.launcher3.views.dragableviews.OnLocationChangedListener;

/* JADX INFO: loaded from: classes.dex */
public class BlurView extends FrameLayout implements OnLocationChangedListener {
    private static final int DISPLAY_STRATEGY_ALWAYS = 1;
    private static final int DISPLAY_STRATEGY_NORMAL = 0;
    private final ActivityContext mActivity;
    private final BlurRenderWatcher.IBlurRender mBlurRender;
    private int mDisplayStrategy;
    private final WallpaperBitmapProvider.OnWallpaperChangedListener mListener;
    private final Rect mLocationInDragLayer;
    private final Rect mMyLocation;
    private final Paint mPaint;
    private final float[] mTmpLocation;
    private Bitmap mWallpaperBitmap;
    private final WallpaperBlurEngine mWallpaperBlurEngine;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int getDisplayStrategy() {
        return this.mDisplayStrategy;
    }

    @ViewDebug.ExportedProperty(category = "launcher")
    public Bitmap getWallpaperBitmap() {
        return this.mWallpaperBitmap;
    }

    public BlurView(Context context) {
        this(context, null);
    }

    public BlurView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BlurView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTmpLocation = new float[2];
        this.mMyLocation = new Rect();
        this.mLocationInDragLayer = new Rect();
        this.mPaint = new Paint(2);
        this.mListener = new WallpaperBitmapProvider.OnWallpaperChangedListener() { // from class: com.android.launcher3.views.blur.BlurView.1
            @Override // com.android.launcher3.views.blur.WallpaperBitmapProvider.OnWallpaperChangedListener
            public void onWallpaperChanged(Bitmap newBitmap) {
                BlurView.this.mWallpaperBitmap = newBitmap;
                BlurView.this.updateLocation();
            }
        };
        this.mBlurRender = new BlurRenderWatcher.IBlurRender() { // from class: com.android.launcher3.views.blur.BlurView.2
            @Override // com.android.launcher3.views.blur.BlurRenderWatcher.IBlurRender
            public void blur() {
                BlurView.this.updateLocation();
            }

            @Override // com.android.launcher3.views.blur.BlurRenderWatcher.IBlurRender
            public void setBlurEnabled(boolean enabled) {
                BlurView.this.updateLocation();
            }
        };
        this.mDisplayStrategy = 0;
        ActivityContext activityContextLookupContext = ActivityContext.lookupContext(getContext());
        this.mActivity = activityContextLookupContext;
        setWillNotDraw(false);
        setClipToOutline(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.views.blur.BlurView.3
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, BlurView.this.getWidth(), BlurView.this.getHeight(), BlurView.this.mDisplayStrategy == 0 ? 32.0f : 0.0f);
            }
        });
        this.mWallpaperBlurEngine = activityContextLookupContext.getWallpaperBlurEngine();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BlurView, defStyleAttr, 0);
        this.mDisplayStrategy = typedArrayObtainStyledAttributes.getInteger(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        WallpaperBlurEngine wallpaperBlurEngine = this.mWallpaperBlurEngine;
        if (wallpaperBlurEngine != null) {
            wallpaperBlurEngine.addOnWallpaperChangedListener(this.mListener);
            this.mWallpaperBitmap = this.mWallpaperBlurEngine.getWallpaperBitmap();
            addListeners();
            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher3.views.blur.BlurView.4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    BlurView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                    BlurView.this.updateLocation();
                    return true;
                }
            });
            BlurRenderWatcher.getInstance().addBlurListener(this.mBlurRender);
            updateLocation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WallpaperBlurEngine wallpaperBlurEngine = this.mWallpaperBlurEngine;
        if (wallpaperBlurEngine != null) {
            wallpaperBlurEngine.removeOnWallpaperChangedListener(this.mListener);
            removeListeners();
            BlurRenderWatcher.getInstance().removeBlurListener(this.mBlurRender);
        }
    }

    private void addListeners() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof LocationNotifier) {
                ((LocationNotifier) parent).addOnLocationChangedListener(this);
            }
        }
    }

    private void removeListeners() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof LocationNotifier) {
                ((LocationNotifier) parent).removeOnLocationChangedListener(this);
            }
        }
    }

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean isBlurEnabledOuter() {
        return BlurRenderWatcher.getInstance().isBlurEnabled();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mMyLocation.set(0, 0, w, h);
        updateLocation();
    }

    @Override // com.android.launcher3.views.dragableviews.OnLocationChangedListener
    public void onLocationChanged() {
        updateLocation();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.mWallpaperBitmap;
        if (bitmap == null || bitmap.isRecycled() || !isBlurEnabled()) {
            return;
        }
        canvas.drawBitmap(this.mWallpaperBitmap, this.mLocationInDragLayer, this.mMyLocation, this.mPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocation() {
        updateLocation(isBlurEnabled());
    }

    private void updateLocation(boolean isEnabled) {
        if (isEnabled) {
            float[] fArr = this.mTmpLocation;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            Utilities.getDescendantCoordRelativeToAncestor(this, this.mActivity.getDragLayer(), this.mTmpLocation, true);
            Rect rect = this.mLocationInDragLayer;
            float[] fArr2 = this.mTmpLocation;
            float f = fArr2[0];
            rect.set((int) ((f * 0.125f) + 0.5f), (int) ((fArr2[1] * 0.125f) + 0.5f), (int) (((f + getWidth()) * 0.125f) - 0.5f), (int) (((this.mTmpLocation[1] + getHeight()) * 0.125f) - 0.5f));
        }
        postInvalidate();
    }

    private boolean isBlurEnabled() {
        int i = this.mDisplayStrategy;
        if (i != 1) {
            return i == 0 && BlurRenderWatcher.getInstance().isBlurEnabled();
        }
        return true;
    }
}
