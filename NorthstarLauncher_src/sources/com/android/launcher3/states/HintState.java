package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;

/* JADX INFO: loaded from: classes.dex */
public class HintState extends LauncherState {
    private static final int STATE_FLAGS = (FLAG_WORKSPACE_INACCESSIBLE | 2) | FLAG_HAS_SYS_UI_SCRIM;

    @Override // com.android.launcher3.LauncherState
    protected float getDepthUnchecked(Context context) {
        return 0.15f;
    }

    @Override // com.android.launcher3.LauncherState
    public float getOverviewScrimAlpha(Launcher launcher) {
        return 0.4f;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return 80;
    }

    public HintState(int id) {
        super(id, 0, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(0.92f, 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return getHotseatScaleAndTranslation(launcher);
    }
}
