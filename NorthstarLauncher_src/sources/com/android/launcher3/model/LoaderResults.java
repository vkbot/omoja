package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.widget.WidgetListRowEntry;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LoaderResults extends BaseLoaderResults {
    public LoaderResults(LauncherAppState app, BgDataModel dataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacks) {
        this(app, dataModel, allAppsList, callbacks, Executors.MAIN_EXECUTOR);
    }

    public LoaderResults(LauncherAppState app, BgDataModel dataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacks, LooperExecutor executor) {
        super(app, dataModel, allAppsList, callbacks, executor);
    }

    @Override // com.android.launcher3.model.BaseLoaderResults
    public void bindDeepShortcuts() {
        final HashMap map;
        synchronized (this.mBgDataModel) {
            map = new HashMap(this.mBgDataModel.deepShortcutMap);
        }
        executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.LoaderResults$$ExternalSyntheticLambda1
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindDeepShortcutMap(map);
            }
        }, this.mUiExecutor);
    }

    @Override // com.android.launcher3.model.BaseLoaderResults
    public void bindWidgets() {
        final ArrayList<WidgetListRowEntry> widgetsList = this.mBgDataModel.widgetsModel.getWidgetsList(this.mApp.getContext());
        executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.LoaderResults$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllWidgets(widgetsList, false);
            }
        }, this.mUiExecutor);
    }
}
