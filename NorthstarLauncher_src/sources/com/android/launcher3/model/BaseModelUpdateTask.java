package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.widget.WidgetListRowEntry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseModelUpdateTask implements LauncherModel.ModelUpdateTask {
    private static final boolean DEBUG_TASKS = false;
    private static final String TAG = "BaseModelUpdateTask";
    private AllAppsList mAllAppsList;
    private LauncherAppState mApp;
    private BgDataModel mDataModel;
    private LauncherModel mModel;
    private Executor mUiExecutor;

    public abstract void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps);

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public void init(LauncherAppState app, LauncherModel model, BgDataModel dataModel, AllAppsList allAppsList, Executor uiExecutor) {
        this.mApp = app;
        this.mModel = model;
        this.mDataModel = dataModel;
        this.mAllAppsList = allAppsList;
        this.mUiExecutor = uiExecutor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mModel.isModelLoaded()) {
            execute(this.mApp, this.mDataModel, this.mAllAppsList);
        }
    }

    public final void scheduleCallbackTask(final LauncherModel.CallbackTask task) {
        for (final BgDataModel.Callbacks callbacks : this.mModel.getCallbacks()) {
            this.mUiExecutor.execute(new Runnable() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    task.execute(callbacks);
                }
            });
        }
    }

    public ModelWriter getModelWriter() {
        return this.mModel.getWriter(false, false);
    }

    public void bindUpdatedWorkspaceItems(final ArrayList<WorkspaceItemInfo> updatedShortcuts) {
        if (updatedShortcuts.isEmpty()) {
            return;
        }
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda2
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindWorkspaceItemsChanged(updatedShortcuts);
            }
        });
    }

    public void bindDeepShortcuts(BgDataModel dataModel) {
        final HashMap map = new HashMap(dataModel.deepShortcutMap);
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda3
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindDeepShortcutMap(map);
            }
        });
    }

    public void bindUpdatedWidgets(BgDataModel dataModel, final boolean updateAppsOnly) {
        final ArrayList<WidgetListRowEntry> widgetsList = dataModel.widgetsModel.getWidgetsList(this.mApp.getContext());
        MLog.d(TAG, "bindUpdatedWidgets: " + widgetsList);
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllWidgets(widgetsList, updateAppsOnly);
            }
        });
    }

    public void deleteAndBindComponentsRemoved(final ItemInfoMatcher matcher) {
        getModelWriter().deleteItemsFromDatabase(matcher);
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda1
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindWorkspaceComponentsRemoved(matcher);
            }
        });
    }

    public void bindApplicationsIfNeeded() {
        if (this.mAllAppsList.getAndResetChangeFlag()) {
            final AppInfo[] appInfoArrCopyData = this.mAllAppsList.copyData();
            final int flags = this.mAllAppsList.getFlags();
            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseModelUpdateTask$$ExternalSyntheticLambda5
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindAllApplications(appInfoArrCopyData, flags);
                }
            });
        }
    }
}
