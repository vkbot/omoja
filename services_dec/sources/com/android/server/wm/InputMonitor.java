package com.android.server.wm;

import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.Trace;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputEventReceiver;
import android.view.InputWindowHandle;
import android.view.SurfaceControl;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class InputMonitor {
    private boolean mDisableWallpaperTouchEvents;
    private final DisplayContent mDisplayContent;
    private final int mDisplayId;
    private boolean mDisplayRemoved;
    private final Handler mHandler;
    private WindowState mInputFocus;
    private final SurfaceControl.Transaction mInputTransaction;
    private final WindowManagerService mService;
    private final UpdateInputForAllWindowsConsumer mUpdateInputForAllWindowsConsumer;
    private final UpdateInputWindows mUpdateInputWindows;
    private boolean mUpdateInputWindowsImmediately;
    private boolean mUpdateInputWindowsPending;
    private boolean mUpdateInputWindowsNeeded = true;
    private final Rect mTmpRect = new Rect();
    private final ArrayMap<String, InputConsumerImpl> mInputConsumers = new ArrayMap<>();

    private static final class EventReceiverInputConsumer extends InputConsumerImpl implements WindowManagerPolicy.InputConsumer {
        private final InputEventReceiver mInputEventReceiver;
        private InputMonitor mInputMonitor;

        EventReceiverInputConsumer(WindowManagerService service, InputMonitor monitor, Looper looper, String name, InputEventReceiver.Factory inputEventReceiverFactory, int clientPid, UserHandle clientUser, int displayId) {
            super(service, null, name, null, clientPid, clientUser, displayId);
            this.mInputMonitor = monitor;
            this.mInputEventReceiver = inputEventReceiverFactory.createInputEventReceiver(this.mClientChannel, looper);
        }

        @Override // com.android.server.policy.WindowManagerPolicy.InputConsumer
        public void dismiss() {
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mInputMonitor.mInputConsumers.remove(this.mName);
                    hide(this.mInputMonitor.mInputTransaction);
                    this.mInputMonitor.updateInputWindowsLw(true);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.policy.WindowManagerPolicy.InputConsumer
        public void dispose() {
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    disposeChannelsLw(this.mInputMonitor.mInputTransaction);
                    this.mInputEventReceiver.dispose();
                    this.mInputMonitor.updateInputWindowsLw(true);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    private class UpdateInputWindows implements Runnable {
        private UpdateInputWindows() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (InputMonitor.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    InputMonitor.this.mUpdateInputWindowsPending = false;
                    InputMonitor.this.mUpdateInputWindowsNeeded = false;
                    if (InputMonitor.this.mDisplayRemoved) {
                        return;
                    }
                    boolean inDrag = InputMonitor.this.mService.mDragDropController.dragDropActiveLocked();
                    InputMonitor.this.mUpdateInputForAllWindowsConsumer.updateInputWindows(inDrag);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    InputMonitor(WindowManagerService service, DisplayContent displayContent) {
        this.mUpdateInputWindows = new UpdateInputWindows();
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mDisplayId = displayContent.getDisplayId();
        this.mInputTransaction = this.mService.mTransactionFactory.get();
        this.mHandler = this.mService.mAnimationHandler;
        this.mUpdateInputForAllWindowsConsumer = new UpdateInputForAllWindowsConsumer();
    }

    void onDisplayRemoved() {
        this.mHandler.removeCallbacks(this.mUpdateInputWindows);
        this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onDisplayRemoved$0$InputMonitor();
            }
        });
        this.mDisplayRemoved = true;
    }

    public /* synthetic */ void lambda$onDisplayRemoved$0$InputMonitor() {
        this.mService.mTransactionFactory.get().syncInputWindows().apply();
        this.mService.mInputManager.onDisplayRemoved(this.mDisplayId);
    }

    private void addInputConsumer(String name, InputConsumerImpl consumer) {
        this.mInputConsumers.put(name, consumer);
        consumer.linkToDeathRecipient();
        updateInputWindowsLw(true);
    }

    boolean destroyInputConsumer(String name) {
        if (disposeInputConsumer(this.mInputConsumers.remove(name))) {
            updateInputWindowsLw(true);
            return true;
        }
        return false;
    }

    private boolean disposeInputConsumer(InputConsumerImpl consumer) {
        if (consumer != null) {
            consumer.disposeChannelsLw(this.mInputTransaction);
            return true;
        }
        return false;
    }

    InputConsumerImpl getInputConsumer(String name) {
        return this.mInputConsumers.get(name);
    }

    void layoutInputConsumers(int dw, int dh) {
        try {
            Trace.traceBegin(32L, "layoutInputConsumer");
            for (int i = this.mInputConsumers.size() - 1; i >= 0; i--) {
                this.mInputConsumers.valueAt(i).layout(this.mInputTransaction, dw, dh);
            }
            Trace.traceEnd(32L);
        } catch (Throwable th) {
            Trace.traceEnd(32L);
            throw th;
        }
    }

    void resetInputConsumers(SurfaceControl.Transaction t) {
        for (int i = this.mInputConsumers.size() - 1; i >= 0; i--) {
            this.mInputConsumers.valueAt(i).hide(t);
        }
    }

    WindowManagerPolicy.InputConsumer createInputConsumer(Looper looper, String name, InputEventReceiver.Factory inputEventReceiverFactory) {
        if (!name.contentEquals("nav_input_consumer")) {
            throw new IllegalArgumentException("Illegal input consumer : " + name + ", display: " + this.mDisplayId);
        }
        if (this.mInputConsumers.containsKey(name)) {
            throw new IllegalStateException("Existing input consumer found with name: " + name + ", display: " + this.mDisplayId);
        }
        EventReceiverInputConsumer consumer = new EventReceiverInputConsumer(this.mService, this, looper, name, inputEventReceiverFactory, Process.myPid(), UserHandle.SYSTEM, this.mDisplayId);
        addInputConsumer(name, consumer);
        return consumer;
    }

    void createInputConsumer(IBinder token, String name, InputChannel inputChannel, int clientPid, UserHandle clientUser) {
        if (this.mInputConsumers.containsKey(name)) {
            throw new IllegalStateException("Existing input consumer found with name: " + name + ", display: " + this.mDisplayId);
        }
        InputConsumerImpl consumer = new InputConsumerImpl(this.mService, token, name, inputChannel, clientPid, clientUser, this.mDisplayId);
        byte b = -1;
        int iHashCode = name.hashCode();
        if (iHashCode != -1525776435) {
            if (iHashCode != 1024719987) {
                if (iHashCode == 1415830696 && name.equals("wallpaper_input_consumer")) {
                    b = 0;
                }
            } else if (name.equals("pip_input_consumer")) {
                b = 1;
            }
        } else if (name.equals("recents_animation_input_consumer")) {
            b = 2;
        }
        if (b == 0) {
            consumer.mWindowHandle.hasWallpaper = true;
        } else if (b == 1) {
            consumer.mWindowHandle.layoutParamsFlags |= 32;
        } else if (b != 2) {
            throw new IllegalArgumentException("Illegal input consumer : " + name + ", display: " + this.mDisplayId);
        }
        addInputConsumer(name, consumer);
    }

    void populateInputWindowHandle(InputWindowHandle inputWindowHandle, WindowState child, int flags, int type, boolean isVisible, boolean hasFocus, boolean hasWallpaper) {
        inputWindowHandle.name = child.toString();
        inputWindowHandle.inputApplicationHandle = child.mActivityRecord != null ? child.mActivityRecord.getInputApplicationHandle(false) : null;
        inputWindowHandle.layoutParamsFlags = child.getSurfaceTouchableRegion(inputWindowHandle, flags);
        inputWindowHandle.layoutParamsType = type;
        inputWindowHandle.dispatchingTimeoutNanos = child.getInputDispatchingTimeoutNanos();
        inputWindowHandle.visible = isVisible;
        inputWindowHandle.canReceiveKeys = child.canReceiveKeys();
        inputWindowHandle.hasFocus = hasFocus;
        inputWindowHandle.hasWallpaper = hasWallpaper;
        inputWindowHandle.paused = child.mActivityRecord != null ? child.mActivityRecord.paused : false;
        inputWindowHandle.ownerPid = child.mSession.mPid;
        inputWindowHandle.ownerUid = child.mSession.mUid;
        inputWindowHandle.inputFeatures = child.mAttrs.inputFeatures;
        inputWindowHandle.displayId = child.getDisplayId();
        Rect frame = child.getFrameLw();
        inputWindowHandle.frameLeft = frame.left;
        inputWindowHandle.frameTop = frame.top;
        inputWindowHandle.frameRight = frame.right;
        inputWindowHandle.frameBottom = frame.bottom;
        inputWindowHandle.surfaceInset = child.getAttrs().surfaceInsets.left;
        if (child.getTask() != null && child.getTask().isOrganized()) {
            inputWindowHandle.replaceTouchableRegionWithCrop((SurfaceControl) null);
        }
        if (child.mGlobalScale != 1.0f) {
            inputWindowHandle.scaleFactor = 1.0f / child.mGlobalScale;
        } else {
            inputWindowHandle.scaleFactor = 1.0f;
        }
    }

    void setUpdateInputWindowsNeededLw() {
        this.mUpdateInputWindowsNeeded = true;
    }

    void updateInputWindowsLw(boolean force) {
        if (!force && !this.mUpdateInputWindowsNeeded) {
            return;
        }
        scheduleUpdateInputWindows();
    }

    private void scheduleUpdateInputWindows() {
        if (!this.mDisplayRemoved && !this.mUpdateInputWindowsPending) {
            this.mUpdateInputWindowsPending = true;
            this.mHandler.post(this.mUpdateInputWindows);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateInputWindowsImmediately(SurfaceControl.Transaction t) {
        this.mHandler.removeCallbacks(this.mUpdateInputWindows);
        this.mUpdateInputWindowsImmediately = true;
        this.mUpdateInputWindows.run();
        this.mUpdateInputWindowsImmediately = false;
        t.merge(this.mInputTransaction);
    }

    public void setInputFocusLw(WindowState newWindow, boolean updateInputWindows) {
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
            String protoLogParam0 = String.valueOf(newWindow);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 285317231, 0, null, protoLogParam0);
        }
        if (newWindow != this.mInputFocus) {
            if (newWindow != null && newWindow.canReceiveKeys()) {
                newWindow.mToken.paused = false;
            }
            this.mInputFocus = newWindow;
            setUpdateInputWindowsNeededLw();
            if (updateInputWindows) {
                updateInputWindowsLw(false);
            }
        }
    }

    public void setFocusedAppLw(ActivityRecord newApp) {
        this.mService.mInputManager.setFocusedApplication(this.mDisplayId, newApp != null ? newApp.getInputApplicationHandle(true) : null);
    }

    public void pauseDispatchingLw(WindowToken window) {
        if (!window.paused) {
            window.paused = true;
            updateInputWindowsLw(true);
        }
    }

    public void resumeDispatchingLw(WindowToken window) {
        if (window.paused) {
            window.paused = false;
            updateInputWindowsLw(true);
        }
    }

    void dump(PrintWriter pw, String prefix) {
        Set<String> inputConsumerKeys = this.mInputConsumers.keySet();
        if (!inputConsumerKeys.isEmpty()) {
            pw.println(prefix + "InputConsumers:");
            for (String key : inputConsumerKeys) {
                this.mInputConsumers.get(key).dump(pw, key, prefix);
            }
        }
    }

    private final class UpdateInputForAllWindowsConsumer implements Consumer<WindowState> {
        private boolean mAddNavInputConsumerHandle;
        private boolean mAddPipInputConsumerHandle;
        private boolean mAddRecentsAnimationInputConsumerHandle;
        private boolean mAddWallpaperInputConsumerHandle;
        boolean mInDrag;
        final InputWindowHandle mInvalidInputWindow;
        InputConsumerImpl mNavInputConsumer;
        InputConsumerImpl mPipInputConsumer;
        InputConsumerImpl mRecentsAnimationInputConsumer;
        WallpaperController mWallpaperController;
        InputConsumerImpl mWallpaperInputConsumer;

        private UpdateInputForAllWindowsConsumer() {
            this.mInvalidInputWindow = new InputWindowHandle((InputApplicationHandle) null, InputMonitor.this.mDisplayId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateInputWindows(boolean inDrag) {
            Trace.traceBegin(32L, "updateInputWindows");
            this.mNavInputConsumer = InputMonitor.this.getInputConsumer("nav_input_consumer");
            this.mPipInputConsumer = InputMonitor.this.getInputConsumer("pip_input_consumer");
            this.mWallpaperInputConsumer = InputMonitor.this.getInputConsumer("wallpaper_input_consumer");
            this.mRecentsAnimationInputConsumer = InputMonitor.this.getInputConsumer("recents_animation_input_consumer");
            this.mAddNavInputConsumerHandle = this.mNavInputConsumer != null;
            this.mAddPipInputConsumerHandle = this.mPipInputConsumer != null;
            this.mAddWallpaperInputConsumerHandle = this.mWallpaperInputConsumer != null;
            this.mAddRecentsAnimationInputConsumerHandle = this.mRecentsAnimationInputConsumer != null;
            InputMonitor.this.mTmpRect.setEmpty();
            InputMonitor.this.mDisableWallpaperTouchEvents = false;
            this.mInDrag = inDrag;
            this.mWallpaperController = InputMonitor.this.mDisplayContent.mWallpaperController;
            InputMonitor inputMonitor = InputMonitor.this;
            inputMonitor.resetInputConsumers(inputMonitor.mInputTransaction);
            InputMonitor.this.mDisplayContent.forAllWindows((Consumer<WindowState>) this, true);
            if (!InputMonitor.this.mUpdateInputWindowsImmediately) {
                InputMonitor.this.mDisplayContent.getPendingTransaction().merge(InputMonitor.this.mInputTransaction);
                InputMonitor.this.mDisplayContent.scheduleAnimation();
            }
            Trace.traceEnd(32L);
        }

        @Override // java.util.function.Consumer
        public void accept(WindowState w) {
            boolean z;
            InputChannel inputChannel = w.mInputChannel;
            InputWindowHandle inputWindowHandle = w.mInputWindowHandle;
            RecentsAnimationController recentsAnimationController = InputMonitor.this.mService.getRecentsAnimationController();
            boolean shouldApplyRecentsInputConsumer = recentsAnimationController != null && recentsAnimationController.shouldApplyInputConsumer(w.mActivityRecord);
            int type = w.mAttrs.type;
            boolean isVisible = w.isVisibleLw();
            if (inputChannel == null || inputWindowHandle == null || w.mRemoved || (w.cantReceiveTouchInput() && !shouldApplyRecentsInputConsumer)) {
                if (w.mWinAnimator.hasSurface()) {
                    InputMonitor.populateOverlayInputInfo(this.mInvalidInputWindow, w.getName(), type, isVisible);
                    InputMonitor.this.mInputTransaction.setInputWindowInfo(w.mWinAnimator.mSurfaceController.getClientViewRootSurface(), this.mInvalidInputWindow);
                    return;
                }
                return;
            }
            int flags = w.mAttrs.flags;
            int privateFlags = w.mAttrs.privateFlags;
            boolean hasFocus = w.isFocused();
            if (this.mAddRecentsAnimationInputConsumerHandle && shouldApplyRecentsInputConsumer && recentsAnimationController.updateInputConsumerForApp(this.mRecentsAnimationInputConsumer.mWindowHandle, hasFocus)) {
                this.mRecentsAnimationInputConsumer.show(InputMonitor.this.mInputTransaction, w);
                this.mAddRecentsAnimationInputConsumerHandle = false;
            }
            if (w.inPinnedWindowingMode() && this.mAddPipInputConsumerHandle) {
                Task rootTask = w.getTask().getRootTask();
                this.mPipInputConsumer.mWindowHandle.replaceTouchableRegionWithCrop(rootTask.getSurfaceControl());
                this.mPipInputConsumer.reparent(InputMonitor.this.mInputTransaction, rootTask);
                this.mPipInputConsumer.show(InputMonitor.this.mInputTransaction, 2147483646);
                this.mAddPipInputConsumerHandle = false;
            }
            if (this.mAddNavInputConsumerHandle) {
                this.mNavInputConsumer.show(InputMonitor.this.mInputTransaction, w);
                this.mAddNavInputConsumerHandle = false;
            }
            if (this.mAddWallpaperInputConsumerHandle && w.mAttrs.type == 2013 && w.isVisibleLw()) {
                this.mWallpaperInputConsumer.show(InputMonitor.this.mInputTransaction, w);
                this.mAddWallpaperInputConsumerHandle = false;
            }
            if ((privateFlags & 2048) != 0) {
                z = true;
                InputMonitor.this.mDisableWallpaperTouchEvents = true;
            } else {
                z = true;
            }
            boolean hasWallpaper = (!this.mWallpaperController.isWallpaperTarget(w) || InputMonitor.this.mService.mPolicy.isKeyguardShowing() || InputMonitor.this.mDisableWallpaperTouchEvents) ? false : z;
            if (this.mInDrag && isVisible && w.getDisplayContent().isDefaultDisplay) {
                InputMonitor.this.mService.mDragDropController.sendDragStartedIfNeededLocked(w);
            }
            InputMonitor.this.populateInputWindowHandle(inputWindowHandle, w, flags, type, isVisible, hasFocus, hasWallpaper);
            InputMonitor.this.mService.mKeyInterceptionInfoForToken.put(inputWindowHandle.token, w.getKeyInterceptionInfo());
            if (w.mWinAnimator.hasSurface()) {
                InputMonitor.this.mInputTransaction.setInputWindowInfo(w.mWinAnimator.mSurfaceController.getClientViewRootSurface(), inputWindowHandle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void populateOverlayInputInfo(InputWindowHandle inputWindowHandle, String name, int type, boolean isVisible) {
        inputWindowHandle.name = name;
        inputWindowHandle.layoutParamsType = type;
        inputWindowHandle.dispatchingTimeoutNanos = 5000000000L;
        inputWindowHandle.visible = isVisible;
        inputWindowHandle.canReceiveKeys = false;
        inputWindowHandle.hasFocus = false;
        inputWindowHandle.inputFeatures = 2;
        inputWindowHandle.scaleFactor = 1.0f;
        inputWindowHandle.layoutParamsFlags = 56;
        inputWindowHandle.portalToDisplayId = -1;
        inputWindowHandle.touchableRegion.setEmpty();
        inputWindowHandle.setTouchableRegionCrop((SurfaceControl) null);
        inputWindowHandle.trustedOverlay = isTrustedOverlay(type);
    }

    static void setTrustedOverlayInputInfo(SurfaceControl sc, SurfaceControl.Transaction t, int displayId, String name) {
        InputWindowHandle inputWindowHandle = new InputWindowHandle((InputApplicationHandle) null, displayId);
        populateOverlayInputInfo(inputWindowHandle, name, 2015, true);
        t.setInputWindowInfo(sc, inputWindowHandle);
    }

    static boolean isTrustedOverlay(int type) {
        return type == 2039 || type == 2011 || type == 2012 || type == 2027 || type == 2000 || type == 2040 || type == 2019 || type == 2024 || type == 2015 || type == 2034 || type == 2032 || type == 2022;
    }
}
