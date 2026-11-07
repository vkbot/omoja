package com.android.server.wm;

import android.content.Context;
import android.os.Trace;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.view.Choreographer;
import android.view.SurfaceControl;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class WindowAnimator {
    private static final String TAG = "WindowManager";
    final Choreographer.FrameCallback mAnimationFrameCallback;
    private boolean mAnimationFrameCallbackScheduled;
    private Choreographer mChoreographer;
    final Context mContext;
    long mCurrentTime;
    private boolean mInExecuteAfterPrepareSurfacesRunnables;
    private boolean mLastRootAnimating;
    Object mLastWindowFreezeSource;
    final WindowManagerPolicy mPolicy;
    private boolean mRunningExpensiveAnimations;
    final WindowManagerService mService;
    private final SurfaceControl.Transaction mTransaction;
    int mBulkUpdateParams = 0;
    SparseArray<DisplayContentsAnimator> mDisplayContentsAnimators = new SparseArray<>(2);
    private boolean mInitialized = false;
    private boolean mRemoveReplacedWindows = false;
    boolean mNotifyWhenNoAnimation = false;
    private final ArrayList<Runnable> mAfterPrepareSurfacesRunnables = new ArrayList<>();

    WindowAnimator(WindowManagerService service) {
        this.mService = service;
        this.mContext = service.mContext;
        this.mPolicy = service.mPolicy;
        this.mTransaction = service.mTransactionFactory.get();
        service.mAnimationHandler.runWithScissors(new Runnable() { // from class: com.android.server.wm.-$$Lambda$WindowAnimator$U3Fu5_RzEyNo8Jt6zTb2ozdXiqM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$WindowAnimator();
            }
        }, 0L);
        this.mAnimationFrameCallback = new Choreographer.FrameCallback() { // from class: com.android.server.wm.-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                this.f$0.lambda$new$1$WindowAnimator(j);
            }
        };
    }

    public /* synthetic */ void lambda$new$0$WindowAnimator() {
        this.mChoreographer = Choreographer.getSfInstance();
    }

    public /* synthetic */ void lambda$new$1$WindowAnimator(long frameTimeNs) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mAnimationFrameCallbackScheduled = false;
                animate(frameTimeNs);
                if (this.mNotifyWhenNoAnimation && !this.mLastRootAnimating) {
                    this.mService.mGlobalLock.notifyAll();
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void addDisplayLocked(int displayId) {
        getDisplayContentsAnimatorLocked(displayId);
    }

    void removeDisplayLocked(int displayId) {
        this.mDisplayContentsAnimators.delete(displayId);
    }

    void ready() {
        this.mInitialized = true;
    }

    private void animate(long frameTimeNs) {
        if (!this.mInitialized) {
            return;
        }
        scheduleAnimation();
        this.mCurrentTime = frameTimeNs / 1000000;
        this.mBulkUpdateParams = 4;
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 1984782949, 0, null, (Object[]) null);
        }
        this.mService.openSurfaceTransaction();
        try {
            this.mService.mRoot.handleCompleteDeferredRemoval();
            AccessibilityController accessibilityController = this.mService.mAccessibilityController;
            int numDisplays = this.mDisplayContentsAnimators.size();
            for (int i = 0; i < numDisplays; i++) {
                DisplayContent dc = this.mService.mRoot.getDisplayContent(this.mDisplayContentsAnimators.keyAt(i));
                dc.updateWindowsForAnimator();
                dc.prepareSurfaces();
            }
            for (int i2 = 0; i2 < numDisplays; i2++) {
                int displayId = this.mDisplayContentsAnimators.keyAt(i2);
                this.mService.mRoot.getDisplayContent(displayId).checkAppWindowsReadyToShow();
                if (accessibilityController != null) {
                    accessibilityController.drawMagnifiedRegionBorderIfNeededLocked(displayId, this.mTransaction);
                }
            }
            cancelAnimation();
            if (this.mService.mWatermark != null) {
                this.mService.mWatermark.drawIfNeeded();
            }
        } catch (RuntimeException e) {
            Slog.wtf(TAG, "Unhandled exception in Window Manager", e);
        }
        boolean hasPendingLayoutChanges = this.mService.mRoot.hasPendingLayoutChanges(this);
        boolean doRequest = this.mBulkUpdateParams != 0 && this.mService.mRoot.copyAnimToLayoutParams();
        if (hasPendingLayoutChanges || doRequest) {
            this.mService.mWindowPlacerLocked.requestTraversal();
        }
        boolean rootAnimating = this.mService.mRoot.isAnimating(5, -1);
        if (rootAnimating && !this.mLastRootAnimating) {
            Trace.asyncTraceBegin(32L, "animating", 0);
        }
        if (!rootAnimating && this.mLastRootAnimating) {
            this.mService.mWindowPlacerLocked.requestTraversal();
            Trace.asyncTraceEnd(32L, "animating", 0);
        }
        this.mLastRootAnimating = rootAnimating;
        boolean runningExpensiveAnimations = this.mService.mRoot.isAnimating(5, 11);
        if (runningExpensiveAnimations && !this.mRunningExpensiveAnimations) {
            this.mService.mTaskSnapshotController.setPersisterPaused(true);
            this.mTransaction.setEarlyWakeupStart();
        } else if (!runningExpensiveAnimations && this.mRunningExpensiveAnimations) {
            this.mService.mTaskSnapshotController.setPersisterPaused(false);
            this.mTransaction.setEarlyWakeupEnd();
        }
        this.mRunningExpensiveAnimations = runningExpensiveAnimations;
        SurfaceControl.mergeToGlobalTransaction(this.mTransaction);
        this.mService.closeSurfaceTransaction("WindowAnimator");
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -545190927, 0, null, (Object[]) null);
        }
        if (this.mRemoveReplacedWindows) {
            this.mService.mRoot.removeReplacedWindows();
            this.mRemoveReplacedWindows = false;
        }
        this.mService.destroyPreservedSurfaceLocked();
        executeAfterPrepareSurfacesRunnables();
    }

    private static String bulkUpdateParamsToString(int bulkUpdateParams) {
        StringBuilder builder = new StringBuilder(128);
        if ((bulkUpdateParams & 1) != 0) {
            builder.append(" UPDATE_ROTATION");
        }
        if ((bulkUpdateParams & 4) != 0) {
            builder.append(" ORIENTATION_CHANGE_COMPLETE");
        }
        return builder.toString();
    }

    public void dumpLocked(PrintWriter pw, String prefix, boolean dumpAll) {
        String subPrefix = "  " + prefix;
        for (int i = 0; i < this.mDisplayContentsAnimators.size(); i++) {
            pw.print(prefix);
            pw.print("DisplayContentsAnimator #");
            pw.print(this.mDisplayContentsAnimators.keyAt(i));
            pw.println(":");
            DisplayContent dc = this.mService.mRoot.getDisplayContent(this.mDisplayContentsAnimators.keyAt(i));
            dc.dumpWindowAnimators(pw, subPrefix);
            pw.println();
        }
        pw.println();
        if (dumpAll) {
            pw.print(prefix);
            pw.print("mCurrentTime=");
            pw.println(TimeUtils.formatUptime(this.mCurrentTime));
        }
        if (this.mBulkUpdateParams != 0) {
            pw.print(prefix);
            pw.print("mBulkUpdateParams=0x");
            pw.print(Integer.toHexString(this.mBulkUpdateParams));
            pw.println(bulkUpdateParamsToString(this.mBulkUpdateParams));
        }
    }

    private DisplayContentsAnimator getDisplayContentsAnimatorLocked(int displayId) {
        if (displayId < 0) {
            return null;
        }
        DisplayContentsAnimator displayAnimator = this.mDisplayContentsAnimators.get(displayId);
        if (displayAnimator == null && this.mService.mRoot.getDisplayContent(displayId) != null) {
            DisplayContentsAnimator displayAnimator2 = new DisplayContentsAnimator();
            this.mDisplayContentsAnimators.put(displayId, displayAnimator2);
            return displayAnimator2;
        }
        return displayAnimator;
    }

    void requestRemovalOfReplacedWindows(WindowState win) {
        this.mRemoveReplacedWindows = true;
    }

    void scheduleAnimation() {
        if (!this.mAnimationFrameCallbackScheduled) {
            this.mAnimationFrameCallbackScheduled = true;
            this.mChoreographer.postFrameCallback(this.mAnimationFrameCallback);
        }
    }

    private void cancelAnimation() {
        if (this.mAnimationFrameCallbackScheduled) {
            this.mAnimationFrameCallbackScheduled = false;
            this.mChoreographer.removeFrameCallback(this.mAnimationFrameCallback);
        }
    }

    private class DisplayContentsAnimator {
        private DisplayContentsAnimator() {
        }
    }

    boolean isAnimationScheduled() {
        return this.mAnimationFrameCallbackScheduled;
    }

    Choreographer getChoreographer() {
        return this.mChoreographer;
    }

    void addAfterPrepareSurfacesRunnable(Runnable r) {
        if (this.mInExecuteAfterPrepareSurfacesRunnables) {
            r.run();
        } else {
            this.mAfterPrepareSurfacesRunnables.add(r);
            scheduleAnimation();
        }
    }

    void executeAfterPrepareSurfacesRunnables() {
        if (this.mInExecuteAfterPrepareSurfacesRunnables) {
            return;
        }
        this.mInExecuteAfterPrepareSurfacesRunnables = true;
        int size = this.mAfterPrepareSurfacesRunnables.size();
        for (int i = 0; i < size; i++) {
            this.mAfterPrepareSurfacesRunnables.get(i).run();
        }
        this.mAfterPrepareSurfacesRunnables.clear();
        this.mInExecuteAfterPrepareSurfacesRunnables = false;
    }
}
