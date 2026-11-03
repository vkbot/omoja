package com.android.launcher3.model;

import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseLoaderResults {
    protected static final int INVALID_SCREEN_ID = -1;
    private static final int ITEMS_CHUNK = 6;
    protected static final String TAG = "LoaderResults";
    protected final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    protected final BgDataModel mBgDataModel;
    private final BgDataModel.Callbacks[] mCallbacksList;
    private int mMyBindingId;
    protected final LooperExecutor mUiExecutor;

    public abstract void bindDeepShortcuts();

    public abstract void bindWidgets();

    public BaseLoaderResults(LauncherAppState app, BgDataModel dataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacksList, LooperExecutor uiExecutor) {
        this.mUiExecutor = uiExecutor;
        this.mApp = app;
        this.mBgDataModel = dataModel;
        this.mBgAllAppsList = allAppsList;
        this.mCallbacksList = callbacksList;
    }

    public void bindWorkspace() {
        LauncherAppWidgetHost appWidgetHost;
        int[] appWidgetIds;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        IntArray intArray = new IntArray();
        synchronized (this.mBgDataModel) {
            arrayList.addAll(this.mBgDataModel.workspaceItems);
            arrayList.addAll(this.mBgDataModel.emptyScreens);
            arrayList2.addAll(this.mBgDataModel.appWidgets);
            intArray.addAll(this.mBgDataModel.collectWorkspaceScreens());
            this.mBgDataModel.lastBindId++;
            this.mMyBindingId = this.mBgDataModel.lastBindId;
        }
        for (BgDataModel.Callbacks callbacks : this.mCallbacksList) {
            if ((callbacks instanceof Launcher) && (appWidgetHost = ((Launcher) callbacks).getAppWidgetHost()) != null && (appWidgetIds = appWidgetHost.getAppWidgetIds()) != null) {
                List list = (List) arrayList2.stream().map(new Function() { // from class: com.android.launcher3.model.BaseLoaderResults$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Integer.valueOf(((LauncherAppWidgetInfo) obj).appWidgetId);
                    }
                }).collect(Collectors.toList());
                for (int i : appWidgetIds) {
                    if (!list.contains(Integer.valueOf(i))) {
                        appWidgetHost.deleteAppWidgetId(i);
                    }
                }
            }
        }
        for (BgDataModel.Callbacks callbacks2 : this.mCallbacksList) {
            new WorkspaceBinder(callbacks2, this.mUiExecutor, this.mApp, this.mBgDataModel, this.mMyBindingId, arrayList, arrayList2, intArray).bind();
        }
    }

    public void bindAllApps() {
        final AppInfo[] appInfoArrCopyData = this.mBgAllAppsList.copyData();
        final int flags = this.mBgAllAppsList.getFlags();
        executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllApplications(appInfoArrCopyData, flags);
            }
        }, this.mUiExecutor);
    }

    protected void executeCallbacksTask(final LauncherModel.CallbackTask task, Executor executor) {
        executor.execute(new Runnable() { // from class: com.android.launcher3.model.BaseLoaderResults$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m110xe59d560f(task);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$executeCallbacksTask$2$com-android-launcher3-model-BaseLoaderResults, reason: not valid java name */
    /* synthetic */ void m110xe59d560f(LauncherModel.CallbackTask callbackTask) {
        if (this.mMyBindingId != this.mBgDataModel.lastBindId) {
            Log.d(TAG, "Too many consecutive reloads, skipping obsolete data-bind");
            return;
        }
        for (BgDataModel.Callbacks callbacks : this.mCallbacksList) {
            callbackTask.execute(callbacks);
        }
    }

    public LooperIdleLock newIdleLock(Object lock) {
        LooperIdleLock looperIdleLock = new LooperIdleLock(lock, this.mUiExecutor.getLooper());
        if (this.mUiExecutor.getLooper().getQueue().isIdle()) {
            looperIdleLock.queueIdle();
        }
        return looperIdleLock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class WorkspaceBinder {
        private final LauncherAppState mApp;
        private final ArrayList<LauncherAppWidgetInfo> mAppWidgets;
        private final BgDataModel mBgDataModel;
        private final BgDataModel.Callbacks mCallbacks;
        private final int mMyBindingId;
        private final IntArray mOrderedScreenIds;
        private final Executor mUiExecutor;
        private final ArrayList<ItemInfo> mWorkspaceItems;

        WorkspaceBinder(BgDataModel.Callbacks callbacks, Executor uiExecutor, LauncherAppState app, BgDataModel bgDataModel, int myBindingId, ArrayList<ItemInfo> workspaceItems, ArrayList<LauncherAppWidgetInfo> appWidgets, IntArray orderedScreenIds) {
            this.mCallbacks = callbacks;
            this.mUiExecutor = uiExecutor;
            this.mApp = app;
            this.mBgDataModel = bgDataModel;
            this.mMyBindingId = myBindingId;
            this.mWorkspaceItems = workspaceItems;
            this.mAppWidgets = appWidgets;
            this.mOrderedScreenIds = orderedScreenIds;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bind() {
            final int pageToBindSynchronously = this.mCallbacks.getPageToBindSynchronously();
            if (pageToBindSynchronously >= this.mOrderedScreenIds.size()) {
                pageToBindSynchronously = -1;
            }
            final boolean z = pageToBindSynchronously >= 0;
            int i = z ? this.mOrderedScreenIds.get(pageToBindSynchronously) : -1;
            ArrayList<ItemInfo> arrayList = new ArrayList<>();
            ArrayList<ItemInfo> arrayList2 = new ArrayList<>();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ModelUtils.filterCurrentWorkspaceItems(i, this.mWorkspaceItems, arrayList, arrayList2);
            ModelUtils.filterCurrentWorkspaceItems(i, this.mAppWidgets, arrayList3, arrayList4);
            InvariantDeviceProfile invariantDeviceProfile = this.mApp.getInvariantDeviceProfile();
            ModelUtils.sortWorkspaceItemsSpatially(invariantDeviceProfile, arrayList);
            ModelUtils.sortWorkspaceItemsSpatially(invariantDeviceProfile, arrayList2);
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda2
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    BaseLoaderResults.WorkspaceBinder.lambda$bind$0(callbacks);
                }
            }, this.mUiExecutor);
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda3
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    this.f$0.m111x427eb5e8(callbacks);
                }
            }, this.mUiExecutor);
            Executor executor = this.mUiExecutor;
            bindWorkspaceItems(arrayList, executor);
            bindAppWidgets(arrayList3, executor);
            bindPredictedItems(ModelUtils.getMissingHotseatRanks(arrayList, invariantDeviceProfile.numHotseatIcons), executor);
            final Executor viewOnDrawExecutor = z ? new ViewOnDrawExecutor() : executor;
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.finishFirstPageBind(z ? (ViewOnDrawExecutor) viewOnDrawExecutor : null);
                }
            }, executor);
            bindWorkspaceItems(arrayList2, viewOnDrawExecutor);
            bindAppWidgets(arrayList4, viewOnDrawExecutor);
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.finishBindingItems(pageToBindSynchronously);
                }
            }, viewOnDrawExecutor);
            if (z) {
                executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda6
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        BaseLoaderResults.WorkspaceBinder.lambda$bind$4(pageToBindSynchronously, viewOnDrawExecutor, callbacks);
                    }
                }, this.mUiExecutor);
            }
        }

        static /* synthetic */ void lambda$bind$0(BgDataModel.Callbacks callbacks) {
            callbacks.clearPendingBinds();
            callbacks.startBinding();
        }

        /* JADX INFO: renamed from: lambda$bind$1$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder, reason: not valid java name */
        /* synthetic */ void m111x427eb5e8(BgDataModel.Callbacks callbacks) {
            callbacks.bindScreens(this.mOrderedScreenIds);
        }

        static /* synthetic */ void lambda$bind$4(int i, Executor executor, BgDataModel.Callbacks callbacks) {
            callbacks.onPageBoundSynchronously(i);
            callbacks.executeOnNextDraw((ViewOnDrawExecutor) executor);
        }

        private void bindWorkspaceItems(final ArrayList<ItemInfo> workspaceItems, final Executor executor) {
            int size = workspaceItems.size();
            final int i = 0;
            while (i < size) {
                int i2 = i + 6;
                final int i3 = i2 <= size ? 6 : size - i;
                executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        ArrayList arrayList = workspaceItems;
                        int i4 = i;
                        callbacks.bindItems(arrayList.subList(i4, i3 + i4), false);
                    }
                }, executor);
                i = i2;
            }
        }

        private void bindAppWidgets(List<LauncherAppWidgetInfo> appWidgets, Executor executor) {
            int size = appWidgets.size();
            for (int i = 0; i < size; i++) {
                final LauncherAppWidgetInfo launcherAppWidgetInfo = appWidgets.get(i);
                executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda7
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        callbacks.bindItems(Collections.singletonList(launcherAppWidgetInfo), false);
                    }
                }, executor);
            }
        }

        private void bindPredictedItems(final IntArray ranks, final Executor executor) {
            final ArrayList arrayList = new ArrayList(this.mBgDataModel.cachedPredictedItems);
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda0
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindPredictedItems(arrayList, ranks);
                }
            }, executor);
        }

        protected void executeCallbacksTask(final LauncherModel.CallbackTask task, Executor executor) {
            executor.execute(new Runnable() { // from class: com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m112x9caac770(task);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$executeCallbacksTask$8$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder, reason: not valid java name */
        /* synthetic */ void m112x9caac770(LauncherModel.CallbackTask callbackTask) {
            if (this.mMyBindingId != this.mBgDataModel.lastBindId) {
                Log.d(BaseLoaderResults.TAG, "Too many consecutive reloads, skipping obsolete data-bind");
            } else {
                callbackTask.execute(this.mCallbacks);
            }
        }
    }
}
