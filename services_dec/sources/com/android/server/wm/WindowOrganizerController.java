package com.android.server.wm;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Slog;
import android.view.Surface;
import android.view.SurfaceControl;
import android.window.IDisplayAreaOrganizerController;
import android.window.ITaskOrganizerController;
import android.window.IWindowContainerTransactionCallback;
import android.window.IWindowOrganizerController;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class WindowOrganizerController extends IWindowOrganizerController.Stub implements BLASTSyncEngine.TransactionReadyListener {
    static final int CONTROLLABLE_CONFIGS = 536873984;
    static final int CONTROLLABLE_WINDOW_CONFIGS = 3;
    private static final String TAG = "WindowOrganizerController";
    private static final int TRANSACT_EFFECTS_CLIENT_CONFIG = 1;
    private static final int TRANSACT_EFFECTS_LIFECYCLE = 2;
    final DisplayAreaOrganizerController mDisplayAreaOrganizerController;
    private final WindowManagerGlobalLock mGlobalLock;
    private final ActivityTaskManagerService mService;
    final TaskOrganizerController mTaskOrganizerController;
    private final BLASTSyncEngine mBLASTSyncEngine = new BLASTSyncEngine();
    private final HashMap<Integer, IWindowContainerTransactionCallback> mTransactionCallbacksByPendingSyncId = new HashMap<>();

    WindowOrganizerController(ActivityTaskManagerService atm) {
        this.mService = atm;
        this.mGlobalLock = atm.mGlobalLock;
        this.mTaskOrganizerController = new TaskOrganizerController(this.mService);
        this.mDisplayAreaOrganizerController = new DisplayAreaOrganizerController(this.mService);
    }

    public void applyTransaction(WindowContainerTransaction t) {
        applySyncTransaction(t, null);
    }

    public int applySyncTransaction(WindowContainerTransaction t, IWindowContainerTransactionCallback callback) {
        enforceStackPermission("applySyncTransaction()");
        int syncId = -1;
        if (t == null) {
            throw new IllegalArgumentException("Null transaction passed to applySyncTransaction");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    int effects = 0;
                    if (callback != null) {
                        syncId = startSyncWithOrganizer(callback);
                    }
                    this.mService.deferWindowLayout();
                    try {
                        ArraySet<WindowContainer> haveConfigChanges = new ArraySet<>();
                        Iterator<Map.Entry<IBinder, WindowContainerTransaction.Change>> entries = t.getChanges().entrySet().iterator();
                        while (entries.hasNext()) {
                            Map.Entry<IBinder, WindowContainerTransaction.Change> entry = entries.next();
                            WindowContainer wc = WindowContainer.fromBinder(entry.getKey());
                            if (!wc.isAttached()) {
                                Slog.e(TAG, "Attempt to operate on detached container: " + wc);
                            } else {
                                if (syncId >= 0) {
                                    addToSyncSet(syncId, wc);
                                }
                                int containerEffect = applyWindowContainerChange(wc, entry.getValue());
                                effects |= containerEffect;
                                if ((effects & 2) == 0 && (containerEffect & 1) != 0) {
                                    haveConfigChanges.add(wc);
                                }
                            }
                        }
                        List<WindowContainerTransaction.HierarchyOp> hops = t.getHierarchyOps();
                        int i = 0;
                        int n = hops.size();
                        while (i < n) {
                            WindowContainerTransaction.HierarchyOp hop = hops.get(i);
                            WindowContainer wc2 = WindowContainer.fromBinder(hop.getContainer());
                            if (!wc2.isAttached()) {
                                Slog.e(TAG, "Attempt to operate on detached container: " + wc2);
                            } else {
                                if (syncId >= 0) {
                                    addToSyncSet(syncId, wc2);
                                }
                                effects |= sanitizeAndApplyHierarchyOp(wc2, hop);
                            }
                            i++;
                            entries = entries;
                        }
                        for (Map.Entry<IBinder, WindowContainerTransaction.Change> entry2 : t.getChanges().entrySet()) {
                            Task task = WindowContainer.fromBinder(entry2.getKey()).asTask();
                            Rect surfaceBounds = entry2.getValue().getBoundsChangeSurfaceBounds();
                            if (task != null && task.isAttached()) {
                                if (surfaceBounds != null) {
                                    if (!task.isOrganized()) {
                                        Task parent = task.getParent() != null ? task.getParent().asTask() : null;
                                        if (parent == null || !parent.mCreatedByOrganizer) {
                                            throw new IllegalArgumentException("Can't manipulate non-organized task surface " + task);
                                        }
                                    }
                                    SurfaceControl.Transaction sft = new SurfaceControl.Transaction();
                                    SurfaceControl sc = task.getSurfaceControl();
                                    sft.setPosition(sc, surfaceBounds.left, surfaceBounds.top);
                                    if (surfaceBounds.isEmpty()) {
                                        sft.setWindowCrop(sc, null);
                                    } else {
                                        sft.setWindowCrop(sc, surfaceBounds.width(), surfaceBounds.height());
                                    }
                                    task.setMainWindowSizeChangeTransaction(sft);
                                }
                            }
                        }
                        if ((effects & 2) != 0) {
                            this.mService.mRootWindowContainer.ensureActivitiesVisible(null, 0, true);
                        } else if ((effects & 1) != 0) {
                            Consumer<ActivityRecord> consumerObtainConsumer = PooledLambda.obtainConsumer(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE
                                public final void accept(Object obj, Object obj2, Object obj3) {
                                    ((ActivityRecord) obj).ensureActivityConfiguration(((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue());
                                }
                            }, PooledLambda.__(ActivityRecord.class), 0, true);
                            try {
                                for (int i2 = haveConfigChanges.size() - 1; i2 >= 0; i2--) {
                                    haveConfigChanges.valueAt(i2).forAllActivities(consumerObtainConsumer);
                                }
                                consumerObtainConsumer.recycle();
                            } catch (Throwable th) {
                                consumerObtainConsumer.recycle();
                                throw th;
                            }
                        }
                        if ((effects & 1) == 0) {
                            this.mService.addWindowLayoutReasons(1);
                        }
                        this.mService.continueWindowLayout();
                        if (syncId >= 0) {
                            setSyncReady(syncId);
                        }
                    } catch (Throwable th2) {
                        this.mService.continueWindowLayout();
                        if (syncId >= 0) {
                            setSyncReady(syncId);
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th3;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return syncId;
        } catch (Throwable th4) {
            Binder.restoreCallingIdentity(ident);
            throw th4;
        }
    }

    private int applyChanges(WindowContainer container, WindowContainerTransaction.Change change) {
        int configMask = change.getConfigSetMask() & CONTROLLABLE_CONFIGS;
        int windowMask = change.getWindowSetMask() & 3;
        int effects = 0;
        if (configMask != 0) {
            Configuration c = new Configuration(container.getRequestedOverrideConfiguration());
            c.setTo(change.getConfiguration(), configMask, windowMask);
            container.onRequestedOverrideConfigurationChanged(c);
            resizePinnedStackIfNeeded(container, configMask, windowMask, c);
            effects = 0 | 1;
        }
        if ((change.getChangeMask() & 1) != 0 && container.setFocusable(change.getFocusable())) {
            effects |= 2;
        }
        int windowingMode = change.getWindowingMode();
        if (windowingMode > -1) {
            container.setWindowingMode(windowingMode);
        }
        return effects;
    }

    private int applyTaskChanges(Task tr, WindowContainerTransaction.Change c) {
        int effects = 0;
        SurfaceControl.Transaction t = c.getBoundsChangeTransaction();
        if ((c.getChangeMask() & 8) != 0 && tr.setForceHidden(2, c.getHidden())) {
            effects = 2;
        }
        int childWindowingMode = c.getActivityWindowingMode();
        if (childWindowingMode > -1) {
            tr.setActivityWindowingMode(childWindowingMode);
        }
        if (t != null) {
            tr.setMainWindowSizeChangeTransaction(t);
        }
        Rect enterPipBounds = c.getEnterPipBounds();
        if (enterPipBounds != null) {
            this.mService.mStackSupervisor.updatePictureInPictureMode(tr, enterPipBounds, true);
        }
        return effects;
    }

    private int sanitizeAndApplyHierarchyOp(WindowContainer container, WindowContainerTransaction.HierarchyOp hop) {
        Task task = container.asTask();
        if (task == null) {
            throw new IllegalArgumentException("Invalid container in hierarchy op");
        }
        DisplayContent dc = task.getDisplayContent();
        if (dc == null) {
            Slog.w(TAG, "Container is no longer attached: " + task);
            return 0;
        }
        ActivityStack as = (ActivityStack) task;
        if (hop.isReparent()) {
            boolean isNonOrganizedRootableTask = (task.isRootTask() && !task.mCreatedByOrganizer) || task.getParent().asTask().mCreatedByOrganizer;
            if (isNonOrganizedRootableTask) {
                Task newParent = hop.getNewParent() == null ? null : WindowContainer.fromBinder(hop.getNewParent()).asTask();
                if (task.getParent() != newParent) {
                    if (newParent == null) {
                        as.reparent(dc.getDefaultTaskDisplayArea(), hop.getToTop());
                        return 2;
                    }
                    if (newParent.inMultiWindowMode() && !task.isResizeable() && task.isLeafTask()) {
                        Slog.w(TAG, "Can't support task that doesn't support multi-window mode in multi-window mode... newParent=" + newParent + " task=" + task);
                        return 0;
                    }
                    task.reparent((ActivityStack) newParent, hop.getToTop() ? Integer.MAX_VALUE : Integer.MIN_VALUE, false, "sanitizeAndApplyHierarchyOp");
                    return 2;
                }
                ActivityStack rootTask = (ActivityStack) (newParent != null ? newParent : task.getRootTask());
                if (hop.getToTop()) {
                    as.getDisplayArea().positionStackAtTop(rootTask, false);
                    return 2;
                }
                as.getDisplayArea().positionStackAtBottom(rootTask);
                return 2;
            }
            throw new RuntimeException("Reparenting leaf Tasks is not supported now. " + task);
        }
        if (task.isRootTask()) {
            if (hop.getToTop()) {
                as.getDisplayArea().positionStackAtTop(as, false);
                return 2;
            }
            as.getDisplayArea().positionStackAtBottom(as);
            return 2;
        }
        task.getParent().positionChildAt(hop.getToTop() ? Integer.MAX_VALUE : Integer.MIN_VALUE, task, false);
        return 2;
    }

    private void sanitizeWindowContainer(WindowContainer wc) {
        if (!(wc instanceof Task) && !(wc instanceof DisplayArea)) {
            throw new RuntimeException("Invalid token in task or displayArea transaction");
        }
    }

    private int applyWindowContainerChange(WindowContainer wc, WindowContainerTransaction.Change c) {
        sanitizeWindowContainer(wc);
        int effects = applyChanges(wc, c);
        if (wc instanceof Task) {
            return effects | applyTaskChanges(wc.asTask(), c);
        }
        return effects;
    }

    private void resizePinnedStackIfNeeded(ConfigurationContainer container, int configMask, int windowMask, Configuration config) {
        if ((container instanceof ActivityStack) && (536870912 & configMask) != 0 && (windowMask & 1) != 0) {
            ActivityStack stack = (ActivityStack) container;
            if (stack.inPinnedWindowingMode()) {
                stack.resize(config.windowConfiguration.getBounds(), true, true);
            }
        }
    }

    public ITaskOrganizerController getTaskOrganizerController() {
        enforceStackPermission("getTaskOrganizerController()");
        return this.mTaskOrganizerController;
    }

    public IDisplayAreaOrganizerController getDisplayAreaOrganizerController() {
        enforceStackPermission("getDisplayAreaOrganizerController()");
        return this.mDisplayAreaOrganizerController;
    }

    int startSyncWithOrganizer(IWindowContainerTransactionCallback callback) {
        int id = this.mBLASTSyncEngine.startSyncSet(this);
        this.mTransactionCallbacksByPendingSyncId.put(Integer.valueOf(id), callback);
        return id;
    }

    void setSyncReady(int id) {
        this.mBLASTSyncEngine.setReady(id);
    }

    void addToSyncSet(int syncId, WindowContainer wc) {
        this.mBLASTSyncEngine.addToSyncSet(syncId, wc);
    }

    @Override // com.android.server.wm.BLASTSyncEngine.TransactionReadyListener
    public void onTransactionReady(int mSyncId, Set<WindowContainer> windowContainersReady) {
        IWindowContainerTransactionCallback callback = this.mTransactionCallbacksByPendingSyncId.get(Integer.valueOf(mSyncId));
        SurfaceControl.Transaction mergedTransaction = new SurfaceControl.Transaction();
        for (WindowContainer container : windowContainersReady) {
            container.mergeBlastSyncTransaction(mergedTransaction);
        }
        try {
            callback.onTransactionReady(mSyncId, mergedTransaction);
        } catch (RemoteException e) {
            mergedTransaction.apply();
        }
        this.mTransactionCallbacksByPendingSyncId.remove(Integer.valueOf(mSyncId));
    }

    public boolean takeScreenshot(WindowContainerToken token, SurfaceControl outSurfaceControl) {
        this.mService.mAmInternal.enforceCallingPermission("android.permission.READ_FRAME_BUFFER", "takeScreenshot()");
        WindowContainer wc = WindowContainer.fromBinder(token.asBinder());
        if (wc == null) {
            throw new RuntimeException("Invalid token in screenshot transaction");
        }
        Rect bounds = new Rect();
        wc.getBounds(bounds);
        bounds.offsetTo(0, 0);
        SurfaceControl.ScreenshotGraphicBuffer buffer = SurfaceControl.captureLayers(wc.getSurfaceControl(), bounds, 1.0f);
        if (buffer == null || buffer.getGraphicBuffer() == null) {
            return false;
        }
        SurfaceControl screenshot = this.mService.mWindowManager.mSurfaceControlFactory.apply(null).setName(wc.getName() + " - Organizer Screenshot").setBufferSize(bounds.width(), bounds.height()).setFormat(-3).setParent(wc.getParentSurfaceControl()).setCallsite("WindowOrganizerController.takeScreenshot").build();
        Surface surface = new Surface();
        surface.copyFrom(screenshot);
        surface.attachAndQueueBufferWithColorSpace(buffer.getGraphicBuffer(), null);
        surface.release();
        outSurfaceControl.copyFrom(screenshot, "WindowOrganizerController.takeScreenshot");
        return true;
    }

    private void enforceStackPermission(String func) {
        this.mService.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", func);
    }
}
