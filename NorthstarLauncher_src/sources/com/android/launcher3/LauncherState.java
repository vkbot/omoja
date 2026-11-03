package com.android.launcher3;

import android.content.Context;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.HideWorkspaceState;
import com.android.launcher3.states.HintState;
import com.android.launcher3.states.WidgetTableSpringLoadedState;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.uioverrides.states.OverviewState;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class LauncherState implements BaseState<LauncherState> {
    public static final LauncherState ALL_APPS;
    public static final int ALL_APPS_CONTENT = 16;
    public static final int ALL_APPS_HEADER = 4;
    public static final int ALL_APPS_HEADER_EXTRA = 8;
    public static final int APPS_VIEW_ITEM_MASK = 30;
    public static final LauncherState BACKGROUND_APP;
    protected static final PageAlphaProvider DEFAULT_ALPHA_PROVIDER;
    public static final int FLAG_CLOSE_POPUPS;
    public static final int FLAG_HAS_SYS_UI_SCRIM;
    public static final int FLAG_HIDE_BACK_BUTTON;
    public static final int FLAG_OVERVIEW_UI;
    public static final int FLAG_WORKSPACE_HAS_BACKGROUNDS;
    public static final int FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED;
    public static final LauncherState HINT_STATE;
    public static final int HOTSEAT_ICONS = 1;
    public static final int HOTSEAT_SEARCH_BOX = 2;
    public static final int NONE = 0;
    public static final LauncherState NORMAL;
    public static final float NO_OFFSET = 0.0f;
    public static final float NO_SCALE = 1.0f;
    public static final LauncherState OVERVIEW;
    public static final int OVERVIEW_BUTTONS = 64;
    public static final LauncherState OVERVIEW_MODAL_TASK;
    public static final LauncherState OVERVIEW_PEEK;
    public static final LauncherState QUICK_SWITCH;
    public static final LauncherState SPRING_LOADED;
    public static final int VERTICAL_SWIPE_INDICATOR = 32;
    public static final LauncherState WIDGET_SPRING_LOADED;
    public static final LauncherState WORKSPACE_HIDE_STATE;
    private static final LauncherState[] sAllStates;
    public final int containerType;
    private final int mFlags;
    public final int ordinal;
    public final boolean overviewUi;
    public static final int FLAG_MULTI_PAGE = BaseState.getFlag(0);
    public static final int FLAG_WORKSPACE_INACCESSIBLE = BaseState.getFlag(1);

    protected float getDepthUnchecked(Context context) {
        return 0.0f;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public LauncherState getHistoryForState(LauncherState previousState) {
        return NORMAL;
    }

    public float getOverviewFullscreenProgress() {
        return 0.0f;
    }

    public float getOverviewModalness() {
        return 0.0f;
    }

    public float getOverviewScrimAlpha(Launcher launcher) {
        return 0.0f;
    }

    public float getVerticalProgress(Launcher launcher) {
        return 1.0f;
    }

    public float getWorkspaceScrimAlpha(Launcher launcher) {
        return 0.0f;
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean hasFlag(int mask) {
        return (this.mFlags & mask) != 0;
    }

    static {
        int flag = BaseState.getFlag(2);
        FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED = flag;
        FLAG_WORKSPACE_HAS_BACKGROUNDS = BaseState.getFlag(3);
        int flag2 = BaseState.getFlag(4);
        FLAG_HIDE_BACK_BUTTON = flag2;
        int flag3 = BaseState.getFlag(5);
        FLAG_HAS_SYS_UI_SCRIM = flag3;
        FLAG_CLOSE_POPUPS = BaseState.getFlag(6);
        FLAG_OVERVIEW_UI = BaseState.getFlag(7);
        DEFAULT_ALPHA_PROVIDER = new PageAlphaProvider(Interpolators.ACCEL_2) { // from class: com.android.launcher3.LauncherState.1
            @Override // com.android.launcher3.LauncherState.PageAlphaProvider
            public float getPageAlpha(int pageIndex) {
                return 1.0f;
            }
        };
        sAllStates = new LauncherState[11];
        NORMAL = new LauncherState(0, 1, flag | 2 | flag2 | flag3) { // from class: com.android.launcher3.LauncherState.2
            @Override // com.android.launcher3.statemanager.BaseState
            public int getTransitionDuration(Context context) {
                return 0;
            }

            @Override // com.android.launcher3.LauncherState, com.android.launcher3.statemanager.BaseState
            public /* bridge */ /* synthetic */ BaseState getHistoryForState(BaseState previousState) {
                return super.getHistoryForState((LauncherState) previousState);
            }
        };
        WidgetTableSpringLoadedState widgetTableSpringLoadedState = new WidgetTableSpringLoadedState(9);
        WIDGET_SPRING_LOADED = widgetTableSpringLoadedState;
        WORKSPACE_HIDE_STATE = new HideWorkspaceState(10);
        SPRING_LOADED = widgetTableSpringLoadedState;
        ALL_APPS = new AllAppsState(6);
        HINT_STATE = new HintState(8);
        OVERVIEW = new OverviewState(2);
        OVERVIEW_PEEK = OverviewState.newPeekState(3);
        OVERVIEW_MODAL_TASK = OverviewState.newModalTaskState(4);
        QUICK_SWITCH = OverviewState.newSwitchState(5);
        BACKGROUND_APP = OverviewState.newBackgroundState(7);
    }

    public LauncherState(int id, int containerType, int flags) {
        this.containerType = containerType;
        this.mFlags = flags;
        this.overviewUi = (FLAG_OVERVIEW_UI & flags) != 0;
        this.ordinal = id;
        sAllStates[id] = this;
    }

    public static LauncherState[] values() {
        LauncherState[] launcherStateArr = sAllStates;
        return (LauncherState[]) Arrays.copyOf(launcherStateArr, launcherStateArr.length);
    }

    public ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }

    public ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return getWorkspaceScaleAndTranslation(launcher);
    }

    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return launcher.getNormalOverviewScaleAndOffset();
    }

    public ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return new ScaleAndTranslation(1.0f, 0.0f, 0.0f);
    }

    public int getVisibleElements(Launcher launcher) {
        return launcher.getDeviceProfile().isVerticalBarLayout() ? 33 : 35;
    }

    public final float getDepth(Context context) {
        return getDepth(context, BaseDraggingActivity.fromContext(context).getDeviceProfile().isMultiWindowMode);
    }

    public final float getDepth(Context context, boolean isMultiWindowMode) {
        if (isMultiWindowMode) {
            return 0.0f;
        }
        return getDepthUnchecked(context);
    }

    public String getDescription(Launcher launcher) {
        return launcher.getWorkspace().getCurrentPageDescription();
    }

    public PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        if ((this != NORMAL && this != HINT_STATE) || !launcher.getDeviceProfile().shouldFadeAdjacentWorkspaceScreens()) {
            return DEFAULT_ALPHA_PROVIDER;
        }
        final int nextPage = launcher.getWorkspace().getNextPage();
        return new PageAlphaProvider(Interpolators.ACCEL_2) { // from class: com.android.launcher3.LauncherState.3
            @Override // com.android.launcher3.LauncherState.PageAlphaProvider
            public float getPageAlpha(int pageIndex) {
                return pageIndex != nextPage ? 0.0f : 1.0f;
            }
        };
    }

    public String toString() {
        return TestProtocol.stateOrdinalToString(this.ordinal);
    }

    public void onBackPressed(Launcher launcher) {
        if (this != NORMAL) {
            StateManager<LauncherState> stateManager = launcher.getStateManager();
            stateManager.goToState((LauncherState) stateManager.getLastState());
        }
    }

    public static abstract class PageAlphaProvider {
        public final Interpolator interpolator;

        public abstract float getPageAlpha(int pageIndex);

        public PageAlphaProvider(Interpolator interpolator) {
            this.interpolator = interpolator;
        }
    }

    public static class ScaleAndTranslation {
        public float scale;
        public float translationX;
        public float translationY;

        public ScaleAndTranslation(float scale, float translationX, float translationY) {
            this.scale = scale;
            this.translationX = translationX;
            this.translationY = translationY;
        }
    }
}
