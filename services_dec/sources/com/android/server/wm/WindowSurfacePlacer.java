package com.android.server.wm;

import android.os.Debug;
import android.util.Slog;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class WindowSurfacePlacer {
    static final int SET_ORIENTATION_CHANGE_COMPLETE = 4;
    static final int SET_UPDATE_ROTATION = 1;
    static final int SET_WALLPAPER_ACTION_PENDING = 8;
    private static final String TAG = "WindowManager";
    private int mDeferredRequests;
    private int mLayoutRepeatCount;
    private final WindowManagerService mService;
    private boolean mTraversalScheduled;
    private boolean mInLayout = false;
    private int mDeferDepth = 0;
    private final Traverser mPerformSurfacePlacement = new Traverser();

    private class Traverser implements Runnable {
        private Traverser() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (WindowSurfacePlacer.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowSurfacePlacer.this.performSurfacePlacement();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    WindowSurfacePlacer(WindowManagerService service) {
        this.mService = service;
    }

    void deferLayout() {
        this.mDeferDepth++;
    }

    void continueLayout(boolean hasChanges) {
        int i = this.mDeferDepth - 1;
        this.mDeferDepth = i;
        if (i > 0) {
            return;
        }
        if (hasChanges || this.mDeferredRequests > 0) {
            performSurfacePlacement();
            this.mDeferredRequests = 0;
        }
    }

    boolean isLayoutDeferred() {
        return this.mDeferDepth > 0;
    }

    void performSurfacePlacementIfScheduled() {
        if (this.mTraversalScheduled) {
            performSurfacePlacement();
        }
    }

    final void performSurfacePlacement() {
        performSurfacePlacement(false);
    }

    final void performSurfacePlacement(boolean force) {
        if (this.mDeferDepth > 0 && !force) {
            this.mDeferredRequests++;
            return;
        }
        int loopCount = 6;
        do {
            this.mTraversalScheduled = false;
            performSurfacePlacementLoop();
            this.mService.mAnimationHandler.removeCallbacks(this.mPerformSurfacePlacement);
            loopCount--;
            if (!this.mTraversalScheduled) {
                break;
            }
        } while (loopCount > 0);
        this.mService.mRoot.mWallpaperActionPending = false;
    }

    private void performSurfacePlacementLoop() {
        if (this.mInLayout) {
            Slog.w(TAG, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers=" + Debug.getCallers(3));
            return;
        }
        DisplayContent defaultDisplay = this.mService.getDefaultDisplayContentLocked();
        if (defaultDisplay.mWaitingForConfig || !this.mService.mDisplayReady) {
            return;
        }
        this.mInLayout = true;
        if (!this.mService.mForceRemoves.isEmpty()) {
            while (!this.mService.mForceRemoves.isEmpty()) {
                WindowState ws = this.mService.mForceRemoves.remove(0);
                Slog.i(TAG, "Force removing: " + ws);
                ws.removeImmediately();
            }
            Slog.w(TAG, "Due to memory failure, waiting a bit for next layout");
            Object tmp = new Object();
            synchronized (tmp) {
                try {
                    tmp.wait(250L);
                } catch (InterruptedException e) {
                }
            }
        }
        try {
            this.mService.mRoot.performSurfacePlacement();
            this.mInLayout = false;
            if (this.mService.mRoot.isLayoutNeeded()) {
                int i = this.mLayoutRepeatCount + 1;
                this.mLayoutRepeatCount = i;
                if (i < 6) {
                    requestTraversal();
                } else {
                    Slog.e(TAG, "Performed 6 layouts in a row. Skipping");
                    this.mLayoutRepeatCount = 0;
                }
            } else {
                this.mLayoutRepeatCount = 0;
            }
            if (this.mService.mWindowsChanged && !this.mService.mWindowChangeListeners.isEmpty()) {
                this.mService.mH.removeMessages(19);
                this.mService.mH.sendEmptyMessage(19);
            }
        } catch (RuntimeException e2) {
            this.mInLayout = false;
            Slog.wtf(TAG, "Unhandled exception while laying out windows", e2);
        }
    }

    void debugLayoutRepeats(String msg, int pendingLayoutChanges) {
        if (this.mLayoutRepeatCount >= 4) {
            Slog.v(TAG, "Layouts looping: " + msg + ", mPendingLayoutChanges = 0x" + Integer.toHexString(pendingLayoutChanges));
        }
    }

    boolean isInLayout() {
        return this.mInLayout;
    }

    void requestTraversal() {
        if (this.mTraversalScheduled) {
            return;
        }
        this.mTraversalScheduled = true;
        if (this.mDeferDepth > 0) {
            this.mDeferredRequests++;
        } else {
            this.mService.mAnimationHandler.post(this.mPerformSurfacePlacement);
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "mTraversalScheduled=" + this.mTraversalScheduled);
        pw.println(prefix + "mHoldScreenWindow=" + this.mService.mRoot.mHoldScreenWindow);
        pw.println(prefix + "mObscuringWindow=" + this.mService.mRoot.mObscuringWindow);
    }
}
