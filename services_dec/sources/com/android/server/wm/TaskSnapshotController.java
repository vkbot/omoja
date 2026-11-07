package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.GraphicBuffer;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RenderNode;
import android.os.Environment;
import android.os.Handler;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseIntArray;
import android.view.DisplayCutout;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.ThreadedRenderer;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.android.internal.graphics.ColorUtils;
import com.android.internal.util.ToBooleanFunction;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.wm.utils.InsetUtils;
import com.google.android.collect.Sets;
import java.io.File;
import java.io.PrintWriter;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class TaskSnapshotController {
    static final int SNAPSHOT_MODE_APP_THEME = 1;
    static final int SNAPSHOT_MODE_NONE = 2;
    static final int SNAPSHOT_MODE_REAL = 0;
    private static final String TAG = "WindowManager";
    private final TaskSnapshotCache mCache;
    private final float mHighResTaskSnapshotScale;
    private final boolean mIsRunningOnIoT;
    private final boolean mIsRunningOnTv;
    private final boolean mIsRunningOnWear;
    private final TaskSnapshotLoader mLoader;
    private final TaskSnapshotPersister mPersister;
    private final WindowManagerService mService;
    private final ArraySet<Task> mSkipClosingAppSnapshotTasks = new ArraySet<>();
    private final ArraySet<Task> mTmpTasks = new ArraySet<>();
    private final Handler mHandler = new Handler();
    private final Rect mTmpRect = new Rect();

    TaskSnapshotController(WindowManagerService service) {
        this.mService = service;
        TaskSnapshotPersister taskSnapshotPersister = new TaskSnapshotPersister(service, new TaskSnapshotPersister.DirectoryResolver() { // from class: com.android.server.wm.-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I
            @Override // com.android.server.wm.TaskSnapshotPersister.DirectoryResolver
            public final File getSystemDirectoryForUser(int i) {
                return Environment.getDataSystemCeDirectory(i);
            }
        });
        this.mPersister = taskSnapshotPersister;
        TaskSnapshotLoader taskSnapshotLoader = new TaskSnapshotLoader(taskSnapshotPersister);
        this.mLoader = taskSnapshotLoader;
        this.mCache = new TaskSnapshotCache(this.mService, taskSnapshotLoader);
        this.mIsRunningOnTv = this.mService.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
        this.mIsRunningOnIoT = this.mService.mContext.getPackageManager().hasSystemFeature("android.hardware.type.embedded");
        this.mIsRunningOnWear = this.mService.mContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        this.mHighResTaskSnapshotScale = this.mService.mContext.getResources().getFloat(R.dimen.config_defaultBinderHeavyHitterWatcherThreshold);
    }

    void systemReady() {
        this.mPersister.start();
    }

    void onTransitionStarting(DisplayContent displayContent) {
        handleClosingApps(displayContent.mClosingApps);
    }

    void notifyAppVisibilityChanged(ActivityRecord appWindowToken, boolean visible) {
        if (!visible) {
            handleClosingApps(Sets.newArraySet(new ActivityRecord[]{appWindowToken}));
        }
    }

    private void handleClosingApps(ArraySet<ActivityRecord> closingApps) {
        if (shouldDisableSnapshots()) {
            return;
        }
        getClosingTasks(closingApps, this.mTmpTasks);
        snapshotTasks(this.mTmpTasks);
        this.mSkipClosingAppSnapshotTasks.clear();
    }

    void addSkipClosingAppSnapshotTasks(ArraySet<Task> tasks) {
        this.mSkipClosingAppSnapshotTasks.addAll((ArraySet<? extends Task>) tasks);
    }

    void snapshotTasks(ArraySet<Task> tasks) {
        snapshotTasks(tasks, false);
    }

    private void snapshotTasks(ArraySet<Task> tasks, boolean allowSnapshotHome) {
        int snapshotMode;
        ActivityManager.TaskSnapshot snapshot;
        for (int i = tasks.size() - 1; i >= 0; i--) {
            Task task = tasks.valueAt(i);
            boolean snapshotHome = allowSnapshotHome && task.isActivityTypeHome();
            if (snapshotHome || (snapshotMode = getSnapshotMode(task)) == 0) {
                snapshot = snapshotTask(task);
            } else if (snapshotMode != 1) {
                if (snapshotMode != 2) {
                    snapshot = null;
                }
            } else {
                snapshot = drawAppThemeSnapshot(task);
            }
            if (snapshot != null) {
                GraphicBuffer buffer = snapshot.getSnapshot();
                if (buffer.getWidth() == 0 || buffer.getHeight() == 0) {
                    buffer.destroy();
                    Slog.e(TAG, "Invalid task snapshot dimensions " + buffer.getWidth() + "x" + buffer.getHeight());
                } else {
                    this.mCache.putSnapshot(task, snapshot);
                    if (!snapshotHome) {
                        this.mPersister.persistSnapshot(task.mTaskId, task.mUserId, snapshot);
                        task.onSnapshotChanged(snapshot);
                    }
                }
            }
        }
    }

    ActivityManager.TaskSnapshot getSnapshot(int taskId, int userId, boolean restoreFromDisk, boolean isLowResolution) {
        return this.mCache.getSnapshot(taskId, userId, restoreFromDisk, isLowResolution && this.mPersister.enableLowResSnapshots());
    }

    public void clearSnapshotCache() {
        this.mCache.clearRunningCache();
    }

    WindowManagerPolicy.StartingSurface createStartingSurface(ActivityRecord activity, ActivityManager.TaskSnapshot snapshot) {
        return TaskSnapshotSurface.create(this.mService, activity, snapshot);
    }

    private ActivityRecord findAppTokenForSnapshot(Task task) {
        return task.getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$TaskSnapshotController$eY4HzOpxvBAchhbObndnIDQqsVs
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TaskSnapshotController.lambda$findAppTokenForSnapshot$1((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$findAppTokenForSnapshot$1(ActivityRecord r) {
        if (r == null || !r.isSurfaceShowing() || r.findMainWindow() == null) {
            return false;
        }
        return r.forAllWindows((ToBooleanFunction<WindowState>) new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y
            public final boolean apply(Object obj) {
                return TaskSnapshotController.lambda$findAppTokenForSnapshot$0((WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ boolean lambda$findAppTokenForSnapshot$0(WindowState ws) {
        return ws.mWinAnimator != null && ws.mWinAnimator.getShown() && ws.mWinAnimator.mLastAlpha > 0.0f;
    }

    boolean prepareTaskSnapshot(Task task, int pixelFormat, ActivityManager.TaskSnapshot.Builder builder) {
        ActivityRecord activity;
        int i;
        boolean isTranslucent = false;
        if (!this.mService.mPolicy.isScreenOn() || (activity = findAppTokenForSnapshot(task)) == null || activity.hasCommittedReparentToAnimationLeash()) {
            return false;
        }
        WindowState mainWindow = activity.findMainWindow();
        if (mainWindow == null) {
            Slog.w(TAG, "Failed to take screenshot. No main window for " + task);
            return false;
        }
        if (activity.hasFixedRotationTransform()) {
            return false;
        }
        builder.setIsRealSnapshot(true);
        builder.setId(System.currentTimeMillis());
        builder.setContentInsets(getInsets(mainWindow));
        boolean isWindowTranslucent = mainWindow.getAttrs().format != -1;
        boolean isShowWallpaper = (mainWindow.getAttrs().flags & 1048576) != 0;
        if (pixelFormat == 0) {
            if (this.mPersister.use16BitFormat() && activity.fillsParent() && (!isWindowTranslucent || !isShowWallpaper)) {
                i = 4;
            } else {
                i = 1;
            }
            pixelFormat = i;
        }
        if (PixelFormat.formatHasAlpha(pixelFormat) && (!activity.fillsParent() || isWindowTranslucent)) {
            isTranslucent = true;
        }
        builder.setTopActivityComponent(activity.mActivityComponent);
        builder.setPixelFormat(pixelFormat);
        builder.setIsTranslucent(isTranslucent);
        builder.setOrientation(activity.getTask().getConfiguration().orientation);
        builder.setRotation(activity.getTask().getDisplayContent().getRotation());
        builder.setWindowingMode(task.getWindowingMode());
        builder.setSystemUiVisibility(getSystemUiVisibility(task));
        return true;
    }

    SurfaceControl.ScreenshotGraphicBuffer createTaskSnapshot(Task task, ActivityManager.TaskSnapshot.Builder builder) {
        Point taskSize = new Point();
        SurfaceControl.ScreenshotGraphicBuffer taskSnapshot = createTaskSnapshot(task, this.mHighResTaskSnapshotScale, builder.getPixelFormat(), taskSize);
        builder.setTaskSize(taskSize);
        return taskSnapshot;
    }

    SurfaceControl.ScreenshotGraphicBuffer createTaskSnapshot(Task task, float scaleFraction) {
        return createTaskSnapshot(task, scaleFraction, 1, null);
    }

    SurfaceControl.ScreenshotGraphicBuffer createTaskSnapshot(Task task, float scaleFraction, int pixelFormat, Point outTaskSize) {
        SurfaceControl[] excludeLayers;
        if (task.getSurfaceControl() == null) {
            return null;
        }
        task.getBounds(this.mTmpRect);
        this.mTmpRect.offsetTo(0, 0);
        WindowState imeWindow = task.getDisplayContent().mInputMethodWindow;
        if (imeWindow != null) {
            excludeLayers = new SurfaceControl[]{imeWindow.getSurfaceControl()};
        } else {
            excludeLayers = new SurfaceControl[0];
        }
        SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer = SurfaceControl.captureLayersExcluding(task.getSurfaceControl(), this.mTmpRect, scaleFraction, pixelFormat, excludeLayers);
        if (outTaskSize != null) {
            outTaskSize.x = this.mTmpRect.width();
            outTaskSize.y = this.mTmpRect.height();
        }
        GraphicBuffer buffer = screenshotBuffer != null ? screenshotBuffer.getGraphicBuffer() : null;
        if (buffer == null || buffer.getWidth() <= 1 || buffer.getHeight() <= 1) {
            return null;
        }
        return screenshotBuffer;
    }

    ActivityManager.TaskSnapshot snapshotTask(Task task) {
        return snapshotTask(task, 0);
    }

    ActivityManager.TaskSnapshot snapshotTask(Task task, int pixelFormat) {
        SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer;
        ActivityManager.TaskSnapshot.Builder builder = new ActivityManager.TaskSnapshot.Builder();
        if (!prepareTaskSnapshot(task, pixelFormat, builder) || (screenshotBuffer = createTaskSnapshot(task, builder)) == null) {
            return null;
        }
        builder.setSnapshot(screenshotBuffer.getGraphicBuffer());
        builder.setColorSpace(screenshotBuffer.getColorSpace());
        return builder.build();
    }

    private boolean shouldDisableSnapshots() {
        return this.mIsRunningOnWear || this.mIsRunningOnTv || this.mIsRunningOnIoT;
    }

    private Rect getInsets(WindowState state) {
        Rect insets = minRect(state.getContentInsets(), state.getStableInsets());
        InsetUtils.addInsets(insets, state.mActivityRecord.getLetterboxInsets());
        return insets;
    }

    private Rect minRect(Rect rect1, Rect rect2) {
        return new Rect(Math.min(rect1.left, rect2.left), Math.min(rect1.top, rect2.top), Math.min(rect1.right, rect2.right), Math.min(rect1.bottom, rect2.bottom));
    }

    void getClosingTasks(ArraySet<ActivityRecord> closingApps, ArraySet<Task> outClosingTasks) {
        outClosingTasks.clear();
        for (int i = closingApps.size() - 1; i >= 0; i--) {
            ActivityRecord activity = closingApps.valueAt(i);
            Task task = activity.getTask();
            if (task != null && !task.isVisible() && !this.mSkipClosingAppSnapshotTasks.contains(task)) {
                outClosingTasks.add(task);
            }
        }
    }

    int getSnapshotMode(Task task) {
        ActivityRecord topChild = task.getTopMostActivity();
        if (!task.isActivityTypeStandardOrUndefined() && !task.isActivityTypeAssistant()) {
            return 2;
        }
        if (topChild != null && topChild.shouldUseAppThemeSnapshot()) {
            return 1;
        }
        return 0;
    }

    private ActivityManager.TaskSnapshot drawAppThemeSnapshot(Task task) {
        WindowState mainWindow;
        ActivityRecord topChild = task.getTopMostActivity();
        if (topChild == null || (mainWindow = topChild.findMainWindow()) == null) {
            return null;
        }
        int color = ColorUtils.setAlphaComponent(task.getTaskDescription().getBackgroundColor(), 255);
        WindowManager.LayoutParams attrs = mainWindow.getAttrs();
        InsetsState insetsState = new InsetsState(mainWindow.getInsetsState());
        mergeInsetsSources(insetsState, mainWindow.getRequestedInsetsState());
        Rect systemBarInsets = getSystemBarInsets(mainWindow.getFrameLw(), insetsState);
        TaskSnapshotSurface.SystemBarBackgroundPainter decorPainter = new TaskSnapshotSurface.SystemBarBackgroundPainter(attrs.flags, attrs.privateFlags, attrs.systemUiVisibility, task.getTaskDescription(), this.mHighResTaskSnapshotScale, insetsState);
        int taskWidth = task.getBounds().width();
        int taskHeight = task.getBounds().height();
        float f = this.mHighResTaskSnapshotScale;
        int width = (int) (taskWidth * f);
        int height = (int) (taskHeight * f);
        RenderNode node = RenderNode.create("TaskSnapshotController", null);
        node.setLeftTopRightBottom(0, 0, width, height);
        node.setClipToBounds(false);
        RecordingCanvas c = node.start(width, height);
        c.drawColor(color);
        decorPainter.setInsets(systemBarInsets);
        decorPainter.drawDecors(c, null);
        node.end(c);
        Bitmap hwBitmap = ThreadedRenderer.createHardwareBitmap(node, width, height);
        if (hwBitmap == null) {
            return null;
        }
        return new ActivityManager.TaskSnapshot(System.currentTimeMillis(), topChild.mActivityComponent, hwBitmap.createGraphicBufferHandle(), hwBitmap.getColorSpace(), mainWindow.getConfiguration().orientation, mainWindow.getWindowConfiguration().getRotation(), new Point(taskWidth, taskHeight), getInsets(mainWindow), false, false, task.getWindowingMode(), getSystemUiVisibility(task), false);
    }

    void onAppRemoved(ActivityRecord activity) {
        this.mCache.onAppRemoved(activity);
    }

    void onAppDied(ActivityRecord activity) {
        this.mCache.onAppDied(activity);
    }

    void notifyTaskRemovedFromRecents(int taskId, int userId) {
        this.mCache.onTaskRemoved(taskId);
        this.mPersister.onTaskRemovedFromRecents(taskId, userId);
    }

    void removeSnapshotCache(int taskId) {
        this.mCache.removeRunningEntry(taskId);
    }

    void removeObsoleteTaskFiles(ArraySet<Integer> persistentTaskIds, int[] runningUserIds) {
        this.mPersister.removeObsoleteFiles(persistentTaskIds, runningUserIds);
    }

    void setPersisterPaused(boolean paused) {
        this.mPersister.setPaused(paused);
    }

    void screenTurningOff(final WindowManagerPolicy.ScreenOffListener listener) {
        if (shouldDisableSnapshots()) {
            listener.onScreenOff();
        } else {
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskSnapshotController$Tj7bQvjfkzsOjJOdJXBpqCZnW1Q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$screenTurningOff$3$TaskSnapshotController(listener);
                }
            });
        }
    }

    public /* synthetic */ void lambda$screenTurningOff$3$TaskSnapshotController(WindowManagerPolicy.ScreenOffListener listener) {
        try {
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mTmpTasks.clear();
                    this.mService.mRoot.forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$TaskSnapshotController$pF831VjVO7J7eXZhalKp1CJKNC4
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$screenTurningOff$2$TaskSnapshotController((Task) obj);
                        }
                    });
                    boolean allowSnapshotHome = this.mService.mPolicy.isKeyguardSecure(this.mService.mCurrentUserId);
                    snapshotTasks(this.mTmpTasks, allowSnapshotHome);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            listener.onScreenOff();
        } catch (Throwable th2) {
            listener.onScreenOff();
            throw th2;
        }
    }

    public /* synthetic */ void lambda$screenTurningOff$2$TaskSnapshotController(Task task) {
        if (task.isVisible()) {
            this.mTmpTasks.add(task);
        }
    }

    private int getSystemUiVisibility(Task task) {
        WindowState topFullscreenOpaqueWindow;
        ActivityRecord topFullscreenActivity = task.getTopFullscreenActivity();
        if (topFullscreenActivity != null) {
            topFullscreenOpaqueWindow = topFullscreenActivity.getTopFullscreenOpaqueWindow();
        } else {
            topFullscreenOpaqueWindow = null;
        }
        if (topFullscreenOpaqueWindow != null) {
            return topFullscreenOpaqueWindow.getSystemUiVisibility();
        }
        return 0;
    }

    static void mergeInsetsSources(InsetsState base, InsetsState other) {
        for (int type = 0; type < 20; type++) {
            InsetsSource source = other.peekSource(type);
            if (source != null) {
                base.addSource(source);
            }
        }
    }

    static Rect getSystemBarInsets(Rect frame, InsetsState state) {
        return state.calculateInsets(frame, (InsetsState) null, false, false, (DisplayCutout) null, 0, 0, 0, (SparseIntArray) null).getInsets(WindowInsets.Type.systemBars()).toRect();
    }

    void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "mHighResTaskSnapshotScale=" + this.mHighResTaskSnapshotScale);
        this.mCache.dump(pw, prefix);
    }
}
