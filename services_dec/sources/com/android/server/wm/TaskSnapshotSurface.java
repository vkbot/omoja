package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.ContextImpl;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.GraphicBuffer;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.view.DisplayCutout;
import android.view.IWindowSession;
import android.view.InputChannel;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.ViewRootImpl;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.policy.DecorView;
import com.android.internal.view.BaseIWindow;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
class TaskSnapshotSurface implements WindowManagerPolicy.StartingSurface {
    private static final int FLAG_INHERIT_EXCLUDES = 830922808;
    private static final int MSG_REPORT_DRAW = 0;
    private static final int PRIVATE_FLAG_INHERITS = 131072;
    private static final long SIZE_MISMATCH_MINIMUM_TIME_MS = 450;
    private static final String TAG = "WindowManager";
    private static final String TITLE_FORMAT = "SnapshotStartingWindow for taskId=%s";
    private final int mActivityType;
    private SurfaceControl mChildSurfaceControl;
    private final Handler mHandler;
    private boolean mHasDrawn;
    private final int mOrientationOnCreation;
    private final WindowManagerService mService;
    private long mShownTime;
    private boolean mSizeMismatch;
    private ActivityManager.TaskSnapshot mSnapshot;
    private final int mStatusBarColor;
    private final Surface mSurface;
    private SurfaceControl mSurfaceControl;
    final SystemBarBackgroundPainter mSystemBarBackgroundPainter;
    private final Rect mTaskBounds;
    private final CharSequence mTitle;
    private final SurfaceControl.Transaction mTransaction;
    private final Window mWindow;
    private static final Point sTmpSurfaceSize = new Point();
    private static final SurfaceControl sTmpSurfaceControl = new SurfaceControl();
    private static Handler sHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.server.wm.TaskSnapshotSurface.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            boolean hasDrawn;
            if (msg.what == 0) {
                TaskSnapshotSurface surface = (TaskSnapshotSurface) msg.obj;
                synchronized (surface.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        hasDrawn = surface.mHasDrawn;
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                if (hasDrawn) {
                    surface.reportDrawn();
                }
            }
        }
    };
    private final Rect mFrame = new Rect();
    private final Rect mSystemBarInsets = new Rect();
    private final RectF mTmpSnapshotSize = new RectF();
    private final RectF mTmpDstFrame = new RectF();
    private final Paint mBackgroundPaint = new Paint();
    private final Matrix mSnapshotMatrix = new Matrix();
    private final float[] mTmpFloat9 = new float[9];
    private final IWindowSession mSession = WindowManagerGlobal.getWindowSession();

    /* JADX WARN: Not initialized variable reg: 17, insn: 0x00b6: MOVE (r57 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('mTempControls' android.view.InsetsSourceControl[])]), block:B:23:0x00af */
    static TaskSnapshotSurface create(WindowManagerService service, ActivityRecord activity, ActivityManager.TaskSnapshot snapshot) throws Throwable {
        InsetsState insetsState;
        Rect taskBounds;
        ActivityManager.TaskDescription taskDescription;
        Rect tmpFrame;
        IWindowSession session;
        Window window;
        InsetsSourceControl[] mTempControls;
        int sysUiVis;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        Window window2 = new Window();
        IWindowSession session2 = WindowManagerGlobal.getWindowSession();
        window2.setSession(session2);
        SurfaceControl surfaceControl = new SurfaceControl();
        Rect tmpRect = new Rect();
        DisplayCutout.ParcelableWrapper tmpCutout = new DisplayCutout.ParcelableWrapper();
        Rect tmpFrame2 = new Rect();
        Rect tmpContentInsets = new Rect();
        Rect tmpStableInsets = new Rect();
        InsetsState mTmpInsetsState = new InsetsState();
        InsetsSourceControl[] mTempControls2 = new InsetsSourceControl[0];
        MergedConfiguration tmpMergedConfiguration = new MergedConfiguration();
        ActivityManager.TaskDescription taskDescription2 = new ActivityManager.TaskDescription();
        taskDescription2.setBackgroundColor(-1);
        synchronized (service.mGlobalLock) {
            try {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState mainWindow = activity.findMainWindow();
                    Task task = activity.getTask();
                    if (task == null) {
                        try {
                            Slog.w(TAG, "TaskSnapshotSurface.create: Failed to find task for activity=" + activity);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return null;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        ActivityRecord topFullscreenActivity = activity.getTask().getTopFullscreenActivity();
                        try {
                            if (topFullscreenActivity == null) {
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("TaskSnapshotSurface.create: Failed to find top fullscreen for task=");
                                    sb.append(task);
                                    Slog.w(TAG, sb.toString());
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } else {
                                try {
                                    WindowState topFullscreenOpaqueWindow = topFullscreenActivity.getTopFullscreenOpaqueWindow();
                                    if (mainWindow == null || topFullscreenOpaqueWindow == null) {
                                        Slog.w(TAG, "TaskSnapshotSurface.create: Failed to find main window for activity=" + activity);
                                        WindowManagerService.resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    if (topFullscreenActivity.getWindowConfiguration().getRotation() != snapshot.getRotation()) {
                                        activity.mDisplayContent.handleTopActivityLaunchingInDifferentOrientation(topFullscreenActivity, false);
                                    }
                                    int sysUiVis2 = topFullscreenOpaqueWindow.getSystemUiVisibility();
                                    WindowManager.LayoutParams attrs = topFullscreenOpaqueWindow.mAttrs;
                                    int windowFlags = attrs.flags;
                                    int windowPrivateFlags = attrs.privateFlags;
                                    layoutParams.packageName = mainWindow.getAttrs().packageName;
                                    layoutParams.windowAnimations = mainWindow.getAttrs().windowAnimations;
                                    layoutParams.dimAmount = mainWindow.getAttrs().dimAmount;
                                    layoutParams.type = 3;
                                    layoutParams.format = snapshot.getSnapshot().getFormat();
                                    layoutParams.flags = (windowFlags & (-830922809)) | 8 | 16;
                                    layoutParams.privateFlags = windowPrivateFlags & 131072;
                                    layoutParams.token = activity.token;
                                    layoutParams.width = -1;
                                    layoutParams.height = -1;
                                    layoutParams.systemUiVisibility = sysUiVis2;
                                    layoutParams.insetsFlags.behavior = topFullscreenOpaqueWindow.mAttrs.insetsFlags.behavior;
                                    layoutParams.insetsFlags.appearance = topFullscreenOpaqueWindow.mAttrs.insetsFlags.appearance;
                                    layoutParams.layoutInDisplayCutoutMode = attrs.layoutInDisplayCutoutMode;
                                    layoutParams.setFitInsetsTypes(attrs.getFitInsetsTypes());
                                    layoutParams.setFitInsetsSides(attrs.getFitInsetsSides());
                                    layoutParams.setFitInsetsIgnoringVisibility(attrs.isFitInsetsIgnoringVisibility());
                                    layoutParams.setTitle(String.format(TITLE_FORMAT, Integer.valueOf(task.mTaskId)));
                                    ActivityManager.TaskDescription td = task.getTaskDescription();
                                    if (td != null) {
                                        taskDescription2.copyFromPreserveHiddenFields(td);
                                    }
                                    Rect taskBounds2 = new Rect();
                                    task.getBounds(taskBounds2);
                                    int currentOrientation = topFullscreenOpaqueWindow.getConfiguration().orientation;
                                    int activityType = activity.getActivityType();
                                    InsetsState insetsState2 = new InsetsState(topFullscreenOpaqueWindow.getInsetsState());
                                    TaskSnapshotController.mergeInsetsSources(insetsState2, topFullscreenOpaqueWindow.getRequestedInsetsState());
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    try {
                                        sysUiVis = sysUiVis2;
                                        insetsState = insetsState2;
                                        taskBounds = taskBounds2;
                                        taskDescription = taskDescription2;
                                        mTempControls = mTempControls2;
                                        tmpFrame = tmpFrame2;
                                        session = session2;
                                        window = window2;
                                        try {
                                            int res = session2.addToDisplay(window2, window2.mSeq, layoutParams, 8, activity.getDisplayContent().getDisplayId(), tmpFrame2, tmpRect, tmpRect, tmpCutout, (InputChannel) null, mTmpInsetsState, mTempControls);
                                            if (res < 0) {
                                                Slog.w(TAG, "Failed to add snapshot starting window res=" + res);
                                                return null;
                                            }
                                        } catch (RemoteException e) {
                                        }
                                    } catch (RemoteException e2) {
                                        insetsState = insetsState2;
                                        taskBounds = taskBounds2;
                                        taskDescription = taskDescription2;
                                        tmpFrame = tmpFrame2;
                                        session = session2;
                                        window = window2;
                                        mTempControls = mTempControls2;
                                        sysUiVis = sysUiVis2;
                                    }
                                    TaskSnapshotSurface snapshotSurface = new TaskSnapshotSurface(service, window, surfaceControl, snapshot, layoutParams.getTitle(), taskDescription, sysUiVis, windowFlags, windowPrivateFlags, taskBounds, currentOrientation, activityType, insetsState);
                                    Window window3 = window;
                                    window3.setOuter(snapshotSurface);
                                    try {
                                        try {
                                            session.relayout(window3, window3.mSeq, layoutParams, -1, -1, 0, 0, -1L, tmpFrame, tmpContentInsets, tmpRect, tmpStableInsets, tmpRect, tmpCutout, tmpMergedConfiguration, surfaceControl, mTmpInsetsState, mTempControls, sTmpSurfaceSize, sTmpSurfaceControl);
                                        } catch (RemoteException e3) {
                                        }
                                    } catch (RemoteException e4) {
                                    }
                                    Rect tmpFrame3 = tmpFrame;
                                    Rect systemBarInsets = TaskSnapshotController.getSystemBarInsets(tmpFrame3, insetsState);
                                    snapshotSurface.setFrames(tmpFrame3, systemBarInsets);
                                    snapshotSurface.drawSnapshot();
                                    return snapshotSurface;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            throw th;
        }
    }

    TaskSnapshotSurface(WindowManagerService service, Window window, SurfaceControl surfaceControl, ActivityManager.TaskSnapshot snapshot, CharSequence title, ActivityManager.TaskDescription taskDescription, int sysUiVis, int windowFlags, int windowPrivateFlags, Rect taskBounds, int currentOrientation, int activityType, InsetsState insetsState) {
        this.mService = service;
        this.mSurface = service.mSurfaceFactory.get();
        this.mHandler = new Handler(this.mService.mH.getLooper());
        this.mWindow = window;
        this.mSurfaceControl = surfaceControl;
        this.mSnapshot = snapshot;
        this.mTitle = title;
        int backgroundColor = taskDescription.getBackgroundColor();
        this.mBackgroundPaint.setColor(backgroundColor != 0 ? backgroundColor : -1);
        this.mTaskBounds = taskBounds;
        this.mSystemBarBackgroundPainter = new SystemBarBackgroundPainter(windowFlags, windowPrivateFlags, sysUiVis, taskDescription, 1.0f, insetsState);
        this.mStatusBarColor = taskDescription.getStatusBarColor();
        this.mOrientationOnCreation = currentOrientation;
        this.mActivityType = activityType;
        this.mTransaction = this.mService.mTransactionFactory.get();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.StartingSurface
    public void remove() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long now = SystemClock.uptimeMillis();
                if (this.mSizeMismatch && now - this.mShownTime < SIZE_MISMATCH_MINIMUM_TIME_MS && this.mActivityType != 2) {
                    this.mHandler.postAtTime(new $$Lambda$OevXHSXgaSE351ZqRnMoA024MM(this), this.mShownTime + SIZE_MISMATCH_MINIMUM_TIME_MS);
                    if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                        long protoLogParam0 = now - this.mShownTime;
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -2002500255, 1, null, Long.valueOf(protoLogParam0));
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                try {
                    if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -405536909, 0, null, (Object[]) null);
                    }
                    this.mSession.remove(this.mWindow);
                } catch (RemoteException e) {
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    void setFrames(Rect frame, Rect systemBarInsets) {
        this.mFrame.set(frame);
        this.mSystemBarInsets.set(systemBarInsets);
        this.mSizeMismatch = (this.mFrame.width() == this.mSnapshot.getSnapshot().getWidth() && this.mFrame.height() == this.mSnapshot.getSnapshot().getHeight()) ? false : true;
        this.mSystemBarBackgroundPainter.setInsets(systemBarInsets);
    }

    private void drawSnapshot() {
        this.mSurface.copyFrom(this.mSurfaceControl);
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            boolean protoLogParam0 = this.mSizeMismatch;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1991255017, 3, null, Boolean.valueOf(protoLogParam0));
        }
        boolean protoLogParam1 = this.mSizeMismatch;
        if (protoLogParam1) {
            drawSizeMismatchSnapshot();
        } else {
            drawSizeMatchSnapshot();
        }
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mShownTime = SystemClock.uptimeMillis();
                this.mHasDrawn = true;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        reportDrawn();
        this.mSnapshot = null;
    }

    private void drawSizeMatchSnapshot() {
        this.mSurface.attachAndQueueBufferWithColorSpace(this.mSnapshot.getSnapshot(), this.mSnapshot.getColorSpace());
        this.mSurface.release();
    }

    private void drawSizeMismatchSnapshot() {
        Rect frame;
        if (!this.mSurface.isValid()) {
            throw new IllegalStateException("mSurface does not hold a valid surface.");
        }
        GraphicBuffer buffer = this.mSnapshot.getSnapshot();
        SurfaceSession session = new SurfaceSession();
        boolean aspectRatioMismatch = Math.abs((((float) buffer.getWidth()) / ((float) buffer.getHeight())) - (((float) this.mFrame.width()) / ((float) this.mFrame.height()))) > 0.01f;
        this.mChildSurfaceControl = this.mService.mSurfaceControlFactory.apply(session).setName(((Object) this.mTitle) + " - task-snapshot-surface").setBufferSize(buffer.getWidth(), buffer.getHeight()).setFormat(buffer.getFormat()).setParent(this.mSurfaceControl).setCallsite("TaskSnapshotSurface.drawSizeMismatchSnapshot").build();
        Surface surface = this.mService.mSurfaceFactory.get();
        surface.copyFrom(this.mChildSurfaceControl);
        this.mTransaction.show(this.mChildSurfaceControl);
        if (aspectRatioMismatch) {
            Rect crop = calculateSnapshotCrop();
            frame = calculateSnapshotFrame(crop);
            this.mTransaction.setWindowCrop(this.mChildSurfaceControl, crop);
            this.mTransaction.setPosition(this.mChildSurfaceControl, frame.left, frame.top);
            this.mTmpSnapshotSize.set(crop);
            this.mTmpDstFrame.set(frame);
        } else {
            frame = null;
            this.mTmpSnapshotSize.set(0.0f, 0.0f, buffer.getWidth(), buffer.getHeight());
            this.mTmpDstFrame.set(this.mFrame);
            this.mTmpDstFrame.offsetTo(0.0f, 0.0f);
        }
        this.mSnapshotMatrix.setRectToRect(this.mTmpSnapshotSize, this.mTmpDstFrame, Matrix.ScaleToFit.FILL);
        this.mTransaction.setMatrix(this.mChildSurfaceControl, this.mSnapshotMatrix, this.mTmpFloat9);
        this.mTransaction.apply();
        surface.attachAndQueueBufferWithColorSpace(buffer, this.mSnapshot.getColorSpace());
        surface.release();
        if (aspectRatioMismatch) {
            Canvas c = this.mSurface.lockCanvas(null);
            drawBackgroundAndBars(c, frame);
            this.mSurface.unlockCanvasAndPost(c);
            this.mSurface.release();
        }
    }

    Rect calculateSnapshotCrop() {
        Rect rect = new Rect();
        rect.set(0, 0, this.mSnapshot.getSnapshot().getWidth(), this.mSnapshot.getSnapshot().getHeight());
        Rect insets = this.mSnapshot.getContentInsets();
        float scaleX = this.mSnapshot.getSnapshot().getWidth() / this.mSnapshot.getTaskSize().x;
        float scaleY = this.mSnapshot.getSnapshot().getHeight() / this.mSnapshot.getTaskSize().y;
        boolean isTop = this.mTaskBounds.top == 0 && this.mFrame.top == 0;
        rect.inset((int) (insets.left * scaleX), isTop ? 0 : (int) (insets.top * scaleY), (int) (insets.right * scaleX), (int) (insets.bottom * scaleY));
        return rect;
    }

    Rect calculateSnapshotFrame(Rect crop) {
        float scaleX = this.mSnapshot.getSnapshot().getWidth() / this.mSnapshot.getTaskSize().x;
        float scaleY = this.mSnapshot.getSnapshot().getHeight() / this.mSnapshot.getTaskSize().y;
        Rect frame = new Rect(0, 0, (int) ((crop.width() / scaleX) + 0.5f), (int) ((crop.height() / scaleY) + 0.5f));
        frame.offset(this.mSystemBarInsets.left, 0);
        return frame;
    }

    void drawBackgroundAndBars(Canvas c, Rect frame) {
        float height;
        int statusBarHeight = this.mSystemBarBackgroundPainter.getStatusBarColorViewHeight();
        boolean fillHorizontally = c.getWidth() > frame.right;
        boolean fillVertically = c.getHeight() > frame.bottom;
        if (fillHorizontally) {
            float f = frame.right;
            float f2 = Color.alpha(this.mStatusBarColor) == 255 ? statusBarHeight : 0.0f;
            float width = c.getWidth();
            if (fillVertically) {
                height = frame.bottom;
            } else {
                height = c.getHeight();
            }
            c.drawRect(f, f2, width, height, this.mBackgroundPaint);
        }
        if (fillVertically) {
            c.drawRect(0.0f, frame.bottom, c.getWidth(), c.getHeight(), this.mBackgroundPaint);
        }
        this.mSystemBarBackgroundPainter.drawDecors(c, frame);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportDrawn() {
        try {
            this.mSession.finishDrawing(this.mWindow, (SurfaceControl.Transaction) null);
        } catch (RemoteException e) {
        }
    }

    static class Window extends BaseIWindow {
        private TaskSnapshotSurface mOuter;

        Window() {
        }

        public void setOuter(TaskSnapshotSurface outer) {
            this.mOuter = outer;
        }

        public void resized(Rect frame, Rect contentInsets, Rect visibleInsets, Rect stableInsets, boolean reportDraw, MergedConfiguration mergedConfiguration, Rect backDropFrame, boolean forceLayout, boolean alwaysConsumeSystemBars, int displayId, DisplayCutout.ParcelableWrapper displayCutout) {
            TaskSnapshotSurface taskSnapshotSurface;
            if (mergedConfiguration != null && (taskSnapshotSurface = this.mOuter) != null && taskSnapshotSurface.mOrientationOnCreation != mergedConfiguration.getMergedConfiguration().orientation) {
                Handler handler = TaskSnapshotSurface.sHandler;
                TaskSnapshotSurface taskSnapshotSurface2 = this.mOuter;
                Objects.requireNonNull(taskSnapshotSurface2);
                handler.post(new $$Lambda$OevXHSXgaSE351ZqRnMoA024MM(taskSnapshotSurface2));
            }
            if (reportDraw) {
                TaskSnapshotSurface.sHandler.obtainMessage(0, this.mOuter).sendToTarget();
            }
        }
    }

    static class SystemBarBackgroundPainter {
        private final InsetsState mInsetsState;
        private final int mNavigationBarColor;
        private final float mScale;
        private final int mStatusBarColor;
        private final int mSysUiVis;
        private final int mWindowFlags;
        private final int mWindowPrivateFlags;
        private final Paint mStatusBarPaint = new Paint();
        private final Paint mNavigationBarPaint = new Paint();
        private final Rect mSystemBarInsets = new Rect();

        SystemBarBackgroundPainter(int windowFlags, int windowPrivateFlags, int sysUiVis, ActivityManager.TaskDescription taskDescription, float scale, InsetsState insetsState) {
            this.mWindowFlags = windowFlags;
            this.mWindowPrivateFlags = windowPrivateFlags;
            this.mSysUiVis = sysUiVis;
            this.mScale = scale;
            ContextImpl systemUiContext = ActivityThread.currentActivityThread().getSystemUiContext();
            int semiTransparent = systemUiContext.getColor(R.color.system_accent1_200);
            this.mStatusBarColor = DecorView.calculateBarColor(windowFlags, 67108864, semiTransparent, taskDescription.getStatusBarColor(), sysUiVis, 8192, taskDescription.getEnsureStatusBarContrastWhenTransparent());
            this.mNavigationBarColor = DecorView.calculateBarColor(windowFlags, AudioFormat.OPUS, semiTransparent, taskDescription.getNavigationBarColor(), sysUiVis, 16, taskDescription.getEnsureNavigationBarContrastWhenTransparent() && systemUiContext.getResources().getBoolean(R.bool.config_cecQuerySadMp3Disabled_allowed));
            this.mStatusBarPaint.setColor(this.mStatusBarColor);
            this.mNavigationBarPaint.setColor(this.mNavigationBarColor);
            this.mInsetsState = insetsState;
        }

        void setInsets(Rect systemBarInsets) {
            this.mSystemBarInsets.set(systemBarInsets);
        }

        int getStatusBarColorViewHeight() {
            boolean forceBarBackground = (this.mWindowPrivateFlags & 131072) != 0;
            if (ViewRootImpl.sNewInsetsMode == 2 ? !DecorView.STATUS_BAR_COLOR_VIEW_ATTRIBUTES.isVisible(this.mInsetsState, this.mStatusBarColor, this.mWindowFlags, forceBarBackground) : !DecorView.STATUS_BAR_COLOR_VIEW_ATTRIBUTES.isVisible(this.mSysUiVis, this.mStatusBarColor, this.mWindowFlags, forceBarBackground)) {
                return 0;
            }
            return (int) (this.mSystemBarInsets.top * this.mScale);
        }

        private boolean isNavigationBarColorViewVisible() {
            boolean forceBarBackground = (this.mWindowPrivateFlags & 131072) != 0;
            if (ViewRootImpl.sNewInsetsMode != 2) {
                return DecorView.NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES.isVisible(this.mSysUiVis, this.mNavigationBarColor, this.mWindowFlags, forceBarBackground);
            }
            return DecorView.NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES.isVisible(this.mInsetsState, this.mNavigationBarColor, this.mWindowFlags, forceBarBackground);
        }

        void drawDecors(Canvas c, Rect alreadyDrawnFrame) {
            drawStatusBarBackground(c, alreadyDrawnFrame, getStatusBarColorViewHeight());
            drawNavigationBarBackground(c);
        }

        void drawStatusBarBackground(Canvas c, Rect alreadyDrawnFrame, int statusBarHeight) {
            if (statusBarHeight > 0 && Color.alpha(this.mStatusBarColor) != 0) {
                if (alreadyDrawnFrame == null || c.getWidth() > alreadyDrawnFrame.right) {
                    int rightInset = (int) (this.mSystemBarInsets.right * this.mScale);
                    int left = alreadyDrawnFrame != null ? alreadyDrawnFrame.right : 0;
                    c.drawRect(left, 0.0f, c.getWidth() - rightInset, statusBarHeight, this.mStatusBarPaint);
                }
            }
        }

        void drawNavigationBarBackground(Canvas c) {
            Rect navigationBarRect = new Rect();
            DecorView.getNavigationBarRect(c.getWidth(), c.getHeight(), this.mSystemBarInsets, navigationBarRect, this.mScale);
            boolean visible = isNavigationBarColorViewVisible();
            if (visible && Color.alpha(this.mNavigationBarColor) != 0 && !navigationBarRect.isEmpty()) {
                c.drawRect(navigationBarRect, this.mNavigationBarPaint);
            }
        }
    }
}
