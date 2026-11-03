package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.TimingLogger;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.config.CheryAppFilter;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherActivityCachingLogic;
import com.android.launcher3.icons.cache.IconCacheUpdateHandler;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.TraceHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LoaderTask implements Runnable {
    private static final String TAG = "LoaderTask";
    protected final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    protected final BgDataModel mBgDataModel;
    private final IconCache mIconCache;
    private final LauncherApps mLauncherApps;
    private final LoaderResults mResults;
    private boolean mStopped;
    private final UserCache mUserCache;
    private final UserManager mUserManager;
    protected Map<ComponentKey, AppWidgetProviderInfo> mWidgetProvidersMap;
    private final UserManagerState mUserManagerState = new UserManagerState();
    private final CheryAppFilter mAppFilter = new CheryAppFilter();

    public LoaderTask(LauncherAppState app, AllAppsList bgAllAppsList, BgDataModel dataModel, LoaderResults results) {
        this.mApp = app;
        this.mBgAllAppsList = bgAllAppsList;
        this.mBgDataModel = dataModel;
        this.mResults = results;
        this.mLauncherApps = (LauncherApps) app.getContext().getSystemService(LauncherApps.class);
        this.mUserManager = (UserManager) app.getContext().getSystemService(UserManager.class);
        this.mUserCache = UserCache.INSTANCE.m166x39265fe7(app.getContext());
        this.mIconCache = app.getIconCache();
    }

    protected synchronized void waitForIdle() {
        LooperIdleLock looperIdleLockNewIdleLock = this.mResults.newIdleLock(this);
        while (!this.mStopped && looperIdleLockNewIdleLock.awaitLocked(1000L)) {
        }
    }

    private synchronized void verifyNotStopped() throws CancellationException {
        if (this.mStopped) {
            throw new CancellationException("Loader stopped");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (this.mStopped) {
                return;
            }
            Object objBeginSection = TraceHelper.INSTANCE.beginSection(TAG);
            TimingLogger timingLogger = new TimingLogger(TAG, "run");
            MLog.d(TAG, "run() called");
            try {
                try {
                    LauncherModel.LoaderTransaction loaderTransactionBeginLoader = this.mApp.getModel().beginLoader(this);
                    try {
                        loadWorkspace(new ArrayList());
                        timingLogger.addSplit("loadWorkspace");
                        MLog.d(TAG, "loadWorkspace.");
                        verifyNotStopped();
                        this.mResults.bindWorkspace();
                        timingLogger.addSplit("bindWorkspace");
                        MLog.d(TAG, "bindWorkspace.");
                        timingLogger.addSplit("sendFirstScreenActiveInstallsBroadcast");
                        MLog.d(TAG, "sendFirstScreenActiveInstallsBroadcast.");
                        timingLogger.addSplit("step 1 complete");
                        MLog.d(TAG, "step 1 complete.");
                        verifyNotStopped();
                        List<LauncherActivityInfo> listLoadAllApps = loadAllApps();
                        timingLogger.addSplit("loadAllApps");
                        MLog.d(TAG, "loadAllApps.");
                        verifyNotStopped();
                        this.mResults.bindAllApps();
                        timingLogger.addSplit("bindAllApps");
                        MLog.d(TAG, "bindAllApps.");
                        verifyNotStopped();
                        IconCacheUpdateHandler updateHandler = this.mIconCache.getUpdateHandler();
                        setIgnorePackages(updateHandler);
                        LauncherActivityCachingLogic launcherActivityCachingLogicNewInstance = LauncherActivityCachingLogic.newInstance(this.mApp.getContext());
                        final LauncherModel model = this.mApp.getModel();
                        Objects.requireNonNull(model);
                        updateHandler.updateIcons(listLoadAllApps, launcherActivityCachingLogicNewInstance, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: com.android.launcher3.model.LoaderTask$$ExternalSyntheticLambda1
                            @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                            public final void onPackageIconsUpdated(HashSet hashSet, UserHandle userHandle) {
                                model.onPackageIconsUpdated(hashSet, userHandle);
                            }
                        });
                        timingLogger.addSplit("update icon cache");
                        MLog.d(TAG, "update icon cache.");
                        loaderTransactionBeginLoader.commit();
                        if (loaderTransactionBeginLoader != null) {
                            loaderTransactionBeginLoader.close();
                        }
                        timingLogger.dumpToLog();
                        TraceHelper.INSTANCE.endSection(objBeginSection);
                    } catch (Throwable th) {
                        if (loaderTransactionBeginLoader != null) {
                            try {
                                loaderTransactionBeginLoader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (CancellationException unused) {
                    timingLogger.addSplit("Cancelled");
                    MLog.d(TAG, "Cancelled.");
                }
            } catch (Throwable th3) {
                timingLogger.dumpToLog();
                throw th3;
            }
        }
    }

    public synchronized void stopLocked() {
        this.mStopped = true;
        notify();
    }

    private void loadWorkspace(List<ShortcutInfo> allDeepShortcuts) {
        loadWorkspace(allDeepShortcuts, LauncherSettings.Favorites.CONTENT_URI, null);
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:246:0x057c
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:143)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:50)
        */
    protected void loadWorkspace(java.util.List<android.content.pm.ShortcutInfo> r34, android.net.Uri r35, java.lang.String r36) {
        /*
            Method dump skipped, instruction units count: 2428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.LoaderTask.loadWorkspace(java.util.List, android.net.Uri, java.lang.String):void");
    }

    private void setIgnorePackages(IconCacheUpdateHandler updateHandler) {
        synchronized (this.mBgDataModel) {
            for (ItemInfo itemInfo : this.mBgDataModel.itemsIdMap) {
                if (itemInfo instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    if (workspaceItemInfo.isPromise() && workspaceItemInfo.getTargetComponent() != null) {
                        updateHandler.addPackagesToIgnore(workspaceItemInfo.user, workspaceItemInfo.getTargetComponent().getPackageName());
                    }
                } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                    if (launcherAppWidgetInfo.hasRestoreFlag(2)) {
                        updateHandler.addPackagesToIgnore(launcherAppWidgetInfo.user, launcherAppWidgetInfo.providerName.getPackageName());
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private List<LauncherActivityInfo> loadAllApps() {
        List<UserHandle> userProfiles = this.mUserCache.getUserProfiles();
        ArrayList arrayList = new ArrayList();
        this.mBgAllAppsList.clear();
        Iterator<UserHandle> it = userProfiles.iterator();
        while (true) {
            if (it.hasNext()) {
                UserHandle next = it.next();
                List<LauncherActivityInfo> activityList = this.mLauncherApps.getActivityList(null, next);
                if (activityList == null || activityList.isEmpty()) {
                    return arrayList;
                }
                boolean zIsUserQuiet = this.mUserManagerState.isUserQuiet(next);
                for (int i = 0; i < activityList.size(); i++) {
                    LauncherActivityInfo launcherActivityInfo = activityList.get(i);
                    this.mBgAllAppsList.add(new AppInfo(launcherActivityInfo, next, zIsUserQuiet), launcherActivityInfo);
                }
                arrayList.addAll(activityList);
            } else {
                for (AppInfo appInfo : this.mBgDataModel.cachedPredictedItems) {
                    for (LauncherActivityInfo launcherActivityInfo2 : this.mLauncherApps.getActivityList(appInfo.componentName.getPackageName(), appInfo.user)) {
                        this.mBgAllAppsList.add(new AppInfo(launcherActivityInfo2, appInfo.user, this.mUserManagerState.isUserQuiet(appInfo.user)), launcherActivityInfo2);
                    }
                }
                this.mBgAllAppsList.setFlags(2, this.mUserManagerState.isAnyProfileQuietModeEnabled());
                this.mBgAllAppsList.setFlags(1, PackageManagerHelper.hasShortcutsPermission(this.mApp.getContext()));
                this.mBgAllAppsList.setFlags(4, this.mApp.getContext().checkSelfPermission("android.permission.MODIFY_QUIET_MODE") == 0);
                this.mBgAllAppsList.getAndResetChangeFlag();
                MLog.d(TAG, "loadAllApps: allActivityList" + arrayList.size());
                MLog.d(TAG, "loadAllApps: mBgAllAppsList" + this.mBgAllAppsList);
                return arrayList;
            }
        }
    }

    private List<ShortcutInfo> loadDeepShortcuts() {
        ArrayList arrayList = new ArrayList();
        this.mBgDataModel.deepShortcutMap.clear();
        if (this.mBgAllAppsList.hasShortcutHostPermission()) {
            for (UserHandle userHandle : this.mUserCache.getUserProfiles()) {
                if (this.mUserManager.isUserUnlocked(userHandle)) {
                    ShortcutRequest.QueryResult queryResultQuery = new ShortcutRequest(this.mApp.getContext(), userHandle).query(11);
                    arrayList.addAll(queryResultQuery);
                    this.mBgDataModel.updateDeepShortcutCounts(null, userHandle, queryResultQuery);
                }
            }
        }
        return arrayList;
    }

    private void loadFolderNames() {
        FolderNameProvider folderNameProviderNewInstance = FolderNameProvider.newInstance(this.mApp.getContext(), this.mBgAllAppsList.data, this.mBgDataModel.folders);
        synchronized (this.mBgDataModel) {
            for (int i = 0; i < this.mBgDataModel.folders.size(); i++) {
                FolderNameInfos folderNameInfos = new FolderNameInfos();
                FolderInfo folderInfoValueAt = this.mBgDataModel.folders.valueAt(i);
                if (folderInfoValueAt.suggestedFolderNames == null) {
                    folderNameProviderNewInstance.getSuggestedFolderName(this.mApp.getContext(), folderInfoValueAt.contents, folderNameInfos);
                    folderInfoValueAt.suggestedFolderNames = folderNameInfos;
                }
            }
        }
    }

    public static boolean isValidProvider(AppWidgetProviderInfo provider) {
        return (provider == null || provider.provider == null || provider.provider.getPackageName() == null) ? false : true;
    }
}
