package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragView;

/* JADX INFO: loaded from: classes.dex */
public class SpringLoadedState extends LauncherState {
    private static final int STATE_FLAGS = ((((FLAG_MULTI_PAGE | FLAG_WORKSPACE_INACCESSIBLE) | 2) | FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED) | FLAG_WORKSPACE_HAS_BACKGROUNDS) | FLAG_HIDE_BACK_BUTTON;

    @Override // com.android.launcher3.LauncherState
    protected float getDepthUnchecked(Context context) {
        return 0.5f;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return DragView.VIEW_ZOOM_DURATION;
    }

    @Override // com.android.launcher3.LauncherState
    public float getWorkspaceScrimAlpha(Launcher launcher) {
        return 0.3f;
    }

    public SpringLoadedState(int id) {
        super(id, 1, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }
}
