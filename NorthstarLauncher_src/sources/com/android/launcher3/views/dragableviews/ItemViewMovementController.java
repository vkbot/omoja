package com.android.launcher3.views.dragableviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.util.Consumer;
import androidx.core.view.PointerIconCompat;
import com.android.launcher3.Launcher;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import java.lang.ref.WeakReference;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ItemViewMovementController {
    public static final Rect DEFAULT_EMPTY_LOCATION = new Rect(0, 0, 1, 1);
    public static final long MOVING_TIME = 200;
    private static final String TAG = "ItemViewMovement";
    private Runnable mAnimationFinishCallback;
    private WeakReference<DraggableRecyclerView> mDraggableWeakReference;
    private ImageView mImageView;
    private WeakReference<Launcher> mLauncherWeakReference;
    private ValueAnimator mMovingAnimator;
    private int mOriginHeight;
    private int mOriginWidth;
    private int mOriginX;
    private int mOriginY;
    private final Paint mPaint;
    private float mScreenDensity;
    private IWidgetTableDelegate mTableDelegate;
    private Rect mTargetBounds;

    public interface IWidgetTableDelegate {
        void getTargetViewPosition(ItemInfo info, Consumer<Rect> target);

        boolean isWidgetViewShow();

        void notifyWidgetItemRemoved(ItemInfo info);

        void setWidgetTableRenderFinishListener(Runnable listener);

        void updateHardwareLayerType(int type);
    }

    private int dip2px(int dip) {
        return (int) (dip * this.mScreenDensity);
    }

    public void setWidgetTable(IWidgetTableDelegate widgetTableDelegate) {
        this.mTableDelegate = widgetTableDelegate;
    }

    private ItemViewMovementController() {
        this.mPaint = new Paint();
        ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.0f).setDuration(200L);
        this.mMovingAnimator = duration;
        duration.setInterpolator(Interpolators.LINEAR);
        this.mMovingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (ItemViewMovementController.this.mTargetBounds == null || ItemViewMovementController.this.mImageView == null) {
                    MLog.e(ItemViewMovementController.TAG, "mTargetBounds " + ItemViewMovementController.this.mTargetBounds + " mImageView " + ItemViewMovementController.this.mImageView);
                    return;
                }
                int i = ItemViewMovementController.this.mTargetBounds.left + ((int) ((ItemViewMovementController.this.mOriginX - ItemViewMovementController.this.mTargetBounds.left) * fFloatValue));
                int i2 = ItemViewMovementController.this.mTargetBounds.top + ((int) ((ItemViewMovementController.this.mOriginY - ItemViewMovementController.this.mTargetBounds.top) * fFloatValue));
                int iWidth = ItemViewMovementController.this.mTargetBounds.width() + ((int) ((ItemViewMovementController.this.mOriginWidth - ItemViewMovementController.this.mTargetBounds.width()) * fFloatValue));
                int iHeight = ItemViewMovementController.this.mTargetBounds.height() + ((int) ((ItemViewMovementController.this.mOriginHeight - ItemViewMovementController.this.mTargetBounds.height()) * fFloatValue));
                float f = iWidth;
                ItemViewMovementController.this.mImageView.setTranslationX((i + (f / 2.0f)) - (ItemViewMovementController.this.mOriginWidth / 2.0f));
                float f2 = iHeight;
                ItemViewMovementController.this.mImageView.setTranslationY((i2 + (f2 / 2.0f)) - (ItemViewMovementController.this.mOriginHeight / 2.0f));
                if (ItemViewMovementController.this.mOriginWidth == 0 || ItemViewMovementController.this.mOriginHeight == 0) {
                    return;
                }
                float f3 = (f * 1.0f) / ItemViewMovementController.this.mOriginWidth;
                float f4 = (f2 * 1.0f) / ItemViewMovementController.this.mOriginHeight;
                ItemViewMovementController.this.mImageView.setScaleX(f3 + ((1.0f - f3) * fFloatValue));
                ItemViewMovementController.this.mImageView.setScaleY(f4 + ((1.0f - f4) * fFloatValue));
            }
        });
        this.mMovingAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation, boolean isReverse) {
                ItemViewMovementController.this.mAnimationFinishCallback.run();
                super.onAnimationEnd(animation, isReverse);
                MLog.e(ItemViewMovementController.TAG, "onAnimationEnd: detach called");
                ItemViewMovementController itemViewMovementController = ItemViewMovementController.this;
                itemViewMovementController.detachView(itemViewMovementController.mImageView);
                Launcher launcher = (Launcher) ItemViewMovementController.this.mLauncherWeakReference.get();
                if (launcher != null) {
                    launcher.getWorkspace().handleItemInfoRuntimeWhenAnimEnd();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachView(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public void setDraggableRecyclerView(DraggableRecyclerView view) {
        this.mDraggableWeakReference = new WeakReference<>(view);
        this.mLauncherWeakReference = new WeakReference<>(Launcher.getLauncher(view.getContext()));
        detachView(this.mImageView);
        this.mImageView = new ImageView(view.getContext().getApplicationContext());
        WindowManager windowManager = (WindowManager) view.getContext().getSystemService(WindowManager.class);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        this.mScreenDensity = displayMetrics.density;
    }

    public boolean isInAnimation() {
        return this.mMovingAnimator.isRunning();
    }

    public void handleViewMovement(final View sourceView, boolean toTop, Runnable fallback) {
        Bitmap bitmapCreateHardwareBitmap;
        if (this.mTableDelegate == null) {
            MLog.e(TAG, "mTableDelegate is null");
            if (fallback != null) {
                fallback.run();
                return;
            }
            return;
        }
        final DraggableRecyclerView draggableRecyclerView = this.mDraggableWeakReference.get();
        if (draggableRecyclerView == null) {
            MLog.e(TAG, "DraggableRecyclerView is null");
            if (fallback != null) {
                fallback.run();
                return;
            }
            return;
        }
        final Launcher launcher = this.mLauncherWeakReference.get();
        if (launcher == null) {
            MLog.e(TAG, "mLauncherWeakReference is null");
            if (fallback != null) {
                fallback.run();
                return;
            }
            return;
        }
        if (this.mMovingAnimator.isRunning()) {
            MLog.e(TAG, "mMovingAnimator is running");
            return;
        }
        MLog.e(TAG, "handleViewMovement: " + toTop + " " + sourceView.getTag());
        if (toTop) {
            boolean z = sourceView instanceof LauncherAppWidgetHostView;
            if ((z && !this.mTableDelegate.isWidgetViewShow()) || (!z && this.mTableDelegate.isWidgetViewShow())) {
                MLog.e(TAG, "different view type");
                if (fallback != null) {
                    fallback.run();
                    return;
                }
                return;
            }
            sourceView.setLayerType(2, this.mPaint);
            if (z) {
                bitmapCreateHardwareBitmap = createHardwareBitmap(((LauncherAppWidgetHostView) sourceView).getChildAt(0));
            } else {
                bitmapCreateHardwareBitmap = createHardwareBitmap(sourceView);
            }
            sourceView.setLayerType(0, this.mPaint);
            this.mImageView.setImageBitmap(bitmapCreateHardwareBitmap);
            int[] iArr = new int[2];
            if (z) {
                ((LauncherAppWidgetHostView) sourceView).getChildAt(0).getLocationOnScreen(iArr);
            } else {
                sourceView.getLocationOnScreen(iArr);
            }
            this.mOriginX = iArr[0];
            this.mOriginY = iArr[1];
            this.mOriginWidth = sourceView.getWidth();
            this.mOriginHeight = sourceView.getHeight();
            if (this.mImageView.getParent() != null) {
                ((ViewGroup) this.mImageView.getParent()).removeView(this.mImageView);
            }
            BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(this.mOriginWidth, this.mOriginHeight);
            layoutParams.customPosition = true;
            this.mImageView.setTranslationX(this.mOriginX);
            this.mImageView.setTranslationY(this.mOriginY);
            this.mImageView.setScaleX(1.0f);
            this.mImageView.setScaleY(1.0f);
            this.mLauncherWeakReference.get().getDragLayer().addView(this.mImageView, layoutParams);
            final ItemInfo itemInfo = (ItemInfo) sourceView.getTag();
            this.mTableDelegate.getTargetViewPosition(itemInfo, new Consumer() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController$$ExternalSyntheticLambda0
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.m196xe4c53b32(itemInfo, launcher, sourceView, (Rect) obj);
                }
            });
            this.mMovingAnimator.start();
            return;
        }
        Utilities.postOnPreDraw(draggableRecyclerView, new Runnable() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m197x1da59bd1(sourceView, launcher, draggableRecyclerView);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$handleViewMovement$0$com-android-launcher3-views-dragableviews-ItemViewMovementController, reason: not valid java name */
    /* synthetic */ void m196xe4c53b32(final ItemInfo itemInfo, Launcher launcher, View view, Rect rect) {
        MLog.i(TAG, " target bounds is " + rect);
        this.mTargetBounds = rect;
        this.mAnimationFinishCallback = new Runnable() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController.3
            @Override // java.lang.Runnable
            public void run() {
                if (ItemViewMovementController.this.mTableDelegate != null) {
                    ItemViewMovementController.this.mTableDelegate.notifyWidgetItemRemoved(itemInfo);
                }
            }
        };
        launcher.removeItem(view, itemInfo, true, false);
    }

    /* JADX INFO: renamed from: lambda$handleViewMovement$1$com-android-launcher3-views-dragableviews-ItemViewMovementController, reason: not valid java name */
    /* synthetic */ void m197x1da59bd1(View view, Launcher launcher, final DraggableRecyclerView draggableRecyclerView) {
        this.mTableDelegate.updateHardwareLayerType(2);
        Bitmap bitmapCreateHardwareBitmap = createHardwareBitmap(view);
        this.mTableDelegate.updateHardwareLayerType(0);
        this.mImageView.setImageBitmap(bitmapCreateHardwareBitmap);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.mOriginX = iArr[0];
        this.mOriginY = iArr[1];
        this.mOriginWidth = view.getWidth();
        this.mOriginHeight = view.getHeight();
        if (this.mImageView.getParent() != null) {
            ((ViewGroup) this.mImageView.getParent()).removeView(this.mImageView);
        }
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(this.mOriginWidth, this.mOriginHeight);
        layoutParams.customPosition = true;
        this.mImageView.setTranslationX(this.mOriginX);
        this.mImageView.setTranslationY(this.mOriginY);
        this.mImageView.setScaleX(1.0f);
        this.mImageView.setScaleY(1.0f);
        this.mImageView.setLayoutParams(layoutParams);
        this.mImageView.measure(View.MeasureSpec.makeMeasureSpec(this.mOriginWidth, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(this.mOriginHeight, BasicMeasure.EXACTLY));
        this.mImageView.layout(0, 0, this.mOriginWidth, this.mOriginHeight);
        launcher.getDragLayer().addView(this.mImageView, layoutParams);
        boolean zMoreThanOneScreen = draggableRecyclerView.moreThanOneScreen();
        boolean z = draggableRecyclerView.getLayoutDirection() == 1;
        if (zMoreThanOneScreen) {
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            if (itemInfo instanceof PendingAddShortcutInfo) {
                this.mTargetBounds = new Rect(z ? 78 : 2192, PointerIconCompat.TYPE_CROSSHAIR, z ? 368 : 2482, 1264);
            } else if (itemInfo instanceof PendingAddItemInfo) {
                this.mTargetBounds = new Rect(z ? 78 : 1853, PointerIconCompat.TYPE_CROSSHAIR, z ? 757 : 2482, 1264);
            } else {
                this.mTargetBounds = DEFAULT_EMPTY_LOCATION;
            }
        } else {
            Rect lastViewLocation = draggableRecyclerView.getLastViewLocation();
            if (z) {
                this.mTargetBounds = new Rect(2560 - lastViewLocation.right, lastViewLocation.top, 2560 - lastViewLocation.left, lastViewLocation.bottom);
            } else {
                this.mTargetBounds = lastViewLocation;
            }
        }
        this.mAnimationFinishCallback = new Runnable() { // from class: com.android.launcher3.views.dragableviews.ItemViewMovementController.4
            @Override // java.lang.Runnable
            public void run() {
                draggableRecyclerView.showLastAddedView();
            }
        };
        this.mMovingAnimator.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Bitmap createHardwareBitmap(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording(width, height);
        int iSave = canvasBeginRecording.save();
        if (view instanceof DraggableView) {
            SafeCloseable safeCloseablePrepareDrawDragView = ((DraggableView) view).prepareDrawDragView();
            try {
                view.draw(canvasBeginRecording);
                if (safeCloseablePrepareDrawDragView != null) {
                    safeCloseablePrepareDrawDragView.close();
                }
            } catch (Throwable th) {
                if (safeCloseablePrepareDrawDragView != null) {
                    try {
                        safeCloseablePrepareDrawDragView.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } else {
            view.draw(canvasBeginRecording);
        }
        canvasBeginRecording.restoreToCount(iSave);
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    public static ItemViewMovementController getInstance() {
        return Holder.getController();
    }

    private static class Holder {
        private static ItemViewMovementController sController = new ItemViewMovementController();

        public static ItemViewMovementController getController() {
            return sController;
        }

        private Holder() {
        }
    }
}
