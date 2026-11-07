package com.android.server.wm;

import android.animation.Animator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.ClipData;
import android.content.ClipDescription;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.util.Slog;
import android.view.Display;
import android.view.DragEvent;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputWindowHandle;
import android.view.SurfaceControl;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.internal.view.IDragAndDropPermissions;
import com.android.server.LocalServices;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.usb.descriptors.UsbACInterface;
import java.util.ArrayList;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class DragState {
    private static final String ANIMATED_PROPERTY_ALPHA = "alpha";
    private static final String ANIMATED_PROPERTY_SCALE = "scale";
    private static final String ANIMATED_PROPERTY_X = "x";
    private static final String ANIMATED_PROPERTY_Y = "y";
    private static final int DRAG_FLAGS_URI_ACCESS = 3;
    private static final int DRAG_FLAGS_URI_PERMISSIONS = 195;
    private static final long MAX_ANIMATION_DURATION_MS = 375;
    private static final long MIN_ANIMATION_DURATION_MS = 195;
    private ValueAnimator mAnimator;
    boolean mCrossProfileCopyAllowed;
    float mCurrentX;
    float mCurrentY;
    ClipData mData;
    ClipDescription mDataDescription;
    DisplayContent mDisplayContent;
    final DragDropController mDragDropController;
    boolean mDragInProgress;
    boolean mDragResult;
    int mFlags;
    InputInterceptor mInputInterceptor;
    SurfaceControl mInputSurface;
    private boolean mIsClosing;
    IBinder mLocalWin;
    float mOriginalAlpha;
    float mOriginalX;
    float mOriginalY;
    int mPid;
    final WindowManagerService mService;
    int mSourceUserId;
    SurfaceControl mSurfaceControl;
    WindowState mTargetWindow;
    float mThumbOffsetX;
    float mThumbOffsetY;
    IBinder mToken;
    int mTouchSource;
    final SurfaceControl.Transaction mTransaction;
    int mUid;
    volatile boolean mAnimationCompleted = false;
    private final Interpolator mCubicEaseOutInterpolator = new DecelerateInterpolator(1.5f);
    private Point mDisplaySize = new Point();
    private final Rect mTmpClipRect = new Rect();
    ArrayList<WindowState> mNotifiedWindows = new ArrayList<>();

    DragState(WindowManagerService service, DragDropController controller, IBinder token, SurfaceControl surface, int flags, IBinder localWin) {
        this.mService = service;
        this.mDragDropController = controller;
        this.mToken = token;
        this.mSurfaceControl = surface;
        this.mFlags = flags;
        this.mLocalWin = localWin;
        this.mTransaction = service.mTransactionFactory.get();
    }

    boolean isClosing() {
        return this.mIsClosing;
    }

    private void showInputSurface() {
        if (this.mInputSurface == null) {
            WindowManagerService windowManagerService = this.mService;
            this.mInputSurface = windowManagerService.makeSurfaceBuilder(windowManagerService.mRoot.getDisplayContent(this.mDisplayContent.getDisplayId()).getSession()).setContainerLayer().setName("Drag and Drop Input Consumer").setCallsite("DragState.showInputSurface").build();
        }
        InputWindowHandle h = getInputWindowHandle();
        if (h == null) {
            Slog.w("WindowManager", "Drag is in progress but there is no drag window handle.");
            return;
        }
        this.mTransaction.show(this.mInputSurface);
        this.mTransaction.setInputWindowInfo(this.mInputSurface, h);
        this.mTransaction.setLayer(this.mInputSurface, Integer.MAX_VALUE);
        this.mTmpClipRect.set(0, 0, this.mDisplaySize.x, this.mDisplaySize.y);
        this.mTransaction.setWindowCrop(this.mInputSurface, this.mTmpClipRect);
        this.mTransaction.syncInputWindows();
        this.mTransaction.apply(true);
    }

    void closeLocked() {
        float y;
        float y2;
        this.mIsClosing = true;
        InputInterceptor inputInterceptor = this.mInputInterceptor;
        if (inputInterceptor != null) {
            this.mDragDropController.sendHandlerMessage(1, inputInterceptor);
            this.mInputInterceptor = null;
        }
        if (this.mDragInProgress) {
            int myPid = Process.myPid();
            for (WindowState ws : this.mNotifiedWindows) {
                if (!this.mDragResult && ws.mSession.mPid == this.mPid) {
                    float x = this.mCurrentX;
                    float y3 = this.mCurrentY;
                    y = y3;
                    y2 = x;
                } else {
                    y = 0.0f;
                    y2 = 0.0f;
                }
                DragEvent evt = DragEvent.obtain(4, y2, y, null, null, null, null, this.mDragResult);
                try {
                    ws.mClient.dispatchDragEvent(evt);
                } catch (RemoteException e) {
                    Slog.w("WindowManager", "Unable to drag-end window " + ws);
                }
                if (myPid != ws.mSession.mPid) {
                    evt.recycle();
                }
            }
            this.mNotifiedWindows.clear();
            this.mDragInProgress = false;
        }
        if (isFromSource(UsbACInterface.FORMAT_III_IEC1937_MPEG1_Layer1)) {
            this.mService.restorePointerIconLocked(this.mDisplayContent, this.mCurrentX, this.mCurrentY);
            this.mTouchSource = 0;
        }
        SurfaceControl surfaceControl = this.mInputSurface;
        if (surfaceControl != null) {
            this.mTransaction.remove(surfaceControl).apply();
            this.mInputSurface = null;
        }
        SurfaceControl surfaceControl2 = this.mSurfaceControl;
        if (surfaceControl2 != null) {
            this.mTransaction.reparent(surfaceControl2, null).apply();
            this.mSurfaceControl = null;
        }
        if (this.mAnimator != null && !this.mAnimationCompleted) {
            Slog.wtf("WindowManager", "Unexpectedly destroying mSurfaceControl while animation is running");
        }
        this.mFlags = 0;
        this.mLocalWin = null;
        this.mToken = null;
        this.mData = null;
        this.mThumbOffsetY = 0.0f;
        this.mThumbOffsetX = 0.0f;
        this.mNotifiedWindows = null;
        this.mDragDropController.onDragStateClosedLocked(this);
    }

    class InputInterceptor {
        InputChannel mClientChannel;
        InputApplicationHandle mDragApplicationHandle;
        InputWindowHandle mDragWindowHandle;
        DragInputEventReceiver mInputEventReceiver;
        InputChannel mServerChannel;

        InputInterceptor(Display display) {
            InputChannel[] channels = InputChannel.openInputChannelPair("drag");
            this.mServerChannel = channels[0];
            this.mClientChannel = channels[1];
            DragState.this.mService.mInputManager.registerInputChannel(this.mServerChannel);
            this.mInputEventReceiver = new DragInputEventReceiver(this.mClientChannel, DragState.this.mService.mH.getLooper(), DragState.this.mDragDropController);
            this.mDragApplicationHandle = new InputApplicationHandle(new Binder(), "drag", 5000000000L);
            InputWindowHandle inputWindowHandle = new InputWindowHandle(this.mDragApplicationHandle, display.getDisplayId());
            this.mDragWindowHandle = inputWindowHandle;
            inputWindowHandle.name = "drag";
            this.mDragWindowHandle.token = this.mServerChannel.getToken();
            this.mDragWindowHandle.layoutParamsFlags = 0;
            this.mDragWindowHandle.layoutParamsType = 2016;
            this.mDragWindowHandle.dispatchingTimeoutNanos = 5000000000L;
            this.mDragWindowHandle.visible = true;
            this.mDragWindowHandle.canReceiveKeys = false;
            this.mDragWindowHandle.hasFocus = true;
            this.mDragWindowHandle.hasWallpaper = false;
            this.mDragWindowHandle.paused = false;
            this.mDragWindowHandle.ownerPid = Process.myPid();
            this.mDragWindowHandle.ownerUid = Process.myUid();
            this.mDragWindowHandle.inputFeatures = 0;
            this.mDragWindowHandle.scaleFactor = 1.0f;
            this.mDragWindowHandle.touchableRegion.setEmpty();
            this.mDragWindowHandle.frameLeft = 0;
            this.mDragWindowHandle.frameTop = 0;
            this.mDragWindowHandle.frameRight = DragState.this.mDisplaySize.x;
            this.mDragWindowHandle.frameBottom = DragState.this.mDisplaySize.y;
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, -694710814, 0, null, (Object[]) null);
            }
            DragState.this.mDisplayContent.getDisplayRotation().pause();
        }

        void tearDown() {
            DragState.this.mService.mInputManager.unregisterInputChannel(this.mServerChannel);
            this.mInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
            this.mClientChannel.dispose();
            this.mServerChannel.dispose();
            this.mClientChannel = null;
            this.mServerChannel = null;
            this.mDragWindowHandle = null;
            this.mDragApplicationHandle = null;
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 269576220, 0, null, (Object[]) null);
            }
            DragState.this.mDisplayContent.getDisplayRotation().resume();
        }
    }

    InputChannel getInputChannel() {
        InputInterceptor inputInterceptor = this.mInputInterceptor;
        if (inputInterceptor == null) {
            return null;
        }
        return inputInterceptor.mServerChannel;
    }

    InputWindowHandle getInputWindowHandle() {
        InputInterceptor inputInterceptor = this.mInputInterceptor;
        if (inputInterceptor == null) {
            return null;
        }
        return inputInterceptor.mDragWindowHandle;
    }

    void register(Display display) {
        display.getRealSize(this.mDisplaySize);
        if (this.mInputInterceptor != null) {
            Slog.e("WindowManager", "Duplicate register of drag input channel");
        } else {
            this.mInputInterceptor = new InputInterceptor(display);
            showInputSurface();
        }
    }

    void broadcastDragStartedLocked(final float touchX, final float touchY) {
        this.mCurrentX = touchX;
        this.mOriginalX = touchX;
        this.mCurrentY = touchY;
        this.mOriginalY = touchY;
        ClipData clipData = this.mData;
        this.mDataDescription = clipData != null ? clipData.getDescription() : null;
        this.mNotifiedWindows.clear();
        this.mDragInProgress = true;
        this.mSourceUserId = UserHandle.getUserId(this.mUid);
        UserManagerInternal userManager = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        this.mCrossProfileCopyAllowed = true ^ userManager.getUserRestriction(this.mSourceUserId, "no_cross_profile_copy_paste");
        this.mDisplayContent.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$broadcastDragStartedLocked$0$DragState(touchX, touchY, (WindowState) obj);
            }
        }, false);
    }

    public /* synthetic */ void lambda$broadcastDragStartedLocked$0$DragState(float touchX, float touchY, WindowState w) {
        sendDragStartedLocked(w, touchX, touchY, this.mDataDescription);
    }

    private void sendDragStartedLocked(WindowState newWin, float touchX, float touchY, ClipDescription desc) {
        if (this.mDragInProgress && isValidDropTarget(newWin)) {
            DragEvent event = obtainDragEvent(newWin, 1, touchX, touchY, null, desc, null, null, false);
            try {
                newWin.mClient.dispatchDragEvent(event);
                this.mNotifiedWindows.add(newWin);
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Unable to drag-start window " + newWin);
            } finally {
                if (Process.myPid() != newWin.mSession.mPid) {
                    event.recycle();
                }
            }
        }
    }

    private boolean isValidDropTarget(WindowState targetWin) {
        if (targetWin == null || !targetWin.isPotentialDragTarget()) {
            return false;
        }
        if (((this.mFlags & 256) == 0 || !targetWindowSupportsGlobalDrag(targetWin)) && this.mLocalWin != targetWin.mClient.asBinder()) {
            return false;
        }
        return this.mCrossProfileCopyAllowed || this.mSourceUserId == UserHandle.getUserId(targetWin.getOwningUid());
    }

    private boolean targetWindowSupportsGlobalDrag(WindowState targetWin) {
        return targetWin.mActivityRecord == null || targetWin.mActivityRecord.mTargetSdk >= 24;
    }

    void sendDragStartedIfNeededLocked(WindowState newWin) {
        if (!this.mDragInProgress || isWindowNotified(newWin)) {
            return;
        }
        sendDragStartedLocked(newWin, this.mCurrentX, this.mCurrentY, this.mDataDescription);
    }

    private boolean isWindowNotified(WindowState newWin) {
        for (WindowState ws : this.mNotifiedWindows) {
            if (ws == newWin) {
                return true;
            }
        }
        return false;
    }

    void endDragLocked() {
        if (this.mAnimator != null) {
            return;
        }
        if (!this.mDragResult) {
            this.mAnimator = createReturnAnimationLocked();
        } else {
            closeLocked();
        }
    }

    void cancelDragLocked(boolean skipAnimation) {
        if (this.mAnimator != null) {
            return;
        }
        if (!this.mDragInProgress || skipAnimation) {
            closeLocked();
        } else {
            this.mAnimator = createCancelAnimationLocked();
        }
    }

    void notifyMoveLocked(float x, float y) {
        if (this.mAnimator != null) {
            return;
        }
        this.mCurrentX = x;
        this.mCurrentY = y;
        this.mTransaction.setPosition(this.mSurfaceControl, x - this.mThumbOffsetX, y - this.mThumbOffsetY).apply();
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.mSurfaceControl);
            long protoLogParam1 = (int) (x - this.mThumbOffsetX);
            long protoLogParam2 = (int) (y - this.mThumbOffsetY);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 342460966, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
        }
        notifyLocationLocked(x, y);
    }

    void notifyLocationLocked(float x, float y) {
        WindowState touchedWin;
        WindowState touchedWin2 = this.mDisplayContent.getTouchableWinAtPointLocked(x, y);
        if (touchedWin2 != null && !isWindowNotified(touchedWin2)) {
            touchedWin = null;
        } else {
            touchedWin = touchedWin2;
        }
        try {
            int myPid = Process.myPid();
            if (touchedWin != this.mTargetWindow && this.mTargetWindow != null) {
                DragEvent evt = obtainDragEvent(this.mTargetWindow, 6, 0.0f, 0.0f, null, null, null, null, false);
                this.mTargetWindow.mClient.dispatchDragEvent(evt);
                if (myPid != this.mTargetWindow.mSession.mPid) {
                    evt.recycle();
                }
            }
            if (touchedWin != null) {
                DragEvent evt2 = obtainDragEvent(touchedWin, 2, x, y, null, null, null, null, false);
                touchedWin.mClient.dispatchDragEvent(evt2);
                if (myPid != touchedWin.mSession.mPid) {
                    evt2.recycle();
                }
            }
        } catch (RemoteException e) {
            Slog.w("WindowManager", "can't send drag notification to windows");
        }
        this.mTargetWindow = touchedWin;
    }

    void notifyDropLocked(float x, float y) {
        ClipData clipData;
        if (this.mAnimator != null) {
            return;
        }
        this.mCurrentX = x;
        this.mCurrentY = y;
        WindowState touchedWin = this.mDisplayContent.getTouchableWinAtPointLocked(x, y);
        if (!isWindowNotified(touchedWin)) {
            this.mDragResult = false;
            endDragLocked();
            return;
        }
        int targetUserId = UserHandle.getUserId(touchedWin.getOwningUid());
        int i = this.mFlags;
        DragAndDropPermissionsHandler dragAndDropPermissions = ((i & 256) == 0 || (i & 3) == 0 || this.mData == null) ? null : new DragAndDropPermissionsHandler(this.mData, this.mUid, touchedWin.getOwningPackage(), this.mFlags & 195, this.mSourceUserId, targetUserId);
        int i2 = this.mSourceUserId;
        if (i2 != targetUserId && (clipData = this.mData) != null) {
            clipData.fixUris(i2);
        }
        int myPid = Process.myPid();
        IBinder token = touchedWin.mClient.asBinder();
        DragEvent evt = obtainDragEvent(touchedWin, 3, x, y, null, null, this.mData, dragAndDropPermissions, false);
        try {
            try {
                touchedWin.mClient.dispatchDragEvent(evt);
                this.mDragDropController.sendTimeoutMessage(0, token);
                if (myPid != touchedWin.mSession.mPid) {
                    evt.recycle();
                }
            } catch (RemoteException e) {
                Slog.w("WindowManager", "can't send drop notification to win " + touchedWin);
                endDragLocked();
                if (myPid != touchedWin.mSession.mPid) {
                }
            }
            this.mToken = token;
        } catch (Throwable th) {
            if (myPid != touchedWin.mSession.mPid) {
                evt.recycle();
            }
            throw th;
        }
    }

    boolean isInProgress() {
        return this.mDragInProgress;
    }

    private static DragEvent obtainDragEvent(WindowState win, int action, float x, float y, Object localState, ClipDescription description, ClipData data, IDragAndDropPermissions dragAndDropPermissions, boolean result) {
        float winX = win.translateToWindowX(x);
        float winY = win.translateToWindowY(y);
        return DragEvent.obtain(action, winX, winY, localState, description, data, dragAndDropPermissions, result);
    }

    private ValueAnimator createReturnAnimationLocked() {
        float f = this.mCurrentX;
        float f2 = this.mThumbOffsetX;
        float[] fArr = {f - f2, this.mOriginalX - f2};
        float f3 = this.mCurrentY;
        float f4 = this.mThumbOffsetY;
        float[] fArr2 = {f3 - f4, this.mOriginalY - f4};
        float f5 = this.mOriginalAlpha;
        final ValueAnimator animator = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_X, fArr), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_Y, fArr2), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_SCALE, 1.0f, 1.0f), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_ALPHA, f5, f5 / 2.0f));
        float translateX = this.mOriginalX - this.mCurrentX;
        float translateY = this.mOriginalY - this.mCurrentY;
        double travelDistance = Math.sqrt((translateX * translateX) + (translateY * translateY));
        double displayDiagonal = Math.sqrt((this.mDisplaySize.x * this.mDisplaySize.x) + (this.mDisplaySize.y * this.mDisplaySize.y));
        long duration = ((long) ((travelDistance / displayDiagonal) * 180.0d)) + MIN_ANIMATION_DURATION_MS;
        AnimationListener listener = new AnimationListener();
        animator.setDuration(duration);
        animator.setInterpolator(this.mCubicEaseOutInterpolator);
        animator.addListener(listener);
        animator.addUpdateListener(listener);
        this.mService.mAnimationHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc
            @Override // java.lang.Runnable
            public final void run() {
                animator.start();
            }
        });
        return animator;
    }

    private ValueAnimator createCancelAnimationLocked() {
        float f = this.mCurrentX;
        float[] fArr = {f - this.mThumbOffsetX, f};
        float f2 = this.mCurrentY;
        final ValueAnimator animator = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_X, fArr), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_Y, f2 - this.mThumbOffsetY, f2), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_SCALE, 1.0f, 0.0f), PropertyValuesHolder.ofFloat(ANIMATED_PROPERTY_ALPHA, this.mOriginalAlpha, 0.0f));
        AnimationListener listener = new AnimationListener();
        animator.setDuration(MIN_ANIMATION_DURATION_MS);
        animator.setInterpolator(this.mCubicEaseOutInterpolator);
        animator.addListener(listener);
        animator.addUpdateListener(listener);
        this.mService.mAnimationHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw
            @Override // java.lang.Runnable
            public final void run() {
                animator.start();
            }
        });
        return animator;
    }

    private boolean isFromSource(int source) {
        return (this.mTouchSource & source) == source;
    }

    void overridePointerIconLocked(int touchSource) {
        this.mTouchSource = touchSource;
        if (isFromSource(UsbACInterface.FORMAT_III_IEC1937_MPEG1_Layer1)) {
            InputManager.getInstance().setPointerIconType(1021);
        }
    }

    private class AnimationListener implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {
        private AnimationListener() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            SurfaceControl.Transaction transaction = DragState.this.mService.mTransactionFactory.get();
            try {
                transaction.setPosition(DragState.this.mSurfaceControl, ((Float) animation.getAnimatedValue(DragState.ANIMATED_PROPERTY_X)).floatValue(), ((Float) animation.getAnimatedValue(DragState.ANIMATED_PROPERTY_Y)).floatValue());
                transaction.setAlpha(DragState.this.mSurfaceControl, ((Float) animation.getAnimatedValue(DragState.ANIMATED_PROPERTY_ALPHA)).floatValue());
                transaction.setMatrix(DragState.this.mSurfaceControl, ((Float) animation.getAnimatedValue(DragState.ANIMATED_PROPERTY_SCALE)).floatValue(), 0.0f, 0.0f, ((Float) animation.getAnimatedValue(DragState.ANIMATED_PROPERTY_SCALE)).floatValue());
                transaction.apply();
                if (transaction != null) {
                    transaction.close();
                }
            } catch (Throwable th) {
                if (transaction != null) {
                    try {
                        transaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DragState.this.mAnimationCompleted = true;
            DragState.this.mDragDropController.sendHandlerMessage(2, null);
        }
    }
}
