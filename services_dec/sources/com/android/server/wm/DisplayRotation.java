package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Slog;
import android.util.SparseArray;
import android.view.IDisplayWindowRotationCallback;
import android.view.Surface;
import android.window.WindowContainerTransaction;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.UiThread;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.policy.WindowOrientationListener;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.statusbar.StatusBarManagerInternal;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayRotation {
    private static final int ALLOW_ALL_ROTATIONS_DISABLED = 0;
    private static final int ALLOW_ALL_ROTATIONS_ENABLED = 1;
    private static final int ALLOW_ALL_ROTATIONS_UNDEFINED = -1;
    private static final int REMOTE_ROTATION_TIMEOUT_MS = 800;
    private static final String TAG = "WindowManager";
    public final boolean isDefaultDisplay;
    private int mAllowAllRotations;
    private boolean mAllowSeamlessRotationDespiteNavBarMoving;
    private final int mCarDockRotation;
    private final Context mContext;
    private int mCurrentAppOrientation;
    private boolean mDefaultFixedToUserRotation;
    private int mDeferredRotationPauseCount;
    private int mDemoHdmiRotation;
    private boolean mDemoHdmiRotationLock;
    private int mDemoRotation;
    private boolean mDemoRotationLock;
    private final int mDeskDockRotation;
    private final DisplayContent mDisplayContent;
    private final DisplayPolicy mDisplayPolicy;
    private final Runnable mDisplayRotationHandlerTimeout;
    private final DisplayWindowSettings mDisplayWindowSettings;
    private int mFixedToUserRotation;
    private boolean mIsWaitingForRemoteRotation;
    int mLandscapeRotation;
    private int mLastOrientation;
    private final int mLidOpenRotation;
    private final Object mLock;
    private OrientationListener mOrientationListener;
    int mPortraitRotation;
    private final IDisplayWindowRotationCallback mRemoteRotationCallback;
    private boolean mRotatingSeamlessly;
    private int mRotation;
    private int mSeamlessRotationCount;
    int mSeascapeRotation;
    private final WindowManagerService mService;
    private SettingsObserver mSettingsObserver;
    private int mShowRotationSuggestions;
    private StatusBarManagerInternal mStatusBarManagerInternal;
    private final boolean mSupportAutoRotation;
    private final RotationAnimationPair mTmpRotationAnim;
    private final int mUndockedHdmiRotation;
    int mUpsideDownRotation;
    private int mUserRotation;
    private int mUserRotationMode;

    @Retention(RetentionPolicy.SOURCE)
    private @interface AllowAllRotations {
    }

    interface ContentObserverRegister {
        void registerContentObserver(Uri uri, boolean z, ContentObserver contentObserver, int i);
    }

    private static class RotationAnimationPair {
        int mEnter;
        int mExit;

        private RotationAnimationPair() {
        }
    }

    /* JADX INFO: renamed from: com.android.server.wm.DisplayRotation$2, reason: invalid class name */
    class AnonymousClass2 extends IDisplayWindowRotationCallback.Stub {
        AnonymousClass2() {
        }

        public void continueRotateDisplay(int targetRotation, WindowContainerTransaction t) {
            synchronized (DisplayRotation.this.mService.getWindowManagerLock()) {
                DisplayRotation.this.mService.mH.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayRotation$2$37vRmD77aVmzN2ixs0KjlN8wUX4
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((DisplayRotation) obj).continueRotation(((Integer) obj2).intValue(), (WindowContainerTransaction) obj3);
                    }
                }, DisplayRotation.this, Integer.valueOf(targetRotation), t));
            }
        }
    }

    DisplayRotation(WindowManagerService service, DisplayContent displayContent) {
        this(service, displayContent, displayContent.getDisplayPolicy(), service.mDisplayWindowSettings, service.mContext, service.getWindowManagerLock());
    }

    DisplayRotation(WindowManagerService service, DisplayContent displayContent, DisplayPolicy displayPolicy, DisplayWindowSettings displayWindowSettings, Context context, Object lock) {
        this.mTmpRotationAnim = new RotationAnimationPair();
        this.mCurrentAppOrientation = -1;
        this.mLastOrientation = -1;
        this.mAllowAllRotations = -1;
        this.mUserRotationMode = 0;
        this.mUserRotation = 0;
        this.mFixedToUserRotation = 0;
        this.mIsWaitingForRemoteRotation = false;
        this.mDisplayRotationHandlerTimeout = new Runnable() { // from class: com.android.server.wm.DisplayRotation.1
            @Override // java.lang.Runnable
            public void run() {
                DisplayRotation displayRotation = DisplayRotation.this;
                displayRotation.continueRotation(displayRotation.mRotation, null);
            }
        };
        this.mRemoteRotationCallback = new AnonymousClass2();
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mDisplayPolicy = displayPolicy;
        this.mDisplayWindowSettings = displayWindowSettings;
        this.mContext = context;
        this.mLock = lock;
        this.isDefaultDisplay = displayContent.isDefaultDisplay;
        this.mSupportAutoRotation = this.mContext.getResources().getBoolean(R.bool.config_cecRcProfileSourceTopMenuHandled_allowed);
        this.mLidOpenRotation = readRotation(R.integer.config_deviceStateRearDisplay);
        this.mCarDockRotation = readRotation(R.integer.config_brightness_ramp_rate_fast);
        this.mDeskDockRotation = readRotation(R.integer.config_defaultBinderHeavyHitterAutoSamplerBatchSize);
        this.mUndockedHdmiRotation = readRotation(R.integer.config_maxScanTasksForHomeVisibility);
        if (this.isDefaultDisplay) {
            Handler uiHandler = UiThread.getHandler();
            OrientationListener orientationListener = new OrientationListener(this.mContext, uiHandler);
            this.mOrientationListener = orientationListener;
            orientationListener.setCurrentRotation(this.mRotation);
            SettingsObserver settingsObserver = new SettingsObserver(uiHandler);
            this.mSettingsObserver = settingsObserver;
            settingsObserver.observe();
        }
    }

    private int readRotation(int resID) {
        try {
            int rotation = this.mContext.getResources().getInteger(resID);
            if (rotation == 0) {
                return 0;
            }
            if (rotation == 90) {
                return 1;
            }
            if (rotation == 180) {
                return 2;
            }
            if (rotation == 270) {
                return 3;
            }
            return -1;
        } catch (Resources.NotFoundException e) {
            return -1;
        }
    }

    void updateUserDependentConfiguration(Resources currentUserRes) {
        this.mAllowSeamlessRotationDespiteNavBarMoving = currentUserRes.getBoolean(R.bool.config_allowTheaterModeWakeFromUnplug);
    }

    void configure(int width, int height, int shortSizeDp, int longSizeDp) {
        Resources res = this.mContext.getResources();
        if (width > height) {
            this.mLandscapeRotation = 0;
            this.mSeascapeRotation = 2;
            if (res.getBoolean(R.bool.config_cecQuerySadTruehdEnabled_default)) {
                this.mPortraitRotation = 1;
                this.mUpsideDownRotation = 3;
            } else {
                this.mPortraitRotation = 3;
                this.mUpsideDownRotation = 1;
            }
        } else {
            this.mPortraitRotation = 0;
            this.mUpsideDownRotation = 2;
            if (res.getBoolean(R.bool.config_cecQuerySadTruehdEnabled_default)) {
                this.mLandscapeRotation = 3;
                this.mSeascapeRotation = 1;
            } else {
                this.mLandscapeRotation = 1;
                this.mSeascapeRotation = 3;
            }
        }
        if ("portrait".equals(SystemProperties.get("persist.demo.hdmirotation"))) {
            this.mDemoHdmiRotation = this.mPortraitRotation;
        } else {
            this.mDemoHdmiRotation = this.mLandscapeRotation;
        }
        this.mDemoHdmiRotationLock = SystemProperties.getBoolean("persist.demo.hdmirotationlock", false);
        if ("portrait".equals(SystemProperties.get("persist.demo.remoterotation"))) {
            this.mDemoRotation = this.mPortraitRotation;
        } else {
            this.mDemoRotation = this.mLandscapeRotation;
        }
        this.mDemoRotationLock = SystemProperties.getBoolean("persist.demo.rotationlock", false);
        boolean isCar = this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
        boolean isTv = this.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
        this.mDefaultFixedToUserRotation = (isCar || isTv || this.mService.mIsPc || this.mDisplayContent.forceDesktopMode()) && !"true".equals(SystemProperties.get("config.override_forced_orient"));
    }

    void applyCurrentRotation(int rotation) {
        OrientationListener orientationListener = this.mOrientationListener;
        if (orientationListener != null) {
            orientationListener.setCurrentRotation(rotation);
        }
    }

    void setRotation(int rotation) {
        this.mRotation = rotation;
    }

    int getRotation() {
        return this.mRotation;
    }

    int getLastOrientation() {
        return this.mLastOrientation;
    }

    boolean updateOrientation(int newOrientation, boolean forceUpdate) {
        if (newOrientation == this.mLastOrientation && !forceUpdate) {
            return false;
        }
        this.mLastOrientation = newOrientation;
        if (newOrientation != this.mCurrentAppOrientation) {
            this.mCurrentAppOrientation = newOrientation;
            if (this.isDefaultDisplay) {
                updateOrientationListenerLw();
            }
        }
        return updateRotationUnchecked(forceUpdate);
    }

    boolean updateRotationAndSendNewConfigIfChanged() {
        boolean changed = updateRotationUnchecked(false);
        if (changed) {
            this.mDisplayContent.sendNewConfiguration();
        }
        return changed;
    }

    boolean updateRotationUnchecked(boolean forceUpdate) {
        int i;
        int displayId = this.mDisplayContent.getDisplayId();
        if (!forceUpdate) {
            if (this.mDeferredRotationPauseCount > 0) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1497304204, 0, null, (Object[]) null);
                }
                return false;
            }
            ScreenRotationAnimation screenRotationAnimation = this.mDisplayContent.getRotationAnimation();
            if (screenRotationAnimation != null && screenRotationAnimation.isAnimating()) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 292904800, 0, null, (Object[]) null);
                }
                return false;
            }
            if (this.mService.mDisplayFrozen) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1947239194, 0, null, (Object[]) null);
                }
                return false;
            }
            if (this.mDisplayContent.mFixedRotationTransitionListener.isTopFixedOrientationRecentsAnimating()) {
                return false;
            }
        }
        if (!this.mService.mDisplayEnabled) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1117599386, 0, null, (Object[]) null);
            }
            return false;
        }
        int oldRotation = this.mRotation;
        int lastOrientation = this.mLastOrientation;
        int rotation = rotationForOrientation(lastOrientation, oldRotation);
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam0 = String.valueOf(Surface.rotationToString(rotation));
            long protoLogParam1 = rotation;
            long protoLogParam2 = displayId;
            String protoLogParam3 = String.valueOf(ActivityInfo.screenOrientationToString(lastOrientation));
            long protoLogParam4 = lastOrientation;
            String protoLogParam5 = String.valueOf(Surface.rotationToString(oldRotation));
            long protoLogParam6 = oldRotation;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1263316010, 4372, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2), protoLogParam3, Long.valueOf(protoLogParam4), protoLogParam5, Long.valueOf(protoLogParam6));
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            long protoLogParam7 = displayId;
            String protoLogParam8 = String.valueOf(ActivityInfo.screenOrientationToString(lastOrientation));
            long protoLogParam9 = lastOrientation;
            String protoLogParam10 = String.valueOf(Surface.rotationToString(rotation));
            long protoLogParam11 = rotation;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -766059044, 273, null, Long.valueOf(protoLogParam7), protoLogParam8, Long.valueOf(protoLogParam9), protoLogParam10, Long.valueOf(protoLogParam11));
        }
        if (oldRotation == rotation) {
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            long protoLogParam12 = displayId;
            long protoLogParam13 = rotation;
            long protoLogParam14 = oldRotation;
            long protoLogParam15 = lastOrientation;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1730156332, 85, null, Long.valueOf(protoLogParam12), Long.valueOf(protoLogParam13), Long.valueOf(protoLogParam14), Long.valueOf(protoLogParam15));
        }
        if (DisplayContent.deltaRotation(rotation, oldRotation) == 2) {
            i = 1;
        } else {
            i = 1;
            this.mDisplayContent.mWaitingForConfig = true;
        }
        this.mRotation = rotation;
        this.mService.mWindowsFreezingScreen = i;
        this.mService.mH.sendNewMessageDelayed(11, this.mDisplayContent, 2000L);
        this.mDisplayContent.setLayoutNeeded();
        if (shouldRotateSeamlessly(oldRotation, rotation, forceUpdate)) {
            prepareSeamlessRotation();
        } else {
            prepareNormalRotationAnimation();
        }
        startRemoteRotation(oldRotation, this.mRotation);
        return true;
    }

    boolean isWaitingForRemoteRotation() {
        return this.mIsWaitingForRemoteRotation;
    }

    private void startRemoteRotation(int fromRotation, int toRotation) {
        if (this.mService.mDisplayRotationController == null) {
            return;
        }
        this.mIsWaitingForRemoteRotation = true;
        try {
            this.mService.mDisplayRotationController.onRotateDisplay(this.mDisplayContent.getDisplayId(), fromRotation, toRotation, this.mRemoteRotationCallback);
            this.mService.mH.removeCallbacks(this.mDisplayRotationHandlerTimeout);
            this.mService.mH.postDelayed(this.mDisplayRotationHandlerTimeout, 800L);
        } catch (RemoteException e) {
            this.mIsWaitingForRemoteRotation = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueRotation(int targetRotation, WindowContainerTransaction t) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (targetRotation == this.mRotation && this.mIsWaitingForRemoteRotation) {
                    this.mService.mH.removeCallbacks(this.mDisplayRotationHandlerTimeout);
                    this.mIsWaitingForRemoteRotation = false;
                    this.mService.mAtmService.deferWindowLayout();
                    try {
                        this.mDisplayContent.sendNewConfiguration();
                        if (t != null) {
                            this.mService.mAtmService.mWindowOrganizerController.applyTransaction(t);
                        }
                        this.mService.mAtmService.continueWindowLayout();
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    } catch (Throwable th) {
                        this.mService.mAtmService.continueWindowLayout();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    void prepareNormalRotationAnimation() {
        cancelSeamlessRotation();
        RotationAnimationPair anim = selectRotationAnimation();
        this.mService.startFreezingDisplay(anim.mExit, anim.mEnter, this.mDisplayContent);
    }

    void cancelSeamlessRotation() {
        if (!this.mRotatingSeamlessly) {
            return;
        }
        this.mDisplayContent.forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayRotation$XcFKA0vAcDK0Q2CR5rqPDdsewi8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayRotation.lambda$cancelSeamlessRotation$0((WindowState) obj);
            }
        }, true);
        this.mSeamlessRotationCount = 0;
        this.mRotatingSeamlessly = false;
        this.mDisplayContent.finishFixedRotationAnimationIfPossible();
    }

    static /* synthetic */ void lambda$cancelSeamlessRotation$0(WindowState w) {
        if (w.mSeamlesslyRotated) {
            w.finishSeamlessRotation(false);
            w.mSeamlesslyRotated = false;
        }
    }

    private void prepareSeamlessRotation() {
        this.mSeamlessRotationCount = 0;
        this.mRotatingSeamlessly = true;
    }

    boolean isRotatingSeamlessly() {
        return this.mRotatingSeamlessly;
    }

    boolean hasSeamlessRotatingWindow() {
        return this.mSeamlessRotationCount > 0;
    }

    boolean shouldRotateSeamlessly(int oldRotation, int newRotation, boolean forceUpdate) {
        int i;
        if (this.mDisplayContent.hasTopFixedRotationLaunchingApp()) {
            return true;
        }
        WindowState w = this.mDisplayPolicy.getTopFullscreenOpaqueWindow();
        if (w == null || w != this.mDisplayContent.mCurrentFocus || w.getAttrs().rotationAnimation != 3 || w.isAnimatingLw() || oldRotation == (i = this.mUpsideDownRotation) || newRotation == i) {
            return false;
        }
        if (!this.mAllowSeamlessRotationDespiteNavBarMoving && !this.mDisplayPolicy.navigationBarCanMove()) {
            return false;
        }
        if ((w.mActivityRecord != null && !w.mActivityRecord.matchParentBounds()) || this.mDisplayContent.getDefaultTaskDisplayArea().hasPinnedTask() || this.mDisplayContent.hasAlertWindowSurfaces()) {
            return false;
        }
        return forceUpdate || this.mDisplayContent.getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((WindowState) obj).mSeamlesslyRotated;
            }
        }) == null;
    }

    void markForSeamlessRotation(WindowState w, boolean seamlesslyRotated) {
        if (seamlesslyRotated == w.mSeamlesslyRotated || w.mForceSeamlesslyRotate) {
            return;
        }
        w.mSeamlesslyRotated = seamlesslyRotated;
        if (seamlesslyRotated) {
            this.mSeamlessRotationCount++;
        } else {
            this.mSeamlessRotationCount--;
        }
        if (this.mSeamlessRotationCount == 0) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ORIENTATION, -576070986, 0, null, (Object[]) null);
            }
            this.mRotatingSeamlessly = false;
            this.mDisplayContent.finishFixedRotationAnimationIfPossible();
            updateRotationAndSendNewConfigIfChanged();
        }
    }

    void onSeamlessRotationTimeout() {
        final boolean[] isLayoutNeeded = {false};
        this.mDisplayContent.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayRotation$U-vCBL3JcMFTFCBOM9boFL8nSM0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$onSeamlessRotationTimeout$2$DisplayRotation(isLayoutNeeded, (WindowState) obj);
            }
        }, true);
        if (isLayoutNeeded[0]) {
            this.mService.mWindowPlacerLocked.performSurfacePlacement();
        }
    }

    public /* synthetic */ void lambda$onSeamlessRotationTimeout$2$DisplayRotation(boolean[] isLayoutNeeded, WindowState w) {
        if (!w.mSeamlesslyRotated) {
            return;
        }
        isLayoutNeeded[0] = true;
        w.setDisplayLayoutNeeded();
        w.finishSeamlessRotation(true);
        markForSeamlessRotation(w, false);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005f  */
    private RotationAnimationPair selectRotationAnimation() {
        boolean forceJumpcut = (this.mDisplayPolicy.isScreenOnFully() && this.mService.mPolicy.okToAnimate()) ? false : true;
        WindowState topFullscreen = this.mDisplayPolicy.getTopFullscreenOpaqueWindow();
        if (forceJumpcut) {
            this.mTmpRotationAnim.mExit = R.anim.rotation_animation_xfade_exit;
            this.mTmpRotationAnim.mEnter = R.anim.rotation_animation_jump_exit;
            return this.mTmpRotationAnim;
        }
        if (topFullscreen != null) {
            int animationHint = topFullscreen.getRotationAnimationHint();
            if (animationHint < 0 && this.mDisplayPolicy.isTopLayoutFullscreen()) {
                animationHint = topFullscreen.getAttrs().rotationAnimation;
            }
            if (animationHint == 1) {
                this.mTmpRotationAnim.mExit = R.anim.rounded_window_enter;
                this.mTmpRotationAnim.mEnter = R.anim.rotation_animation_jump_exit;
            } else if (animationHint == 2) {
                this.mTmpRotationAnim.mExit = R.anim.rotation_animation_xfade_exit;
                this.mTmpRotationAnim.mEnter = R.anim.rotation_animation_jump_exit;
            } else if (animationHint == 3) {
                this.mTmpRotationAnim.mExit = R.anim.rounded_window_enter;
                this.mTmpRotationAnim.mEnter = R.anim.rotation_animation_jump_exit;
            } else {
                RotationAnimationPair rotationAnimationPair = this.mTmpRotationAnim;
                rotationAnimationPair.mEnter = 0;
                rotationAnimationPair.mExit = 0;
            }
        } else {
            RotationAnimationPair rotationAnimationPair2 = this.mTmpRotationAnim;
            rotationAnimationPair2.mEnter = 0;
            rotationAnimationPair2.mExit = 0;
        }
        return this.mTmpRotationAnim;
    }

    boolean validateRotationAnimation(int exitAnimId, int enterAnimId, boolean forceDefault) {
        switch (exitAnimId) {
            case R.anim.rotation_animation_xfade_exit:
            case R.anim.rounded_window_enter:
                if (forceDefault) {
                    return false;
                }
                RotationAnimationPair anim = selectRotationAnimation();
                if (exitAnimId == anim.mExit && enterAnimId == anim.mEnter) {
                    return true;
                }
                return false;
            default:
                return true;
        }
    }

    void restoreSettings(int userRotationMode, int userRotation, int fixedToUserRotation) {
        this.mFixedToUserRotation = fixedToUserRotation;
        if (this.isDefaultDisplay) {
            return;
        }
        if (userRotationMode != 0 && userRotationMode != 1) {
            Slog.w(TAG, "Trying to restore an invalid user rotation mode " + userRotationMode + " for " + this.mDisplayContent);
            userRotationMode = 0;
        }
        if (userRotation < 0 || userRotation > 3) {
            Slog.w(TAG, "Trying to restore an invalid user rotation " + userRotation + " for " + this.mDisplayContent);
            userRotation = 0;
        }
        this.mUserRotationMode = userRotationMode;
        this.mUserRotation = userRotation;
    }

    void setFixedToUserRotation(int fixedToUserRotation) {
        if (this.mFixedToUserRotation == fixedToUserRotation) {
            return;
        }
        this.mFixedToUserRotation = fixedToUserRotation;
        this.mDisplayWindowSettings.setFixedToUserRotation(this.mDisplayContent, fixedToUserRotation);
        this.mService.updateRotation(true, false);
    }

    void setUserRotation(int userRotationMode, int userRotation) {
        if (this.isDefaultDisplay) {
            ContentResolver res = this.mContext.getContentResolver();
            int accelerometerRotation = userRotationMode != 1 ? 1 : 0;
            Settings.System.putIntForUser(res, "accelerometer_rotation", accelerometerRotation, -2);
            Settings.System.putIntForUser(res, "user_rotation", userRotation, -2);
            return;
        }
        boolean changed = false;
        if (this.mUserRotationMode != userRotationMode) {
            this.mUserRotationMode = userRotationMode;
            changed = true;
        }
        if (this.mUserRotation != userRotation) {
            this.mUserRotation = userRotation;
            changed = true;
        }
        this.mDisplayWindowSettings.setUserRotation(this.mDisplayContent, userRotationMode, userRotation);
        if (changed) {
            this.mService.updateRotation(true, false);
        }
    }

    void freezeRotation(int rotation) {
        setUserRotation(1, rotation == -1 ? this.mRotation : rotation);
    }

    void thawRotation() {
        setUserRotation(0, this.mUserRotation);
    }

    boolean isRotationFrozen() {
        if (this.isDefaultDisplay) {
            return Settings.System.getIntForUser(this.mContext.getContentResolver(), "accelerometer_rotation", 0, -2) == 0;
        }
        return this.mUserRotationMode == 1;
    }

    boolean isFixedToUserRotation() {
        int i = this.mFixedToUserRotation;
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return this.mDefaultFixedToUserRotation;
        }
        return true;
    }

    boolean respectAppRequestedOrientation() {
        return !isFixedToUserRotation();
    }

    public int getLandscapeRotation() {
        return this.mLandscapeRotation;
    }

    public int getSeascapeRotation() {
        return this.mSeascapeRotation;
    }

    public int getPortraitRotation() {
        return this.mPortraitRotation;
    }

    public int getUpsideDownRotation() {
        return this.mUpsideDownRotation;
    }

    public int getCurrentAppOrientation() {
        return this.mCurrentAppOrientation;
    }

    public DisplayPolicy getDisplayPolicy() {
        return this.mDisplayPolicy;
    }

    public WindowOrientationListener getOrientationListener() {
        return this.mOrientationListener;
    }

    public int getUserRotation() {
        return this.mUserRotation;
    }

    public int getUserRotationMode() {
        return this.mUserRotationMode;
    }

    public void updateOrientationListener() {
        synchronized (this.mLock) {
            updateOrientationListenerLw();
        }
    }

    void pause() {
        this.mDeferredRotationPauseCount++;
    }

    void resume() {
        int i = this.mDeferredRotationPauseCount;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.mDeferredRotationPauseCount = i2;
        if (i2 == 0) {
            updateRotationAndSendNewConfigIfChanged();
        }
    }

    private void updateOrientationListenerLw() {
        OrientationListener orientationListener = this.mOrientationListener;
        if (orientationListener == null || !orientationListener.canDetectOrientation()) {
            return;
        }
        boolean screenOnEarly = this.mDisplayPolicy.isScreenOnEarly();
        boolean awake = this.mDisplayPolicy.isAwake();
        boolean keyguardDrawComplete = this.mDisplayPolicy.isKeyguardDrawComplete();
        boolean windowManagerDrawComplete = this.mDisplayPolicy.isWindowManagerDrawComplete();
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            long protoLogParam2 = this.mCurrentAppOrientation;
            boolean protoLogParam3 = this.mOrientationListener.mEnabled;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1868124841, 4063, null, Boolean.valueOf(screenOnEarly), Boolean.valueOf(awake), Long.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), Boolean.valueOf(keyguardDrawComplete), Boolean.valueOf(windowManagerDrawComplete));
        }
        boolean disable = true;
        if (screenOnEarly && awake && keyguardDrawComplete && windowManagerDrawComplete && needSensorRunning()) {
            disable = false;
            if (!this.mOrientationListener.mEnabled) {
                this.mOrientationListener.enable(true);
            }
        }
        if (disable && this.mOrientationListener.mEnabled) {
            this.mOrientationListener.disable();
        }
    }

    private boolean needSensorRunning() {
        int i;
        if (isFixedToUserRotation()) {
            return false;
        }
        if (this.mSupportAutoRotation && ((i = this.mCurrentAppOrientation) == 4 || i == 10 || i == 7 || i == 6)) {
            return true;
        }
        int dockMode = this.mDisplayPolicy.getDockMode();
        if ((this.mDisplayPolicy.isCarDockEnablesAccelerometer() && dockMode == 2) || (this.mDisplayPolicy.isDeskDockEnablesAccelerometer() && (dockMode == 1 || dockMode == 3 || dockMode == 4))) {
            return true;
        }
        if (this.mUserRotationMode == 1) {
            return this.mSupportAutoRotation && this.mShowRotationSuggestions == 1;
        }
        return this.mSupportAutoRotation;
    }

    boolean needsUpdate() {
        int oldRotation = this.mRotation;
        int rotation = rotationForOrientation(this.mLastOrientation, oldRotation);
        return oldRotation != rotation;
    }

    int rotationForOrientation(int orientation, int lastRotation) {
        int sensorRotation;
        int preferredRotation;
        int i;
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam0 = String.valueOf(ActivityInfo.screenOrientationToString(orientation));
            long protoLogParam1 = orientation;
            String protoLogParam2 = String.valueOf(Surface.rotationToString(lastRotation));
            long protoLogParam3 = lastRotation;
            String protoLogParam4 = String.valueOf(Surface.rotationToString(this.mUserRotation));
            long protoLogParam5 = this.mUserRotation;
            String protoLogParam6 = String.valueOf(this.mUserRotationMode == 1 ? "USER_ROTATION_LOCKED" : "");
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 202263690, 1092, null, protoLogParam0, Long.valueOf(protoLogParam1), protoLogParam2, Long.valueOf(protoLogParam3), protoLogParam4, Long.valueOf(protoLogParam5), protoLogParam6);
        }
        if (isFixedToUserRotation()) {
            return this.mUserRotation;
        }
        OrientationListener orientationListener = this.mOrientationListener;
        if (orientationListener != null) {
            sensorRotation = orientationListener.getProposedRotation();
        } else {
            sensorRotation = -1;
        }
        if (sensorRotation < 0) {
            sensorRotation = lastRotation;
        }
        int lidState = this.mDisplayPolicy.getLidState();
        int dockMode = this.mDisplayPolicy.getDockMode();
        boolean hdmiPlugged = this.mDisplayPolicy.isHdmiPlugged();
        boolean carDockEnablesAccelerometer = this.mDisplayPolicy.isCarDockEnablesAccelerometer();
        boolean deskDockEnablesAccelerometer = this.mDisplayPolicy.isDeskDockEnablesAccelerometer();
        if (!this.isDefaultDisplay) {
            preferredRotation = this.mUserRotation;
        } else if (lidState == 1 && this.mLidOpenRotation >= 0) {
            preferredRotation = this.mLidOpenRotation;
        } else if (dockMode == 2 && (carDockEnablesAccelerometer || this.mCarDockRotation >= 0)) {
            preferredRotation = carDockEnablesAccelerometer ? sensorRotation : this.mCarDockRotation;
        } else if ((dockMode == 1 || dockMode == 3 || dockMode == 4) && (deskDockEnablesAccelerometer || this.mDeskDockRotation >= 0)) {
            preferredRotation = deskDockEnablesAccelerometer ? sensorRotation : this.mDeskDockRotation;
        } else if (hdmiPlugged && this.mDemoHdmiRotationLock) {
            preferredRotation = this.mDemoHdmiRotation;
        } else if (hdmiPlugged && dockMode == 0 && this.mUndockedHdmiRotation >= 0) {
            preferredRotation = this.mUndockedHdmiRotation;
        } else if (this.mDemoRotationLock) {
            preferredRotation = this.mDemoRotation;
        } else if (this.mDisplayPolicy.isPersistentVrModeEnabled()) {
            preferredRotation = this.mPortraitRotation;
        } else if (orientation == 14) {
            preferredRotation = lastRotation;
        } else if (!this.mSupportAutoRotation) {
            preferredRotation = -1;
        } else if ((this.mUserRotationMode == 0 && (orientation == 2 || orientation == -1 || orientation == 11 || orientation == 12 || orientation == 13)) || orientation == 4 || orientation == 10 || orientation == 6 || orientation == 7) {
            if (this.mAllowAllRotations == -1) {
                if (this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromGesture)) {
                    i = 1;
                } else {
                    i = 0;
                }
                this.mAllowAllRotations = i;
            }
            if (sensorRotation != 2 || this.mAllowAllRotations == 1 || orientation == 10 || orientation == 13) {
                preferredRotation = sensorRotation;
            } else {
                preferredRotation = lastRotation;
            }
        } else if (this.mUserRotationMode == 1 && orientation != 5 && orientation != 0 && orientation != 1 && orientation != 8 && orientation != 9) {
            preferredRotation = this.mUserRotation;
        } else {
            preferredRotation = -1;
        }
        if (orientation == 0) {
            if (isLandscapeOrSeascape(preferredRotation)) {
                return preferredRotation;
            }
            return this.mLandscapeRotation;
        }
        if (orientation == 1) {
            if (isAnyPortrait(preferredRotation)) {
                return preferredRotation;
            }
            return this.mPortraitRotation;
        }
        if (orientation != 11) {
            if (orientation != 12) {
                switch (orientation) {
                    case 6:
                        break;
                    case 7:
                        break;
                    case 8:
                        if (isLandscapeOrSeascape(preferredRotation)) {
                            return preferredRotation;
                        }
                        return this.mSeascapeRotation;
                    case 9:
                        if (isAnyPortrait(preferredRotation)) {
                            return preferredRotation;
                        }
                        return this.mUpsideDownRotation;
                    default:
                        if (preferredRotation >= 0) {
                            return preferredRotation;
                        }
                        return 0;
                }
            }
            if (isAnyPortrait(preferredRotation)) {
                return preferredRotation;
            }
            return isAnyPortrait(lastRotation) ? lastRotation : this.mPortraitRotation;
        }
        if (isLandscapeOrSeascape(preferredRotation)) {
            return preferredRotation;
        }
        return isLandscapeOrSeascape(lastRotation) ? lastRotation : this.mLandscapeRotation;
    }

    private boolean isLandscapeOrSeascape(int rotation) {
        return rotation == this.mLandscapeRotation || rotation == this.mSeascapeRotation;
    }

    private boolean isAnyPortrait(int rotation) {
        return rotation == this.mPortraitRotation || rotation == this.mUpsideDownRotation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidRotationChoice(int preferredRotation) {
        int i = this.mCurrentAppOrientation;
        if (i == -1 || i == 2) {
            return preferredRotation >= 0 && preferredRotation != this.mUpsideDownRotation;
        }
        switch (i) {
            case 11:
                return isLandscapeOrSeascape(preferredRotation);
            case 12:
                return preferredRotation == this.mPortraitRotation;
            case 13:
                return preferredRotation >= 0;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRotationChoicePossible(int orientation) {
        int dockMode;
        if (this.mUserRotationMode != 1 || isFixedToUserRotation()) {
            return false;
        }
        int lidState = this.mDisplayPolicy.getLidState();
        if ((lidState == 1 && this.mLidOpenRotation >= 0) || (dockMode = this.mDisplayPolicy.getDockMode()) == 2) {
            return false;
        }
        boolean deskDockEnablesAccelerometer = this.mDisplayPolicy.isDeskDockEnablesAccelerometer();
        if ((dockMode == 1 || dockMode == 3 || dockMode == 4) && !deskDockEnablesAccelerometer) {
            return false;
        }
        boolean hdmiPlugged = this.mDisplayPolicy.isHdmiPlugged();
        if (hdmiPlugged && this.mDemoHdmiRotationLock) {
            return false;
        }
        if ((hdmiPlugged && dockMode == 0 && this.mUndockedHdmiRotation >= 0) || this.mDemoRotationLock || this.mDisplayPolicy.isPersistentVrModeEnabled() || !this.mSupportAutoRotation) {
            return false;
        }
        if (orientation != -1 && orientation != 2) {
            switch (orientation) {
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProposedRotationChangeToStatusBarInternal(int rotation, boolean isValid) {
        if (this.mStatusBarManagerInternal == null) {
            this.mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
        }
        StatusBarManagerInternal statusBarManagerInternal = this.mStatusBarManagerInternal;
        if (statusBarManagerInternal != null) {
            statusBarManagerInternal.onProposedRotationChanged(rotation, isValid);
        }
    }

    private static String allowAllRotationsToString(int allowAll) {
        if (allowAll == -1) {
            return UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
        }
        if (allowAll == 0) {
            return "false";
        }
        if (allowAll == 1) {
            return "true";
        }
        return Integer.toString(allowAll);
    }

    public void onUserSwitch() {
        SettingsObserver settingsObserver = this.mSettingsObserver;
        if (settingsObserver != null) {
            settingsObserver.onChange(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateSettings() {
        int showRotationSuggestions;
        ContentResolver resolver = this.mContext.getContentResolver();
        boolean shouldUpdateRotation = false;
        synchronized (this.mLock) {
            boolean shouldUpdateOrientationListener = false;
            if (ActivityManager.isLowRamDeviceStatic()) {
                showRotationSuggestions = 0;
            } else {
                showRotationSuggestions = Settings.Secure.getIntForUser(resolver, "show_rotation_suggestions", 1, -2);
            }
            if (this.mShowRotationSuggestions != showRotationSuggestions) {
                this.mShowRotationSuggestions = showRotationSuggestions;
                shouldUpdateOrientationListener = true;
            }
            int userRotation = Settings.System.getIntForUser(resolver, "user_rotation", 0, -2);
            if (this.mUserRotation != userRotation) {
                this.mUserRotation = userRotation;
                shouldUpdateRotation = true;
            }
            int userRotationMode = Settings.System.getIntForUser(resolver, "accelerometer_rotation", 0, -2) != 0 ? 0 : 1;
            if (this.mUserRotationMode != userRotationMode) {
                this.mUserRotationMode = userRotationMode;
                shouldUpdateOrientationListener = true;
                shouldUpdateRotation = true;
            }
            if (shouldUpdateOrientationListener) {
                updateOrientationListenerLw();
            }
        }
        return shouldUpdateRotation;
    }

    void dump(String prefix, PrintWriter pw) {
        pw.println(prefix + "DisplayRotation");
        pw.println(prefix + "  mCurrentAppOrientation=" + ActivityInfo.screenOrientationToString(this.mCurrentAppOrientation));
        pw.println(prefix + "  mLastOrientation=" + this.mLastOrientation);
        pw.print(prefix + "  mRotation=" + this.mRotation);
        StringBuilder sb = new StringBuilder();
        sb.append(" mDeferredRotationPauseCount=");
        sb.append(this.mDeferredRotationPauseCount);
        pw.println(sb.toString());
        pw.print(prefix + "  mLandscapeRotation=" + Surface.rotationToString(this.mLandscapeRotation));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" mSeascapeRotation=");
        sb2.append(Surface.rotationToString(this.mSeascapeRotation));
        pw.println(sb2.toString());
        pw.print(prefix + "  mPortraitRotation=" + Surface.rotationToString(this.mPortraitRotation));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(" mUpsideDownRotation=");
        sb3.append(Surface.rotationToString(this.mUpsideDownRotation));
        pw.println(sb3.toString());
        pw.println(prefix + "  mSupportAutoRotation=" + this.mSupportAutoRotation);
        OrientationListener orientationListener = this.mOrientationListener;
        if (orientationListener != null) {
            orientationListener.dump(pw, prefix + "  ");
        }
        pw.println();
        pw.print(prefix + "  mCarDockRotation=" + Surface.rotationToString(this.mCarDockRotation));
        StringBuilder sb4 = new StringBuilder();
        sb4.append(" mDeskDockRotation=");
        sb4.append(Surface.rotationToString(this.mDeskDockRotation));
        pw.println(sb4.toString());
        pw.print(prefix + "  mUserRotationMode=" + WindowManagerPolicy.userRotationModeToString(this.mUserRotationMode));
        StringBuilder sb5 = new StringBuilder();
        sb5.append(" mUserRotation=");
        sb5.append(Surface.rotationToString(this.mUserRotation));
        pw.print(sb5.toString());
        pw.println(" mAllowAllRotations=" + allowAllRotationsToString(this.mAllowAllRotations));
        pw.print(prefix + "  mDemoHdmiRotation=" + Surface.rotationToString(this.mDemoHdmiRotation));
        StringBuilder sb6 = new StringBuilder();
        sb6.append(" mDemoHdmiRotationLock=");
        sb6.append(this.mDemoHdmiRotationLock);
        pw.print(sb6.toString());
        pw.println(" mUndockedHdmiRotation=" + Surface.rotationToString(this.mUndockedHdmiRotation));
        pw.println(prefix + "  mLidOpenRotation=" + Surface.rotationToString(this.mLidOpenRotation));
        pw.println(prefix + "  mFixedToUserRotation=" + isFixedToUserRotation());
    }

    private class OrientationListener extends WindowOrientationListener {
        boolean mEnabled;
        final SparseArray<Runnable> mRunnableCache;

        OrientationListener(Context context, Handler handler) {
            super(context, handler);
            this.mRunnableCache = new SparseArray<>(5);
        }

        private class UpdateRunnable implements Runnable {
            final int mRotation;

            UpdateRunnable(int rotation) {
                this.mRotation = rotation;
            }

            @Override // java.lang.Runnable
            public void run() {
                DisplayRotation.this.mService.mPowerManagerInternal.powerHint(2, 0);
                if (DisplayRotation.this.isRotationChoicePossible(DisplayRotation.this.mCurrentAppOrientation)) {
                    boolean isValid = DisplayRotation.this.isValidRotationChoice(this.mRotation);
                    DisplayRotation.this.sendProposedRotationChangeToStatusBarInternal(this.mRotation, isValid);
                } else {
                    DisplayRotation.this.mService.updateRotation(false, false);
                }
            }
        }

        @Override // com.android.server.policy.WindowOrientationListener
        public void onProposedRotationChanged(int rotation) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                long protoLogParam0 = rotation;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 2128917433, 1, null, Long.valueOf(protoLogParam0));
            }
            Runnable r = this.mRunnableCache.get(rotation, null);
            if (r == null) {
                r = new UpdateRunnable(rotation);
                this.mRunnableCache.put(rotation, r);
            }
            getHandler().post(r);
        }

        @Override // com.android.server.policy.WindowOrientationListener
        public void enable(boolean clearCurrentRotation) {
            super.enable(clearCurrentRotation);
            this.mEnabled = true;
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1568331821, 0, null, (Object[]) null);
            }
        }

        @Override // com.android.server.policy.WindowOrientationListener
        public void disable() {
            super.disable();
            this.mEnabled = false;
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -439951996, 0, null, (Object[]) null);
            }
        }
    }

    private class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver resolver = DisplayRotation.this.mContext.getContentResolver();
            resolver.registerContentObserver(Settings.Secure.getUriFor("show_rotation_suggestions"), false, this, -1);
            resolver.registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, this, -1);
            resolver.registerContentObserver(Settings.System.getUriFor("user_rotation"), false, this, -1);
            DisplayRotation.this.updateSettings();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (DisplayRotation.this.updateSettings()) {
                DisplayRotation.this.mService.updateRotation(true, false);
            }
        }
    }
}
