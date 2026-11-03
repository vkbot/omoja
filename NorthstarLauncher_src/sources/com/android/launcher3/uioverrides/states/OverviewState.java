package com.android.launcher3.uioverrides.states;

import android.content.Context;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.android.launcher3.LauncherState;

/* JADX INFO: loaded from: classes.dex */
public class OverviewState extends LauncherState {
    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
    }

    public OverviewState(int id) {
        super(id, 1, 2);
    }

    public static OverviewState newBackgroundState(int id) {
        return new OverviewState(id);
    }

    public static OverviewState newPeekState(int id) {
        return new OverviewState(id);
    }

    public static OverviewState newSwitchState(int id) {
        return new OverviewState(id);
    }

    public static OverviewState newModalTaskState(int id) {
        return new OverviewState(id);
    }
}
