package com.android.launcher3.states;

import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;

/* JADX INFO: loaded from: classes.dex */
public class WidgetTableSpringLoadedState extends SpringLoadedState {
    public WidgetTableSpringLoadedState(int id) {
        super(id);
    }

    @Override // com.android.launcher3.states.SpringLoadedState, com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        launcher.getDeviceProfile();
        if (launcher.getWorkspace().getChildCount() == 0) {
            return super.getWorkspaceScaleAndTranslation(launcher);
        }
        return new LauncherState.ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }
}
