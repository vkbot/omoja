package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.Trace;
import android.util.DisplayMetrics;
import android.util.Slog;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputWindowHandle;
import android.view.MotionEvent;
import com.android.internal.policy.TaskResizingAlgorithm;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;

/* JADX INFO: loaded from: classes2.dex */
class TaskPositioner implements IBinder.DeathRecipient {
    private static final boolean DEBUG_ORIENTATION_VIOLATIONS = false;
    public static final float RESIZING_HINT_ALPHA = 0.5f;
    public static final int RESIZING_HINT_DURATION_MS = 0;
    private static final String TAG = "WindowManager";
    private static final String TAG_LOCAL = "TaskPositioner";
    private static Factory sFactory;
    IBinder mClientCallback;
    InputChannel mClientChannel;
    private DisplayContent mDisplayContent;
    InputApplicationHandle mDragApplicationHandle;
    boolean mDragEnded;
    InputWindowHandle mDragWindowHandle;
    private WindowPositionerEventReceiver mInputEventReceiver;
    private int mMinVisibleHeight;
    private int mMinVisibleWidth;
    private boolean mPreserveOrientation;
    private boolean mResizing;
    InputChannel mServerChannel;
    private final WindowManagerService mService;
    private float mStartDragX;
    private float mStartDragY;
    private boolean mStartOrientationWasLandscape;
    Task mTask;
    WindowState mWindow;
    private Rect mTmpRect = new Rect();
    private final Rect mWindowOriginalBounds = new Rect();
    private final Rect mWindowDragBounds = new Rect();
    private final Point mMaxVisibleSize = new Point();
    private int mCtrlType = 0;

    private final class WindowPositionerEventReceiver extends BatchedInputEventReceiver {
        public WindowPositionerEventReceiver(InputChannel inputChannel, Looper looper, Choreographer choreographer) {
            super(inputChannel, looper, choreographer);
        }

