package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.LauncherState;
import com.android.launcher3.R;
import com.android.launcher3.anim.Interpolators;

/* JADX INFO: loaded from: classes.dex */
public class HideWorkspaceState extends LauncherState {
    public static final int HIDE_WORKSPACE_DURATION = 400;
    private static final LauncherState.PageAlphaProvider PAGE_ALPHA_PROVIDER = new LauncherState.PageAlphaProvider(Interpolators.DEACCEL_2) { // from class: com.android.launcher3.states.HideWorkspaceState.1
        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public float getPageAlpha(int pageIndex) {
            return 0.0f;
        }
    };
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
        return 400;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        return PAGE_ALPHA_PROVIDER;
    }

    public HideWorkspaceState(int id) {
        super(id, 0, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(1.0f, 0.0f, LauncherApplication.get().getResources().getDimensionPixelSize(R.dimen.height_launcher_celllayout) + LauncherApplication.get().getResources().getDimensionPixelSize(R.dimen.northstar_navigation_bar_height));
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return getHotseatScaleAndTranslation(launcher);
    }
}
