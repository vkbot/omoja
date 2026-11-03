package com.android.launcher3.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ResolveInfo;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Property;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.AllAppInfo;
import com.android.launcher3.activity.model.AppListLaunchHistory;
import com.android.launcher3.activity.view.AnimIconView;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.MultiValueUpdateListener;
import com.android.launcher3.remoteanim.LauncherAnimationRunner;
import com.android.launcher3.remoteanim.RemoteAnimationTargets;
import com.android.launcher3.remoteanim.SurfaceTransactionApplier;
import com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl;
import com.android.launcher3.remoteanim.WrappedLauncherAnimationRunner;
import com.android.launcher3.util.Const;
import com.android.launcher3.views.AppIconContainer;
import com.android.launcher3.views.AppTransitionContext;
import com.android.systemui.shared.system.ActivityCompat;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.RemoteAnimationAdapterCompat;
import com.android.systemui.shared.system.RemoteAnimationDefinitionCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppListTransition {
    private static final long APP_EXIT_ALPHA_DELAY = 200;
    private static final long APP_EXIT_DURATION = 350;
    private static final long APP_LAUNCH_ALPHA_DURATION = 150;
    private static final float APP_LAUNCH_DOWN_DUR_SCALE_FACTOR = 0.8f;
    private static final long APP_LAUNCH_DURATION = 350;
    private static final String CONTROL_REMOTE_APP_TRANSITION_PERMISSION = "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS";
    private static final long CROP_DURATION = 290;
    private static final long ICON_ALPHA_DURATION = 150;
    private static final Set<String> IGNORE_ICON_ANIMATION;
    private static final long RADIUS_DURATION = 290;
    public static final int STATUS_BAR_TRANSITION_DURATION = 93;
    public static final int STATUS_BAR_TRANSITION_PRE_DELAY = 75;
    private static final String TAG = "AppListTransition";
    private final WeakReference<AppTransitionContext> mAppTransContext;
    private final Rect mTmpRect = new Rect();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final boolean mAppListAnimateIcon = LauncherApplication.get().getResources().getBoolean(R.bool.app_list_animate_icon);

    static {
        HashSet hashSet = new HashSet();
        IGNORE_ICON_ANIMATION = hashSet;
        hashSet.add("com.astrob.mapisa");
    }

    public AppListTransition(AppTransitionContext appTransitionContext) {
        this.mAppTransContext = new WeakReference<>(appTransitionContext);
    }

    public ActivityOptions getActivityLaunchOptions(Context context, View v) {
        int paddingTop;
        int iWidth;
        int iWidth2;
        Drawable icon;
        if (hasControlRemoteAppTransitionPermission()) {
            return ActivityOptionsCompat.makeRemoteAnimation(new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new AppLaunchAnimationRunner(this.mHandler, v), true), 350L, 182L));
        }
        int measuredWidth = v.getMeasuredWidth();
        int measuredHeight = v.getMeasuredHeight();
        if (!(v instanceof BubbleTextView) || (icon = ((BubbleTextView) v).getIcon()) == null) {
            paddingTop = 0;
            iWidth = measuredWidth;
            iWidth2 = 0;
        } else {
            Rect bounds = icon.getBounds();
            iWidth2 = (measuredWidth - bounds.width()) / 2;
            paddingTop = v.getPaddingTop();
            iWidth = bounds.width();
            measuredHeight = bounds.height();
        }
        return ActivityOptions.makeClipRevealAnimation(v, iWidth2, paddingTop, iWidth, measuredHeight);
    }

    public void registerRemoteAnimations() {
        AppTransitionContext appTransitionContext = this.mAppTransContext.get();
        if (appTransitionContext != null && hasControlRemoteAppTransitionPermission(appTransitionContext)) {
            RemoteAnimationDefinitionCompat remoteAnimationDefinitionCompat = new RemoteAnimationDefinitionCompat();
            remoteAnimationDefinitionCompat.addRemoteAnimation(10, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new TaskToFrontAnimationRunner(this.mHandler, "taskToFront"), true), 350L, 93L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(8, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new TaskToFrontAnimationRunner(this.mHandler, "taskOpen"), true), 350L, 93L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(9, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new TaskCloseAnimationRunner(this.mHandler), true), 350L, 93L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(12, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new TaskCloseAnimationRunner(this.mHandler), true), 350L, 93L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(11, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new TaskToBackAnimationRunner(this.mHandler), true), 350L, 93L));
            new ActivityCompat(appTransitionContext.getHostActivity()).registerRemoteAnimations(remoteAnimationDefinitionCompat);
        }
    }

    public void unregisterRemoteAnimations() {
        AppTransitionContext appTransitionContext = this.mAppTransContext.get();
        if (appTransitionContext != null && hasControlRemoteAppTransitionPermission(appTransitionContext)) {
            new ActivityCompat(appTransitionContext.getHostActivity()).unregisterRemoteAnimations();
        }
    }

    private boolean hasControlRemoteAppTransitionPermission() {
        AppTransitionContext appTransitionContext = this.mAppTransContext.get();
        if (appTransitionContext == null) {
            return false;
        }
        return hasControlRemoteAppTransitionPermission(appTransitionContext);
    }

    private boolean hasControlRemoteAppTransitionPermission(AppTransitionContext context) {
        return context.getHostActivity().checkSelfPermission(CONTROL_REMOTE_APP_TRANSITION_PERMISSION) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getOpeningWindowAnimators2(AppTransitionContext appTransitionContext, final RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 0);
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(appTransitionContext.getHostView());
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        appTransitionContext.getHostView().getLocationOnScreen(new int[2]);
        final Matrix matrix = new Matrix();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(350L);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.activity.AppListTransition.2
            final MultiValueUpdateListener.FloatProp curScaleX = new MultiValueUpdateListener.FloatProp(AppListTransition.APP_LAUNCH_DOWN_DUR_SCALE_FACTOR, 1.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curScaleY = new MultiValueUpdateListener.FloatProp(AppListTransition.APP_LAUNCH_DOWN_DUR_SCALE_FACTOR, 1.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curTranslateX = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curTranslateY = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);

            @Override // com.android.launcher3.anim.MultiValueUpdateListener
            public void onUpdate(float percent) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = appTargets;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr.length];
                for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = appTargets[length];
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    if (remoteAnimationTargetCompat.mode == 0) {
                        matrix.setTranslate(this.curTranslateX.value, this.curTranslateY.value);
                        matrix.preScale(this.curScaleX.value, this.curScaleY.value);
                        builder.withMatrix(matrix).withAlpha(this.curAlpha.value);
                    }
                    surfaceParamsArr[length] = builder.build();
                }
                surfaceTransactionApplier.scheduleApply(surfaceParamsArr);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public Animator getOpeningWindowAnimators2(AppTransitionContext appTransitionContext, final View view, boolean animateIcon, RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        int i;
        int i2;
        int width;
        int height;
        ViewGroup hostView = appTransitionContext.getHostView();
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 0);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(hostView);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        boolean z = view instanceof AppIconContainer;
        if (z) {
            this.mTmpRect.set(0, 0, 0, 0);
            ((AppIconContainer) view).getIconBounds(this.mTmpRect);
            i = iArr[0] + this.mTmpRect.left;
            i2 = iArr[1] + this.mTmpRect.top;
            width = this.mTmpRect.width();
            height = this.mTmpRect.height();
        } else {
            i = iArr[0];
            i2 = iArr[1];
            width = view.getWidth();
            height = view.getHeight();
        }
        Drawable icon = z ? ((AppIconContainer) view).getIcon() : null;
        AnimIconView iconView = (icon != null && animateIcon && this.mAppListAnimateIcon) ? AnimIconView.getIconView(hostView, view, icon, width, height) : null;
        int[] iArr2 = new int[2];
        appTransitionContext.getHostView().getLocationOnScreen(iArr2);
        MLog.d(TAG, "getOpeningWindowAnimators2: " + Arrays.toString(iArr) + " " + Arrays.toString(iArr2));
        float width2 = appTransitionContext.getHostView().getWidth();
        float height2 = appTransitionContext.getHostView().getHeight();
        float f = (width * 1.0f) / width2;
        float f2 = (height * 1.0f) / height2;
        Point point = new Point();
        Matrix matrix = new Matrix();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(350L);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                View view2 = view;
                if (view2 instanceof BubbleTextView) {
                    ((BubbleTextView) view2).setStayPressed(false);
                }
                remoteAnimationTargets.release();
            }
        });
        final AnimIconView animIconView = iconView;
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener(f, f2, i, iArr2, i2, appTargets, point, matrix, surfaceTransactionApplier, animIconView, width2, icon, height2) { // from class: com.android.launcher3.activity.AppListTransition.4
            final MultiValueUpdateListener.FloatProp mDx;
            final MultiValueUpdateListener.FloatProp mDy;
            final MultiValueUpdateListener.FloatProp mIconDx;
            final MultiValueUpdateListener.FloatProp mIconDy;
            final MultiValueUpdateListener.FloatProp mScaleX;
            final MultiValueUpdateListener.FloatProp mScaleY;
            final /* synthetic */ AnimIconView val$animIconView;
            final /* synthetic */ RemoteAnimationTargetCompat[] val$appTargets;
            final /* synthetic */ int[] val$dragLayerBounds;
            final /* synthetic */ Drawable val$icon;
            final /* synthetic */ int val$iconLeft;
            final /* synthetic */ int val$iconTop;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ float val$startScaleX;
            final /* synthetic */ float val$startScaleY;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final /* synthetic */ float val$totalHeight;
            final /* synthetic */ float val$totalWidth;
            final MultiValueUpdateListener.FloatProp mAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mWindowRadius = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 290.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mIconAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);

            {
                this.val$startScaleX = f;
                this.val$startScaleY = f2;
                this.val$iconLeft = i;
                this.val$dragLayerBounds = iArr2;
                this.val$iconTop = i2;
                this.val$appTargets = appTargets;
                this.val$tmpPos = point;
                this.val$matrix = matrix;
                this.val$surfaceApplier = surfaceTransactionApplier;
                this.val$animIconView = animIconView;
                this.val$totalWidth = width2;
                this.val$icon = icon;
                this.val$totalHeight = height2;
                this.mScaleX = new MultiValueUpdateListener.FloatProp(f, 1.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.mScaleY = new MultiValueUpdateListener.FloatProp(f2, 1.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.mDx = new MultiValueUpdateListener.FloatProp(i, iArr2[0], 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.mDy = new MultiValueUpdateListener.FloatProp(i2, iArr2[1], 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.mIconDx = new MultiValueUpdateListener.FloatProp(i, iArr2[0], 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.mIconDy = new MultiValueUpdateListener.FloatProp(i2, iArr2[1], 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            }

            @Override // com.android.launcher3.anim.MultiValueUpdateListener
            public void onUpdate(float percent) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = this.val$appTargets;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr.length];
                for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = this.val$appTargets[length];
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    if (remoteAnimationTargetCompat.mode == 0) {
                        this.val$tmpPos.set(remoteAnimationTargetCompat.position.x, remoteAnimationTargetCompat.position.y);
                        if (remoteAnimationTargetCompat.localBounds != null) {
                            this.val$tmpPos.set(remoteAnimationTargetCompat.localBounds.left, remoteAnimationTargetCompat.localBounds.top);
                        }
                        this.val$matrix.setScale(this.mScaleX.value, this.mScaleY.value);
                        this.val$matrix.postTranslate(this.mDx.value, this.mDy.value);
                        this.val$matrix.postTranslate(this.val$tmpPos.x * this.mScaleX.value, this.val$tmpPos.y * this.mScaleY.value);
                        builder.withMatrix(this.val$matrix).withAlpha(this.mAlpha.value).withCornerRadius(this.mWindowRadius.value);
                    }
                    surfaceParamsArr[length] = builder.build();
                }
                this.val$surfaceApplier.scheduleApply(surfaceParamsArr);
                if (this.val$animIconView != null) {
                    this.val$animIconView.update(this.mIconDx.value, this.mIconDy.value, (this.val$totalWidth * this.mScaleX.value) / this.val$icon.getBounds().width(), (this.val$totalHeight * this.mScaleY.value) / this.val$icon.getBounds().height(), this.mIconAlpha.value);
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
                AnimIconView animIconView2 = animIconView;
                if (animIconView2 != null) {
                    animIconView2.attachToParent();
                }
                if (AppListTransition.this.mAppListAnimateIcon) {
                    KeyEvent.Callback callback = view;
                    if (callback instanceof AppIconContainer) {
                        ((AppIconContainer) callback).setIconVisible(false);
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                AnimIconView animIconView2 = animIconView;
                if (animIconView2 != null) {
                    animIconView2.detachFromParent();
                }
                if (AppListTransition.this.mAppListAnimateIcon) {
                    KeyEvent.Callback callback = view;
                    if (callback instanceof AppIconContainer) {
                        ((AppIconContainer) callback).setIconVisible(true);
                    }
                }
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getClosingWindowAnimators(AppTransitionContext appTransitionContext, final RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(appTransitionContext.getHostView());
        final Matrix matrix = new Matrix();
        final Point point = new Point();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        final float windowCornerRadius = QuickStepContract.getWindowCornerRadius(appTransitionContext.getHostActivity().getResources());
        valueAnimatorOfFloat.setDuration(350L);
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.activity.AppListTransition.6
            final MultiValueUpdateListener.FloatProp mScale = new MultiValueUpdateListener.FloatProp(1.0f, AppListTransition.APP_LAUNCH_DOWN_DUR_SCALE_FACTOR, 0.0f, 350.0f, Interpolators.DEACCEL_1_7);
            final MultiValueUpdateListener.FloatProp mAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 150.0f, Interpolators.LINEAR);

            @Override // com.android.launcher3.anim.MultiValueUpdateListener
            public void onUpdate(float percent) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = appTargets;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr.length];
                for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = appTargets[length];
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    point.set(remoteAnimationTargetCompat.position.x, remoteAnimationTargetCompat.position.y);
                    if (remoteAnimationTargetCompat.localBounds != null) {
                        point.set(remoteAnimationTargetCompat.localBounds.left, remoteAnimationTargetCompat.localBounds.top);
                    }
                    if (remoteAnimationTargetCompat.mode == 1) {
                        matrix.setScale(this.mScale.value, this.mScale.value, remoteAnimationTargetCompat.screenSpaceBounds.centerX(), remoteAnimationTargetCompat.screenSpaceBounds.centerY());
                        matrix.postTranslate(point.x, point.y);
                        builder.withMatrix(matrix).withAlpha(this.mAlpha.value).withLayer(1).withCornerRadius(windowCornerRadius);
                    } else {
                        matrix.setTranslate(point.x, point.y);
                        builder.withMatrix(matrix).withAlpha(1.0f).withLayer(0);
                    }
                    Rect rect = new Rect(remoteAnimationTargetCompat.screenSpaceBounds);
                    rect.offsetTo(0, 0);
                    surfaceParamsArr[length] = builder.withWindowCrop(rect).build();
                }
                surfaceTransactionApplier.scheduleApply(surfaceParamsArr);
            }
        });
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public Animator getClosingWindowAnimators(AppTransitionContext appTransitionContext, final View view, RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        int i;
        int i2;
        int width;
        int height;
        ViewGroup hostView = appTransitionContext.getHostView();
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 1);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(hostView);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        boolean z = view instanceof AppIconContainer;
        if (z) {
            this.mTmpRect.set(0, 0, 0, 0);
            ((AppIconContainer) view).getIconBounds(this.mTmpRect);
            i = iArr[0] + this.mTmpRect.left;
            i2 = iArr[1] + this.mTmpRect.top;
            width = this.mTmpRect.width();
            height = this.mTmpRect.height();
        } else {
            i = iArr[0];
            i2 = iArr[1];
            width = view.getWidth();
            height = view.getHeight();
        }
        int i3 = width;
        int i4 = i2;
        AnimIconView iconView = null;
        Drawable icon = z ? ((AppIconContainer) view).getIcon() : null;
        if (icon != null && this.mAppListAnimateIcon) {
            iconView = AnimIconView.getIconView(hostView, view, icon, i3, height);
        }
        final AnimIconView animIconView = iconView;
        int[] iArr2 = new int[2];
        appTransitionContext.getHostView().getLocationOnScreen(iArr2);
        float width2 = appTransitionContext.getHostView().getWidth();
        float height2 = appTransitionContext.getHostView().getHeight();
        Matrix matrix = new Matrix();
        Point point = new Point();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(350L);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                View view2 = view;
                if (view2 instanceof BubbleTextView) {
                    ((BubbleTextView) view2).setStayPressed(false);
                }
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener((i3 * 1.0f) / width2, (height * 1.0f) / height2, iArr2, i, i4, appTargets, point, matrix, surfaceTransactionApplier, animIconView, width2, icon, height2) { // from class: com.android.launcher3.activity.AppListTransition.8
            final MultiValueUpdateListener.FloatProp curScaleX;
            final MultiValueUpdateListener.FloatProp curScaleY;
            final MultiValueUpdateListener.FloatProp curTranslateX;
            final MultiValueUpdateListener.FloatProp curTranslateY;
            final /* synthetic */ AnimIconView val$animIconView;
            final /* synthetic */ RemoteAnimationTargetCompat[] val$appTargets;
            final /* synthetic */ int[] val$dragLayerBounds;
            final /* synthetic */ float val$endScaleX;
            final /* synthetic */ float val$endScaleY;
            final /* synthetic */ Drawable val$icon;
            final /* synthetic */ int val$iconLeft;
            final /* synthetic */ int val$iconTop;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final /* synthetic */ float val$totalHeight;
            final /* synthetic */ float val$totalWidth;
            final MultiValueUpdateListener.FloatProp curAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 200.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp windowRadius = new MultiValueUpdateListener.FloatProp(0.0f, 128.0f, 0.0f, 290.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp iconAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 200.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);

            {
                this.val$endScaleX = val$endScaleX;
                this.val$endScaleY = val$endScaleY;
                this.val$dragLayerBounds = iArr2;
                this.val$iconLeft = i;
                this.val$iconTop = i4;
                this.val$appTargets = appTargets;
                this.val$tmpPos = point;
                this.val$matrix = matrix;
                this.val$surfaceApplier = surfaceTransactionApplier;
                this.val$animIconView = animIconView;
                this.val$totalWidth = width2;
                this.val$icon = icon;
                this.val$totalHeight = height2;
                this.curScaleX = new MultiValueUpdateListener.FloatProp(1.0f, val$endScaleX, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curScaleY = new MultiValueUpdateListener.FloatProp(1.0f, val$endScaleY, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curTranslateX = new MultiValueUpdateListener.FloatProp(iArr2[0], i, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curTranslateY = new MultiValueUpdateListener.FloatProp(iArr2[1], i4, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            }

            @Override // com.android.launcher3.anim.MultiValueUpdateListener
            public void onUpdate(float percent) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = this.val$appTargets;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr.length];
                for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = this.val$appTargets[length];
                    this.val$tmpPos.set(remoteAnimationTargetCompat.position.x, remoteAnimationTargetCompat.position.y);
                    if (remoteAnimationTargetCompat.localBounds != null) {
                        this.val$tmpPos.set(remoteAnimationTargetCompat.localBounds.left, remoteAnimationTargetCompat.localBounds.top);
                    }
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    if (remoteAnimationTargetCompat.mode == 1) {
                        this.val$matrix.setScale(this.curScaleX.value, this.curScaleY.value);
                        this.val$matrix.postTranslate(this.curTranslateX.value, this.curTranslateY.value);
                        this.val$matrix.postTranslate(this.val$tmpPos.x * this.curScaleX.value, this.val$tmpPos.y * this.curScaleY.value);
                        builder.withMatrix(this.val$matrix).withAlpha(this.curAlpha.value).withCornerRadius(this.windowRadius.value).withLayer(1);
                    } else {
                        this.val$matrix.setTranslate(this.val$tmpPos.x, this.val$tmpPos.y);
                        builder.withMatrix(this.val$matrix).withAlpha(1.0f).withLayer(0);
                    }
                    surfaceParamsArr[length] = builder.build();
                }
                this.val$surfaceApplier.scheduleApply(surfaceParamsArr);
                if (this.val$animIconView != null) {
                    this.val$animIconView.update(this.curTranslateX.value, this.curTranslateY.value, (this.val$totalWidth * this.curScaleX.value) / this.val$icon.getBounds().width(), (this.val$totalHeight * this.curScaleY.value) / this.val$icon.getBounds().height(), this.iconAlpha.value);
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
                AnimIconView animIconView2 = animIconView;
                if (animIconView2 != null) {
                    animIconView2.attachToParent();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                AnimIconView animIconView2 = animIconView;
                if (animIconView2 != null) {
                    animIconView2.detachFromParent();
                }
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator createExitItemAlphaAnimator(View itemView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(itemView, (Property<View, Float>) View.ALPHA, 1.0f);
        objectAnimatorOfFloat.setStartDelay(200L);
        objectAnimatorOfFloat.setDuration(150L);
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AppLaunchAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;
        private final View mV;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        AppLaunchAnimationRunner(Handler handler, View v) {
            this.mHandler = handler;
            this.mV = v;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            AppTransitionContext appTransitionContext = (AppTransitionContext) AppListTransition.this.mAppTransContext.get();
            if (appTransitionContext == null) {
                return;
            }
            AppListLaunchHistory.LaunchInfo lastestLaunchInfo = AppListLaunchHistory.get().getLastestLaunchInfo();
            boolean zShouldAnimateIcon = Const.shouldAnimateIcon(lastestLaunchInfo != null ? lastestLaunchInfo.getItemInfo().getPackageName() : null);
            Object tag = this.mV.getTag(R.id.tv_tab_mix_launcher);
            boolean zAnyMatch = Arrays.stream(appTargets).anyMatch(new Predicate() { // from class: com.android.launcher3.activity.AppListTransition$AppLaunchAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((RemoteAnimationTargetCompat) obj).isTranslucent;
                }
            });
            MLog.d(AppListTransition.TAG, "onCreateAnimation: app launch. hasTranslucent=" + zAnyMatch + " animateIcon=" + zShouldAnimateIcon + " tag=" + tag + " launchInfo=" + lastestLaunchInfo);
            AnimatorSet animatorSet = new AnimatorSet();
            if (zAnyMatch || ((tag instanceof Boolean) && ((Boolean) tag).booleanValue())) {
                animatorSet.play(AppListTransition.this.getOpeningWindowAnimators2(appTransitionContext, appTargets, wallpaperTargets));
            } else {
                animatorSet.play(AppListTransition.this.getOpeningWindowAnimators2(appTransitionContext, this.mV, zShouldAnimateIcon, appTargets, wallpaperTargets));
            }
            result.setAnimation(animatorSet, appTransitionContext.getHostActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TaskToFrontAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;
        private final String mReason;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        public TaskToFrontAnimationRunner(Handler handler, String reason) {
            this.mHandler = handler;
            this.mReason = reason;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            AppTransitionContext appTransitionContext = (AppTransitionContext) AppListTransition.this.mAppTransContext.get();
            if (appTransitionContext == null) {
                MLog.w(AppListTransition.TAG, "onCreateAnimation: " + this.mReason + ". context is null.");
                return;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = (RemoteAnimationTargetCompat) Arrays.stream(appTargets).filter(new Predicate() { // from class: com.android.launcher3.activity.AppListTransition$TaskToFrontAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AppListTransition.TaskToFrontAnimationRunner.lambda$onCreateAnimation$0((RemoteAnimationTargetCompat) obj);
                }
            }).findFirst().orElse(null);
            if (remoteAnimationTargetCompat == null) {
                MLog.w(AppListTransition.TAG, "onCreateAnimation: " + this.mReason + ". no opening target.");
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(AppListTransition.this.getOpeningWindowAnimators2(appTransitionContext, appTargets, wallpaperTargets));
                result.setAnimation(animatorSet, appTransitionContext.getHostActivity());
                return;
            }
            AppListLaunchHistory.LaunchInfo lastestLaunchInfo = AppListLaunchHistory.get().getLastestLaunchInfo();
            int i = remoteAnimationTargetCompat.taskId;
            ComponentName componentNameByTaskId = AppListTransition.this.getComponentNameByTaskId(appTransitionContext, i);
            View view = AppListTransition.this.matchLaunchInfo(lastestLaunchInfo, componentNameByTaskId) ? lastestLaunchInfo.getView() : null;
            MLog.i(AppListTransition.TAG, "onCreateAnimation: " + this.mReason + " taskId=" + i + " componentName=" + componentNameByTaskId + " itemView=" + view + " tag=" + (view != null ? view.getTag() : "") + " launchInfo=" + lastestLaunchInfo);
            AnimatorSet animatorSet2 = new AnimatorSet();
            if (view == null || !view.isAttachedToWindow()) {
                animatorSet2.play(AppListTransition.this.getOpeningWindowAnimators2(appTransitionContext, appTargets, wallpaperTargets));
            } else {
                animatorSet2.play(AppListTransition.this.getOpeningWindowAnimators2(appTransitionContext, view, true, appTargets, wallpaperTargets));
            }
            result.setAnimation(animatorSet2, appTransitionContext.getHostActivity());
        }

        static /* synthetic */ boolean lambda$onCreateAnimation$0(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            return remoteAnimationTargetCompat.mode == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean matchLaunchInfo(AppListLaunchHistory.LaunchInfo launchInfo, ComponentName componentName) {
        AllAppInfo itemInfo;
        ResolveInfo resolveInfo;
        if (launchInfo == null || componentName == null || (itemInfo = launchInfo.getItemInfo()) == null || (resolveInfo = itemInfo.getResolveInfo()) == null) {
            return false;
        }
        String str = resolveInfo.activityInfo.packageName;
        if (Objects.equals(componentName.getPackageName(), Const.PACKAGE_LION_MEDIA) && Objects.equals(str, Const.PACKAGE_WIDGET)) {
            return true;
        }
        return Objects.equals(componentName.getPackageName(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TaskToBackAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        public TaskToBackAnimationRunner(Handler handler) {
            this.mHandler = handler;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            AppTransitionContext appTransitionContext = (AppTransitionContext) AppListTransition.this.mAppTransContext.get();
            if (appTransitionContext == null) {
                MLog.w(AppListTransition.TAG, "onCreateAnimation: task to back. context is null.");
                return;
            }
            if (appTransitionContext.useDefaultAnimation()) {
                MLog.d(AppListTransition.TAG, "onCreateAnimation: task to back. use default anim.");
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(AppListTransition.this.getClosingWindowAnimators(appTransitionContext, appTargets, wallpaperTargets));
                result.setAnimation(animatorSet, appTransitionContext.getHostActivity());
                return;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = (RemoteAnimationTargetCompat) Arrays.stream(appTargets).filter(new Predicate() { // from class: com.android.launcher3.activity.AppListTransition$TaskToBackAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AppListTransition.TaskToBackAnimationRunner.lambda$onCreateAnimation$0((RemoteAnimationTargetCompat) obj);
                }
            }).findFirst().orElse(null);
            if (remoteAnimationTargetCompat == null) {
                result.setAnimation(null, appTransitionContext.getHostActivity());
                return;
            }
            int i = remoteAnimationTargetCompat.taskId;
            ComponentName componentNameByTaskId = AppListTransition.this.getComponentNameByTaskId(appTransitionContext, i);
            final View viewFindItemView = appTransitionContext.findItemView(componentNameByTaskId, 1);
            MLog.i(AppListTransition.TAG, "onCreateAnimation: task to back taskId=" + i + " componentName=" + componentNameByTaskId + " itemView=" + viewFindItemView + " tag=" + (viewFindItemView != null ? viewFindItemView.getTag() : ""));
            AnimatorSet animatorSet2 = new AnimatorSet();
            if (viewFindItemView == null || !viewFindItemView.isAttachedToWindow()) {
                animatorSet2.play(AppListTransition.this.getClosingWindowAnimators(appTransitionContext, appTargets, wallpaperTargets));
            } else {
                animatorSet2.playTogether(AppListTransition.this.getClosingWindowAnimators(appTransitionContext, viewFindItemView, appTargets, wallpaperTargets), AppListTransition.this.createExitItemAlphaAnimator(viewFindItemView));
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.TaskToBackAnimationRunner.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                        viewFindItemView.setAlpha(0.0f);
                    }
                });
            }
            result.setAnimation(animatorSet2, appTransitionContext.getHostActivity());
        }

        static /* synthetic */ boolean lambda$onCreateAnimation$0(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            return remoteAnimationTargetCompat.mode == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TaskCloseAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        public TaskCloseAnimationRunner(Handler handler) {
            this.mHandler = handler;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            AppTransitionContext appTransitionContext = (AppTransitionContext) AppListTransition.this.mAppTransContext.get();
            if (appTransitionContext == null) {
                MLog.w(AppListTransition.TAG, "onCreateAnimation: task close. context is null.");
                return;
            }
            if (appTransitionContext.useDefaultAnimation()) {
                MLog.d(AppListTransition.TAG, "onCreateAnimation: task close. use default anim.");
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(AppListTransition.this.getClosingWindowAnimators(appTransitionContext, appTargets, wallpaperTargets));
                result.setAnimation(animatorSet, appTransitionContext.getHostActivity());
                return;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = (RemoteAnimationTargetCompat) Arrays.stream(appTargets).filter(new Predicate() { // from class: com.android.launcher3.activity.AppListTransition$TaskCloseAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return AppListTransition.TaskCloseAnimationRunner.lambda$onCreateAnimation$0((RemoteAnimationTargetCompat) obj);
                }
            }).findFirst().orElse(null);
            if (remoteAnimationTargetCompat == null) {
                MLog.w(AppListTransition.TAG, "onCreateAnimation: task close. no closing target.");
                result.setAnimation(null, appTransitionContext.getHostActivity());
                return;
            }
            int i = remoteAnimationTargetCompat.taskId;
            ComponentName componentNameByTaskId = AppListTransition.this.getComponentNameByTaskId(appTransitionContext, i);
            final View viewFindItemView = appTransitionContext.findItemView(componentNameByTaskId, 1);
            MLog.i(AppListTransition.TAG, "onCreateAnimation: task close taskId=" + i + " componentName=" + componentNameByTaskId + " itemView=" + viewFindItemView + " tag=" + (viewFindItemView != null ? viewFindItemView.getTag() : ""));
            AnimatorSet animatorSet2 = new AnimatorSet();
            if (viewFindItemView == null || Objects.equals(componentNameByTaskId, Const.RECENTS_COMPONENT) || !viewFindItemView.isAttachedToWindow()) {
                animatorSet2.play(AppListTransition.this.getClosingWindowAnimators(appTransitionContext, appTargets, wallpaperTargets));
            } else {
                Animator closingWindowAnimators = AppListTransition.this.getClosingWindowAnimators(appTransitionContext, viewFindItemView, appTargets, wallpaperTargets);
                if (componentNameByTaskId != null && AppListTransition.IGNORE_ICON_ANIMATION.contains(componentNameByTaskId.getPackageName())) {
                    animatorSet2.play(closingWindowAnimators);
                } else {
                    animatorSet2.playTogether(closingWindowAnimators, AppListTransition.this.createExitItemAlphaAnimator(viewFindItemView));
                    animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.activity.AppListTransition.TaskCloseAnimationRunner.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animation) {
                            viewFindItemView.setAlpha(0.0f);
                        }
                    });
                }
            }
            result.setAnimation(animatorSet2, appTransitionContext.getHostActivity());
        }

        static /* synthetic */ boolean lambda$onCreateAnimation$0(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            return remoteAnimationTargetCompat.mode == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ComponentName getComponentNameByTaskId(AppTransitionContext appTransitionContext, int taskId) {
        ComponentName componentName = appTransitionContext.getComponentName(taskId);
        if (componentName != null) {
            return componentName;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) appTransitionContext.getHostActivity().getSystemService(ActivityManager.class)).getRunningTasks(25);
        for (ActivityManager.RecentTaskInfo recentTaskInfo : ActivityManagerWrapper.getInstance().getRecentTasks(5, 0)) {
            if (recentTaskInfo.taskId == taskId) {
                if (recentTaskInfo.baseActivity != null) {
                    return recentTaskInfo.baseActivity;
                }
                if (recentTaskInfo.baseIntent.getComponent() != null) {
                    return recentTaskInfo.baseIntent.getComponent();
                }
                return recentTaskInfo.baseActivity;
            }
        }
        for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
            if (runningTaskInfo.taskId == taskId) {
                return runningTaskInfo.baseActivity;
            }
        }
        return null;
    }
}
