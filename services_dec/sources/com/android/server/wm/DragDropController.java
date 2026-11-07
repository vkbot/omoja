package com.android.server.wm;

import android.content.ClipData;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Slog;
import android.view.IWindow;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
class DragDropController {
    private static final float DRAG_SHADOW_ALPHA_TRANSPARENT = 0.7071f;
    private static final long DRAG_TIMEOUT_MS = 5000;
    static final int MSG_ANIMATION_END = 2;
    static final int MSG_DRAG_END_TIMEOUT = 0;
    static final int MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT = 1;
    private AtomicReference<WindowManagerInternal.IDragDropCallback> mCallback = new AtomicReference<>(new WindowManagerInternal.IDragDropCallback() { // from class: com.android.server.wm.DragDropController.1
    });
    private DragState mDragState;
    private final Handler mHandler;
    private WindowManagerService mService;

    boolean dragDropActiveLocked() {
        DragState dragState = this.mDragState;
        return (dragState == null || dragState.isClosing()) ? false : true;
    }

    void registerCallback(WindowManagerInternal.IDragDropCallback callback) {
        Objects.requireNonNull(callback);
        this.mCallback.set(callback);
    }

    DragDropController(WindowManagerService service, Looper looper) {
        this.mService = service;
        this.mHandler = new DragHandler(service, looper);
    }

