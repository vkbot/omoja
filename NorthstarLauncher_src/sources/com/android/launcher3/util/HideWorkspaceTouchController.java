package com.android.launcher3.util;

import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.R;
import com.android.launcher3.Workspace;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class HideWorkspaceTouchController implements TouchController {
    private static final String TAG = "HideWorkspaceTouchController";
    private static final int TOUCH_GAP = 50;
    private int mLastDownX;
    private int mLastDownY;
    private final Launcher mLauncher;
    private Workspace mWorkspace;
    private int mWorkspaceTopMargin = -1;

    public HideWorkspaceTouchController(Launcher launcher) {
        this.mLauncher = launcher;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent event) {
        if (event.getAction() == 0) {
            this.mLastDownX = (int) event.getX();
            this.mLastDownY = (int) event.getY();
        } else if (event.getAction() == 2) {
            int x = (int) event.getX();
            int y = (int) event.getY();
            int iAbs = Math.abs(x - this.mLastDownX);
            int iAbs2 = Math.abs(y - this.mLastDownY);
            int i = this.mLastDownY;
            if (i - y > 50 && i > this.mWorkspaceTopMargin + 50 && iAbs < iAbs2) {
                MLog.d(TAG, "onControllerTouchEvent: up swipe");
                this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true);
                return true;
            }
            if (y - i > 50 && i < this.mWorkspaceTopMargin - 50 && iAbs < iAbs2) {
                MLog.d(TAG, "onControllerTouchEvent: down swipe");
                this.mLauncher.getStateManager().goToState(LauncherState.WORKSPACE_HIDE_STATE, true);
            }
        } else {
            this.mLastDownX = Integer.MAX_VALUE;
            this.mLastDownY = Integer.MAX_VALUE;
        }
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        Workspace workspace = this.mWorkspace;
        if (workspace == null || workspace.getVisibility() != 8) {
            return false;
        }
        return isEventInWorkspace(ev);
    }

    public void setup(Workspace workspace) {
        this.mWorkspace = workspace;
        if (this.mWorkspaceTopMargin < 0) {
            this.mWorkspaceTopMargin = 1440 - (this.mLauncher.getResources().getDimensionPixelSize(R.dimen.height_launcher_workspace) + this.mLauncher.getResources().getDimensionPixelSize(R.dimen.margin_launcher_workspace));
        }
    }

    private boolean isEventInWorkspace(MotionEvent ev) {
        return ev.getY() >= ((float) this.mWorkspaceTopMargin);
    }
}
