package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import android.view.DisplayInfo;
import android.view.IWindow;
import android.view.SurfaceControl;
import android.view.WindowInfo;
import android.view.animation.Animation;
import com.android.server.job.controllers.JobStatus;

/* JADX INFO: loaded from: classes2.dex */
public class ShellRoot {
    private static final String TAG = "ShellRoot";
    private IWindow mAccessibilityWindow;
    private IBinder.DeathRecipient mAccessibilityWindowDeath;
    private IWindow mClient;
    private final IBinder.DeathRecipient mDeathRecipient;
    private final DisplayContent mDisplayContent;
    private SurfaceControl mSurfaceControl;
    private WindowToken mToken;

    ShellRoot(IWindow client, DisplayContent dc, final int windowType) {
        this.mSurfaceControl = null;
        this.mDisplayContent = dc;
        this.mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                this.f$0.lambda$new$0$ShellRoot(windowType);
            }
        };
        try {
            client.asBinder().linkToDeath(this.mDeathRecipient, 0);
            this.mClient = client;
            WindowToken windowToken = new WindowToken(dc.mWmService, client.asBinder(), windowType, true, dc, true, false);
            this.mToken = windowToken;
            this.mSurfaceControl = windowToken.makeChildSurface(null).setContainerLayer().setName("Shell Root Leash " + dc.getDisplayId()).setCallsite(TAG).build();
            this.mToken.getPendingTransaction().show(this.mSurfaceControl);
        } catch (RemoteException e) {
            Slog.e(TAG, "Unable to add shell root for layer " + windowType + " on display " + dc.getDisplayId(), e);
        }
    }

    public /* synthetic */ void lambda$new$0$ShellRoot(int windowType) {
        this.mDisplayContent.removeShellRoot(windowType);
    }

    void clear() {
        IWindow iWindow = this.mClient;
        if (iWindow != null) {
            iWindow.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
            this.mClient = null;
        }
        WindowToken windowToken = this.mToken;
        if (windowToken != null) {
            windowToken.removeImmediately();
            this.mToken = null;
        }
    }

    SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    IWindow getClient() {
        return this.mClient;
    }

    void startAnimation(Animation anim) {
        if (this.mToken.windowType != 2034) {
            return;
        }
        DisplayInfo displayInfo = this.mToken.getFixedRotationTransformDisplayInfo();
        if (displayInfo == null) {
            displayInfo = this.mDisplayContent.getDisplayInfo();
        }
        anim.initialize(displayInfo.logicalWidth, displayInfo.logicalHeight, displayInfo.appWidth, displayInfo.appHeight);
        anim.restrictDuration(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        anim.scaleCurrentDuration(this.mDisplayContent.mWmService.getWindowAnimationScaleLocked());
        AnimationAdapter adapter = new LocalAnimationAdapter(new WindowAnimationSpec(anim, new Point(0, 0), false, 0.0f), this.mDisplayContent.mWmService.mSurfaceAnimationRunner);
        WindowToken windowToken = this.mToken;
        windowToken.startAnimation(windowToken.getPendingTransaction(), adapter, false, 16);
    }

    WindowInfo getWindowInfo() {
        if (this.mToken.windowType != 2034 || !this.mDisplayContent.getDefaultTaskDisplayArea().isSplitScreenModeActivated() || this.mAccessibilityWindow == null) {
            return null;
        }
        WindowInfo windowInfo = WindowInfo.obtain();
        windowInfo.displayId = this.mToken.getDisplayArea().getDisplayContent().mDisplayId;
        windowInfo.type = this.mToken.windowType;
        windowInfo.layer = this.mToken.getWindowLayerFromType();
        windowInfo.token = this.mAccessibilityWindow.asBinder();
        windowInfo.title = "Splitscreen Divider";
        windowInfo.focused = false;
        windowInfo.inPictureInPicture = false;
        windowInfo.hasFlagWatchOutsideTouch = false;
        Rect regionRect = new Rect();
        this.mDisplayContent.getDockedDividerController().getTouchRegion(regionRect);
        windowInfo.regionInScreen.set(regionRect);
        return windowInfo;
    }

    void setAccessibilityWindow(IWindow window) {
        IWindow iWindow = this.mAccessibilityWindow;
        if (iWindow != null) {
            iWindow.asBinder().unlinkToDeath(this.mAccessibilityWindowDeath, 0);
        }
        this.mAccessibilityWindow = window;
        if (window != null) {
            try {
                this.mAccessibilityWindowDeath = new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        this.f$0.lambda$setAccessibilityWindow$1$ShellRoot();
                    }
                };
                this.mAccessibilityWindow.asBinder().linkToDeath(this.mAccessibilityWindowDeath, 0);
            } catch (RemoteException e) {
                this.mAccessibilityWindow = null;
            }
        }
        if (this.mDisplayContent.mWmService.mAccessibilityController != null) {
            this.mDisplayContent.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(this.mDisplayContent.getDisplayId());
        }
    }

    public /* synthetic */ void lambda$setAccessibilityWindow$1$ShellRoot() {
        synchronized (this.mDisplayContent.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mAccessibilityWindow = null;
                setAccessibilityWindow(null);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }
}