    void sendDragStartedIfNeededLocked(WindowState window) {
        this.mDragState.sendDragStartedIfNeededLocked(window);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [android.view.SurfaceControl] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.view.SurfaceControl] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9 */
    IBinder performDrag(SurfaceSession surfaceSession, int i, int i2, IWindow iWindow, int i3, SurfaceControl surfaceControl, int i4, float f, float f2, float f3, float f4, ClipData clipData) throws Throwable {
        ?? r1 = f4;
        Binder binder = new Binder();
        boolean zPrePerformDrag = this.mCallback.get().prePerformDrag(iWindow, binder, i4, f, f2, f3, f4, clipData);
        try {
            try {
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        try {
                            try {
                                try {
                                    if (!zPrePerformDrag) {
                                        Slog.w("WindowManager", "IDragDropCallback rejects the performDrag request");
                                        if (surfaceControl != null) {
                                            surfaceControl.release();
                                        }
                                        if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                            this.mDragState.closeLocked();
                                        }
                                        WindowManagerService.resetPriorityAfterLockedSection();
                                        this.mCallback.get().postPerformDrag();
                                        return null;
                                    }
                                    if (dragDropActiveLocked()) {
                                        Slog.w("WindowManager", "Drag already in progress");
                                        if (surfaceControl != null) {
                                            surfaceControl.release();
                                        }
                                        if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                            this.mDragState.closeLocked();
                                        }
                                        WindowManagerService.resetPriorityAfterLockedSection();
                                        this.mCallback.get().postPerformDrag();
                                        return null;
                                    }
                                    WindowState windowStateWindowForClientLocked = this.mService.windowForClientLocked((Session) null, iWindow, false);
                                    if (windowStateWindowForClientLocked == null || windowStateWindowForClientLocked.cantReceiveTouchInput()) {
                                        try {
                                            Slog.w("WindowManager", "Bad requesting window " + iWindow);
                                            if (surfaceControl != null) {
                                                try {
                                                    surfaceControl.release();
                                                } catch (Throwable th) {
                                                    th = th;
                                                    WindowManagerService.resetPriorityAfterLockedSection();
                                                    throw th;
                                                }
                                            }
                                            if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                                this.mDragState.closeLocked();
                                            }
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            this.mCallback.get().postPerformDrag();
                                            return null;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            r1 = surfaceControl;
                                        }
                                    } else {
                                        DisplayContent displayContent = windowStateWindowForClientLocked.getDisplayContent();
                                        if (displayContent == null) {
                                            Slog.w("WindowManager", "display content is null");
                                            if (surfaceControl != null) {
                                                surfaceControl.release();
                                            }
                                            if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                                this.mDragState.closeLocked();
                                            }
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            this.mCallback.get().postPerformDrag();
                                            return null;
                                        }
                                        float f5 = (i3 & 512) == 0 ? DRAG_SHADOW_ALPHA_TRANSPARENT : 1.0f;
                                        try {
                                            try {
                                                DragState dragState = new DragState(this.mService, this, new Binder(), surfaceControl, i3, iWindow.asBinder());
                                                this.mDragState = dragState;
                                                r1 = 0;
                                                r1 = 0;
                                                r1 = 0;
                                                r1 = 0;
                                                try {
                                                    dragState.mPid = i;
                                                    this.mDragState.mUid = i2;
                                                    this.mDragState.mOriginalAlpha = f5;
                                                    this.mDragState.mToken = binder;
                                                    this.mDragState.mDisplayContent = displayContent;
                                                    if (!this.mCallback.get().registerInputChannel(this.mDragState, displayContent.getDisplay(), this.mService.mInputManager, windowStateWindowForClientLocked.mInputChannel)) {
                                                        Slog.e("WindowManager", "Unable to transfer touch focus");
                                                        if (0 != 0) {
                                                            try {
                                                                r1.release();
                                                            } catch (Throwable th3) {
                                                                th = th3;
                                                                WindowManagerService.resetPriorityAfterLockedSection();
                                                                throw th;
                                                            }
                                                        }
                                                        if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                                            this.mDragState.closeLocked();
                                                        }
                                                        WindowManagerService.resetPriorityAfterLockedSection();
                                                        this.mCallback.get().postPerformDrag();
                                                        return null;
                                                    }
                                                    this.mDragState.mData = clipData;
                                                    try {
                                                        this.mDragState.broadcastDragStartedLocked(f, f2);
                                                        this.mDragState.overridePointerIconLocked(i4);
                                                        this.mDragState.mThumbOffsetX = f3;
                                                        try {
                                                            this.mDragState.mThumbOffsetY = f4;
                                                            SurfaceControl surfaceControl2 = this.mDragState.mSurfaceControl;
                                                            SurfaceControl.Transaction transaction = this.mDragState.mTransaction;
                                                            transaction.setAlpha(surfaceControl2, this.mDragState.mOriginalAlpha);
                                                            transaction.setPosition(surfaceControl2, f - f3, f2 - f4);
                                                            transaction.show(surfaceControl2);
                                                            displayContent.reparentToOverlay(transaction, surfaceControl2);
                                                            windowStateWindowForClientLocked.scheduleAnimation();
                                                            this.mDragState.notifyLocationLocked(f, f2);
                                                            if (0 != 0) {
                                                                r1.release();
                                                            }
                                                            if (this.mDragState != null && !this.mDragState.isInProgress()) {
                                                                this.mDragState.closeLocked();
                                                            }
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                            this.mCallback.get().postPerformDrag();
                                                            return binder;
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                        }
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                    }
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                r1 = surfaceControl;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            r1 = surfaceControl;
                                        }
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    this.mCallback.get().postPerformDrag();
                                    throw th;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            r1 = surfaceControl;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        r1 = surfaceControl;
                    }
                    if (r1 != 0) {
                        r1.release();
                    }
                    if (this.mDragState != null && !this.mDragState.isInProgress()) {
                        this.mDragState.closeLocked();
                    }
                    throw th;
                }
            } catch (Throwable th13) {
                th = th13;
            }
        } catch (Throwable th14) {
            th = th14;
        }
    }

    void reportDropResult(IWindow window, boolean consumed) {
        IBinder token = window.asBinder();
        this.mCallback.get().preReportDropResult(window, consumed);
        try {
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (this.mDragState == null) {
                        Slog.w("WindowManager", "Drop result given but no drag in progress");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        this.mCallback.get().postReportDropResult();
                        return;
                    }
                    if (this.mDragState.mToken != token) {
                        Slog.w("WindowManager", "Invalid drop-result claim by " + window);
                        throw new IllegalStateException("reportDropResult() by non-recipient");
                    }
                    this.mHandler.removeMessages(0, window.asBinder());
                    WindowState callingWin = this.mService.windowForClientLocked((Session) null, window, false);
                    if (callingWin != null) {
                        this.mDragState.mDragResult = consumed;
                        this.mDragState.endDragLocked();
                        WindowManagerService.resetPriorityAfterLockedSection();
                        this.mCallback.get().postReportDropResult();
                        return;
                    }
                    Slog.w("WindowManager", "Bad result-reporting window " + window);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    this.mCallback.get().postReportDropResult();
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            this.mCallback.get().postReportDropResult();
            throw th2;
        }
    }

    void cancelDragAndDrop(IBinder dragToken, boolean skipAnimation) {
        this.mCallback.get().preCancelDragAndDrop(dragToken);
        try {
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (this.mDragState == null) {
                        Slog.w("WindowManager", "cancelDragAndDrop() without prepareDrag()");
                        throw new IllegalStateException("cancelDragAndDrop() without prepareDrag()");
                    }
                    if (this.mDragState.mToken != dragToken) {
                        Slog.w("WindowManager", "cancelDragAndDrop() does not match prepareDrag()");
                        throw new IllegalStateException("cancelDragAndDrop() does not match prepareDrag()");
                    }
                    this.mDragState.mDragResult = false;
                    this.mDragState.cancelDragLocked(skipAnimation);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            this.mCallback.get().postCancelDragAndDrop();
        } catch (Throwable th2) {
            this.mCallback.get().postCancelDragAndDrop();
            throw th2;
        }
    }

    void handleMotionEvent(boolean keepHandling, float newX, float newY) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (dragDropActiveLocked()) {
                    if (keepHandling) {
                        this.mDragState.notifyMoveLocked(newX, newY);
                    } else {
                        this.mDragState.notifyDropLocked(newX, newY);
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void dragRecipientEntered(IWindow window) {
    }

    void dragRecipientExited(IWindow window) {
    }

    void sendHandlerMessage(int what, Object arg) {
        this.mHandler.obtainMessage(what, arg).sendToTarget();
    }

    void sendTimeoutMessage(int what, Object arg) {
        this.mHandler.removeMessages(what, arg);
        Message msg = this.mHandler.obtainMessage(what, arg);
        this.mHandler.sendMessageDelayed(msg, DRAG_TIMEOUT_MS);
    }

    void onDragStateClosedLocked(DragState dragState) {
        if (this.mDragState != dragState) {
            Slog.wtf("WindowManager", "Unknown drag state is closed");
        } else {
            this.mDragState = null;
        }
    }

    private class DragHandler extends Handler {
        private final WindowManagerService mService;

        DragHandler(WindowManagerService service, Looper looper) {
            super(looper);
            this.mService = service;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 0) {
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (DragDropController.this.mDragState != null) {
                            DragDropController.this.mDragState.mDragResult = false;
                            DragDropController.this.mDragState.endDragLocked();
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 1) {
                DragState.InputInterceptor interceptor = (DragState.InputInterceptor) msg.obj;
                if (interceptor == null) {
                    return;
                }
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        interceptor.tearDown();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 2) {
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (DragDropController.this.mDragState != null) {
                            DragDropController.this.mDragState.closeLocked();
                        } else {
                            Slog.wtf("WindowManager", "mDragState unexpectedly became null while plyaing animation");
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }
    }
}
