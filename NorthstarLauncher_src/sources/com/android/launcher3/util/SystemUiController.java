package com.android.launcher3.util;

import android.content.Context;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Window;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.Utilities;
import java.util.Arrays;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class SystemUiController {
    public static final int FLAG_DARK_NAV = 2;
    public static final int FLAG_DARK_STATUS = 8;
    public static final int FLAG_LIGHT_NAV = 1;
    public static final int FLAG_LIGHT_STATUS = 4;
    private static final String TAG = "SystemUiController";
    public static final int UI_STATE_BASE_WINDOW = 0;
    public static final int UI_STATE_OVERVIEW = 3;
    public static final int UI_STATE_SCRIM_VIEW = 1;
    public static final int UI_STATE_WIDGET_BOTTOM_SHEET = 2;
    private final int[] mStates = new int[4];
    private final Window mWindow;

    public SystemUiController(Window window) {
        this.mWindow = window;
    }

    public void updateUiState(int uiState, boolean isLight) {
        updateUiState(uiState, isLight ? 5 : 10);
    }

    public void updateUiState(int uiState, int flags) {
        int[] iArr = this.mStates;
        if (iArr[uiState] == flags) {
            return;
        }
        iArr[uiState] = flags;
        int systemUiVisibility = this.mWindow.getDecorView().getSystemUiVisibility();
        int sysUiVisibilityFlags = systemUiVisibility;
        for (int i : this.mStates) {
            sysUiVisibilityFlags = getSysUiVisibilityFlags(i, sysUiVisibilityFlags);
        }
        if (sysUiVisibilityFlags != systemUiVisibility) {
            this.mWindow.getDecorView().setSystemUiVisibility(sysUiVisibilityFlags);
        }
    }

    public int getBaseSysuiVisibility() {
        return getSysUiVisibilityFlags(this.mStates[0], this.mWindow.getDecorView().getSystemUiVisibility());
    }

    private int getSysUiVisibilityFlags(int stateFlag, int currentVisibility) {
        if (Utilities.ATLEAST_OREO) {
            if ((stateFlag & 1) != 0) {
                currentVisibility |= 16;
            } else if ((stateFlag & 2) != 0) {
                currentVisibility &= -17;
            }
        }
        if ((stateFlag & 4) != 0) {
            return currentVisibility | 8192;
        }
        return (stateFlag & 8) != 0 ? currentVisibility & (-8193) : currentVisibility;
    }

    public String toString() {
        return "mStates=" + Arrays.toString(this.mStates);
    }

    public static class HomeIcon {
        public static final String AUTHORITY = "com.android.systemui.statusbar.HomeWidgetStateProvider";
        public static final String KEY_WORKSPACE_STATE = "launcher.widget.state";
        public static final int STATE_HIDE = 1;
        public static final int STATE_SHOW = 2;
        private static final String UPDATE_WIDGET_STATE = "updateWidgetState";

        public static void sendWorkspaceState(final boolean showing, final boolean check) {
            Executors.runOnUiHelper(SystemUiController.TAG, new Runnable() { // from class: com.android.launcher3.util.SystemUiController$HomeIcon$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SystemUiController.HomeIcon.lambda$sendWorkspaceState$0(showing, check);
                }
            });
        }

        static /* synthetic */ void lambda$sendWorkspaceState$0(boolean z, boolean z2) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int i = z ? 2 : 1;
            if (z2 && i == Settings.Global.getInt(LauncherApplication.get().getContentResolver(), KEY_WORKSPACE_STATE, -1)) {
                MLog.d(SystemUiController.TAG, "sendWorkspaceState: state not changed. " + i);
            } else {
                Settings.Global.putInt(LauncherApplication.get().getContentResolver(), KEY_WORKSPACE_STATE, i);
                MLog.d(SystemUiController.TAG, "sendWorkspaceState: showing=" + z + " check=" + z2 + " value=" + i + " cost=" + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
        }

        public static void animateHomeIconToShow() {
            Executors.runOnUiHelper(SystemUiController.TAG, new Runnable() { // from class: com.android.launcher3.util.SystemUiController$HomeIcon$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SystemUiController.HomeIcon.lambda$animateHomeIconToShow$1();
                }
            });
        }

        static /* synthetic */ void lambda$animateHomeIconToShow$1() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int i = Settings.Global.getInt(LauncherApplication.get().getContentResolver(), KEY_WORKSPACE_STATE, -1);
            if (i != 2) {
                Settings.Global.putInt(LauncherApplication.get().getContentResolver(), KEY_WORKSPACE_STATE, 2);
            } else {
                LauncherApplication.get().getContentResolver().call(AUTHORITY, UPDATE_WIDGET_STATE, (String) null, (Bundle) null);
            }
            MLog.d(SystemUiController.TAG, "animateHomeIconToShow: curState=" + i + " cost=" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public static class DockDialog {
        public static final int STATUS_DOCKER_HIDE = 0;
        public static final int STATUS_DOCKER_SHOW = 1;

        public static boolean isDockDialogShown(Context context) {
            return Settings.Global.getInt(context.getContentResolver(), "KEY_DOCKER_DIALOG_SHOW", 0) == 1;
        }
    }
}
