package com.android.launcher3.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.mega.launcher.wallpaper.WallpaperRepository;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ImageDragView extends View {
    private static final int EDGE_SWIPE_THRESHOLD = 50;
    private static final int MASK_WIDTH = 550;
    private static final int MSG_SET_WALLPAPERS = 100;
    private static final String TAG = "ImageDragView";
    private int mCurrentIndex;
    private final DrawDelegate mDrawDelegate;
    private final PorterDuffXfermode mDuffXfermode;
    private final GestureDetector mGestureDetector;
    private IDragViewListener mIDragViewListener;
    private boolean mIsDrawnOnce;
    private boolean mIsFirst;
    private boolean mIsWallpaperUpdating;
    private final BitmapFactory.Options mOptions;
    private final Paint mPaint;
    private final Bitmap mToLeftScrBitmap;
    private final Bitmap mToRightScrBitmap;
    private final List<WallpaperInfo> mWallpaperInfos;
    private final Handler mWorkHandler;
    private Bitmap mWorkspaceCache;
    private Canvas mWorkspaceCacheCanvas;

    public interface IDragViewListener {
        default void onDrawn() {
        }

        void onPageSelected(int index, String reason);

        void onWallpaperChanged(Bitmap bitmap);
    }

    public int getCurrentIndex() {
        return this.mCurrentIndex;
    }

    public void setIDragViewListener(IDragViewListener viewListener) {
        this.mIDragViewListener = viewListener;
    }

    public ImageDragView(Context context) {
        this(context, null);
    }

    public ImageDragView(Context context, AttributeSet attrs) {
        super(context, attrs);
        GestureDetector gestureDetector = new GestureDetector(new GestureListener());
        this.mGestureDetector = gestureDetector;
        this.mWallpaperInfos = new LinkedList();
        this.mDrawDelegate = new DrawDelegate();
        this.mPaint = new Paint();
        this.mDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.mOptions = options;
        this.mWorkHandler = new Handler(Executors.UI_HELPER_EXECUTOR.getHandler().getLooper()) { // from class: com.android.launcher3.views.ImageDragView.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                try {
                    if (msg.what == 100) {
                        ImageDragView.this.handleSetWallpapers((List) msg.obj, msg.arg1);
                    }
                } catch (RuntimeException e) {
                    e.printStackTrace();
                }
            }
        };
        gestureDetector.setIsLongpressEnabled(false);
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.outWidth = 2560;
        options.outHeight = 1440;
        this.mToRightScrBitmap = makeSrc(MASK_WIDTH, 1440, true);
        this.mToLeftScrBitmap = makeSrc(MASK_WIDTH, 1440, false);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(2560, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(1440, BasicMeasure.EXACTLY));
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        MLog.d(TAG, "onSizeChanged: w=" + w + " h=" + h);
        if (w <= 0 || h <= 0) {
            return;
        }
        this.mDrawDelegate.setUpSize();
        ensureBitmapCache(this.mDrawDelegate.mCurrentShownBitmap, true);
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureBitmapCache(Bitmap currentShownBitmap) {
        ensureBitmapCache(currentShownBitmap, false);
    }

    private void ensureBitmapCache(Bitmap currentShownBitmap, boolean recreate) {
        if (!isLaidOut() || currentShownBitmap == null) {
            return;
        }
        if (this.mWorkspaceCache == null || recreate) {
            this.mWorkspaceCache = Bitmap.createScaledBitmap(currentShownBitmap, (int) (currentShownBitmap.getWidth() * 0.125f), (int) (currentShownBitmap.getHeight() * 0.125f), false);
            this.mWorkspaceCacheCanvas = new Canvas(this.mWorkspaceCache);
            this.mIDragViewListener.onWallpaperChanged(this.mWorkspaceCache);
        }
    }

    private Bitmap makeSrc(int w, int h, boolean toRight) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        float f = w;
        paint.setShader(new LinearGradient(0.0f, 0.0f, f, 0.0f, toRight ? 16777215 : -1, toRight ? -1 : 16777215, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, f, h, paint);
        return bitmapCreateBitmap;
    }

    public void setWallpapers(List<WallpaperInfo> wallpaperInfos, int startPosition, boolean sync) {
        MLog.d(TAG, "setWallpapers: size=" + wallpaperInfos.size() + " position=" + startPosition + " sync=" + sync);
        for (int i = 0; i < wallpaperInfos.size(); i++) {
            MLog.d(TAG, "setWallpapers: " + i + " " + wallpaperInfos.get(i));
        }
        if (sync) {
            handleSetWallpapers(wallpaperInfos, startPosition);
            return;
        }
        this.mWorkHandler.removeMessages(100);
        Message messageObtainMessage = this.mWorkHandler.obtainMessage(100);
        messageObtainMessage.obj = wallpaperInfos;
        messageObtainMessage.arg1 = startPosition;
        messageObtainMessage.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetWallpapers(List<WallpaperInfo> wallpaperInfos, int startPosition) {
        final int size;
        final ArrayList arrayList = new ArrayList(wallpaperInfos);
        if (isLayoutRtl()) {
            Collections.reverse(arrayList);
            size = (arrayList.size() - 1) - startPosition;
        } else {
            size = startPosition;
        }
        this.mIsWallpaperUpdating = true;
        WallpaperRepository.getInstance(getContext()).beginLoadingBitmap();
        HashSet hashSet = new HashSet(1);
        hashSet.add(arrayList.get(size));
        WallpaperRepository.getInstance(getContext()).refreshCache(getContext(), hashSet, this.mOptions, true, true);
        WallpaperRepository.getInstance(getContext()).refreshCache(getContext(), getNearestPathSet(arrayList, size), this.mOptions, false, false);
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.views.ImageDragView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m177xc88164c7(arrayList, size);
            }
        };
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            Executors.MAIN_EXECUTOR.post(runnable);
        }
    }

    /* JADX INFO: renamed from: lambda$handleSetWallpapers$0$com-android-launcher3-views-ImageDragView, reason: not valid java name */
    /* synthetic */ void m177xc88164c7(List list, int i) {
        this.mIsFirst = false;
        this.mWallpaperInfos.clear();
        this.mWallpaperInfos.addAll(list);
        this.mCurrentIndex = i;
        this.mDrawDelegate.drawOnInit();
        this.mIsWallpaperUpdating = false;
        WallpaperRepository.getInstance(getContext()).finishLoadingBitmap();
    }

    public WallpaperInfo getCurrentWallpaperInfo() {
        return this.mWallpaperInfos.get(this.mCurrentIndex);
    }

    public void setCurrentPage(int position) {
        if (!this.mIsDrawnOnce) {
            MLog.e(TAG, "Not be drawn once, set failed.");
        } else {
            this.mCurrentIndex = position;
            this.mDrawDelegate.handleSnapToCurrent();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        this.mDrawDelegate.realDraw(canvas);
        ensureBitmapCache(this.mDrawDelegate.mCurrentShownBitmap);
        Bitmap bitmap = this.mWorkspaceCache;
        if (bitmap == null || (canvas2 = this.mWorkspaceCacheCanvas) == null) {
            return;
        }
        canvas2.setBitmap(bitmap);
        this.mWorkspaceCacheCanvas.drawColor(0);
        this.mWorkspaceCacheCanvas.save();
        this.mWorkspaceCacheCanvas.scale(0.125f, 0.125f);
        this.mDrawDelegate.realDraw(this.mWorkspaceCacheCanvas);
        this.mWorkspaceCacheCanvas.restore();
        if (this.mIsFirst) {
            return;
        }
        this.mIsFirst = true;
        post(new Runnable() { // from class: com.android.launcher3.views.ImageDragView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m178lambda$onDraw$1$comandroidlauncher3viewsImageDragView();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onDraw$1$com-android-launcher3-views-ImageDragView, reason: not valid java name */
    /* synthetic */ void m178lambda$onDraw$1$comandroidlauncher3viewsImageDragView() {
        this.mIDragViewListener.onWallpaperChanged(this.mWorkspaceCache);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 3 || event.getAction() == 1) {
            this.mDrawDelegate.handleEventFinish();
        }
        if (event.getAction() != 0 || (event.getX() < getWidth() - 50 && event.getX() > 50.0f)) {
            return this.mGestureDetector.onTouchEvent(event);
        }
        return false;
    }

    public Bitmap getBitmap(WallpaperInfo info) {
        return info.getBitmap(getContext(), this.mOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<WallpaperInfo> getNearestPathSet(int position) {
        return getNearestPathSet(this.mWallpaperInfos, position);
    }

    private Set<WallpaperInfo> getNearestPathSet(List<WallpaperInfo> wallpapers, int position) {
        if (wallpapers.size() <= 5) {
            return new HashSet(wallpapers);
        }
        HashSet hashSet = new HashSet(5);
        hashSet.add(wallpapers.get(position));
        int size = position - 1;
        int i = 2;
        int i2 = 2;
        while (i2 > 0) {
            if (size < 0) {
                size = wallpapers.size() - 1;
            }
            hashSet.add(wallpapers.get(size));
            i2--;
            size--;
        }
        while (true) {
            position++;
            if (i <= 0) {
                return hashSet;
            }
            if (position >= wallpapers.size()) {
                position = 0;
            }
            hashSet.add(wallpapers.get(position));
            i--;
        }
    }

    private boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DrawDelegate {
        private static final int ANIMATION_DURATION = 300;
        private static final float AUTO_SCROLL_PERCENT_THRESHOLD = 0.05f;
        private static final float MOVE_X_THRESHOLD = 0.5f;
        private static final float X_MOVE_DISTANCE_FACTOR = 0.3f;
        private final Rect mBackSourceRect;
        private final Rect mBackTargetRect;
        private int mBackgroundTransX;
        private Bitmap mCurrentShownBitmap;
        private float mDraggingShownPercent;
        private boolean mForbidden;
        private final Rect mForeSourceRect;
        private final Rect mForeTargetRect;
        private int mForegroundTransX;
        private Bitmap mMaskBitmap;
        private final Rect mMaskSourceRect;
        private final Rect mMaskTargetRect;
        private Bitmap mNextShownBitmap;
        private boolean mToRight;

        /* JADX INFO: Access modifiers changed from: private */
        public void updateBitmapsMaybeDrawn(Bitmap maskBitmap, Bitmap currentShownBitmap, Bitmap nextShownBitmap) {
            this.mMaskBitmap = maskBitmap;
            this.mCurrentShownBitmap = currentShownBitmap;
            this.mNextShownBitmap = nextShownBitmap;
        }

        public void setForbidden(boolean forbidden) {
            this.mForbidden = forbidden;
        }

        private DrawDelegate() {
            this.mBackSourceRect = new Rect();
            this.mBackTargetRect = new Rect();
            this.mForeSourceRect = new Rect();
            this.mForeTargetRect = new Rect();
            this.mMaskSourceRect = new Rect();
            this.mMaskTargetRect = new Rect();
        }

        public void setUpSize() {
            this.mBackTargetRect.set(0, 0, ImageDragView.this.getWidth(), ImageDragView.this.getHeight());
            this.mForeTargetRect.set(0, 0, 0, ImageDragView.this.getHeight());
            this.mMaskSourceRect.set(0, 0, ImageDragView.MASK_WIDTH, ImageDragView.this.getHeight());
            this.mMaskTargetRect.set(0, 0, ImageDragView.MASK_WIDTH, ImageDragView.this.getHeight());
        }

        public void handleScroll(MotionEvent downEvent, MotionEvent currentEvent) {
            float x = currentEvent.getX() - downEvent.getX();
            if (this.mForbidden) {
                MLog.e(ImageDragView.TAG, "mCurrentIndex " + ImageDragView.this.mCurrentIndex + " handleScroll is forbidden.");
                return;
            }
            if (ImageDragView.this.mWallpaperInfos.size() > 1) {
                this.mToRight = x > 0.0f;
                int iBoundToRange = Utilities.boundToRange(ImageDragView.this.mCurrentIndex, ImageDragView.this.mWallpaperInfos);
                ImageDragView imageDragView = ImageDragView.this;
                Bitmap bitmap = imageDragView.getBitmap((WallpaperInfo) imageDragView.mWallpaperInfos.get(iBoundToRange));
                ImageDragView imageDragView2 = ImageDragView.this;
                Bitmap bitmap2 = imageDragView2.getBitmap((WallpaperInfo) imageDragView2.mWallpaperInfos.get(getNextIndex(iBoundToRange, this.mToRight)));
                if (bitmap == null || bitmap2 == null) {
                    MLog.e(ImageDragView.TAG, "Bitmap not loaded.");
                    return;
                }
                this.mDraggingShownPercent = Math.max(Math.min(Math.abs(x / ImageDragView.this.getWidth()), 1.0f), 0.0f);
                updateBitmapsMaybeDrawn(this.mToRight ? ImageDragView.this.mToRightScrBitmap : ImageDragView.this.mToLeftScrBitmap, bitmap, bitmap2);
                updateRectsAndDraw(false);
                return;
            }
            MLog.e(ImageDragView.TAG, "Only one bitmap so scroll forbidden.");
        }

        public void handleEventFinish() {
            if (this.mForbidden) {
                MLog.e(ImageDragView.TAG, "mCurrentIndex " + ImageDragView.this.mCurrentIndex + " handleEventFinish is forbidden.");
                return;
            }
            float f = this.mDraggingShownPercent;
            float f2 = 0.0f;
            if (f == 0.0f) {
                MLog.e(ImageDragView.TAG, "mDraggingShownPercent is zero handleEventFinish is forbidden.");
                return;
            }
            if (f >= AUTO_SCROLL_PERCENT_THRESHOLD && f >= AUTO_SCROLL_PERCENT_THRESHOLD) {
                f2 = 1.0f;
            }
            autoScrollToEnd(f, f2);
        }

        public void handleSnapToCurrent() {
            if (this.mForbidden) {
                MLog.e(ImageDragView.TAG, "mCurrentIndex " + ImageDragView.this.mCurrentIndex + " handleSnapToPosition is forbidden.");
                return;
            }
            int iBoundToRange = Utilities.boundToRange(ImageDragView.this.mCurrentIndex, ImageDragView.this.mWallpaperInfos);
            ImageDragView imageDragView = ImageDragView.this;
            updateBitmapsMaybeDrawn(null, imageDragView.getBitmap((WallpaperInfo) imageDragView.mWallpaperInfos.get(iBoundToRange)), null);
            updateRectsAndDraw(true);
            notifyPageSelected(iBoundToRange, "handleSnapToPosition");
        }

        private void autoScrollToEnd(float start, final float end) {
            MLog.d(ImageDragView.TAG, "autoScrollToEnd " + ImageDragView.this.mCurrentIndex);
            setForbidden(true);
            WallpaperRepository wallpaperRepository = WallpaperRepository.getInstance(ImageDragView.this.getContext());
            Context context = ImageDragView.this.getContext();
            ImageDragView imageDragView = ImageDragView.this;
            wallpaperRepository.refreshCache(context, imageDragView.getNearestPathSet(getNextIndex(imageDragView.mCurrentIndex, this.mToRight)), ImageDragView.this.mOptions, false, false);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(start, end);
            valueAnimatorOfFloat.setDuration((int) (Math.abs(end - start) * 300.0f));
            valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.views.ImageDragView.DrawDelegate.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    DrawDelegate.this.mDraggingShownPercent = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    float f = DrawDelegate.this.mDraggingShownPercent;
                    float f2 = end;
                    if (f != f2) {
                        DrawDelegate.this.updateRectsAndDraw(false);
                        return;
                    }
                    if (Float.compare(f2, 1.0f) == 0) {
                        ImageDragView imageDragView2 = ImageDragView.this;
                        DrawDelegate drawDelegate = DrawDelegate.this;
                        imageDragView2.mCurrentIndex = drawDelegate.getNextIndex(ImageDragView.this.mCurrentIndex, DrawDelegate.this.mToRight);
                        DrawDelegate drawDelegate2 = DrawDelegate.this;
                        drawDelegate2.notifyPageSelected(ImageDragView.this.mCurrentIndex, "onAnimationUpdate");
                    }
                    DrawDelegate drawDelegate3 = DrawDelegate.this;
                    drawDelegate3.updateBitmapsMaybeDrawn(null, ImageDragView.this.getBitmap((WallpaperInfo) ImageDragView.this.mWallpaperInfos.get(ImageDragView.this.mCurrentIndex)), null);
                    DrawDelegate.this.updateRectsAndDraw(true);
                    DrawDelegate.this.mDraggingShownPercent = 0.0f;
                    DrawDelegate.this.setForbidden(false);
                }
            });
            valueAnimatorOfFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateRectsAndDraw(boolean isFinish) {
            if (this.mCurrentShownBitmap == null) {
                int iBoundToRange = Utilities.boundToRange(ImageDragView.this.mCurrentIndex, ImageDragView.this.mWallpaperInfos);
                WallpaperRepository.getInstance(ImageDragView.this.getContext()).refreshCache(ImageDragView.this.getContext(), ImageDragView.this.getNearestPathSet(getNextIndex(iBoundToRange, this.mToRight)), ImageDragView.this.mOptions);
                ImageDragView imageDragView = ImageDragView.this;
                this.mCurrentShownBitmap = imageDragView.getBitmap((WallpaperInfo) imageDragView.mWallpaperInfos.get(iBoundToRange));
            }
            if (this.mCurrentShownBitmap == null) {
                MLog.e("current bitmap is null");
                return;
            }
            Bitmap bitmap = this.mNextShownBitmap;
            int width = bitmap != null ? bitmap.getWidth() : 1;
            Bitmap bitmap2 = this.mNextShownBitmap;
            int height = bitmap2 != null ? bitmap2.getHeight() : 1;
            this.mBackSourceRect.right = this.mCurrentShownBitmap.getWidth();
            this.mBackSourceRect.bottom = this.mCurrentShownBitmap.getHeight();
            if (this.mToRight) {
                this.mBackgroundTransX = computeBackgroundTrans(isFinish);
                int iComputeForegroundTrans = computeForegroundTrans(isFinish);
                this.mForegroundTransX = iComputeForegroundTrans;
                this.mForeSourceRect.right = iComputeForegroundTrans + ((int) (this.mDraggingShownPercent * width));
                this.mForeSourceRect.left = this.mForegroundTransX;
                this.mForeTargetRect.right = (int) (this.mDraggingShownPercent * ImageDragView.this.getWidth());
                this.mForeTargetRect.left = 0;
                this.mMaskTargetRect.left = ((int) (this.mDraggingShownPercent * ImageDragView.this.getWidth())) - 550;
            } else {
                this.mBackgroundTransX = -computeBackgroundTrans(isFinish);
                int i = -computeForegroundTrans(isFinish);
                this.mForegroundTransX = i;
                this.mForeSourceRect.right = i + width;
                this.mForeSourceRect.left = this.mForegroundTransX + ((int) ((1.0f - this.mDraggingShownPercent) * width));
                this.mForeTargetRect.right = ImageDragView.this.getWidth();
                this.mForeTargetRect.left = (int) ((1.0f - this.mDraggingShownPercent) * ImageDragView.this.getWidth());
                this.mMaskTargetRect.left = (int) ((1.0f - this.mDraggingShownPercent) * ImageDragView.this.getWidth());
            }
            this.mForeSourceRect.bottom = height;
            Rect rect = this.mMaskTargetRect;
            rect.right = rect.left + ImageDragView.MASK_WIDTH;
            ImageDragView.this.postInvalidate();
            ImageDragView.this.post(new Runnable() { // from class: com.android.launcher3.views.ImageDragView$DrawDelegate$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m179xfcd40242();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$updateRectsAndDraw$0$com-android-launcher3-views-ImageDragView$DrawDelegate, reason: not valid java name */
        /* synthetic */ void m179xfcd40242() {
            ImageDragView.this.mIDragViewListener.onWallpaperChanged(ImageDragView.this.mWorkspaceCache);
        }

        private int computeBackgroundTrans(boolean isFinish) {
            if (!isFinish) {
                float f = this.mDraggingShownPercent;
                if (f > 0.5f) {
                    return (int) ((f - 0.5f) * ImageDragView.this.getWidth() * 0.3f);
                }
            }
            return 0;
        }

        private int computeForegroundTrans(boolean isFinish) {
            if (isFinish) {
                return 0;
            }
            int width = (int) (ImageDragView.this.getWidth() * 0.3f);
            float f = this.mDraggingShownPercent;
            return f < 0.5f ? width : width - ((int) ((((f - 0.5f) * 2.0f) * ImageDragView.this.getWidth()) * 0.3f));
        }

        public void drawOnInit() {
            int iBoundToRange = Utilities.boundToRange(ImageDragView.this.mCurrentIndex, ImageDragView.this.mWallpaperInfos);
            ImageDragView imageDragView = ImageDragView.this;
            this.mCurrentShownBitmap = imageDragView.getBitmap((WallpaperInfo) imageDragView.mWallpaperInfos.get(iBoundToRange));
            this.mDraggingShownPercent = 0.0f;
            updateRectsAndDraw(true);
            ImageDragView.this.mIsDrawnOnce = true;
            if (ImageDragView.this.mIDragViewListener != null) {
                ImageDragView.this.mIDragViewListener.onDrawn();
            }
            Bitmap bitmap = this.mCurrentShownBitmap;
            if (bitmap != null) {
                this.mBackSourceRect.right = bitmap.getWidth();
                this.mBackSourceRect.bottom = this.mCurrentShownBitmap.getHeight();
                ImageDragView.this.ensureBitmapCache(this.mCurrentShownBitmap);
                ImageDragView.this.invalidate();
            }
        }

        public void realDraw(Canvas canvas) {
            Bitmap bitmap = this.mCurrentShownBitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                MLog.w(ImageDragView.TAG, "realDraw: invalid current bitmap");
                return;
            }
            int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, ImageDragView.this.getWidth(), ImageDragView.this.getHeight(), null);
            canvas.translate(this.mBackgroundTransX, 0.0f);
            canvas.drawBitmap(bitmap, this.mBackSourceRect, this.mBackTargetRect, ImageDragView.this.mPaint);
            canvas.restoreToCount(iSaveLayer);
            Bitmap bitmap2 = this.mNextShownBitmap;
            Bitmap bitmap3 = this.mMaskBitmap;
            if (bitmap2 == null || bitmap2.isRecycled() || bitmap3 == null || bitmap3.isRecycled()) {
                return;
            }
            int iSaveLayer2 = canvas.saveLayer(0.0f, 0.0f, ImageDragView.this.getWidth(), ImageDragView.this.getHeight(), null);
            canvas.drawBitmap(bitmap2, this.mForeSourceRect, this.mForeTargetRect, ImageDragView.this.mPaint);
            ImageDragView.this.mPaint.setXfermode(ImageDragView.this.mDuffXfermode);
            canvas.drawBitmap(bitmap3, this.mMaskSourceRect, this.mMaskTargetRect, ImageDragView.this.mPaint);
            ImageDragView.this.mPaint.setXfermode(null);
            canvas.restoreToCount(iSaveLayer2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getNextIndex(int currentIndex, boolean toRight) {
            int i = currentIndex + (toRight ? -1 : 1);
            if (i == -1) {
                return ImageDragView.this.mWallpaperInfos.size() - 1;
            }
            if (i == ImageDragView.this.mWallpaperInfos.size()) {
                return 0;
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyPageSelected(int index, String reason) {
            if (ImageDragView.this.mIDragViewListener != null) {
                ImageDragView.this.mIDragViewListener.onPageSelected(index, reason);
            }
        }
    }

    private class GestureListener implements GestureDetector.OnGestureListener {
        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent1, float v, float v1) {
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        private GestureListener() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (ImageDragView.this.mIsWallpaperUpdating) {
                MLog.d(ImageDragView.TAG, "onDown: wallpaper updating");
            }
            return !ImageDragView.this.mIsWallpaperUpdating;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            ImageDragView.this.callOnClick();
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent1, float v, float v1) {
            ImageDragView.this.mDrawDelegate.handleScroll(motionEvent, motionEvent1);
            return true;
        }
    }
}