        public void onInputEvent(InputEvent event) {
            boolean handled = false;
            try {
                try {
                    if ((event instanceof MotionEvent) && (event.getSource() & 2) != 0) {
                        MotionEvent motionEvent = (MotionEvent) event;
                        if (TaskPositioner.this.mDragEnded) {
                            finishInputEvent(event, true);
                            return;
                        }
                        float newX = motionEvent.getRawX();
                        float newY = motionEvent.getRawY();
                        int action = motionEvent.getAction();
                        if (action == 1) {
                            TaskPositioner.this.mDragEnded = true;
                        } else if (action == 2) {
                            synchronized (TaskPositioner.this.mService.mGlobalLock) {
                                try {
                                    WindowManagerService.boostPriorityForLockedSection();
                                    TaskPositioner.this.mDragEnded = TaskPositioner.this.notifyMoveLocked(newX, newY);
                                    TaskPositioner.this.mTask.getDimBounds(TaskPositioner.this.mTmpRect);
                                } catch (Throwable th) {
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    throw th;
                                }
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            if (!TaskPositioner.this.mTmpRect.equals(TaskPositioner.this.mWindowDragBounds)) {
                                Trace.traceBegin(32L, "wm.TaskPositioner.resizeTask");
                                TaskPositioner.this.mService.mAtmService.resizeTask(TaskPositioner.this.mTask.mTaskId, TaskPositioner.this.mWindowDragBounds, 1);
                                Trace.traceEnd(32L);
                            }
                        } else if (action == 3) {
                            TaskPositioner.this.mDragEnded = true;
                        }
                        if (TaskPositioner.this.mDragEnded) {
                            boolean wasResizing = TaskPositioner.this.mResizing;
                            synchronized (TaskPositioner.this.mService.mGlobalLock) {
                                try {
                                    WindowManagerService.boostPriorityForLockedSection();
                                    TaskPositioner.this.endDragLocked();
                                    TaskPositioner.this.mTask.getDimBounds(TaskPositioner.this.mTmpRect);
                                } catch (Throwable th2) {
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    throw th2;
                                }
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            if (wasResizing && !TaskPositioner.this.mTmpRect.equals(TaskPositioner.this.mWindowDragBounds)) {
                                TaskPositioner.this.mService.mAtmService.resizeTask(TaskPositioner.this.mTask.mTaskId, TaskPositioner.this.mWindowDragBounds, 3);
                            }
                            TaskPositioner.this.mService.mTaskPositioningController.finishTaskPositioning();
                        }
                        handled = true;
                        finishInputEvent(event, handled);
                        return;
                    }
                    finishInputEvent(event, false);
                } catch (Exception e) {
                    Slog.e(TaskPositioner.TAG, "Exception caught by drag handleMotion", e);
                }
            } catch (Throwable th3) {
                finishInputEvent(event, false);
                throw th3;
            }
        }
    }

    TaskPositioner(WindowManagerService service) {
        this.mService = service;
    }

    Rect getWindowDragBounds() {
        return this.mWindowDragBounds;
    }

    void register(DisplayContent displayContent, WindowState win) {
        if (this.mClientChannel != null) {
            Slog.e(TAG, "Task positioner already registered");
            return;
        }
        this.mDisplayContent = displayContent;
        InputChannel[] channels = InputChannel.openInputChannelPair(TAG);
        this.mServerChannel = channels[0];
        this.mClientChannel = channels[1];
        this.mService.mInputManager.registerInputChannel(this.mServerChannel);
        this.mInputEventReceiver = new WindowPositionerEventReceiver(this.mClientChannel, this.mService.mAnimationHandler.getLooper(), this.mService.mAnimator.getChoreographer());
        this.mDragApplicationHandle = new InputApplicationHandle(new Binder(), TAG, 5000000000L);
        InputWindowHandle inputWindowHandle = new InputWindowHandle(this.mDragApplicationHandle, displayContent.getDisplayId());
        this.mDragWindowHandle = inputWindowHandle;
        inputWindowHandle.name = TAG;
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
        Rect displayBounds = this.mTmpRect;
        displayContent.getBounds(this.mTmpRect);
        this.mDragWindowHandle.frameLeft = displayBounds.left;
        this.mDragWindowHandle.frameTop = displayBounds.top;
        this.mDragWindowHandle.frameRight = displayBounds.right;
        this.mDragWindowHandle.frameBottom = displayBounds.bottom;
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 791468751, 0, null, (Object[]) null);
        }
        this.mDisplayContent.getDisplayRotation().pause();
        this.mService.mTaskPositioningController.showInputSurface(win.getDisplayId());
        DisplayMetrics displayMetrics = displayContent.getDisplayMetrics();
        this.mMinVisibleWidth = WindowManagerService.dipToPixel(48, displayMetrics);
        this.mMinVisibleHeight = WindowManagerService.dipToPixel(32, displayMetrics);
        this.mMaxVisibleSize.set(displayBounds.width(), displayBounds.height());
        this.mDragEnded = false;
        try {
            IBinder iBinderAsBinder = win.mClient.asBinder();
            this.mClientCallback = iBinderAsBinder;
            iBinderAsBinder.linkToDeath(this, 0);
            this.mWindow = win;
            this.mTask = win.getTask();
        } catch (RemoteException e) {
            this.mService.mTaskPositioningController.finishTaskPositioning();
        }
    }

