package com.android.server.wm;

import android.R;
import android.app.IActivityTaskManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Slog;
import android.view.Display;
import android.view.IWindow;
import android.view.InputWindowHandle;
import android.view.SurfaceControl;
import com.android.server.input.InputManagerService;

/* JADX INFO: loaded from: classes2.dex */
class TaskPositioningController {
    private final IActivityTaskManager mActivityManager;
    private final Handler mHandler;
    private final InputManagerService mInputManager;
    private SurfaceControl mInputSurface;
    private DisplayContent mPositioningDisplay;
    private final WindowManagerService mService;
    private TaskPositioner mTaskPositioner;
    private final Rect mTmpClipRect = new Rect();
    final SurfaceControl.Transaction mTransaction;

    boolean isPositioningLocked() {
        return this.mTaskPositioner != null;
    }

    InputWindowHandle getDragWindowHandleLocked() {
        TaskPositioner taskPositioner = this.mTaskPositioner;
        if (taskPositioner != null) {
            return taskPositioner.mDragWindowHandle;
        }
        return null;
    }

    TaskPositioningController(WindowManagerService service, InputManagerService inputManager, IActivityTaskManager activityManager, Looper looper) {
        this.mService = service;
        this.mInputManager = inputManager;
        this.mActivityManager = activityManager;
        this.mHandler = new Handler(looper);
        this.mTransaction = service.mTransactionFactory.get();
    }

    void hideInputSurface(int displayId) {
        SurfaceControl surfaceControl;
        DisplayContent displayContent = this.mPositioningDisplay;
        if (displayContent != null && displayContent.getDisplayId() == displayId && (surfaceControl = this.mInputSurface) != null) {
            this.mTransaction.hide(surfaceControl);
            this.mTransaction.syncInputWindows().apply();
        }
    }

    void showInputSurface(int displayId) {
        DisplayContent displayContent = this.mPositioningDisplay;
        if (displayContent == null || displayContent.getDisplayId() != displayId) {
            return;
        }
        DisplayContent dc = this.mService.mRoot.getDisplayContent(displayId);
        if (this.mInputSurface == null) {
            this.mInputSurface = this.mService.makeSurfaceBuilder(dc.getSession()).setContainerLayer().setName("Drag and Drop Input Consumer").setCallsite("TaskPositioningController.showInputSurface").build();
        }
        InputWindowHandle h = getDragWindowHandleLocked();
        if (h == null) {
            Slog.w("WindowManager", "Drag is in progress but there is no drag window handle.");
            return;
        }
        this.mTransaction.show(this.mInputSurface);
        this.mTransaction.setInputWindowInfo(this.mInputSurface, h);
        this.mTransaction.setLayer(this.mInputSurface, Integer.MAX_VALUE);
        Display display = dc.getDisplay();
        Point p = new Point();
        display.getRealSize(p);
        this.mTmpClipRect.set(0, 0, p.x, p.y);
        this.mTransaction.setWindowCrop(this.mInputSurface, this.mTmpClipRect);
        this.mTransaction.syncInputWindows().apply();
    }

    boolean startMovingTask(IWindow window, float startX, float startY) throws Throwable {
        synchronized (this.mService.mGlobalLock) {
            try {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState win = this.mService.windowForClientLocked((Session) null, window, false);
                    if (!startPositioningLocked(win, false, false, startX, startY)) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    try {
                        this.mActivityManager.setFocusedTask(win.getTask().mTaskId);
                        return true;
                    } catch (RemoteException e) {
                        return true;
                    }
                } catch (Throwable th) {
                    th = th;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void handleTapOutsideTask(final DisplayContent displayContent, final int x, final int y) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskPositioningController$u0oAwi82C-bAGo2JAsAc_9ZLi70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleTapOutsideTask$0$TaskPositioningController(displayContent, x, y);
            }
        });
    }

    public /* synthetic */ void lambda$handleTapOutsideTask$0$TaskPositioningController(DisplayContent displayContent, int x, int y) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Task task = displayContent.findTaskForResizePoint(x, y);
                if (task != null) {
                    if (task.inFreeformWindowingMode() && Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstEnabled_allowed)) {
                        Slog.d("WindowManager", "task in freeform widown, not support resize.");
                    } else {
                        if (!task.isResizeable()) {
                            return;
                        }
                        if (!startPositioningLocked(task.getTopVisibleAppMainWindow(), true, task.preserveOrientationOnResize(), x, y)) {
                        } else {
                            try {
                                this.mActivityManager.setFocusedTask(task.mTaskId);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private boolean startPositioningLocked(WindowState win, boolean resize, boolean preserveOrientation, float startX, float startY) {
        if (win == null || win.getAppToken() == null) {
            Slog.w("WindowManager", "startPositioningLocked: Bad window " + win);
            return false;
        }
        if (win.mInputChannel == null) {
            Slog.wtf("WindowManager", "startPositioningLocked: " + win + " has no input channel,  probably being removed");
            return false;
        }
        DisplayContent displayContent = win.getDisplayContent();
        if (displayContent == null) {
            Slog.w("WindowManager", "startPositioningLocked: Invalid display content " + win);
            return false;
        }
        this.mPositioningDisplay = displayContent;
        TaskPositioner taskPositionerCreate = TaskPositioner.create(this.mService);
        this.mTaskPositioner = taskPositionerCreate;
        taskPositionerCreate.register(displayContent, win);
        WindowState transferFocusFromWin = win;
        if (displayContent.mCurrentFocus != null && displayContent.mCurrentFocus != win && displayContent.mCurrentFocus.mActivityRecord == win.mActivityRecord) {
            transferFocusFromWin = displayContent.mCurrentFocus;
        }
        if (!this.mInputManager.transferTouchFocus(transferFocusFromWin.mInputChannel, this.mTaskPositioner.mServerChannel)) {
            Slog.e("WindowManager", "startPositioningLocked: Unable to transfer touch focus");
            cleanUpTaskPositioner();
            return false;
        }
        this.mTaskPositioner.startDrag(resize, preserveOrientation, startX, startY);
        return true;
    }

    public void finishTaskPositioning(IWindow window) {
        TaskPositioner taskPositioner = this.mTaskPositioner;
        if (taskPositioner != null && taskPositioner.mClientCallback == window.asBinder()) {
            finishTaskPositioning();
        }
    }

    void finishTaskPositioning() {
        this.mService.mAnimationHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishTaskPositioning$1$TaskPositioningController();
            }
        });
    }

    public /* synthetic */ void lambda$finishTaskPositioning$1$TaskPositioningController() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                cleanUpTaskPositioner();
                this.mPositioningDisplay = null;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void cleanUpTaskPositioner() {
        TaskPositioner positioner = this.mTaskPositioner;
        if (positioner == null) {
            return;
        }
        this.mTaskPositioner = null;
        positioner.unregister();
    }
}
