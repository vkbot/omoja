package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Property;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.MultiValueUpdateListener;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.remoteanim.LauncherAnimationRunner;
import com.android.launcher3.remoteanim.RemoteAnimationTargets;
import com.android.launcher3.remoteanim.SurfaceTransactionApplier;
import com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl;
import com.android.launcher3.remoteanim.WrappedLauncherAnimationRunner;
import com.android.launcher3.touch.LaunchHistory;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.views.AppIconContainer;
import com.android.launcher3.views.blur.BlurRenderWatcher;
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
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppTransitionManagerImpl extends LauncherAppTransitionManager {
    private static final long APP_EXIT_ALPHA_DELAY = 200;
    private static final long APP_EXIT_DURATION = 350;
    private static final long APP_LAUNCH_DURATION = 250;
    private static final String CONTROL_REMOTE_APP_TRANSITION_PERMISSION = "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS";
    public static final long STATUS_BAR_TRANSITION_DELAY = 82;
    public static final int STATUS_BAR_TRANSITION_DURATION = 93;
    public static final int STATUS_BAR_TRANSITION_PRE_DELAY = 75;
    private static final String TAG = "LauncherAppTransitionManagerImpl";
    private final WeakReference<Launcher> mLauncher;
    private final Rect mTmpRect = new Rect();
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    public LauncherAppTransitionManagerImpl(Context context) {
        this.mLauncher = new WeakReference<>(Launcher.getLauncher(context));
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public ActivityOptions getActivityLaunchOptions(Context context, View v) {
        if (hasControlRemoteAppTransitionPermission()) {
            return ActivityOptionsCompat.makeRemoteAnimation(new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new AppLaunchAnimationRunner(this.mHandler, v), true), APP_LAUNCH_DURATION, 82L));
        }
        return super.getActivityLaunchOptions(context, v);
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public void registerRemoteAnimations() {
        if (hasControlRemoteAppTransitionPermission()) {
            RemoteAnimationDefinitionCompat remoteAnimationDefinitionCompat = new RemoteAnimationDefinitionCompat();
            remoteAnimationDefinitionCompat.addRemoteAnimation(13, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new WallpaperOpenAnimationRunner(this.mHandler), true), APP_EXIT_DURATION, 82L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(12, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new WallpaperCloseAnimationRunner(this.mHandler), true), APP_LAUNCH_DURATION, 82L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(14, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new WallpaperOpenAnimationRunner(this.mHandler), true), APP_EXIT_DURATION, 82L));
            remoteAnimationDefinitionCompat.addRemoteAnimation(15, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(new WallpaperCloseAnimationRunner(this.mHandler), true), APP_LAUNCH_DURATION, 82L));
            Launcher launcher = this.mLauncher.get();
            if (launcher != null) {
                new ActivityCompat(launcher).registerRemoteAnimations(remoteAnimationDefinitionCompat);
            }
        }
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public void unregisterRemoteAnimations() {
        Launcher launcher;
        if (!hasControlRemoteAppTransitionPermission() || (launcher = this.mLauncher.get()) == null) {
            return;
        }
        new ActivityCompat(launcher).unregisterRemoteAnimations();
    }

    private boolean hasControlRemoteAppTransitionPermission() {
        Launcher launcher = this.mLauncher.get();
        return launcher != null && launcher.checkSelfPermission(CONTROL_REMOTE_APP_TRANSITION_PERMISSION) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getOpeningWindowAnimators(final RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return new AnimatorSet();
        }
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 0);
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(launcher.getDragLayer());
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        launcher.getDragLayer().getLocationOnScreen(new int[2]);
        final Matrix matrix = new Matrix();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(APP_LAUNCH_DURATION);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.2
            final MultiValueUpdateListener.FloatProp curScaleX = new MultiValueUpdateListener.FloatProp(0.8f, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curScaleY = new MultiValueUpdateListener.FloatProp(0.8f, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curTranslateX = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curTranslateY = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);

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
    public Animator getOpeningWindowAnimators(final View view, RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        int i;
        int i2;
        int width;
        int height;
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return new AnimatorSet();
        }
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 0);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(launcher.getDragLayer());
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (view instanceof AppIconContainer) {
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
        int[] iArr2 = new int[2];
        launcher.getDragLayer().getLocationOnScreen(iArr2);
        MLog.d(TAG, "getOpeningWindowAnimators2: " + Arrays.toString(iArr) + " " + Arrays.toString(iArr2));
        float width2 = (width * 1.0f) / launcher.getDragLayer().getWidth();
        float height2 = (height * 1.0f) / launcher.getDragLayer().getHeight();
        Point point = new Point();
        Matrix matrix = new Matrix();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(APP_LAUNCH_DURATION);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                View view2 = view;
                if (view2 instanceof BubbleTextView) {
                    ((BubbleTextView) view2).setStayPressed(false);
                }
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener(width2, height2, i, iArr2, i2, appTargets, point, matrix, surfaceTransactionApplier) { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.4
            final MultiValueUpdateListener.FloatProp mDx;
            final MultiValueUpdateListener.FloatProp mDy;
            final MultiValueUpdateListener.FloatProp mScaleX;
            final MultiValueUpdateListener.FloatProp mScaleY;
            final /* synthetic */ RemoteAnimationTargetCompat[] val$appTargets;
            final /* synthetic */ int[] val$dragLayerBounds;
            final /* synthetic */ int val$iconLeft;
            final /* synthetic */ int val$iconTop;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ float val$startScaleX;
            final /* synthetic */ float val$startScaleY;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final MultiValueUpdateListener.FloatProp mAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mWindowRadius = new MultiValueUpdateListener.FloatProp(200.0f, 0.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);

            {
                this.val$startScaleX = width2;
                this.val$startScaleY = height2;
                this.val$iconLeft = i;
                this.val$dragLayerBounds = iArr2;
                this.val$iconTop = i2;
                this.val$appTargets = appTargets;
                this.val$tmpPos = point;
                this.val$matrix = matrix;
                this.val$surfaceApplier = surfaceTransactionApplier;
                this.mScaleX = new MultiValueUpdateListener.FloatProp(width2, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
                this.mScaleY = new MultiValueUpdateListener.FloatProp(height2, 1.0f, 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
                this.mDx = new MultiValueUpdateListener.FloatProp(i, iArr2[0], 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
                this.mDy = new MultiValueUpdateListener.FloatProp(i2, iArr2[1], 0.0f, 250.0f, Interpolators.AGGRESSIVE_EASE);
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
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getClosingWindowAnimatorsFromDockHomeIcon(final RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return new AnimatorSet();
        }
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 1);
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(launcher.getDragLayer());
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        launcher.getDragLayer().getLocationOnScreen(new int[2]);
        final Matrix matrix = new Matrix();
        final Point point = new Point();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(APP_EXIT_DURATION);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.6
            final MultiValueUpdateListener.FloatProp mScaleX = new MultiValueUpdateListener.FloatProp(1.0f, 0.5f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mScaleY = new MultiValueUpdateListener.FloatProp(1.0f, 0.5f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mDx = new MultiValueUpdateListener.FloatProp(0.0f, 100.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp mDy = new MultiValueUpdateListener.FloatProp(0.0f, 576.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp curAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp windowRadius = new MultiValueUpdateListener.FloatProp(0.0f, 128.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);

            @Override // com.android.launcher3.anim.MultiValueUpdateListener
            public void onUpdate(float percent) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = appTargets;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr.length];
                for (int length = remoteAnimationTargetCompatArr.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = appTargets[length];
                    point.set(remoteAnimationTargetCompat.position.x, remoteAnimationTargetCompat.position.y);
                    if (remoteAnimationTargetCompat.localBounds != null) {
                        point.set(remoteAnimationTargetCompat.localBounds.left, remoteAnimationTargetCompat.localBounds.top);
                    }
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    if (remoteAnimationTargetCompat.mode == 1) {
                        matrix.setScale(this.mScaleX.value, this.mScaleY.value);
                        matrix.postTranslate(this.mDx.value, this.mDy.value);
                        matrix.postTranslate(point.x * this.mScaleX.value, point.y * this.mScaleY.value);
                        builder.withMatrix(matrix).withAlpha(this.curAlpha.value).withCornerRadius(this.windowRadius.value);
                    } else {
                        matrix.setTranslate(point.x, point.y);
                        builder.withMatrix(matrix).withAlpha(1.0f);
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
    public Animator getClosingWindowAnimators(final View view, RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        int i;
        int i2;
        int width;
        int height;
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return new AnimatorSet();
        }
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(appTargets, wallpaperTargets, 1);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(launcher.getDragLayer());
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (view instanceof AppIconContainer) {
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
        int[] iArr2 = new int[2];
        launcher.getDragLayer().getLocationOnScreen(iArr2);
        float width2 = (width * 1.0f) / launcher.getDragLayer().getWidth();
        float height2 = (height * 1.0f) / launcher.getDragLayer().getHeight();
        Matrix matrix = new Matrix();
        Point point = new Point();
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(APP_EXIT_DURATION);
        valueAnimatorOfFloat.setInterpolator(Interpolators.LINEAR);
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                View view2 = view;
                if (view2 instanceof BubbleTextView) {
                    ((BubbleTextView) view2).setStayPressed(false);
                }
                remoteAnimationTargets.release();
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener(width2, height2, iArr2, i, i2, appTargets, point, matrix, surfaceTransactionApplier) { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.8
            final MultiValueUpdateListener.FloatProp curScaleX;
            final MultiValueUpdateListener.FloatProp curScaleY;
            final MultiValueUpdateListener.FloatProp curTranslateX;
            final MultiValueUpdateListener.FloatProp curTranslateY;
            final /* synthetic */ RemoteAnimationTargetCompat[] val$appTargets;
            final /* synthetic */ int[] val$dragLayerBounds;
            final /* synthetic */ float val$endScaleX;
            final /* synthetic */ float val$endScaleY;
            final /* synthetic */ int val$iconLeft;
            final /* synthetic */ int val$iconTop;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final MultiValueUpdateListener.FloatProp curAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 200.0f, 150.0f, Interpolators.AGGRESSIVE_EASE);
            final MultiValueUpdateListener.FloatProp windowRadius = new MultiValueUpdateListener.FloatProp(0.0f, 128.0f, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);

            {
                this.val$endScaleX = width2;
                this.val$endScaleY = height2;
                this.val$dragLayerBounds = iArr2;
                this.val$iconLeft = i;
                this.val$iconTop = i2;
                this.val$appTargets = appTargets;
                this.val$tmpPos = point;
                this.val$matrix = matrix;
                this.val$surfaceApplier = surfaceTransactionApplier;
                this.curScaleX = new MultiValueUpdateListener.FloatProp(1.0f, width2, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curScaleY = new MultiValueUpdateListener.FloatProp(1.0f, height2, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curTranslateX = new MultiValueUpdateListener.FloatProp(iArr2[0], i, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
                this.curTranslateY = new MultiValueUpdateListener.FloatProp(iArr2[1], i2, 0.0f, 350.0f, Interpolators.AGGRESSIVE_EASE);
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
                        this.val$matrix.setTranslate(this.curTranslateX.value, this.curTranslateY.value);
                        this.val$matrix.preScale(this.curScaleX.value, this.curScaleY.value);
                        builder.withMatrix(this.val$matrix).withAlpha(this.curAlpha.value).withCornerRadius(this.windowRadius.value);
                    } else {
                        this.val$matrix.setTranslate(this.val$tmpPos.x, this.val$tmpPos.y);
                        builder.withMatrix(this.val$matrix).withAlpha(1.0f);
                    }
                    surfaceParamsArr[length] = builder.build();
                }
                this.val$surfaceApplier.scheduleApply(surfaceParamsArr);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getClosingWindowAnimatorsDefault(final RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets) {
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return new AnimatorSet();
        }
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(launcher.getDragLayer());
        final Matrix matrix = new Matrix();
        final Point point = new Point();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        final float windowCornerRadius = QuickStepContract.getWindowCornerRadius(launcher.getResources());
        valueAnimatorOfFloat.setDuration(APP_EXIT_DURATION);
        valueAnimatorOfFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl.9
            final MultiValueUpdateListener.FloatProp mScale = new MultiValueUpdateListener.FloatProp(1.0f, 0.8f, 0.0f, 350.0f, Interpolators.DEACCEL_1_7);
            final MultiValueUpdateListener.FloatProp mAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 350.0f, Interpolators.LINEAR);

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
                        builder.withMatrix(matrix).withAlpha(this.mAlpha.value).withCornerRadius(windowCornerRadius);
                    } else {
                        matrix.setTranslate(point.x, point.y);
                        builder.withMatrix(matrix).withAlpha(1.0f);
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

    private class AppLaunchAnimationRunner implements WrappedAnimationRunnerImpl {
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
            MLog.d(LauncherAppTransitionManagerImpl.TAG, "onCreateAnimation: app launch. launchInfo=" + LaunchHistory.get().getLastestLaunchInfo());
            Launcher launcher = (Launcher) LauncherAppTransitionManagerImpl.this.mLauncher.get();
            if (launcher == null) {
                result.setAnimation(null, null);
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(LauncherAppTransitionManagerImpl.this.getOpeningWindowAnimators(this.mV, appTargets, wallpaperTargets));
            result.setAnimation(animatorSet, launcher);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WallpaperOpenAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        public WallpaperOpenAnimationRunner(Handler handler) {
            this.mHandler = handler;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            Launcher launcher = (Launcher) LauncherAppTransitionManagerImpl.this.mLauncher.get();
            if (launcher == null) {
                result.setAnimation(null, null);
                return;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = (RemoteAnimationTargetCompat) Arrays.stream(appTargets).filter(new Predicate() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl$WallpaperOpenAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LauncherAppTransitionManagerImpl.WallpaperOpenAnimationRunner.lambda$onCreateAnimation$0((RemoteAnimationTargetCompat) obj);
                }
            }).findFirst().orElse(null);
            if (remoteAnimationTargetCompat == null) {
                result.setAnimation(null, launcher);
                return;
            }
            boolean zIsBackToLauncherFromDockHomeIcon = launcher.isBackToLauncherFromDockHomeIcon();
            boolean zIsBackToLauncherByFiveGrab = launcher.isBackToLauncherByFiveGrab();
            boolean zIsBackToLauncherByVoiceExitApp = launcher.isBackToLauncherByVoiceExitApp();
            int i = remoteAnimationTargetCompat.taskId;
            ComponentName componentNameByTaskId = LauncherAppTransitionManagerImpl.this.getComponentNameByTaskId(i);
            View viewFindItemView = launcher.getWorkspace().findItemView(componentNameByTaskId, 0);
            MLog.i(LauncherAppTransitionManagerImpl.TAG, "onCreateAnimation: wallpaper open taskId=" + i + " componentName=" + componentNameByTaskId + " itemView=" + viewFindItemView + " FromDockHomeIcon=" + zIsBackToLauncherFromDockHomeIcon + " ByFiveGrab=" + zIsBackToLauncherByFiveGrab + " ByVoiceExitApp=" + zIsBackToLauncherByVoiceExitApp + " tag=" + (viewFindItemView != null ? viewFindItemView.getTag() : ""));
            AnimatorSet animatorSet = new AnimatorSet();
            if (zIsBackToLauncherFromDockHomeIcon) {
                animatorSet.playTogether(LauncherAppTransitionManagerImpl.this.getClosingWindowAnimatorsFromDockHomeIcon(appTargets, wallpaperTargets));
                handleWorkspaceAnimation(animatorSet);
            } else if (zIsBackToLauncherByFiveGrab || zIsBackToLauncherByVoiceExitApp || viewFindItemView == null || !viewFindItemView.isAttachedToWindow() || Objects.equals(componentNameByTaskId, Const.RECENTS_COMPONENT)) {
                animatorSet.play(LauncherAppTransitionManagerImpl.this.getClosingWindowAnimatorsDefault(appTargets, wallpaperTargets));
            } else {
                animatorSet.playTogether(LauncherAppTransitionManagerImpl.this.getClosingWindowAnimators(viewFindItemView, appTargets, wallpaperTargets));
            }
            result.setAnimation(animatorSet, launcher);
        }

        static /* synthetic */ boolean lambda$onCreateAnimation$0(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            return remoteAnimationTargetCompat.mode == 1;
        }

        private void handleWorkspaceAnimation(AnimatorSet anim) {
            Launcher launcher = (Launcher) LauncherAppTransitionManagerImpl.this.mLauncher.get();
            if (launcher == null || launcher.isInState(LauncherState.WORKSPACE_HIDE_STATE)) {
                return;
            }
            anim.addListener(new AnonymousClass1(launcher));
        }

        /* JADX INFO: renamed from: com.android.launcher3.LauncherAppTransitionManagerImpl$WallpaperOpenAnimationRunner$1, reason: invalid class name */
        class AnonymousClass1 extends AnimatorListenerAdapter {
            final /* synthetic */ Launcher val$launcher;

            AnonymousClass1(final Launcher val$launcher) {
                this.val$launcher = val$launcher;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                super.onAnimationStart(animation);
                this.val$launcher.getWorkspace().setAlpha(0.0f);
                this.val$launcher.getWorkspace().setTranslationY(100.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                this.val$launcher.getWorkspace().setAlpha(0.0f);
                this.val$launcher.getWorkspace().setTranslationY(100.0f);
                ViewPropertyAnimator duration = this.val$launcher.getWorkspace().animate().alpha(1.0f).translationY(0.0f).setDuration(150L);
                final Launcher launcher = this.val$launcher;
                duration.withStartAction(new Runnable() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl$WallpaperOpenAnimationRunner$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherAppTransitionManagerImpl.WallpaperOpenAnimationRunner.AnonymousClass1.lambda$onAnimationEnd$0(launcher);
                    }
                }).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl$WallpaperOpenAnimationRunner$1$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        BlurRenderWatcher.getInstance().blur();
                    }
                }).start();
            }

            static /* synthetic */ void lambda$onAnimationEnd$0(Launcher launcher) {
                if (launcher.isInState(LauncherState.WORKSPACE_HIDE_STATE)) {
                    launcher.getStateManager().goToState(LauncherState.NORMAL);
                } else {
                    SystemUiController.HomeIcon.animateHomeIconToShow();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                super.onAnimationCancel(animation);
                this.val$launcher.getWorkspace().setAlpha(1.0f);
                this.val$launcher.getWorkspace().setTranslationY(0.0f);
            }
        }
    }

    private Animator createExitItemAlphaAnimator(View itemView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(itemView, (Property<View, Float>) View.ALPHA, 1.0f);
        objectAnimatorOfFloat.setStartDelay(200L);
        objectAnimatorOfFloat.setDuration(150L);
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WallpaperCloseAnimationRunner implements WrappedAnimationRunnerImpl {
        private final Handler mHandler;

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        public WallpaperCloseAnimationRunner(Handler handler) {
            this.mHandler = handler;
        }

        @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
        public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
            Launcher launcher = (Launcher) LauncherAppTransitionManagerImpl.this.mLauncher.get();
            if (launcher == null) {
                result.setAnimation(null, null);
                return;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = (RemoteAnimationTargetCompat) Arrays.stream(appTargets).filter(new Predicate() { // from class: com.android.launcher3.LauncherAppTransitionManagerImpl$WallpaperCloseAnimationRunner$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LauncherAppTransitionManagerImpl.WallpaperCloseAnimationRunner.lambda$onCreateAnimation$0((RemoteAnimationTargetCompat) obj);
                }
            }).findFirst().orElse(null);
            if (remoteAnimationTargetCompat == null) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(LauncherAppTransitionManagerImpl.this.getOpeningWindowAnimators(appTargets, wallpaperTargets));
                result.setAnimation(animatorSet, launcher);
                return;
            }
            LaunchHistory.LaunchInfo lastestLaunchInfo = LaunchHistory.get().getLastestLaunchInfo();
            int i = remoteAnimationTargetCompat.taskId;
            ComponentName componentNameByTaskId = LauncherAppTransitionManagerImpl.this.getComponentNameByTaskId(i);
            View view = LauncherAppTransitionManagerImpl.this.matchClickInfo(lastestLaunchInfo, componentNameByTaskId) ? lastestLaunchInfo.getView() : null;
            boolean z = componentNameByTaskId != null && Const.willSplitScreen(componentNameByTaskId.getPackageName());
            MLog.i(LauncherAppTransitionManagerImpl.TAG, "onCreateAnimation: wallpaper close taskId=" + i + " componentName=" + componentNameByTaskId + " willSplitScreen=" + z + " itemView=" + view + " tag=" + (view != null ? view.getTag() : "") + " launchInfo=" + lastestLaunchInfo);
            AnimatorSet animatorSet2 = new AnimatorSet();
            if (!z) {
                if (view == null || !view.isAttachedToWindow()) {
                    animatorSet2.play(LauncherAppTransitionManagerImpl.this.getOpeningWindowAnimators(appTargets, wallpaperTargets));
                } else {
                    animatorSet2.play(LauncherAppTransitionManagerImpl.this.getOpeningWindowAnimators(view, appTargets, wallpaperTargets));
                }
            }
            result.setAnimation(animatorSet2, launcher);
        }

        static /* synthetic */ boolean lambda$onCreateAnimation$0(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
            return remoteAnimationTargetCompat.mode == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean matchClickInfo(LaunchHistory.LaunchInfo launchInfo, ComponentName componentName) {
        ItemInfo itemInfo;
        ComponentName targetComponent;
        if (launchInfo == null || componentName == null || (itemInfo = launchInfo.getItemInfo()) == null || (targetComponent = itemInfo.getTargetComponent()) == null) {
            return false;
        }
        return (itemInfo instanceof LauncherAppWidgetInfo) || Objects.equals(componentName.getPackageName(), targetComponent.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ComponentName getComponentNameByTaskId(int taskId) {
        ComponentName component = LauncherApplication.get().getComponent(taskId);
        if (component != null) {
            return component;
        }
        Launcher launcher = this.mLauncher.get();
        if (launcher == null) {
            return null;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) launcher.getSystemService(ActivityManager.class)).getRunningTasks(25);
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