    void unregister() {
        if (this.mClientChannel == null) {
            Slog.e(TAG, "Task positioner not registered");
            return;
        }
        this.mService.mTaskPositioningController.hideInputSurface(this.mDisplayContent.getDisplayId());
        this.mService.mInputManager.unregisterInputChannel(this.mServerChannel);
        this.mInputEventReceiver.dispose();
        this.mInputEventReceiver = null;
        this.mClientChannel.dispose();
        this.mServerChannel.dispose();
        this.mClientChannel = null;
        this.mServerChannel = null;
        this.mDragWindowHandle = null;
        this.mDragApplicationHandle = null;
        this.mDragEnded = true;
        this.mDisplayContent.getInputMonitor().updateInputWindowsLw(true);
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1422781269, 0, null, (Object[]) null);
        }
        this.mDisplayContent.getDisplayRotation().resume();
        this.mDisplayContent = null;
        IBinder iBinder = this.mClientCallback;
        if (iBinder != null) {
            iBinder.unlinkToDeath(this, 0);
        }
        this.mWindow = null;
    }

    void startDrag(boolean resize, boolean preserveOrientation, float startX, float startY) {
        boolean z;
        final Rect startBounds = this.mTmpRect;
        this.mTask.getBounds(startBounds);
        boolean z2 = false;
        this.mCtrlType = 0;
        this.mStartDragX = startX;
        this.mStartDragY = startY;
        this.mPreserveOrientation = preserveOrientation;
        if (resize) {
            if (startX < startBounds.left) {
                this.mCtrlType |= 1;
            }
            if (startX > startBounds.right) {
                this.mCtrlType |= 2;
            }
            if (startY < startBounds.top) {
                this.mCtrlType |= 4;
            }
            if (startY > startBounds.bottom) {
                this.mCtrlType |= 8;
            }
            if (this.mCtrlType == 0) {
                z = false;
            } else {
                z = true;
            }
            this.mResizing = z;
        }
        if (startBounds.width() >= startBounds.height()) {
            z2 = true;
        }
        this.mStartOrientationWasLandscape = z2;
        this.mWindowOriginalBounds.set(startBounds);
        if (this.mResizing) {
            notifyMoveLocked(startX, startY);
            this.mService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startDrag$0$TaskPositioner(startBounds);
                }
            });
        }
        this.mWindowDragBounds.set(startBounds);
    }

    public /* synthetic */ void lambda$startDrag$0$TaskPositioner(Rect startBounds) {
        this.mService.mAtmService.resizeTask(this.mTask.mTaskId, startBounds, 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endDragLocked() {
        this.mResizing = false;
        this.mTask.setDragResizing(false, 0);
    }

    boolean notifyMoveLocked(float x, float y) {
        if (this.mCtrlType != 0) {
            resizeDrag(x, y);
            this.mTask.setDragResizing(true, 0);
            return false;
        }
        this.mDisplayContent.getStableRect(this.mTmpRect);
        this.mTmpRect.intersect(this.mTask.getRootTask().getParent().getBounds());
        int nX = (int) x;
        int nY = (int) y;
        if (!this.mTmpRect.contains(nX, nY)) {
            nX = Math.min(Math.max(nX, this.mTmpRect.left), this.mTmpRect.right);
            nY = Math.min(Math.max(nY, this.mTmpRect.top), this.mTmpRect.bottom);
        }
        updateWindowDragBounds(nX, nY, this.mTmpRect);
        return false;
    }

    void resizeDrag(float x, float y) {
        updateDraggedBounds(TaskResizingAlgorithm.resizeDrag(x, y, this.mStartDragX, this.mStartDragY, this.mWindowOriginalBounds, this.mCtrlType, this.mMinVisibleWidth, this.mMinVisibleHeight, this.mMaxVisibleSize, this.mPreserveOrientation, this.mStartOrientationWasLandscape));
    }

    private void updateDraggedBounds(Rect newBounds) {
        this.mWindowDragBounds.set(newBounds);
        checkBoundsForOrientationViolations(this.mWindowDragBounds);
    }

    private void checkBoundsForOrientationViolations(Rect bounds) {
    }

    private void updateWindowDragBounds(int x, int y, Rect stackBounds) {
        int offsetX = Math.round(x - this.mStartDragX);
        int offsetY = Math.round(y - this.mStartDragY);
        this.mWindowDragBounds.set(this.mWindowOriginalBounds);
        int maxLeft = stackBounds.right - this.mMinVisibleWidth;
        int minLeft = (stackBounds.left + this.mMinVisibleWidth) - this.mWindowOriginalBounds.width();
        int minTop = stackBounds.top;
        int maxTop = stackBounds.bottom - this.mMinVisibleHeight;
        this.mWindowDragBounds.offsetTo(Math.min(Math.max(this.mWindowOriginalBounds.left + offsetX, minLeft), maxLeft), Math.min(Math.max(this.mWindowOriginalBounds.top + offsetY, minTop), maxTop));
    }

    public String toShortString() {
        return TAG;
    }

    static void setFactory(Factory factory) {
        sFactory = factory;
    }

    static TaskPositioner create(WindowManagerService service) {
        if (sFactory == null) {
            sFactory = new Factory() { // from class: com.android.server.wm.TaskPositioner.1
            };
        }
        return sFactory.create(service);
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.mService.mTaskPositioningController.finishTaskPositioning();
    }

    interface Factory {
        default TaskPositioner create(WindowManagerService service) {
            return new TaskPositioner(service);
        }
    }
}
