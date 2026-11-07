package com.android.server.wm;

import android.R;
import android.app.RemoteAction;
import android.content.ComponentName;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import android.view.DisplayInfo;
import android.view.IPinnedStackController;
import android.view.IPinnedStackListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class PinnedStackController {
    private static final String TAG = "WindowManager";
    private final PinnedStackControllerCallback mCallbacks;
    private final DisplayContent mDisplayContent;
    private int mImeHeight;
    private boolean mIsImeShowing;
    private boolean mIsPipWindowingModeChanging;
    private float mMaxAspectRatio;
    private float mMinAspectRatio;
    private IPinnedStackListener mPinnedStackListener;
    private final PinnedStackListenerDeathHandler mPinnedStackListenerDeathHandler;
    private final WindowManagerService mService;
    private ArrayList<RemoteAction> mActions = new ArrayList<>();
    private float mAspectRatio = -1.0f;
    private final DisplayInfo mDisplayInfo = new DisplayInfo();
    private final DisplayMetrics mTmpMetrics = new DisplayMetrics();

    private class PinnedStackControllerCallback extends IPinnedStackController.Stub {
        private PinnedStackControllerCallback() {
        }

        public int getDisplayRotation() {
            int i;
            synchronized (PinnedStackController.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    i = PinnedStackController.this.mDisplayInfo.rotation;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return i;
        }
    }

    private class PinnedStackListenerDeathHandler implements IBinder.DeathRecipient {
        private PinnedStackListenerDeathHandler() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            if (PinnedStackController.this.mPinnedStackListener != null) {
                PinnedStackController.this.mPinnedStackListener.asBinder().unlinkToDeath(PinnedStackController.this.mPinnedStackListenerDeathHandler, 0);
            }
            PinnedStackController.this.mPinnedStackListener = null;
        }
    }

    PinnedStackController(WindowManagerService service, DisplayContent displayContent) {
        this.mPinnedStackListenerDeathHandler = new PinnedStackListenerDeathHandler();
        this.mCallbacks = new PinnedStackControllerCallback();
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mDisplayInfo.copyFrom(displayContent.getDisplayInfo());
        reloadResources();
    }

    void onConfigurationChanged() {
        reloadResources();
    }

    private void reloadResources() {
        Resources res = this.mService.mContext.getResources();
        this.mDisplayContent.getDisplay().getRealMetrics(this.mTmpMetrics);
        this.mMinAspectRatio = res.getFloat(R.dimen.activity_embedding_divider_touch_target_height);
        this.mMaxAspectRatio = res.getFloat(R.dimen.activity_embedding_divider_handle_height_pressed);
    }

    void registerPinnedStackListener(IPinnedStackListener listener) {
        try {
            listener.asBinder().linkToDeath(this.mPinnedStackListenerDeathHandler, 0);
            listener.onListenerRegistered(this.mCallbacks);
            this.mPinnedStackListener = listener;
            notifyDisplayInfoChanged(this.mDisplayInfo);
            notifyImeVisibilityChanged(this.mIsImeShowing, this.mImeHeight);
            notifyMovementBoundsChanged(false);
            notifyActionsChanged(this.mActions);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to register pinned stack listener", e);
        }
    }

    public boolean isValidPictureInPictureAspectRatio(float aspectRatio) {
        return Float.compare(this.mMinAspectRatio, aspectRatio) <= 0 && Float.compare(aspectRatio, this.mMaxAspectRatio) <= 0;
    }

    boolean isPipActiveOrWindowingModeChanging() {
        if (this.mIsPipWindowingModeChanging) {
            return true;
        }
        Task pinnedTask = this.mDisplayContent.getDefaultTaskDisplayArea().getRootPinnedTask();
        return pinnedTask != null && pinnedTask.hasChild();
    }

    void setPipWindowingModeChanging(boolean isPipWindowingModeChanging) {
        this.mIsPipWindowingModeChanging = isPipWindowingModeChanging;
    }

    void onActivityHidden(ComponentName componentName) {
        IPinnedStackListener iPinnedStackListener = this.mPinnedStackListener;
        if (iPinnedStackListener == null) {
            return;
        }
        try {
            iPinnedStackListener.onActivityHidden(componentName);
        } catch (RemoteException e) {
            Slog.e(TAG, "Error delivering reset reentry fraction event.", e);
        }
    }

    private void setDisplayInfo(DisplayInfo displayInfo) {
        this.mDisplayInfo.copyFrom(displayInfo);
        notifyDisplayInfoChanged(this.mDisplayInfo);
    }

    void onDisplayInfoChanged(DisplayInfo displayInfo) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                setDisplayInfo(displayInfo);
                notifyMovementBoundsChanged(false);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void setAdjustedForIme(boolean adjustedForIme, int imeHeight) {
        boolean imeShowing = adjustedForIme && imeHeight > 0;
        int imeHeight2 = imeShowing ? imeHeight : 0;
        if (imeShowing == this.mIsImeShowing && imeHeight2 == this.mImeHeight) {
            return;
        }
        this.mIsImeShowing = imeShowing;
        this.mImeHeight = imeHeight2;
        notifyImeVisibilityChanged(imeShowing, imeHeight2);
        notifyMovementBoundsChanged(true);
    }

    void setAspectRatio(float aspectRatio) {
        if (Float.compare(this.mAspectRatio, aspectRatio) != 0) {
            this.mAspectRatio = aspectRatio;
            notifyAspectRatioChanged(aspectRatio);
            notifyMovementBoundsChanged(false);
        }
    }

    float getAspectRatio() {
        return this.mAspectRatio;
    }

    void setActions(List<RemoteAction> actions) {
        this.mActions.clear();
        if (actions != null) {
            this.mActions.addAll(actions);
        }
        notifyActionsChanged(this.mActions);
    }

    private void notifyImeVisibilityChanged(boolean imeVisible, int imeHeight) {
        IPinnedStackListener iPinnedStackListener = this.mPinnedStackListener;
        if (iPinnedStackListener != null) {
            try {
                iPinnedStackListener.onImeVisibilityChanged(imeVisible, imeHeight);
            } catch (RemoteException e) {
                Slog.e(TAG, "Error delivering bounds changed event.", e);
            }
        }
    }

    private void notifyAspectRatioChanged(float aspectRatio) {
        IPinnedStackListener iPinnedStackListener = this.mPinnedStackListener;
        if (iPinnedStackListener == null) {
            return;
        }
        try {
            iPinnedStackListener.onAspectRatioChanged(aspectRatio);
        } catch (RemoteException e) {
            Slog.e(TAG, "Error delivering aspect ratio changed event.", e);
        }
    }

    private void notifyActionsChanged(List<RemoteAction> actions) {
        IPinnedStackListener iPinnedStackListener = this.mPinnedStackListener;
        if (iPinnedStackListener != null) {
            try {
                iPinnedStackListener.onActionsChanged(new ParceledListSlice(actions));
            } catch (RemoteException e) {
                Slog.e(TAG, "Error delivering actions changed event.", e);
            }
        }
    }

    private void notifyMovementBoundsChanged(boolean fromImeAdjustment) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mPinnedStackListener == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                try {
                    this.mPinnedStackListener.onMovementBoundsChanged(fromImeAdjustment);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Error delivering actions changed event.", e);
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private void notifyDisplayInfoChanged(DisplayInfo displayInfo) {
        IPinnedStackListener iPinnedStackListener = this.mPinnedStackListener;
        if (iPinnedStackListener == null) {
            return;
        }
        try {
            iPinnedStackListener.onDisplayInfoChanged(displayInfo);
        } catch (RemoteException e) {
            Slog.e(TAG, "Error delivering DisplayInfo changed event.", e);
        }
    }

    void dump(String prefix, PrintWriter pw) {
        pw.println(prefix + "PinnedStackController");
        pw.println(prefix + "  mIsImeShowing=" + this.mIsImeShowing);
        pw.println(prefix + "  mImeHeight=" + this.mImeHeight);
        pw.println(prefix + "  mAspectRatio=" + this.mAspectRatio);
        pw.println(prefix + "  mMinAspectRatio=" + this.mMinAspectRatio);
        pw.println(prefix + "  mMaxAspectRatio=" + this.mMaxAspectRatio);
        if (this.mActions.isEmpty()) {
            pw.println(prefix + "  mActions=[]");
        } else {
            pw.println(prefix + "  mActions=[");
            for (int i = 0; i < this.mActions.size(); i++) {
                RemoteAction action = this.mActions.get(i);
                pw.print(prefix + "    Action[" + i + "]: ");
                action.dump("", pw);
            }
            pw.println(prefix + "  ]");
        }
        pw.println(prefix + "  mDisplayInfo=" + this.mDisplayInfo);
    }
}
