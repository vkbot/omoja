package com.android.launcher3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.AddWorkspaceItemsTask;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.CacheDataUpdatedTask;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.PackageUpdatedTask;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.function.Supplier;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherModel extends LauncherApps.Callback {
    private static final boolean DEBUG_RECEIVER = false;
    static final String TAG = "Launcher.Model";
    private final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    private boolean mIsLoaderTaskRunning;
    private LoaderTask mLoaderTask;
    private boolean mModelLoaded;
    private final Object mLock = new Object();
    private final LooperExecutor mMainExecutor = Executors.MAIN_EXECUTOR;
    private final ArrayList<BgDataModel.Callbacks> mCallbacksList = new ArrayList<>(1);
    private final BgDataModel mBgDataModel = new BgDataModel();
    private final Runnable mShortcutPermissionCheckRunnable = new Runnable() { // from class: com.android.launcher3.LauncherModel.1
        @Override // java.lang.Runnable
        public void run() {
            if (!LauncherModel.this.mModelLoaded || PackageManagerHelper.hasShortcutsPermission(LauncherModel.this.mApp.getContext()) == LauncherModel.this.mBgAllAppsList.hasShortcutHostPermission()) {
                return;
            }
            LauncherModel.this.forceReload();
        }
    };

    public interface CallbackTask {
        void execute(BgDataModel.Callbacks callbacks);
    }

    public interface ModelUpdateTask extends Runnable {
        void init(LauncherAppState app, LauncherModel model, BgDataModel dataModel, AllAppsList allAppsList, Executor uiExecutor);
    }

    public BgDataModel getBgDataModel() {
        return this.mBgDataModel;
    }

    public boolean isModelLoaded() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mModelLoaded && this.mLoaderTask == null;
        }
        return z;
    }

    LauncherModel(LauncherAppState app, IconCache iconCache, AppFilter appFilter) {
        this.mApp = app;
        this.mBgAllAppsList = new AllAppsList(iconCache, appFilter);
    }

    public void addAndBindAddedWorkspaceItems(List<Pair<ItemInfo, Object>> itemList) {
        for (BgDataModel.Callbacks callbacks : getCallbacks()) {
            callbacks.preAddApps();
        }
        enqueueModelUpdateTask(new AddWorkspaceItemsTask(itemList));
    }

    public ModelWriter getWriter(boolean hasVerticalHotseat, boolean verifyChanges) {
        return new ModelWriter(this.mApp.getContext(), this, this.mBgDataModel, hasVerticalHotseat, verifyChanges);
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageChanged(String packageName, UserHandle user) {
        MLog.i(TAG, "onPackageChanged: packageName=" + packageName + " " + user);
        enqueueModelUpdateTask(new PackageUpdatedTask(2, user, packageName));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageRemoved(String packageName, UserHandle user) {
        onPackagesRemoved(user, packageName);
    }

    public void onPackagesRemoved(UserHandle user, String... packages) {
        MLog.i(TAG, "onPackagesRemoved: packageName=" + Utilities.joinToString(packages) + " " + user);
        FileLog.d(TAG, "package removed received " + TextUtils.join(",", packages));
        enqueueModelUpdateTask(new PackageUpdatedTask(3, user, packages));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackageAdded(String packageName, UserHandle user) {
        MLog.i(TAG, "onPackageAdded: packageName=" + packageName + " " + user);
        enqueueModelUpdateTask(new PackageUpdatedTask(1, user, packageName));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesAvailable(String[] packageNames, UserHandle user, boolean replacing) {
        MLog.i(TAG, "onPackagesAvailable: " + Utilities.joinToString(packageNames) + " " + user);
        enqueueModelUpdateTask(new PackageUpdatedTask(2, user, packageNames));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesUnavailable(String[] packageNames, UserHandle user, boolean replacing) {
        MLog.i(TAG, "onPackagesUnavailable: " + Utilities.joinToString(packageNames) + " " + user);
        if (replacing) {
            return;
        }
        enqueueModelUpdateTask(new PackageUpdatedTask(4, user, packageNames));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesSuspended(String[] packageNames, UserHandle user) {
        enqueueModelUpdateTask(new PackageUpdatedTask(5, user, packageNames));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onPackagesUnsuspended(String[] packageNames, UserHandle user) {
        enqueueModelUpdateTask(new PackageUpdatedTask(6, user, packageNames));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public void onShortcutsChanged(String packageName, List<ShortcutInfo> shortcuts, UserHandle user) {
        enqueueModelUpdateTask(new ShortcutsChangedTask(packageName, shortcuts, user, true));
    }

    public void onAppIconChanged(String packageName, UserHandle user) {
        Context context = this.mApp.getContext();
        onPackageChanged(packageName, user);
        ShortcutRequest.QueryResult queryResultQuery = new ShortcutRequest(context, user).forPackage(packageName).query(2);
        if (queryResultQuery.isEmpty()) {
            return;
        }
        enqueueModelUpdateTask(new ShortcutsChangedTask(packageName, queryResultQuery, user, false));
    }

    public void onBroadcastIntent(Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            forceReload();
            return;
        }
        if (LauncherAppState.ACTION_FORCE_ROLOAD.equals(action)) {
            for (BgDataModel.Callbacks callbacks : getCallbacks()) {
                if (callbacks instanceof Launcher) {
                    ((Launcher) callbacks).recreate();
                }
            }
        }
    }

    public void forceReload() {
        synchronized (this.mLock) {
            stopLoader();
            this.mModelLoaded = false;
        }
        if (hasCallbacks()) {
            startLoader();
        }
    }

    public void rebindCallbacks() {
        if (hasCallbacks()) {
            startLoader();
        }
    }

    public void removeCallbacks(BgDataModel.Callbacks callbacks) {
        synchronized (this.mCallbacksList) {
            Preconditions.assertUIThread();
            if (this.mCallbacksList.remove(callbacks) && stopLoader()) {
                startLoader();
            }
        }
    }

    public boolean addCallbacksAndLoad(BgDataModel.Callbacks callbacks) {
        boolean zStartLoader;
        synchronized (this.mLock) {
            addCallbacks(callbacks);
            zStartLoader = startLoader();
        }
        return zStartLoader;
    }

    public void addCallbacks(BgDataModel.Callbacks callbacks) {
        Preconditions.assertUIThread();
        synchronized (this.mCallbacksList) {
            this.mCallbacksList.add(callbacks);
        }
    }

    public boolean startLoader() {
        MLog.d(TAG, "startLoader: " + Utilities.getStackTraceSingleLine(new Throwable()));
        InstallShortcutReceiver.enableInstallQueue(2);
        synchronized (this.mLock) {
            BgDataModel.Callbacks[] callbacks = getCallbacks();
            if (callbacks.length > 0) {
                for (final BgDataModel.Callbacks callbacks2 : callbacks) {
                    LooperExecutor looperExecutor = this.mMainExecutor;
                    Objects.requireNonNull(callbacks2);
                    looperExecutor.execute(new Runnable() { // from class: com.android.launcher3.LauncherModel$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            callbacks2.clearPendingBinds();
                        }
                    });
                }
                stopLoader();
                LoaderResults loaderResults = new LoaderResults(this.mApp, this.mBgDataModel, this.mBgAllAppsList, callbacks, this.mMainExecutor);
                if (this.mModelLoaded && !this.mIsLoaderTaskRunning) {
                    loaderResults.bindWorkspace();
                    loaderResults.bindAllApps();
                    loaderResults.bindDeepShortcuts();
                    loaderResults.bindWidgets();
                    return true;
                }
                startLoaderForResults(loaderResults);
            }
            return false;
        }
    }

    public boolean stopLoader() {
        synchronized (this.mLock) {
            LoaderTask loaderTask = this.mLoaderTask;
            this.mLoaderTask = null;
            if (loaderTask == null) {
                return false;
            }
            loaderTask.stopLocked();
            return true;
        }
    }

    public void startLoaderForResults(LoaderResults results) {
        synchronized (this.mLock) {
            stopLoader();
            this.mLoaderTask = new LoaderTask(this.mApp, this.mBgAllAppsList, this.mBgDataModel, results);
            Executors.MODEL_EXECUTOR.post(this.mLoaderTask);
        }
    }

    public void startLoaderForResultsIfNotLoaded(LoaderResults results) {
        synchronized (this.mLock) {
            if (!isModelLoaded()) {
                Log.d(TAG, "Workspace not loaded, loading now");
                startLoaderForResults(results);
            }
        }
    }

    public class LoaderTransaction implements AutoCloseable {
        private final LoaderTask mTask;

        private LoaderTransaction(LoaderTask task) throws CancellationException {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == task) {
                    this.mTask = task;
                    LauncherModel.this.mIsLoaderTaskRunning = true;
                    LauncherModel.this.mModelLoaded = false;
                } else {
                    throw new CancellationException("Loader already stopped");
                }
            }
        }

        public void commit() {
            synchronized (LauncherModel.this.mLock) {
                LauncherModel.this.mModelLoaded = true;
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == this.mTask) {
                    LauncherModel.this.mLoaderTask = null;
                }
                LauncherModel.this.mIsLoaderTaskRunning = false;
            }
        }
    }

    public LoaderTransaction beginLoader(LoaderTask task) throws CancellationException {
        return new LoaderTransaction(task);
    }

    public void refreshShortcutsIfRequired() {
        Executors.MODEL_EXECUTOR.getHandler().removeCallbacks(this.mShortcutPermissionCheckRunnable);
        Executors.MODEL_EXECUTOR.post(this.mShortcutPermissionCheckRunnable);
    }

    public void onPackageIconsUpdated(HashSet<String> updatedPackages, UserHandle user) {
        enqueueModelUpdateTask(new CacheDataUpdatedTask(1, user, updatedPackages));
    }

    public void onWidgetLabelsUpdated(final HashSet<String> updatedPackages, final UserHandle user) {
        enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.launcher3.LauncherModel.2
            @Override // com.android.launcher3.model.BaseModelUpdateTask
            public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
                dataModel.widgetsModel.onPackageIconsUpdated(updatedPackages, user, app);
                bindUpdatedWidgets(dataModel, true);
            }
        });
    }

    public void enqueueModelUpdateTask(ModelUpdateTask task) {
        task.init(this.mApp, this, this.mBgDataModel, this.mBgAllAppsList, this.mMainExecutor);
        Executors.MODEL_EXECUTOR.execute(task);
    }

    public void updateAndBindWorkspaceItem(final WorkspaceItemInfo si, final ShortcutInfo info) {
        updateAndBindWorkspaceItem(new Supplier() { // from class: com.android.launcher3.LauncherModel$$ExternalSyntheticLambda1
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m40xc9eefea7(si, info);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateAndBindWorkspaceItem$0$com-android-launcher3-LauncherModel, reason: not valid java name */
    /* synthetic */ WorkspaceItemInfo m40xc9eefea7(WorkspaceItemInfo workspaceItemInfo, ShortcutInfo shortcutInfo) {
        workspaceItemInfo.updateFromDeepShortcutInfo(shortcutInfo, this.mApp.getContext());
        this.mApp.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo);
        return workspaceItemInfo;
    }

    public void updateAndBindWorkspaceItem(final Supplier<WorkspaceItemInfo> itemProvider) {
        enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.launcher3.LauncherModel.3
            @Override // com.android.launcher3.model.BaseModelUpdateTask
            public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemProvider.get();
                getModelWriter().updateItemInDatabase(workspaceItemInfo);
                ArrayList<WorkspaceItemInfo> arrayList = new ArrayList<>();
                arrayList.add(workspaceItemInfo);
                bindUpdatedWorkspaceItems(arrayList);
            }
        });
    }

    public void refreshAndBindWidgetsAndShortcuts(final PackageUserKey packageUser) {
        MLog.d(TAG, "refreshAndBindWidgetsAndShortcuts: " + Utilities.getStackTraceSingleLine(new Throwable()));
        enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.launcher3.LauncherModel.4
            @Override // com.android.launcher3.model.BaseModelUpdateTask
            public void execute(LauncherAppState app, BgDataModel dataModel, AllAppsList apps) {
                MLog.d(LauncherModel.TAG, "refreshAndBindWidgetsAndShortcuts: start");
                dataModel.widgetsModel.update(app, packageUser, LauncherModel.this.mBgAllAppsList);
                bindUpdatedWidgets(dataModel, false);
            }
        });
    }

    public void dumpState(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        if (args.length > 0 && TextUtils.equals(args[0], "--all")) {
            writer.println(prefix + "All apps list: size=" + this.mBgAllAppsList.data.size());
            for (AppInfo appInfo : this.mBgAllAppsList.data) {
                writer.println(prefix + "   title=\"" + ((Object) appInfo.title) + "\" bitmapIcon=" + appInfo.bitmap.icon + " componentName=" + appInfo.componentName.getPackageName());
            }
        }
        this.mBgDataModel.dump(prefix, fd, writer, args);
    }

    public boolean hasCallbacks() {
        boolean z;
        synchronized (this.mCallbacksList) {
            z = !this.mCallbacksList.isEmpty();
        }
        return z;
    }

    public BgDataModel.Callbacks[] getCallbacks() {
        BgDataModel.Callbacks[] callbacksArr;
        synchronized (this.mCallbacksList) {
            ArrayList<BgDataModel.Callbacks> arrayList = this.mCallbacksList;
            callbacksArr = (BgDataModel.Callbacks[]) arrayList.toArray(new BgDataModel.Callbacks[arrayList.size()]);
        }
        return callbacksArr;
    }
}
