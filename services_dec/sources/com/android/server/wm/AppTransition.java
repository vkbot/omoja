package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ResourceId;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.GraphicBuffer;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import android.view.AppTransitionAnimationSpec;
import android.view.IAppTransitionAnimationSpecsFuture;
import android.view.RemoteAnimationAdapter;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.ClipRectAnimation;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.AttributeCache;
import com.android.server.pm.PackageManagerService;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.wm.animation.ClipRectLRAnimation;
import com.android.server.wm.animation.ClipRectTBAnimation;
import com.android.server.wm.animation.CurvedTranslateAnimation;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class AppTransition implements DumpUtils.Dump {
    private static final int APP_STATE_IDLE = 0;
    private static final int APP_STATE_READY = 1;
    private static final int APP_STATE_RUNNING = 2;
    private static final int APP_STATE_TIMEOUT = 3;
    private static final long APP_TRANSITION_TIMEOUT_MS = 5000;
    private static final int CLIP_REVEAL_TRANSLATION_Y_DP = 8;
    static final int DEFAULT_APP_TRANSITION_DURATION = 336;
    static final int MAX_APP_TRANSITION_DURATION = 3000;
    private static final int MAX_CLIP_REVEAL_TRANSITION_DURATION = 420;
    private static final int NEXT_TRANSIT_TYPE_CLIP_REVEAL = 8;
    private static final int NEXT_TRANSIT_TYPE_CUSTOM = 1;
    private static final int NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE = 7;
    private static final int NEXT_TRANSIT_TYPE_NONE = 0;
    private static final int NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS = 9;
    private static final int NEXT_TRANSIT_TYPE_REMOTE = 10;
    private static final int NEXT_TRANSIT_TYPE_SCALE_UP = 2;
    private static final int NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN = 6;
    private static final int NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP = 5;
    private static final int NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN = 4;
    private static final int NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP = 3;
    private static final float RECENTS_THUMBNAIL_FADEIN_FRACTION = 0.5f;
    private static final float RECENTS_THUMBNAIL_FADEOUT_FRACTION = 0.5f;
    private static final String TAG = "WindowManager";
    private static final int THUMBNAIL_APP_TRANSITION_DURATION = 336;
    private static final int THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN = 2;
    private static final int THUMBNAIL_TRANSITION_ENTER_SCALE_UP = 0;
    private static final int THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN = 3;
    private static final int THUMBNAIL_TRANSITION_EXIT_SCALE_UP = 1;
    private IRemoteCallback mAnimationFinishedCallback;
    private final int mClipRevealTranslationY;
    private final int mConfigShortAnimTime;
    private final Context mContext;
    private final Interpolator mDecelerateInterpolator;
    private AppTransitionAnimationSpec mDefaultNextAppTransitionAnimationSpec;
    private final int mDefaultWindowAnimationStyleResId;
    private final DisplayContent mDisplayContent;
    private final Interpolator mFastOutLinearInInterpolator;
    private final Interpolator mFastOutSlowInInterpolator;
    final Handler mHandler;
    private String mLastChangingApp;
    private int mLastClipRevealMaxTranslation;
    private String mLastClosingApp;
    private boolean mLastHadClipReveal;
    private String mLastOpeningApp;
    private final Interpolator mLinearOutSlowInInterpolator;
    private IAppTransitionAnimationSpecsFuture mNextAppTransitionAnimationsSpecsFuture;
    private boolean mNextAppTransitionAnimationsSpecsPending;
    private IRemoteCallback mNextAppTransitionCallback;
    private int mNextAppTransitionEnter;
    private int mNextAppTransitionExit;
    private IRemoteCallback mNextAppTransitionFutureCallback;
    private int mNextAppTransitionInPlace;
    private String mNextAppTransitionPackage;
    private boolean mNextAppTransitionScaleUp;
    private RemoteAnimationController mRemoteAnimationController;
    private final WindowManagerService mService;
    static final Interpolator TOUCH_RESPONSE_INTERPOLATOR = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
    private static final Interpolator THUMBNAIL_DOCK_INTERPOLATOR = new PathInterpolator(0.85f, 0.0f, 1.0f, 1.0f);
    private int mNextAppTransition = -1;
    private int mNextAppTransitionFlags = 0;
    private int mLastUsedAppTransition = -1;
    private int mNextAppTransitionType = 0;
    private final SparseArray<AppTransitionAnimationSpec> mNextAppTransitionAnimationsSpecs = new SparseArray<>();
    private Rect mNextAppTransitionInsets = new Rect();
    private Rect mTmpFromClipRect = new Rect();
    private Rect mTmpToClipRect = new Rect();
    private final Rect mTmpRect = new Rect();
    private int mAppTransitionState = 0;
    private final Interpolator mClipHorizontalInterpolator = new PathInterpolator(0.0f, 0.0f, 0.4f, 1.0f);
    private int mCurrentUserId = 0;
    private long mLastClipRevealTransitionDuration = 336;
    private final ArrayList<WindowManagerInternal.AppTransitionListener> mListeners = new ArrayList<>();
    private final ExecutorService mDefaultExecutor = Executors.newSingleThreadExecutor();
    final Runnable mHandleAppTransitionTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$AppTransition$xrq-Gwel_FcpfDvO2DrCfGN_3bk
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0$AppTransition();
        }
    };
    private final Interpolator mThumbnailFadeInInterpolator = new Interpolator() { // from class: com.android.server.wm.AppTransition.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            if (input >= 0.5f) {
                float t = (input - 0.5f) / 0.5f;
                return AppTransition.this.mFastOutLinearInInterpolator.getInterpolation(t);
            }
            return 0.0f;
        }
    };
    private final Interpolator mThumbnailFadeOutInterpolator = new Interpolator() { // from class: com.android.server.wm.AppTransition.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            if (input < 0.5f) {
                float t = input / 0.5f;
                return AppTransition.this.mLinearOutSlowInInterpolator.getInterpolation(t);
            }
            return 1.0f;
        }
    };
    private final boolean mGridLayoutRecentsEnabled = SystemProperties.getBoolean("ro.recents.grid", false);
    private final boolean mLowRamRecentsEnabled = ActivityManager.isLowRamDeviceStatic();

    AppTransition(Context context, WindowManagerService service, DisplayContent displayContent) {
        this.mContext = context;
        this.mService = service;
        this.mHandler = new Handler(service.mH.getLooper());
        this.mDisplayContent = displayContent;
        this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.linear_out_slow_in);
        this.mFastOutLinearInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_linear_in);
        this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_slow_in);
        this.mConfigShortAnimTime = context.getResources().getInteger(R.integer.config_shortAnimTime);
        this.mDecelerateInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.decelerate_cubic);
        this.mClipRevealTranslationY = (int) (this.mContext.getResources().getDisplayMetrics().density * 8.0f);
        TypedArray windowStyle = this.mContext.getTheme().obtainStyledAttributes(com.android.internal.R.styleable.Window);
        this.mDefaultWindowAnimationStyleResId = windowStyle.getResourceId(8, 0);
        windowStyle.recycle();
    }

    boolean isTransitionSet() {
        return this.mNextAppTransition != -1;
    }

    boolean isTransitionEqual(int transit) {
        return this.mNextAppTransition == transit;
    }

    int getAppTransition() {
        return this.mNextAppTransition;
    }

    private void setAppTransition(int transit, int flags) {
        this.mNextAppTransition = transit;
        this.mNextAppTransitionFlags |= flags;
        setLastAppTransition(-1, null, null, null);
        updateBooster();
    }

    void setLastAppTransition(int transit, ActivityRecord openingApp, ActivityRecord closingApp, ActivityRecord changingApp) {
        this.mLastUsedAppTransition = transit;
        this.mLastOpeningApp = "" + openingApp;
        this.mLastClosingApp = "" + closingApp;
        this.mLastChangingApp = "" + changingApp;
    }

    boolean isReady() {
        int i = this.mAppTransitionState;
        return i == 1 || i == 3;
    }

    void setReady() {
        setAppTransitionState(1);
        fetchAppTransitionSpecsFromFuture();
    }

    boolean isRunning() {
        return this.mAppTransitionState == 2;
    }

    void setIdle() {
        setAppTransitionState(0);
    }

    boolean isTimeout() {
        return this.mAppTransitionState == 3;
    }

    void setTimeout() {
        setAppTransitionState(3);
    }

    GraphicBuffer getAppTransitionThumbnailHeader(WindowContainer container) {
        AppTransitionAnimationSpec spec = this.mNextAppTransitionAnimationsSpecs.get(container.hashCode());
        if (spec == null) {
            spec = this.mDefaultNextAppTransitionAnimationSpec;
        }
        if (spec != null) {
            return spec.buffer;
        }
        return null;
    }

    boolean isNextThumbnailTransitionAspectScaled() {
        int i = this.mNextAppTransitionType;
        return i == 5 || i == 6;
    }

    boolean isNextThumbnailTransitionScaleUp() {
        return this.mNextAppTransitionScaleUp;
    }

    boolean isNextAppTransitionThumbnailUp() {
        int i = this.mNextAppTransitionType;
        return i == 3 || i == 5;
    }

    boolean isNextAppTransitionThumbnailDown() {
        int i = this.mNextAppTransitionType;
        return i == 4 || i == 6;
    }

    boolean isNextAppTransitionOpenCrossProfileApps() {
        return this.mNextAppTransitionType == 9;
    }

    boolean isFetchingAppTransitionsSpecs() {
        return this.mNextAppTransitionAnimationsSpecsPending;
    }

    private boolean prepare() {
        if (isRunning()) {
            return false;
        }
        setAppTransitionState(0);
        notifyAppTransitionPendingLocked();
        this.mLastHadClipReveal = false;
        this.mLastClipRevealMaxTranslation = 0;
        this.mLastClipRevealTransitionDuration = 336L;
        return true;
    }

    int goodToGo(int transit, ActivityRecord topOpeningApp, ArraySet<ActivityRecord> openingApps) {
        long jUptimeMillis;
        this.mNextAppTransition = -1;
        this.mNextAppTransitionFlags = 0;
        setAppTransitionState(2);
        WindowContainer wc = topOpeningApp != null ? topOpeningApp.getAnimatingContainer() : null;
        AnimationAdapter topOpeningAnim = wc != null ? wc.getAnimation() : null;
        long durationHint = topOpeningAnim != null ? topOpeningAnim.getDurationHint() : 0L;
        if (topOpeningAnim != null) {
            jUptimeMillis = topOpeningAnim.getStatusBarTransitionsStartTime();
        } else {
            jUptimeMillis = SystemClock.uptimeMillis();
        }
        int redoLayout = notifyAppTransitionStartingLocked(transit, durationHint, jUptimeMillis, 120L);
        RemoteAnimationController remoteAnimationController = this.mRemoteAnimationController;
        if (remoteAnimationController != null) {
            remoteAnimationController.goodToGo();
        }
        return redoLayout;
    }

    void clear() {
        this.mNextAppTransitionType = 0;
        this.mNextAppTransitionPackage = null;
        this.mNextAppTransitionAnimationsSpecs.clear();
        this.mRemoteAnimationController = null;
        this.mNextAppTransitionAnimationsSpecsFuture = null;
        this.mDefaultNextAppTransitionAnimationSpec = null;
        this.mAnimationFinishedCallback = null;
    }

    void freeze() {
        int transit = this.mNextAppTransition;
        RemoteAnimationController remoteAnimationController = this.mRemoteAnimationController;
        if (remoteAnimationController != null) {
            remoteAnimationController.cancelAnimation("freeze");
        }
        setAppTransition(-1, 0);
        clear();
        setReady();
        notifyAppTransitionCancelledLocked(transit);
    }

    private void setAppTransitionState(int state) {
        this.mAppTransitionState = state;
        updateBooster();
    }

    void updateBooster() {
        WindowManagerService.sThreadPriorityBooster.setAppTransitionRunning(needsBoosting());
    }

    private boolean needsBoosting() {
        int i;
        boolean recentsAnimRunning = this.mService.getRecentsAnimationController() != null;
        return this.mNextAppTransition != -1 || (i = this.mAppTransitionState) == 1 || i == 2 || recentsAnimRunning;
    }

    void registerListenerLocked(WindowManagerInternal.AppTransitionListener listener) {
        this.mListeners.add(listener);
    }

    void unregisterListener(WindowManagerInternal.AppTransitionListener listener) {
        this.mListeners.remove(listener);
    }

    public void notifyAppTransitionFinishedLocked(IBinder token) {
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onAppTransitionFinishedLocked(token);
        }
    }

    private void notifyAppTransitionPendingLocked() {
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onAppTransitionPendingLocked();
        }
    }

    private void notifyAppTransitionCancelledLocked(int transit) {
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onAppTransitionCancelledLocked(transit);
        }
    }

    private void notifyAppTransitionTimeoutLocked() {
        for (int i = 0; i < this.mListeners.size(); i++) {
            this.mListeners.get(i).onAppTransitionTimeoutLocked();
        }
    }

    private int notifyAppTransitionStartingLocked(int transit, long duration, long statusBarAnimationStartTime, long statusBarAnimationDuration) {
        int redoLayout = 0;
        for (int i = 0; i < this.mListeners.size(); i++) {
            redoLayout |= this.mListeners.get(i).onAppTransitionStartingLocked(transit, duration, statusBarAnimationStartTime, statusBarAnimationDuration);
        }
        return redoLayout;
    }

    int getDefaultWindowAnimationStyleResId() {
        return this.mDefaultWindowAnimationStyleResId;
    }

    int getAnimationStyleResId(WindowManager.LayoutParams lp) {
        int resId = lp.windowAnimations;
        if (lp.type == 3) {
            int resId2 = this.mDefaultWindowAnimationStyleResId;
            return resId2;
        }
        return resId;
    }

    private AttributeCache.Entry getCachedAnimations(WindowManager.LayoutParams lp) {
        if (lp != null && lp.windowAnimations != 0) {
            String packageName = lp.packageName != null ? lp.packageName : PackageManagerService.PLATFORM_PACKAGE_NAME;
            int resId = getAnimationStyleResId(lp);
            if (((-16777216) & resId) == 16777216) {
                packageName = PackageManagerService.PLATFORM_PACKAGE_NAME;
            }
            return AttributeCache.instance().get(packageName, resId, com.android.internal.R.styleable.WindowAnimation, this.mCurrentUserId);
        }
        return null;
    }

    private AttributeCache.Entry getCachedAnimations(String packageName, int resId) {
        if (packageName != null) {
            if (((-16777216) & resId) == 16777216) {
                packageName = PackageManagerService.PLATFORM_PACKAGE_NAME;
            }
            return AttributeCache.instance().get(packageName, resId, com.android.internal.R.styleable.WindowAnimation, this.mCurrentUserId);
        }
        return null;
    }

    Animation loadAnimationAttr(WindowManager.LayoutParams lp, int animAttr, int transit) {
        AttributeCache.Entry ent;
        int resId = 0;
        Context context = this.mContext;
        if (animAttr >= 0 && (ent = getCachedAnimations(lp)) != null) {
            context = ent.context;
            resId = ent.array.getResourceId(animAttr, 0);
        }
        int resId2 = updateToTranslucentAnimIfNeeded(resId, transit);
        if (ResourceId.isValid(resId2)) {
            return loadAnimationSafely(context, resId2);
        }
        return null;
    }

    private Animation loadAnimationRes(WindowManager.LayoutParams lp, int resId) {
        Context context = this.mContext;
        if (ResourceId.isValid(resId)) {
            AttributeCache.Entry ent = getCachedAnimations(lp);
            if (ent != null) {
                context = ent.context;
            }
            return loadAnimationSafely(context, resId);
        }
        return null;
    }

    private Animation loadAnimationRes(String packageName, int resId) {
        AttributeCache.Entry ent;
        if (ResourceId.isValid(resId) && (ent = getCachedAnimations(packageName, resId)) != null) {
            return loadAnimationSafely(ent.context, resId);
        }
        return null;
    }

    Animation loadAnimationSafely(Context context, int resId) {
        try {
            return AnimationUtils.loadAnimation(context, resId);
        } catch (Resources.NotFoundException e) {
            Slog.w(TAG, "Unable to load animation resource", e);
            return null;
        }
    }

    private int updateToTranslucentAnimIfNeeded(int anim, int transit) {
        if (transit == 24 && anim == 17432594) {
            return R.anim.btn_checkbox_to_checked_box_outer_merged_animation;
        }
        if (transit == 25 && anim == 17432593) {
            return R.anim.btn_checkbox_to_checked_box_inner_merged_animation;
        }
        return anim;
    }

    private static float computePivot(int startPos, float finalScale) {
        float denom = finalScale - 1.0f;
        if (Math.abs(denom) < 1.0E-4f) {
            return startPos;
        }
        return (-startPos) / denom;
    }

    private Animation createScaleUpAnimationLocked(int transit, boolean enter, Rect containingFrame) {
        Animation alpha;
        long duration;
        getDefaultNextAppTransitionStartRect(this.mTmpRect);
        int appWidth = containingFrame.width();
        int appHeight = containingFrame.height();
        if (enter) {
            float scaleW = this.mTmpRect.width() / appWidth;
            float scaleH = this.mTmpRect.height() / appHeight;
            Animation scale = new ScaleAnimation(scaleW, 1.0f, scaleH, 1.0f, computePivot(this.mTmpRect.left, scaleW), computePivot(this.mTmpRect.top, scaleH));
            scale.setInterpolator(this.mDecelerateInterpolator);
            Animation alpha2 = new AlphaAnimation(0.0f, 1.0f);
            alpha2.setInterpolator(this.mThumbnailFadeOutInterpolator);
            AnimationSet set = new AnimationSet(false);
            set.addAnimation(scale);
            set.addAnimation(alpha2);
            set.setDetachWallpaper(true);
            alpha = set;
        } else if (transit == 14 || transit == 15) {
            alpha = new AlphaAnimation(1.0f, 0.0f);
            alpha.setDetachWallpaper(true);
        } else {
            alpha = new AlphaAnimation(1.0f, 1.0f);
        }
        if (transit == 6 || transit == 7) {
            duration = this.mConfigShortAnimTime;
        } else {
            duration = 336;
        }
        alpha.setDuration(duration);
        alpha.setFillAfter(true);
        alpha.setInterpolator(this.mDecelerateInterpolator);
        alpha.initialize(appWidth, appHeight, appWidth, appHeight);
        return alpha;
    }

    private void getDefaultNextAppTransitionStartRect(Rect rect) {
        AppTransitionAnimationSpec appTransitionAnimationSpec = this.mDefaultNextAppTransitionAnimationSpec;
        if (appTransitionAnimationSpec == null || appTransitionAnimationSpec.rect == null) {
            Slog.e(TAG, "Starting rect for app requested, but none available", new Throwable());
            rect.setEmpty();
        } else {
            rect.set(this.mDefaultNextAppTransitionAnimationSpec.rect);
        }
    }

    void getNextAppTransitionStartRect(WindowContainer container, Rect rect) {
        AppTransitionAnimationSpec spec = this.mNextAppTransitionAnimationsSpecs.get(container.hashCode());
        if (spec == null) {
            spec = this.mDefaultNextAppTransitionAnimationSpec;
        }
        if (spec == null || spec.rect == null) {
            Slog.e(TAG, "Starting rect for container: " + container + " requested, but not available", new Throwable());
            rect.setEmpty();
            return;
        }
        rect.set(spec.rect);
    }

    private void putDefaultNextAppTransitionCoordinates(int left, int top, int width, int height, GraphicBuffer buffer) {
        this.mDefaultNextAppTransitionAnimationSpec = new AppTransitionAnimationSpec(-1, buffer, new Rect(left, top, left + width, top + height));
    }

    long getLastClipRevealTransitionDuration() {
        return this.mLastClipRevealTransitionDuration;
    }

    int getLastClipRevealMaxTranslation() {
        return this.mLastClipRevealMaxTranslation;
    }

    boolean hadClipRevealAnimation() {
        return this.mLastHadClipReveal;
    }

    private long calculateClipRevealTransitionDuration(boolean cutOff, float translationX, float translationY, Rect displayFrame) {
        if (!cutOff) {
            return 336L;
        }
        float fraction = Math.max(Math.abs(translationX) / displayFrame.width(), Math.abs(translationY) / displayFrame.height());
        return (long) ((84.0f * fraction) + 336.0f);
    }

    private Animation createClipRevealAnimationLocked(int transit, boolean enter, Rect appFrame, Rect displayFrame) {
        long duration;
        boolean z;
        Animation anim;
        float t;
        int translationY;
        int translationYCorrection;
        int clipStartY;
        int translationX;
        boolean cutOff;
        int clipStartX;
        if (enter) {
            int appWidth = appFrame.width();
            int appHeight = appFrame.height();
            getDefaultNextAppTransitionStartRect(this.mTmpRect);
            if (appHeight <= 0) {
                t = 0.0f;
            } else {
                float t2 = this.mTmpRect.top / displayFrame.height();
                t = t2;
            }
            int translationY2 = this.mClipRevealTranslationY + ((int) ((displayFrame.height() / 7.0f) * t));
            int translationX2 = 0;
            int centerX = this.mTmpRect.centerX();
            int centerY = this.mTmpRect.centerY();
            int halfWidth = this.mTmpRect.width() / 2;
            int halfHeight = this.mTmpRect.height() / 2;
            int clipStartX2 = (centerX - halfWidth) - appFrame.left;
            int clipStartY2 = (centerY - halfHeight) - appFrame.top;
            boolean cutOff2 = false;
            if (appFrame.top <= centerY - halfHeight) {
                translationY = translationY2;
                translationYCorrection = translationY2;
                clipStartY = clipStartY2;
            } else {
                cutOff2 = true;
                translationY = (centerY - halfHeight) - appFrame.top;
                translationYCorrection = 0;
                clipStartY = 0;
            }
            if (appFrame.left > centerX - halfWidth) {
                translationX2 = (centerX - halfWidth) - appFrame.left;
                clipStartX2 = 0;
                cutOff2 = true;
            }
            if (appFrame.right >= centerX + halfWidth) {
                translationX = translationX2;
                cutOff = cutOff2;
                clipStartX = clipStartX2;
            } else {
                int translationX3 = (centerX + halfWidth) - appFrame.right;
                int clipStartX3 = appWidth - this.mTmpRect.width();
                translationX = translationX3;
                cutOff = true;
                clipStartX = clipStartX3;
            }
            long duration2 = calculateClipRevealTransitionDuration(cutOff, translationX, translationY, displayFrame);
            ClipRectAnimation clipRectLRAnimation = new ClipRectLRAnimation(clipStartX, this.mTmpRect.width() + clipStartX, 0, appWidth);
            clipRectLRAnimation.setInterpolator(this.mClipHorizontalInterpolator);
            clipRectLRAnimation.setDuration((long) (duration2 / 2.5f));
            TranslateAnimation translate = new TranslateAnimation(translationX, 0.0f, translationY, 0.0f);
            translate.setInterpolator(cutOff ? TOUCH_RESPONSE_INTERPOLATOR : this.mLinearOutSlowInInterpolator);
            translate.setDuration(duration2);
            boolean cutOff3 = cutOff;
            int clipStartX4 = translationYCorrection;
            int translationX4 = translationX;
            int translationY3 = translationY;
            ClipRectAnimation clipRectTBAnimation = new ClipRectTBAnimation(clipStartY, clipStartY + this.mTmpRect.height(), 0, appHeight, clipStartX4, 0, this.mLinearOutSlowInInterpolator);
            clipRectTBAnimation.setInterpolator(TOUCH_RESPONSE_INTERPOLATOR);
            clipRectTBAnimation.setDuration(duration2);
            long alphaDuration = duration2 / 4;
            AlphaAnimation alpha = new AlphaAnimation(0.5f, 1.0f);
            alpha.setDuration(alphaDuration);
            alpha.setInterpolator(this.mLinearOutSlowInInterpolator);
            AnimationSet animationSet = new AnimationSet(false);
            animationSet.addAnimation(clipRectLRAnimation);
            animationSet.addAnimation(clipRectTBAnimation);
            animationSet.addAnimation(translate);
            animationSet.addAnimation(alpha);
            animationSet.setZAdjustment(1);
            animationSet.initialize(appWidth, appHeight, appWidth, appHeight);
            this.mLastHadClipReveal = true;
            this.mLastClipRevealTransitionDuration = duration2;
            this.mLastClipRevealMaxTranslation = cutOff3 ? Math.max(Math.abs(translationY3), Math.abs(translationX4)) : 0;
            return animationSet;
        }
        if (transit == 6 || transit == 7) {
            duration = this.mConfigShortAnimTime;
        } else {
            duration = 336;
        }
        if (transit == 14 || transit == 15) {
            float f = 1.0f;
            anim = new AlphaAnimation(f, 0.0f);
            z = true;
            anim.setDetachWallpaper(true);
        } else {
            anim = new AlphaAnimation(1.0f, 1.0f);
            z = true;
        }
        anim.setInterpolator(this.mDecelerateInterpolator);
        anim.setDuration(duration);
        anim.setFillAfter(z);
        return anim;
    }

    Animation prepareThumbnailAnimationWithDuration(Animation a, int appWidth, int appHeight, long duration, Interpolator interpolator) {
        if (duration > 0) {
            a.setDuration(duration);
        }
        a.setFillAfter(true);
        if (interpolator != null) {
            a.setInterpolator(interpolator);
        }
        a.initialize(appWidth, appHeight, appWidth, appHeight);
        return a;
    }

    Animation prepareThumbnailAnimation(Animation a, int appWidth, int appHeight, int transit) {
        int duration;
        if (transit == 6 || transit == 7) {
            duration = this.mConfigShortAnimTime;
        } else {
            duration = 336;
        }
        return prepareThumbnailAnimationWithDuration(a, appWidth, appHeight, duration, this.mDecelerateInterpolator);
    }

    int getThumbnailTransitionState(boolean enter) {
        if (enter) {
            if (this.mNextAppTransitionScaleUp) {
                return 0;
            }
            return 2;
        }
        if (this.mNextAppTransitionScaleUp) {
            return 1;
        }
        return 3;
    }

    GraphicBuffer createCrossProfileAppsThumbnail(int thumbnailDrawableRes, Rect frame) {
        int width = frame.width();
        int height = frame.height();
        Picture picture = new Picture();
        Canvas canvas = picture.beginRecording(width, height);
        canvas.drawColor(Color.argb(0.6f, 0.0f, 0.0f, 0.0f));
        int thumbnailSize = this.mService.mContext.getResources().getDimensionPixelSize(R.dimen.config_screenBrightnessSettingDefaultFloat);
        Drawable drawable = this.mService.mContext.getDrawable(thumbnailDrawableRes);
        drawable.setBounds((width - thumbnailSize) / 2, (height - thumbnailSize) / 2, (width + thumbnailSize) / 2, (height + thumbnailSize) / 2);
        drawable.setTint(this.mContext.getColor(R.color.white));
        drawable.draw(canvas);
        picture.endRecording();
        return Bitmap.createBitmap(picture).createGraphicBufferHandle();
    }

    Animation createCrossProfileAppsThumbnailAnimationLocked(Rect appRect) {
        Animation animation = loadAnimationRes(PackageManagerService.PLATFORM_PACKAGE_NAME, R.anim.dialog_enter);
        return prepareThumbnailAnimationWithDuration(animation, appRect.width(), appRect.height(), 0L, null);
    }

    Animation createThumbnailAspectScaleAnimationLocked(Rect appRect, Rect contentInsets, GraphicBuffer thumbnailHeader, WindowContainer container, int uiMode, int orientation) {
        float fromY;
        float pivotY;
        float pivotY2;
        float pivotX;
        float toX;
        float fromX;
        Animation a;
        Interpolator interpolator;
        long j;
        int thumbWidthI = thumbnailHeader.getWidth();
        float thumbWidth = thumbWidthI > 0 ? thumbWidthI : 1.0f;
        int thumbHeightI = thumbnailHeader.getHeight();
        int appWidth = appRect.width();
        float scaleW = appWidth / thumbWidth;
        getNextAppTransitionStartRect(container, this.mTmpRect);
        if (shouldScaleDownThumbnailTransition(uiMode, orientation)) {
            float fromX2 = this.mTmpRect.left;
            fromY = this.mTmpRect.top;
            float toX2 = ((this.mTmpRect.width() / 2) * (scaleW - 1.0f)) + appRect.left;
            float toY = ((appRect.height() / 2) * (1.0f - (1.0f / scaleW))) + appRect.top;
            float pivotX2 = this.mTmpRect.width() / 2;
            float pivotY3 = (appRect.height() / 2) / scaleW;
            if (!this.mGridLayoutRecentsEnabled) {
                pivotY2 = toY;
                pivotX = pivotX2;
                pivotY = pivotY3;
                toX = fromX2;
                fromX = toX2;
            } else {
                fromY -= thumbHeightI;
                pivotY2 = toY - (thumbHeightI * scaleW);
                pivotX = pivotX2;
                pivotY = pivotY3;
                toX = fromX2;
                fromX = toX2;
            }
        } else {
            float fromX3 = this.mTmpRect.left;
            fromY = this.mTmpRect.top;
            float toX3 = appRect.left;
            pivotY = 0.0f;
            pivotY2 = appRect.top;
            pivotX = 0.0f;
            toX = fromX3;
            fromX = toX3;
        }
        long duration = getAspectScaleDuration();
        Interpolator interpolator2 = getAspectScaleInterpolator();
        if (this.mNextAppTransitionScaleUp) {
            Animation scale = new ScaleAnimation(1.0f, scaleW, 1.0f, scaleW, pivotX, pivotY);
            scale.setInterpolator(interpolator2);
            scale.setDuration(duration);
            Animation alpha = new AlphaAnimation(1.0f, 0.0f);
            if (this.mNextAppTransition != 19) {
                interpolator = this.mThumbnailFadeOutInterpolator;
            } else {
                interpolator = THUMBNAIL_DOCK_INTERPOLATOR;
            }
            alpha.setInterpolator(interpolator);
            if (this.mNextAppTransition == 19) {
                j = duration / 2;
            } else {
                j = duration;
            }
            alpha.setDuration(j);
            Animation translate = createCurvedMotion(toX, fromX, fromY, pivotY2);
            translate.setInterpolator(interpolator2);
            translate.setDuration(duration);
            this.mTmpFromClipRect.set(0, 0, thumbWidthI, thumbHeightI);
            this.mTmpToClipRect.set(appRect);
            this.mTmpToClipRect.offsetTo(0, 0);
            Rect rect = this.mTmpToClipRect;
            rect.right = (int) (rect.right / scaleW);
            Rect rect2 = this.mTmpToClipRect;
            rect2.bottom = (int) (rect2.bottom / scaleW);
            if (contentInsets != null) {
                this.mTmpToClipRect.inset((int) ((-contentInsets.left) * scaleW), (int) ((-contentInsets.top) * scaleW), (int) ((-contentInsets.right) * scaleW), (int) ((-contentInsets.bottom) * scaleW));
            }
            ClipRectAnimation clipRectAnimation = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
            clipRectAnimation.setInterpolator(interpolator2);
            clipRectAnimation.setDuration(duration);
            AnimationSet set = new AnimationSet(false);
            set.addAnimation(scale);
            if (!this.mGridLayoutRecentsEnabled) {
                set.addAnimation(alpha);
            }
            set.addAnimation(translate);
            set.addAnimation(clipRectAnimation);
            a = set;
        } else {
            float toY2 = pivotY2;
            Animation scale2 = new ScaleAnimation(scaleW, 1.0f, scaleW, 1.0f, pivotX, pivotY);
            scale2.setInterpolator(interpolator2);
            scale2.setDuration(duration);
            Animation alpha2 = new AlphaAnimation(0.0f, 1.0f);
            alpha2.setInterpolator(this.mThumbnailFadeInInterpolator);
            alpha2.setDuration(duration);
            Animation translate2 = createCurvedMotion(fromX, toX, toY2, fromY);
            translate2.setInterpolator(interpolator2);
            translate2.setDuration(duration);
            AnimationSet set2 = new AnimationSet(false);
            set2.addAnimation(scale2);
            if (!this.mGridLayoutRecentsEnabled) {
                set2.addAnimation(alpha2);
            }
            set2.addAnimation(translate2);
            a = set2;
        }
        return prepareThumbnailAnimationWithDuration(a, appWidth, appRect.height(), 0L, null);
    }

    private Animation createCurvedMotion(float fromX, float toX, float fromY, float toY) {
        if (Math.abs(toX - fromX) < 1.0f || this.mNextAppTransition != 19) {
            return new TranslateAnimation(fromX, toX, fromY, toY);
        }
        Path path = createCurvedPath(fromX, toX, fromY, toY);
        return new CurvedTranslateAnimation(path);
    }

    private Path createCurvedPath(float fromX, float toX, float fromY, float toY) {
        Path path = new Path();
        path.moveTo(fromX, fromY);
        if (fromY > toY) {
            path.cubicTo(fromX, fromY, toX, (0.9f * fromY) + (0.1f * toY), toX, toY);
        } else {
            path.cubicTo(fromX, fromY, fromX, (0.1f * fromY) + (0.9f * toY), toX, toY);
        }
        return path;
    }

    private long getAspectScaleDuration() {
        if (this.mNextAppTransition == 19) {
            return 453L;
        }
        return 336L;
    }

    private Interpolator getAspectScaleInterpolator() {
        if (this.mNextAppTransition == 19) {
            return this.mFastOutSlowInInterpolator;
        }
        return TOUCH_RESPONSE_INTERPOLATOR;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0096  */
    /* JADX WARN: Code duplicated, block: B:30:0x0098  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00df  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:43:0x0100  */
    /* JADX WARN: Code duplicated, block: B:44:0x0103  */
    /* JADX WARN: Code duplicated, block: B:46:0x0107  */
    /* JADX WARN: Code duplicated, block: B:47:0x010a  */
    /* JADX WARN: Code duplicated, block: B:49:0x010e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:52:0x0115  */
    /* JADX WARN: Code duplicated, block: B:53:0x0118  */
    /* JADX WARN: Code duplicated, block: B:56:0x016b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0183  */
    /* JADX WARN: Code duplicated, block: B:63:0x018d  */
    /* JADX WARN: Code duplicated, block: B:64:0x019b  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:72:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:76:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ff  */
    Animation createAspectScaledThumbnailEnterExitAnimationLocked(int thumbTransitState, int uiMode, int orientation, int transit, Rect containingFrame, Rect contentInsets, Rect surfaceInsets, Rect stableInsets, boolean freeform, WindowContainer container) {
        boolean scaleUp;
        AnimationSet set;
        ClipRectAnimation clipRectAnimation;
        Animation translateAnim;
        Animation a;
        float scale;
        float f;
        float f2;
        float f3;
        float f4;
        float scale2;
        float startY;
        ClipRectAnimation clipRectAnimation2;
        Animation translateAnim2;
        int appWidth = containingFrame.width();
        int appHeight = containingFrame.height();
        getDefaultNextAppTransitionStartRect(this.mTmpRect);
        int thumbWidthI = this.mTmpRect.width();
        float thumbWidth = thumbWidthI > 0 ? thumbWidthI : 1.0f;
        int thumbHeightI = this.mTmpRect.height();
        float thumbHeight = thumbHeightI > 0 ? thumbHeightI : 1.0f;
        int thumbStartX = (this.mTmpRect.left - containingFrame.left) - contentInsets.left;
        int thumbStartY = this.mTmpRect.top - containingFrame.top;
        if (thumbTransitState != 0) {
            if (thumbTransitState != 1) {
                if (thumbTransitState != 2) {
                    if (thumbTransitState != 3) {
                        throw new RuntimeException("Invalid thumbnail transition state");
                    }
                    if (thumbTransitState == 0) {
                        scaleUp = true;
                    } else {
                        scaleUp = false;
                    }
                    if (!freeform) {
                        if (freeform) {
                            a = createAspectScaledThumbnailExitFreeformAnimationLocked(containingFrame, surfaceInsets, container);
                            appWidth = appWidth;
                        } else {
                            set = new AnimationSet(true);
                            this.mTmpFromClipRect.set(containingFrame);
                            this.mTmpToClipRect.set(containingFrame);
                            this.mTmpFromClipRect.offsetTo(0, 0);
                            this.mTmpToClipRect.offsetTo(0, 0);
                            this.mTmpFromClipRect.inset(contentInsets);
                            this.mNextAppTransitionInsets.set(contentInsets);
                            if (shouldScaleDownThumbnailTransition(uiMode, orientation)) {
                                scale = thumbWidth / ((appWidth - contentInsets.left) - contentInsets.right);
                                if (!this.mGridLayoutRecentsEnabled) {
                                    int unscaledThumbHeight = (int) (thumbHeight / scale);
                                    Rect rect = this.mTmpFromClipRect;
                                    rect.bottom = rect.top + unscaledThumbHeight;
                                }
                                this.mNextAppTransitionInsets.set(contentInsets);
                                if (scaleUp) {
                                    f = scale;
                                } else {
                                    f = 1.0f;
                                }
                                if (scaleUp) {
                                    f2 = 1.0f;
                                } else {
                                    f2 = scale;
                                }
                                if (scaleUp) {
                                    f3 = scale;
                                } else {
                                    f3 = 1.0f;
                                }
                                if (scaleUp) {
                                    f4 = 1.0f;
                                } else {
                                    f4 = scale;
                                }
                                Animation scaleAnim = new ScaleAnimation(f, f2, f3, f4, containingFrame.width() / 2.0f, (containingFrame.height() / 2.0f) + contentInsets.top);
                                float targetX = this.mTmpRect.left - containingFrame.left;
                                float x = (containingFrame.width() / 2.0f) - ((containingFrame.width() / 2.0f) * scale);
                                float targetY = this.mTmpRect.top - containingFrame.top;
                                float y = (containingFrame.height() / 2.0f) - ((containingFrame.height() / 2.0f) * scale);
                                if (!this.mLowRamRecentsEnabled) {
                                }
                                scale2 = targetX - x;
                                startY = targetY - y;
                                if (!scaleUp) {
                                    clipRectAnimation2 = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                                } else {
                                    clipRectAnimation2 = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                                }
                                ClipRectAnimation clipRectAnimation3 = clipRectAnimation2;
                                if (scaleUp) {
                                    translateAnim2 = createCurvedMotion(scale2, 0.0f, startY - contentInsets.top, 0.0f);
                                } else {
                                    translateAnim2 = createCurvedMotion(0.0f, scale2, 0.0f, startY - contentInsets.top);
                                }
                                set.addAnimation(clipRectAnimation3);
                                set.addAnimation(scaleAnim);
                                set.addAnimation(translateAnim2);
                            } else {
                                appWidth = appWidth;
                                Rect rect2 = this.mTmpFromClipRect;
                                rect2.bottom = rect2.top + thumbHeightI;
                                Rect rect3 = this.mTmpFromClipRect;
                                rect3.right = rect3.left + thumbWidthI;
                                if (scaleUp) {
                                    clipRectAnimation = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                                } else {
                                    clipRectAnimation = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                                }
                                if (scaleUp) {
                                    translateAnim = createCurvedMotion(thumbStartX, 0.0f, thumbStartY - contentInsets.top, 0.0f);
                                } else {
                                    translateAnim = createCurvedMotion(0.0f, thumbStartX, 0.0f, thumbStartY - contentInsets.top);
                                }
                                set.addAnimation(clipRectAnimation);
                                set.addAnimation(translateAnim);
                            }
                            set.setZAdjustment(1);
                            a = set;
                        }
                    } else if (freeform) {
                        a = createAspectScaledThumbnailExitFreeformAnimationLocked(containingFrame, surfaceInsets, container);
                        appWidth = appWidth;
                    } else {
                        set = new AnimationSet(true);
                        this.mTmpFromClipRect.set(containingFrame);
                        this.mTmpToClipRect.set(containingFrame);
                        this.mTmpFromClipRect.offsetTo(0, 0);
                        this.mTmpToClipRect.offsetTo(0, 0);
                        this.mTmpFromClipRect.inset(contentInsets);
                        this.mNextAppTransitionInsets.set(contentInsets);
                        if (shouldScaleDownThumbnailTransition(uiMode, orientation)) {
                            scale = thumbWidth / ((appWidth - contentInsets.left) - contentInsets.right);
                            if (!this.mGridLayoutRecentsEnabled) {
                                int unscaledThumbHeight2 = (int) (thumbHeight / scale);
                                Rect rect4 = this.mTmpFromClipRect;
                                rect4.bottom = rect4.top + unscaledThumbHeight2;
                            }
                            this.mNextAppTransitionInsets.set(contentInsets);
                            if (scaleUp) {
                                f = scale;
                            } else {
                                f = 1.0f;
                            }
                            if (scaleUp) {
                                f2 = 1.0f;
                            } else {
                                f2 = scale;
                            }
                            if (scaleUp) {
                                f3 = scale;
                            } else {
                                f3 = 1.0f;
                            }
                            if (scaleUp) {
                                f4 = 1.0f;
                            } else {
                                f4 = scale;
                            }
                            Animation scaleAnim2 = new ScaleAnimation(f, f2, f3, f4, containingFrame.width() / 2.0f, (containingFrame.height() / 2.0f) + contentInsets.top);
                            float targetX2 = this.mTmpRect.left - containingFrame.left;
                            float x2 = (containingFrame.width() / 2.0f) - ((containingFrame.width() / 2.0f) * scale);
                            float targetY2 = this.mTmpRect.top - containingFrame.top;
                            float y2 = (containingFrame.height() / 2.0f) - ((containingFrame.height() / 2.0f) * scale);
                            if (!this.mLowRamRecentsEnabled) {
                            }
                            scale2 = targetX2 - x2;
                            startY = targetY2 - y2;
                            if (!scaleUp) {
                                clipRectAnimation2 = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                            } else {
                                clipRectAnimation2 = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                            }
                            ClipRectAnimation clipRectAnimation4 = clipRectAnimation2;
                            if (scaleUp) {
                                translateAnim2 = createCurvedMotion(scale2, 0.0f, startY - contentInsets.top, 0.0f);
                            } else {
                                translateAnim2 = createCurvedMotion(0.0f, scale2, 0.0f, startY - contentInsets.top);
                            }
                            set.addAnimation(clipRectAnimation4);
                            set.addAnimation(scaleAnim2);
                            set.addAnimation(translateAnim2);
                        } else {
                            appWidth = appWidth;
                            Rect rect5 = this.mTmpFromClipRect;
                            rect5.bottom = rect5.top + thumbHeightI;
                            Rect rect6 = this.mTmpFromClipRect;
                            rect6.right = rect6.left + thumbWidthI;
                            if (scaleUp) {
                                clipRectAnimation = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                            } else {
                                clipRectAnimation = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                            }
                            if (scaleUp) {
                                translateAnim = createCurvedMotion(thumbStartX, 0.0f, thumbStartY - contentInsets.top, 0.0f);
                            } else {
                                translateAnim = createCurvedMotion(0.0f, thumbStartX, 0.0f, thumbStartY - contentInsets.top);
                            }
                            set.addAnimation(clipRectAnimation);
                            set.addAnimation(translateAnim);
                        }
                        set.setZAdjustment(1);
                        a = set;
                    }
                } else if (transit == 14) {
                    a = new AlphaAnimation(0.0f, 1.0f);
                    appWidth = appWidth;
                } else {
                    Animation a2 = new AlphaAnimation(1.0f, 1.0f);
                    a = a2;
                    appWidth = appWidth;
                }
            } else if (transit == 14) {
                a = new AlphaAnimation(1.0f, 0.0f);
                appWidth = appWidth;
            } else {
                Animation a3 = new AlphaAnimation(1.0f, 1.0f);
                a = a3;
                appWidth = appWidth;
            }
        } else {
            if (thumbTransitState == 0) {
                scaleUp = true;
            } else {
                scaleUp = false;
            }
            if (!freeform && scaleUp) {
                a = createAspectScaledThumbnailEnterFreeformAnimationLocked(containingFrame, surfaceInsets, container);
                appWidth = appWidth;
            } else if (freeform) {
                a = createAspectScaledThumbnailExitFreeformAnimationLocked(containingFrame, surfaceInsets, container);
                appWidth = appWidth;
            } else {
                set = new AnimationSet(true);
                this.mTmpFromClipRect.set(containingFrame);
                this.mTmpToClipRect.set(containingFrame);
                this.mTmpFromClipRect.offsetTo(0, 0);
                this.mTmpToClipRect.offsetTo(0, 0);
                this.mTmpFromClipRect.inset(contentInsets);
                this.mNextAppTransitionInsets.set(contentInsets);
                if (shouldScaleDownThumbnailTransition(uiMode, orientation)) {
                    scale = thumbWidth / ((appWidth - contentInsets.left) - contentInsets.right);
                    if (!this.mGridLayoutRecentsEnabled) {
                        int unscaledThumbHeight3 = (int) (thumbHeight / scale);
                        Rect rect7 = this.mTmpFromClipRect;
                        rect7.bottom = rect7.top + unscaledThumbHeight3;
                    }
                    this.mNextAppTransitionInsets.set(contentInsets);
                    if (scaleUp) {
                        f = scale;
                    } else {
                        f = 1.0f;
                    }
                    if (scaleUp) {
                        f2 = 1.0f;
                    } else {
                        f2 = scale;
                    }
                    if (scaleUp) {
                        f3 = scale;
                    } else {
                        f3 = 1.0f;
                    }
                    if (scaleUp) {
                        f4 = 1.0f;
                    } else {
                        f4 = scale;
                    }
                    Animation scaleAnim3 = new ScaleAnimation(f, f2, f3, f4, containingFrame.width() / 2.0f, (containingFrame.height() / 2.0f) + contentInsets.top);
                    float targetX3 = this.mTmpRect.left - containingFrame.left;
                    float x3 = (containingFrame.width() / 2.0f) - ((containingFrame.width() / 2.0f) * scale);
                    float targetY3 = this.mTmpRect.top - containingFrame.top;
                    float y3 = (containingFrame.height() / 2.0f) - ((containingFrame.height() / 2.0f) * scale);
                    if (!this.mLowRamRecentsEnabled && contentInsets.top == 0 && scaleUp) {
                        this.mTmpFromClipRect.top += stableInsets.top;
                        y3 += stableInsets.top;
                    }
                    scale2 = targetX3 - x3;
                    startY = targetY3 - y3;
                    if (!scaleUp) {
                        clipRectAnimation2 = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                    } else {
                        clipRectAnimation2 = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                    }
                    ClipRectAnimation clipRectAnimation5 = clipRectAnimation2;
                    if (scaleUp) {
                        translateAnim2 = createCurvedMotion(scale2, 0.0f, startY - contentInsets.top, 0.0f);
                    } else {
                        translateAnim2 = createCurvedMotion(0.0f, scale2, 0.0f, startY - contentInsets.top);
                    }
                    set.addAnimation(clipRectAnimation5);
                    set.addAnimation(scaleAnim3);
                    set.addAnimation(translateAnim2);
                } else {
                    appWidth = appWidth;
                    Rect rect8 = this.mTmpFromClipRect;
                    rect8.bottom = rect8.top + thumbHeightI;
                    Rect rect9 = this.mTmpFromClipRect;
                    rect9.right = rect9.left + thumbWidthI;
                    if (scaleUp) {
                        clipRectAnimation = new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect);
                    } else {
                        clipRectAnimation = new ClipRectAnimation(this.mTmpToClipRect, this.mTmpFromClipRect);
                    }
                    if (scaleUp) {
                        translateAnim = createCurvedMotion(thumbStartX, 0.0f, thumbStartY - contentInsets.top, 0.0f);
                    } else {
                        translateAnim = createCurvedMotion(0.0f, thumbStartX, 0.0f, thumbStartY - contentInsets.top);
                    }
                    set.addAnimation(clipRectAnimation);
                    set.addAnimation(translateAnim);
                }
                set.setZAdjustment(1);
                a = set;
            }
        }
        return prepareThumbnailAnimationWithDuration(a, appWidth, appHeight, getAspectScaleDuration(), getAspectScaleInterpolator());
    }

    private Animation createAspectScaledThumbnailEnterFreeformAnimationLocked(Rect frame, Rect surfaceInsets, WindowContainer container) {
        getNextAppTransitionStartRect(container, this.mTmpRect);
        return createAspectScaledThumbnailFreeformAnimationLocked(this.mTmpRect, frame, surfaceInsets, true);
    }

    private Animation createAspectScaledThumbnailExitFreeformAnimationLocked(Rect frame, Rect surfaceInsets, WindowContainer container) {
        getNextAppTransitionStartRect(container, this.mTmpRect);
        return createAspectScaledThumbnailFreeformAnimationLocked(frame, this.mTmpRect, surfaceInsets, false);
    }

    private AnimationSet createAspectScaledThumbnailFreeformAnimationLocked(Rect sourceFrame, Rect destFrame, Rect surfaceInsets, boolean enter) {
        float sourceWidth = sourceFrame.width();
        float sourceHeight = sourceFrame.height();
        float destWidth = destFrame.width();
        float destHeight = destFrame.height();
        float scaleH = enter ? sourceWidth / destWidth : destWidth / sourceWidth;
        float scaleV = enter ? sourceHeight / destHeight : destHeight / sourceHeight;
        AnimationSet set = new AnimationSet(true);
        int surfaceInsetsH = surfaceInsets == null ? 0 : surfaceInsets.left + surfaceInsets.right;
        int surfaceInsetsV = surfaceInsets != null ? surfaceInsets.top + surfaceInsets.bottom : 0;
        float scaleHCenter = ((enter ? destWidth : sourceWidth) + surfaceInsetsH) / 2.0f;
        float scaleVCenter = ((enter ? destHeight : sourceHeight) + surfaceInsetsV) / 2.0f;
        ScaleAnimation scale = enter ? new ScaleAnimation(scaleH, 1.0f, scaleV, 1.0f, scaleHCenter, scaleVCenter) : new ScaleAnimation(1.0f, scaleH, 1.0f, scaleV, scaleHCenter, scaleVCenter);
        int sourceHCenter = sourceFrame.left + (sourceFrame.width() / 2);
        int sourceVCenter = sourceFrame.top + (sourceFrame.height() / 2);
        int destHCenter = destFrame.left + (destFrame.width() / 2);
        int destVCenter = destFrame.top + (destFrame.height() / 2);
        int fromX = enter ? sourceHCenter - destHCenter : destHCenter - sourceHCenter;
        int fromY = enter ? sourceVCenter - destVCenter : destVCenter - sourceVCenter;
        TranslateAnimation translation = enter ? new TranslateAnimation(fromX, 0.0f, fromY, 0.0f) : new TranslateAnimation(0.0f, fromX, 0.0f, fromY);
        set.addAnimation(scale);
        set.addAnimation(translation);
        setAppTransitionFinishedCallbackIfNeeded(set);
        return set;
    }

    Animation createThumbnailScaleAnimationLocked(int appWidth, int appHeight, int transit, GraphicBuffer thumbnailHeader) {
        Animation alpha;
        getDefaultNextAppTransitionStartRect(this.mTmpRect);
        int thumbWidthI = thumbnailHeader.getWidth();
        float thumbWidth = thumbWidthI > 0 ? thumbWidthI : 1.0f;
        int thumbHeightI = thumbnailHeader.getHeight();
        float thumbHeight = thumbHeightI > 0 ? thumbHeightI : 1.0f;
        if (this.mNextAppTransitionScaleUp) {
            float scaleW = appWidth / thumbWidth;
            float scaleH = appHeight / thumbHeight;
            Animation scale = new ScaleAnimation(1.0f, scaleW, 1.0f, scaleH, computePivot(this.mTmpRect.left, 1.0f / scaleW), computePivot(this.mTmpRect.top, 1.0f / scaleH));
            scale.setInterpolator(this.mDecelerateInterpolator);
            Animation alpha2 = new AlphaAnimation(1.0f, 0.0f);
            alpha2.setInterpolator(this.mThumbnailFadeOutInterpolator);
            AnimationSet set = new AnimationSet(false);
            set.addAnimation(scale);
            set.addAnimation(alpha2);
            alpha = set;
        } else {
            float scaleW2 = appWidth / thumbWidth;
            float scaleH2 = appHeight / thumbHeight;
            alpha = new ScaleAnimation(scaleW2, 1.0f, scaleH2, 1.0f, computePivot(this.mTmpRect.left, 1.0f / scaleW2), computePivot(this.mTmpRect.top, 1.0f / scaleH2));
        }
        return prepareThumbnailAnimation(alpha, appWidth, appHeight, transit);
    }

    Animation createThumbnailEnterExitAnimationLocked(int thumbTransitState, Rect containingFrame, int transit, WindowContainer container) {
        Animation a;
        int appWidth = containingFrame.width();
        int appHeight = containingFrame.height();
        GraphicBuffer thumbnailHeader = getAppTransitionThumbnailHeader(container);
        getDefaultNextAppTransitionStartRect(this.mTmpRect);
        int thumbWidthI = thumbnailHeader != null ? thumbnailHeader.getWidth() : appWidth;
        float thumbWidth = thumbWidthI > 0 ? thumbWidthI : 1.0f;
        int thumbHeightI = thumbnailHeader != null ? thumbnailHeader.getHeight() : appHeight;
        float thumbHeight = thumbHeightI > 0 ? thumbHeightI : 1.0f;
        if (thumbTransitState == 0) {
            float scaleW = thumbWidth / appWidth;
            float scaleH = thumbHeight / appHeight;
            a = new ScaleAnimation(scaleW, 1.0f, scaleH, 1.0f, computePivot(this.mTmpRect.left, scaleW), computePivot(this.mTmpRect.top, scaleH));
        } else if (thumbTransitState != 1) {
            if (thumbTransitState == 2) {
                a = new AlphaAnimation(1.0f, 1.0f);
            } else if (thumbTransitState == 3) {
                float scaleW2 = thumbWidth / appWidth;
                float scaleH2 = thumbHeight / appHeight;
                Animation scale = new ScaleAnimation(1.0f, scaleW2, 1.0f, scaleH2, computePivot(this.mTmpRect.left, scaleW2), computePivot(this.mTmpRect.top, scaleH2));
                Animation alpha = new AlphaAnimation(1.0f, 0.0f);
                AnimationSet set = new AnimationSet(true);
                set.addAnimation(scale);
                set.addAnimation(alpha);
                set.setZAdjustment(1);
                a = set;
            } else {
                throw new RuntimeException("Invalid thumbnail transition state");
            }
        } else if (transit == 14) {
            a = new AlphaAnimation(1.0f, 0.0f);
        } else {
            a = new AlphaAnimation(1.0f, 1.0f);
        }
        return prepareThumbnailAnimation(a, appWidth, appHeight, transit);
    }

    private Animation createRelaunchAnimation(Rect containingFrame, Rect contentInsets) {
        getDefaultNextAppTransitionStartRect(this.mTmpFromClipRect);
        int left = this.mTmpFromClipRect.left;
        int top = this.mTmpFromClipRect.top;
        this.mTmpFromClipRect.offset(-left, -top);
        this.mTmpToClipRect.set(0, 0, containingFrame.width(), containingFrame.height());
        AnimationSet set = new AnimationSet(true);
        float fromWidth = this.mTmpFromClipRect.width();
        float toWidth = this.mTmpToClipRect.width();
        float fromHeight = this.mTmpFromClipRect.height();
        float toHeight = (this.mTmpToClipRect.height() - contentInsets.top) - contentInsets.bottom;
        int translateAdjustment = 0;
        if (fromWidth <= toWidth && fromHeight <= toHeight) {
            set.addAnimation(new ClipRectAnimation(this.mTmpFromClipRect, this.mTmpToClipRect));
        } else {
            set.addAnimation(new ScaleAnimation(fromWidth / toWidth, 1.0f, fromHeight / toHeight, 1.0f));
            translateAdjustment = (int) ((contentInsets.top * fromHeight) / toHeight);
        }
        TranslateAnimation translate = new TranslateAnimation(left - containingFrame.left, 0.0f, (top - containingFrame.top) - translateAdjustment, 0.0f);
        set.addAnimation(translate);
        set.setDuration(336L);
        set.setZAdjustment(1);
        return set;
    }

    boolean canSkipFirstFrame() {
        int i = this.mNextAppTransitionType;
        return (i == 1 || i == 7 || i == 8 || this.mNextAppTransition == 20) ? false : true;
    }

    RemoteAnimationController getRemoteAnimationController() {
        return this.mRemoteAnimationController;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x0326 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0329  */
    /* JADX WARN: Code duplicated, block: B:130:0x032c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x032e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0330  */
    /* JADX WARN: Code duplicated, block: B:134:0x0333 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x0336  */
    /* JADX WARN: Multi-variable type inference failed */
    Animation loadAnimation(WindowManager.LayoutParams layoutParams, int i, boolean z, int i2, int i3, Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, boolean z2, boolean z3, WindowContainer windowContainer) {
        int i4;
        char c;
        char c2;
        char c3;
        Animation animationCreateAspectScaledThumbnailEnterExitAnimationLocked;
        int i5;
        if (isKeyguardGoingAwayTransit(i) && z) {
            return loadKeyguardExitAnimation(i);
        }
        if (i == 22) {
            return null;
        }
        if (i == 23 && !z) {
            return loadAnimationRes(layoutParams, R.anim.voice_layer_exit);
        }
        if (i == 26) {
            return null;
        }
        if (z2 && (i == 6 || i == 8 || i == 10)) {
            animationCreateAspectScaledThumbnailEnterExitAnimationLocked = loadAnimationRes(layoutParams, z ? R.anim.task_open_enter_cross_profile_apps : R.anim.task_open_exit);
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 508887531, 48, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), Boolean.valueOf(z), String.valueOf(Debug.getCallers(3)));
            }
        } else if (z2 && (i == 7 || i == 9 || i == 11)) {
            animationCreateAspectScaledThumbnailEnterExitAnimationLocked = loadAnimationRes(layoutParams, z ? R.anim.task_fragment_open_exit : R.anim.task_open_enter);
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 508887531, 48, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), Boolean.valueOf(z), String.valueOf(Debug.getCallers(3)));
            }
        } else {
            if (i == 18) {
                Animation animationCreateRelaunchAnimation = createRelaunchAnimation(rect, rect3);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, -928291778, 4, null, String.valueOf(animationCreateRelaunchAnimation), Long.valueOf(this.mNextAppTransition), String.valueOf(appTransitionToString(i)), String.valueOf(Debug.getCallers(3)));
                }
                return animationCreateRelaunchAnimation;
            }
            int i6 = this.mNextAppTransitionType;
            if (i6 == 1) {
                Animation animationLoadAnimationRes = loadAnimationRes(this.mNextAppTransitionPackage, z ? this.mNextAppTransitionEnter : this.mNextAppTransitionExit);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, -519504830, 48, null, String.valueOf(animationLoadAnimationRes), String.valueOf(appTransitionToString(i)), Boolean.valueOf(z), String.valueOf(Debug.getCallers(3)));
                }
                setAppTransitionFinishedCallbackIfNeeded(animationLoadAnimationRes);
                return animationLoadAnimationRes;
            }
            if (i6 == 7) {
                animationCreateAspectScaledThumbnailEnterExitAnimationLocked = loadAnimationRes(this.mNextAppTransitionPackage, this.mNextAppTransitionInPlace);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 1457990604, 0, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), String.valueOf(Debug.getCallers(3)));
                }
            } else if (i6 == 8) {
                animationCreateAspectScaledThumbnailEnterExitAnimationLocked = createClipRevealAnimationLocked(i, z, rect, rect2);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 274773837, 0, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), String.valueOf(Debug.getCallers(3)));
                }
            } else {
                if (i6 != 2) {
                    if (i6 == 3) {
                        i4 = 3;
                        c = 0;
                        c2 = 1;
                        c3 = 2;
                    } else if (i6 == 4) {
                        i4 = 3;
                        c = 0;
                        c2 = 1;
                        c3 = 2;
                    } else if (i6 == 5 || i6 == 6) {
                        Object obj = null;
                        boolean z4 = false;
                        int i7 = 3;
                        char c4 = 2;
                        boolean z5 = true;
                        this.mNextAppTransitionScaleUp = this.mNextAppTransitionType == 5 ? z5 : z4;
                        boolean z6 = z4;
                        int i8 = i7;
                        boolean z7 = z5;
                        animationCreateAspectScaledThumbnailEnterExitAnimationLocked = createAspectScaledThumbnailEnterExitAnimationLocked(getThumbnailTransitionState(z), i2, i3, i, rect, rect3, rect4, rect5, z3, windowContainer);
                        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                            String strValueOf = String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked);
                            String strValueOf2 = String.valueOf(this.mNextAppTransitionScaleUp ? "ANIM_THUMBNAIL_ASPECT_SCALE_UP" : "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN");
                            String strValueOf3 = String.valueOf(appTransitionToString(i));
                            String strValueOf4 = String.valueOf(Debug.getCallers(i8));
                            ProtoLogGroup protoLogGroup = ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM;
                            Object[] objArr = new Object[5];
                            objArr[z6 ? 1 : 0] = strValueOf;
                            objArr[z7 ? 1 : 0] = strValueOf2;
                            objArr[c4] = strValueOf3;
                            objArr[i8] = Boolean.valueOf(z);
                            objArr[4] = strValueOf4;
                            ProtoLogImpl.v(protoLogGroup, -1872288685, CecMessageType.INITIATE_ARC, null, objArr);
                        }
                    } else if (i6 == 9 && z) {
                        animationCreateAspectScaledThumbnailEnterExitAnimationLocked = loadAnimationRes(PackageManagerService.PLATFORM_PACKAGE_NAME, R.anim.task_close_exit);
                        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 1589610525, 0, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), String.valueOf(Debug.getCallers(3)));
                        }
                    } else {
                        if (i != 27) {
                            int i9 = 0;
                            if (i != 19) {
                                if (i == 24) {
                                    if (z) {
                                        i5 = 4;
                                    } else {
                                        i5 = 5;
                                    }
                                    i9 = i5;
                                } else if (i != 25) {
                                    switch (i) {
                                        case 6:
                                            if (z) {
                                                i5 = 4;
                                            } else {
                                                i5 = 5;
                                            }
                                            i9 = i5;
                                            break;
                                        case 7:
                                            i9 = z ? 6 : 7;
                                            break;
                                        case 8:
                                            i9 = z ? 8 : 9;
                                            break;
                                        case 9:
                                            i9 = z ? 10 : 11;
                                            break;
                                        case 10:
                                            i9 = z ? 12 : 13;
                                            break;
                                        case 11:
                                            i9 = z ? 14 : 15;
                                            break;
                                        case 12:
                                            i9 = z ? 18 : 19;
                                            break;
                                        case 13:
                                            i9 = z ? 16 : 17;
                                            break;
                                        case 14:
                                            i9 = z ? 20 : 21;
                                            break;
                                        case 15:
                                            i9 = z ? 22 : 23;
                                            break;
                                        case 16:
                                            i9 = z ? 25 : 24;
                                            break;
                                    }
                                } else {
                                    i9 = z ? 6 : 7;
                                }
                            } else {
                                i9 = z ? 8 : 9;
                            }
                            Animation animationLoadAnimationAttr = i9 != 0 ? loadAnimationAttr(layoutParams, i9, i) : null;
                            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 2137411379, CecMessageType.REQUEST_ARC_TERMINATION, null, String.valueOf(animationLoadAnimationAttr), Long.valueOf(i9), String.valueOf(appTransitionToString(i)), Boolean.valueOf(z), String.valueOf(Debug.getCallers(3)));
                            }
                            return animationLoadAnimationAttr;
                        }
                        animationCreateAspectScaledThumbnailEnterExitAnimationLocked = new AlphaAnimation(1.0f, 1.0f);
                        animationCreateAspectScaledThumbnailEnterExitAnimationLocked.setDuration(336L);
                        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, -1862269827, 48, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), Boolean.valueOf(z), String.valueOf(Debug.getCallers(3)));
                        }
                    }
                    this.mNextAppTransitionScaleUp = this.mNextAppTransitionType == i4 ? c2 : c;
                    Animation animationCreateThumbnailEnterExitAnimationLocked = createThumbnailEnterExitAnimationLocked(getThumbnailTransitionState(z), rect, i, windowContainer);
                    if (!ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                        return animationCreateThumbnailEnterExitAnimationLocked;
                    }
                    String strValueOf5 = String.valueOf(animationCreateThumbnailEnterExitAnimationLocked);
                    String strValueOf6 = String.valueOf(this.mNextAppTransitionScaleUp ? "ANIM_THUMBNAIL_SCALE_UP" : "ANIM_THUMBNAIL_SCALE_DOWN");
                    String strValueOf7 = String.valueOf(appTransitionToString(i));
                    String strValueOf8 = String.valueOf(Debug.getCallers(i4));
                    ProtoLogGroup protoLogGroup2 = ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM;
                    Object[] objArr2 = new Object[5];
                    objArr2[c] = strValueOf5;
                    objArr2[c2] = strValueOf6;
                    objArr2[c3] = strValueOf7;
                    objArr2[i4] = Boolean.valueOf(z);
                    objArr2[4] = strValueOf8;
                    ProtoLogImpl.v(protoLogGroup2, -1872288685, CecMessageType.INITIATE_ARC, null, objArr2);
                    return animationCreateThumbnailEnterExitAnimationLocked;
                }
                animationCreateAspectScaledThumbnailEnterExitAnimationLocked = createScaleUpAnimationLocked(i, z, rect);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 2028163120, 0, null, String.valueOf(animationCreateAspectScaledThumbnailEnterExitAnimationLocked), String.valueOf(appTransitionToString(i)), String.valueOf(z), String.valueOf(Debug.getCallers(3)));
                }
            }
        }
        return animationCreateAspectScaledThumbnailEnterExitAnimationLocked;
    }

    private Animation loadKeyguardExitAnimation(int transit) {
        int i = this.mNextAppTransitionFlags;
        if ((i & 2) != 0) {
            return null;
        }
        boolean toShade = (i & 1) != 0;
        boolean subtle = (this.mNextAppTransitionFlags & 8) != 0;
        return this.mService.mPolicy.createHiddenByKeyguardExit(transit == 21, toShade, subtle);
    }

    int getAppStackClipMode() {
        int i = this.mNextAppTransition;
        if (i == 18 || i == 19 || this.mNextAppTransitionType == 8 || i == 20 || i == 21) {
            return 2;
        }
        return 0;
    }

    public int getTransitFlags() {
        return this.mNextAppTransitionFlags;
    }

    void postAnimationCallback() {
        if (this.mNextAppTransitionCallback != null) {
            this.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.wm.-$$Lambda$AppTransition$B95jxKE2FnT5RNLStTafenhEYj4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AppTransition.doAnimationCallback((IRemoteCallback) obj);
                }
            }, this.mNextAppTransitionCallback));
            this.mNextAppTransitionCallback = null;
        }
    }

    void overridePendingAppTransition(String packageName, int enterAnim, int exitAnim, IRemoteCallback startedCallback, IRemoteCallback endedCallback) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = 1;
            this.mNextAppTransitionPackage = packageName;
            this.mNextAppTransitionEnter = enterAnim;
            this.mNextAppTransitionExit = exitAnim;
            postAnimationCallback();
            this.mNextAppTransitionCallback = startedCallback;
            this.mAnimationFinishedCallback = endedCallback;
        }
    }

    void overridePendingAppTransitionScaleUp(int startX, int startY, int startWidth, int startHeight) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = 2;
            putDefaultNextAppTransitionCoordinates(startX, startY, startWidth, startHeight, null);
            postAnimationCallback();
        }
    }

    void overridePendingAppTransitionClipReveal(int startX, int startY, int startWidth, int startHeight) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = 8;
            putDefaultNextAppTransitionCoordinates(startX, startY, startWidth, startHeight, null);
            postAnimationCallback();
        }
    }

    void overridePendingAppTransitionThumb(GraphicBuffer srcThumb, int startX, int startY, IRemoteCallback startedCallback, boolean scaleUp) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = scaleUp ? 3 : 4;
            this.mNextAppTransitionScaleUp = scaleUp;
            putDefaultNextAppTransitionCoordinates(startX, startY, 0, 0, srcThumb);
            postAnimationCallback();
            this.mNextAppTransitionCallback = startedCallback;
        }
    }

    void overridePendingAppTransitionAspectScaledThumb(GraphicBuffer srcThumb, int startX, int startY, int targetWidth, int targetHeight, IRemoteCallback startedCallback, boolean scaleUp) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = scaleUp ? 5 : 6;
            this.mNextAppTransitionScaleUp = scaleUp;
            putDefaultNextAppTransitionCoordinates(startX, startY, targetWidth, targetHeight, srcThumb);
            postAnimationCallback();
            this.mNextAppTransitionCallback = startedCallback;
        }
    }

    void overridePendingAppTransitionMultiThumb(AppTransitionAnimationSpec[] specs, IRemoteCallback onAnimationStartedCallback, IRemoteCallback onAnimationFinishedCallback, boolean scaleUp) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = scaleUp ? 5 : 6;
            this.mNextAppTransitionScaleUp = scaleUp;
            if (specs != null) {
                for (int i = 0; i < specs.length; i++) {
                    AppTransitionAnimationSpec spec = specs[i];
                    if (spec != null) {
                        Predicate<Task> predicateObtainPredicate = PooledLambda.obtainPredicate($$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY.INSTANCE, PooledLambda.__(Task.class), Integer.valueOf(spec.taskId));
                        WindowContainer container = this.mDisplayContent.getTask(predicateObtainPredicate);
                        predicateObtainPredicate.recycle();
                        if (container != null) {
                            this.mNextAppTransitionAnimationsSpecs.put(container.hashCode(), spec);
                            if (i == 0) {
                                Rect rect = spec.rect;
                                putDefaultNextAppTransitionCoordinates(rect.left, rect.top, rect.width(), rect.height(), spec.buffer);
                            }
                        }
                    }
                }
            }
            postAnimationCallback();
            this.mNextAppTransitionCallback = onAnimationStartedCallback;
            this.mAnimationFinishedCallback = onAnimationFinishedCallback;
        }
    }

    void overridePendingAppTransitionMultiThumbFuture(IAppTransitionAnimationSpecsFuture specsFuture, IRemoteCallback callback, boolean scaleUp) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = scaleUp ? 5 : 6;
            this.mNextAppTransitionAnimationsSpecsFuture = specsFuture;
            this.mNextAppTransitionScaleUp = scaleUp;
            this.mNextAppTransitionFutureCallback = callback;
            if (isReady()) {
                fetchAppTransitionSpecsFromFuture();
            }
        }
    }

    void overridePendingAppTransitionRemote(RemoteAnimationAdapter remoteAnimationAdapter) {
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            boolean protoLogParam0 = isTransitionSet();
            String protoLogParam1 = String.valueOf(remoteAnimationAdapter);
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1448683958, 3, null, Boolean.valueOf(protoLogParam0), protoLogParam1);
        }
        boolean protoLogParam2 = isTransitionSet();
        if (protoLogParam2) {
            clear();
            this.mNextAppTransitionType = 10;
            this.mRemoteAnimationController = new RemoteAnimationController(this.mService, remoteAnimationAdapter, this.mHandler);
        }
    }

    void overrideInPlaceAppTransition(String packageName, int anim) {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = 7;
            this.mNextAppTransitionPackage = packageName;
            this.mNextAppTransitionInPlace = anim;
        }
    }

    void overridePendingAppTransitionStartCrossProfileApps() {
        if (canOverridePendingAppTransition()) {
            clear();
            this.mNextAppTransitionType = 9;
            postAnimationCallback();
        }
    }

    private boolean canOverridePendingAppTransition() {
        return isTransitionSet() && this.mNextAppTransitionType != 10;
    }

    private void fetchAppTransitionSpecsFromFuture() {
        if (this.mNextAppTransitionAnimationsSpecsFuture != null) {
            this.mNextAppTransitionAnimationsSpecsPending = true;
            final IAppTransitionAnimationSpecsFuture future = this.mNextAppTransitionAnimationsSpecsFuture;
            this.mNextAppTransitionAnimationsSpecsFuture = null;
            this.mDefaultExecutor.execute(new Runnable() { // from class: com.android.server.wm.-$$Lambda$AppTransition$9JtLlCXlArIsRNjLJ0_3RWFSHts
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetchAppTransitionSpecsFromFuture$1$AppTransition(future);
                }
            });
        }
    }

    public /* synthetic */ void lambda$fetchAppTransitionSpecsFromFuture$1$AppTransition(IAppTransitionAnimationSpecsFuture future) {
        AppTransitionAnimationSpec[] specs = null;
        try {
            Binder.allowBlocking(future.asBinder());
            specs = future.get();
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to fetch app transition specs: " + e);
        }
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mNextAppTransitionAnimationsSpecsPending = false;
                overridePendingAppTransitionMultiThumb(specs, this.mNextAppTransitionFutureCallback, null, this.mNextAppTransitionScaleUp);
                this.mNextAppTransitionFutureCallback = null;
                this.mService.requestTraversal();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public String toString() {
        return "mNextAppTransition=" + appTransitionToString(this.mNextAppTransition);
    }

    public static String appTransitionToString(int transition) {
        if (transition == -1) {
            return "TRANSIT_UNSET";
        }
        if (transition == 0) {
            return "TRANSIT_NONE";
        }
        if (transition != 28) {
            switch (transition) {
                case 6:
                    return "TRANSIT_ACTIVITY_OPEN";
                case 7:
                    return "TRANSIT_ACTIVITY_CLOSE";
                case 8:
                    return "TRANSIT_TASK_OPEN";
                case 9:
                    return "TRANSIT_TASK_CLOSE";
                case 10:
                    return "TRANSIT_TASK_TO_FRONT";
                case 11:
                    return "TRANSIT_TASK_TO_BACK";
                case 12:
                    return "TRANSIT_WALLPAPER_CLOSE";
                case 13:
                    return "TRANSIT_WALLPAPER_OPEN";
                case 14:
                    return "TRANSIT_WALLPAPER_INTRA_OPEN";
                case 15:
                    return "TRANSIT_WALLPAPER_INTRA_CLOSE";
                case 16:
                    return "TRANSIT_TASK_OPEN_BEHIND";
                default:
                    switch (transition) {
                        case 18:
                            return "TRANSIT_ACTIVITY_RELAUNCH";
                        case 19:
                            return "TRANSIT_DOCK_TASK_FROM_RECENTS";
                        case 20:
                            return "TRANSIT_KEYGUARD_GOING_AWAY";
                        case 21:
                            return "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER";
                        case 22:
                            return "TRANSIT_KEYGUARD_OCCLUDE";
                        case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                            return "TRANSIT_KEYGUARD_UNOCCLUDE";
                        case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                            return "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN";
                        case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                            return "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE";
                        case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                            return "TRANSIT_CRASHING_ACTIVITY_CLOSE";
                        default:
                            return "<UNKNOWN: " + transition + ">";
                    }
            }
        }
        return "TRANSIT_SHOW_SINGLE_TASK_DISPLAY";
    }

    private String appStateToString() {
        int i = this.mAppTransitionState;
        if (i == 0) {
            return "APP_STATE_IDLE";
        }
        if (i == 1) {
            return "APP_STATE_READY";
        }
        if (i == 2) {
            return "APP_STATE_RUNNING";
        }
        if (i == 3) {
            return "APP_STATE_TIMEOUT";
        }
        return "unknown state=" + this.mAppTransitionState;
    }

    private String transitTypeToString() {
        switch (this.mNextAppTransitionType) {
            case 0:
                return "NEXT_TRANSIT_TYPE_NONE";
            case 1:
                return "NEXT_TRANSIT_TYPE_CUSTOM";
            case 2:
                return "NEXT_TRANSIT_TYPE_SCALE_UP";
            case 3:
                return "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP";
            case 4:
                return "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN";
            case 5:
                return "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP";
            case 6:
                return "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN";
            case 7:
                return "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE";
            case 8:
            default:
                return "unknown type=" + this.mNextAppTransitionType;
            case 9:
                return "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS";
        }
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1159641169921L, this.mAppTransitionState);
        proto.write(1159641169922L, this.mLastUsedAppTransition);
        proto.end(token);
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.println(this);
        pw.print(prefix);
        pw.print("mAppTransitionState=");
        pw.println(appStateToString());
        if (this.mNextAppTransitionType != 0) {
            pw.print(prefix);
            pw.print("mNextAppTransitionType=");
            pw.println(transitTypeToString());
        }
        switch (this.mNextAppTransitionType) {
            case 1:
                pw.print(prefix);
                pw.print("mNextAppTransitionPackage=");
                pw.println(this.mNextAppTransitionPackage);
                pw.print(prefix);
                pw.print("mNextAppTransitionEnter=0x");
                pw.print(Integer.toHexString(this.mNextAppTransitionEnter));
                pw.print(" mNextAppTransitionExit=0x");
                pw.println(Integer.toHexString(this.mNextAppTransitionExit));
                break;
            case 2:
                getDefaultNextAppTransitionStartRect(this.mTmpRect);
                pw.print(prefix);
                pw.print("mNextAppTransitionStartX=");
                pw.print(this.mTmpRect.left);
                pw.print(" mNextAppTransitionStartY=");
                pw.println(this.mTmpRect.top);
                pw.print(prefix);
                pw.print("mNextAppTransitionStartWidth=");
                pw.print(this.mTmpRect.width());
                pw.print(" mNextAppTransitionStartHeight=");
                pw.println(this.mTmpRect.height());
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                pw.print(prefix);
                pw.print("mDefaultNextAppTransitionAnimationSpec=");
                pw.println(this.mDefaultNextAppTransitionAnimationSpec);
                pw.print(prefix);
                pw.print("mNextAppTransitionAnimationsSpecs=");
                pw.println(this.mNextAppTransitionAnimationsSpecs);
                pw.print(prefix);
                pw.print("mNextAppTransitionScaleUp=");
                pw.println(this.mNextAppTransitionScaleUp);
                break;
            case 7:
                pw.print(prefix);
                pw.print("mNextAppTransitionPackage=");
                pw.println(this.mNextAppTransitionPackage);
                pw.print(prefix);
                pw.print("mNextAppTransitionInPlace=0x");
                pw.print(Integer.toHexString(this.mNextAppTransitionInPlace));
                break;
        }
        if (this.mNextAppTransitionCallback != null) {
            pw.print(prefix);
            pw.print("mNextAppTransitionCallback=");
            pw.println(this.mNextAppTransitionCallback);
        }
        if (this.mLastUsedAppTransition != 0) {
            pw.print(prefix);
            pw.print("mLastUsedAppTransition=");
            pw.println(appTransitionToString(this.mLastUsedAppTransition));
            pw.print(prefix);
            pw.print("mLastOpeningApp=");
            pw.println(this.mLastOpeningApp);
            pw.print(prefix);
            pw.print("mLastClosingApp=");
            pw.println(this.mLastClosingApp);
            pw.print(prefix);
            pw.print("mLastChangingApp=");
            pw.println(this.mLastChangingApp);
        }
    }

    public void setCurrentUser(int newUserId) {
        this.mCurrentUserId = newUserId;
    }

    boolean prepareAppTransitionLocked(int transit, boolean alwaysKeepCurrent, int flags, boolean forceOverride) {
        int i;
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            String protoLogParam0 = String.valueOf(appTransitionToString(transit));
            String protoLogParam1 = String.valueOf(this);
            long protoLogParam3 = this.mDisplayContent.getDisplayId();
            String protoLogParam4 = String.valueOf(Debug.getCallers(5));
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 2016061474, 112, null, protoLogParam0, protoLogParam1, Boolean.valueOf(alwaysKeepCurrent), Long.valueOf(protoLogParam3), protoLogParam4);
        }
        boolean allowSetCrashing = !isKeyguardTransit(this.mNextAppTransition) && transit == 26;
        if (forceOverride || isKeyguardTransit(transit) || !isTransitionSet() || (i = this.mNextAppTransition) == 0 || allowSetCrashing) {
            setAppTransition(transit, flags);
        } else if (!alwaysKeepCurrent && !isKeyguardTransit(i) && this.mNextAppTransition != 26) {
            if (transit == 8 && isTransitionEqual(9)) {
                setAppTransition(transit, flags);
            } else if (transit == 6 && isTransitionEqual(7)) {
                setAppTransition(transit, flags);
            } else if (isTaskTransit(transit) && isActivityTransit(this.mNextAppTransition)) {
                setAppTransition(transit, flags);
            }
        }
        boolean prepared = prepare();
        if (isTransitionSet()) {
            removeAppTransitionTimeoutCallbacks();
            this.mHandler.postDelayed(this.mHandleAppTransitionTimeoutRunnable, APP_TRANSITION_TIMEOUT_MS);
        }
        return prepared;
    }

    public static boolean isKeyguardGoingAwayTransit(int transit) {
        return transit == 20 || transit == 21;
    }

    private static boolean isKeyguardTransit(int transit) {
        return isKeyguardGoingAwayTransit(transit) || transit == 22 || transit == 23;
    }

    static boolean isTaskTransit(int transit) {
        return isTaskOpenTransit(transit) || transit == 9 || transit == 11;
    }

    private static boolean isTaskOpenTransit(int transit) {
        return transit == 8 || transit == 16 || transit == 10;
    }

    static boolean isActivityTransit(int transit) {
        return transit == 6 || transit == 7 || transit == 18;
    }

    static boolean isChangeTransit(int transit) {
        return transit == 27;
    }

    static boolean isClosingTransit(int transit) {
        return transit == 7 || transit == 9 || transit == 12 || transit == 15 || transit == 25 || transit == 26;
    }

    private boolean shouldScaleDownThumbnailTransition(int uiMode, int orientation) {
        return this.mGridLayoutRecentsEnabled || orientation == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleAppTransitionTimeout, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$AppTransition() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                DisplayContent dc = this.mDisplayContent;
                if (dc == null) {
                    return;
                }
                notifyAppTransitionTimeoutLocked();
                if (isTransitionSet() || !dc.mOpeningApps.isEmpty() || !dc.mClosingApps.isEmpty() || !dc.mChangingContainers.isEmpty()) {
                    if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                        long protoLogParam0 = dc.getDisplayId();
                        boolean protoLogParam1 = dc.mAppTransition.isTransitionSet();
                        long protoLogParam2 = dc.mOpeningApps.size();
                        long protoLogParam3 = dc.mClosingApps.size();
                        long protoLogParam4 = dc.mChangingContainers.size();
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 344795667, 349, null, Long.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Long.valueOf(protoLogParam2), Long.valueOf(protoLogParam3), Long.valueOf(protoLogParam4));
                    }
                    setTimeout();
                    this.mService.mWindowPlacerLocked.performSurfacePlacement();
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doAnimationCallback(IRemoteCallback callback) {
        try {
            callback.sendResult((Bundle) null);
        } catch (RemoteException e) {
        }
    }

    private void setAppTransitionFinishedCallbackIfNeeded(Animation anim) {
        IRemoteCallback callback = this.mAnimationFinishedCallback;
        if (callback != null && anim != null) {
            anim.setAnimationListener(new AnonymousClass3(callback));
        }
    }

    /* JADX INFO: renamed from: com.android.server.wm.AppTransition$3, reason: invalid class name */
    class AnonymousClass3 implements Animation.AnimationListener {
        final /* synthetic */ IRemoteCallback val$callback;

        AnonymousClass3(IRemoteCallback iRemoteCallback) {
            this.val$callback = iRemoteCallback;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AppTransition.this.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.wm.-$$Lambda$AppTransition$3$llbNiZO5SMSamZHTNM_5S77eNNU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AppTransition.doAnimationCallback((IRemoteCallback) obj);
                }
            }, this.val$callback));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    void removeAppTransitionTimeoutCallbacks() {
        this.mHandler.removeCallbacks(this.mHandleAppTransitionTimeoutRunnable);
    }
}
