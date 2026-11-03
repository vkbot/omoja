package com.android.launcher3.graphics;

import android.app.Fragment;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextClock;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.R;
import com.android.launcher3.WorkspaceLayoutManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.ModelUtils;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.uioverrides.PredictedAppIconInflater;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class LauncherPreviewRenderer {
    private static final String TAG = "LauncherPreviewRenderer";
    private final Context mContext;
    private final DeviceProfile mDp;
    private final InvariantDeviceProfile mIdp;
    private final Rect mInsets;
    private final boolean mMigrated;
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());
    private final WorkspaceItemInfo mWorkspaceItemInfo;

    public static class PreviewContext extends ContextWrapper {
        private final Set<MainThreadInitializedObject> mAllowedObjects;
        private final ConcurrentLinkedQueue<LauncherIconsForPreview> mIconPool;
        private final InvariantDeviceProfile mIdp;
        private final Map<MainThreadInitializedObject, Object> mObjectMap;

        @Override // android.content.ContextWrapper, android.content.Context
        public Context getApplicationContext() {
            return this;
        }

        public PreviewContext(Context base, InvariantDeviceProfile idp) {
            super(base);
            this.mAllowedObjects = new HashSet(Arrays.asList(UserCache.INSTANCE, LauncherAppState.INSTANCE, InvariantDeviceProfile.INSTANCE, CustomWidgetManager.INSTANCE, PluginManagerWrapper.INSTANCE));
            this.mObjectMap = new HashMap();
            this.mIconPool = new ConcurrentLinkedQueue<>();
            this.mIdp = idp;
        }

        public void onDestroy() {
            CustomWidgetManager customWidgetManager = (CustomWidgetManager) this.mObjectMap.get(CustomWidgetManager.INSTANCE);
            if (customWidgetManager != null) {
                customWidgetManager.onDestroy();
            }
        }

        public <T> T getObject(MainThreadInitializedObject<T> mainThreadInitializedObject, MainThreadInitializedObject.ObjectProvider<T> objectProvider) {
            if (!this.mAllowedObjects.contains(mainThreadInitializedObject)) {
                throw new IllegalStateException("Leaking unknown objects");
            }
            if (mainThreadInitializedObject == LauncherAppState.INSTANCE) {
                throw new IllegalStateException("Should not use MainThreadInitializedObject to initialize this with PreviewContext");
            }
            if (mainThreadInitializedObject == InvariantDeviceProfile.INSTANCE) {
                return (T) this.mIdp;
            }
            if (this.mObjectMap.containsKey(mainThreadInitializedObject)) {
                return (T) this.mObjectMap.get(mainThreadInitializedObject);
            }
            T t = objectProvider.get(this);
            this.mObjectMap.put(mainThreadInitializedObject, t);
            return t;
        }

        public LauncherIcons newLauncherIcons(Context context, boolean shapeDetection) {
            LauncherIconsForPreview launcherIconsForPreviewPoll = this.mIconPool.poll();
            return launcherIconsForPreviewPoll != null ? launcherIconsForPreviewPoll : new LauncherIconsForPreview(context, this.mIdp.fillResIconDpi, this.mIdp.iconBitmapSize, -1, shapeDetection);
        }

        private final class LauncherIconsForPreview extends LauncherIcons {
            private LauncherIconsForPreview(Context context, int fillResIconDpi, int iconBitmapSize, int poolId, boolean shapeDetection) {
                super(context, fillResIconDpi, iconBitmapSize, poolId, shapeDetection);
            }

            @Override // com.android.launcher3.icons.LauncherIcons
            public void recycle() {
                clear();
                PreviewContext.this.mIconPool.offer(this);
            }
        }
    }

    public LauncherPreviewRenderer(Context context, InvariantDeviceProfile idp, boolean migrated) {
        this.mContext = context;
        this.mIdp = idp;
        DeviceProfile deviceProfileCopy = idp.portraitProfile.copy(context);
        this.mDp = deviceProfileCopy;
        this.mMigrated = migrated;
        Rect rect = new Rect();
        this.mInsets = rect;
        int i = (deviceProfileCopy.widthPx - deviceProfileCopy.availableWidthPx) / 2;
        rect.right = i;
        rect.left = i;
        int i2 = (deviceProfileCopy.heightPx - deviceProfileCopy.availableHeightPx) / 2;
        rect.bottom = i2;
        rect.top = i2;
        deviceProfileCopy.updateInsets(rect);
        BitmapInfo bitmapInfoCreateBadgedIconBitmap = new BaseIconFactory(context, idp.fillResIconDpi, idp.iconBitmapSize) { // from class: com.android.launcher3.graphics.LauncherPreviewRenderer.1
        }.createBadgedIconBitmap(new AdaptiveIconDrawable(new ColorDrawable(-1), new ColorDrawable(-1)), Process.myUserHandle(), Build.VERSION.SDK_INT);
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        this.mWorkspaceItemInfo = workspaceItemInfo;
        workspaceItemInfo.bitmap = bitmapInfoCreateBadgedIconBitmap;
        workspaceItemInfo.intent = new Intent();
        String string = context.getString(R.string.label_application);
        workspaceItemInfo.title = string;
        workspaceItemInfo.contentDescription = string;
    }

    public View getRenderedView() {
        MainThreadRenderer mainThreadRenderer = new MainThreadRenderer(this.mContext);
        mainThreadRenderer.populate();
        return mainThreadRenderer.mRootView;
    }

    private class MainThreadRenderer extends ContextThemeWrapper implements ActivityContext, WorkspaceLayoutManager, LayoutInflater.Factory2 {
        private final LayoutInflater mHomeElementInflater;
        private final Hotseat mHotseat;
        private final InsettableFrameLayout mRootView;
        private final CellLayout mWorkspace;

        @Override // com.android.launcher3.WorkspaceLayoutManager
        public Hotseat getHotseat() {
            return this.mHotseat;
        }

        @Override // com.android.launcher3.WorkspaceLayoutManager
        public CellLayout getScreenWithId(int screenId) {
            return this.mWorkspace;
        }

        MainThreadRenderer(Context context) {
            super(context, R.style.AppTheme);
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(new ContextThemeWrapper(this, R.style.HomeScreenElementTheme));
            this.mHomeElementInflater = layoutInflaterFrom;
            layoutInflaterFrom.setFactory2(this);
            InsettableFrameLayout insettableFrameLayout = (InsettableFrameLayout) layoutInflaterFrom.inflate(R.layout.launcher_preview_layout, (ViewGroup) null, false);
            this.mRootView = insettableFrameLayout;
            insettableFrameLayout.setInsets(LauncherPreviewRenderer.this.mInsets);
            LauncherPreviewRenderer.measureView(insettableFrameLayout, LauncherPreviewRenderer.this.mDp.widthPx, LauncherPreviewRenderer.this.mDp.heightPx);
            Hotseat hotseat = (Hotseat) insettableFrameLayout.findViewById(R.id.hotseat);
            this.mHotseat = hotseat;
            hotseat.resetLayout(false);
            hotseat.setVisibility(8);
            CellLayout cellLayout = (CellLayout) insettableFrameLayout.findViewById(R.id.workspace);
            this.mWorkspace = cellLayout;
            cellLayout.setPadding(LauncherPreviewRenderer.this.mDp.workspacePadding.left + LauncherPreviewRenderer.this.mDp.cellLayoutPaddingLeftRightPx, LauncherPreviewRenderer.this.mDp.workspacePadding.top, LauncherPreviewRenderer.this.mDp.workspacePadding.right + LauncherPreviewRenderer.this.mDp.cellLayoutPaddingLeftRightPx, LauncherPreviewRenderer.this.mDp.workspacePadding.bottom);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
            if ("TextClock".equals(name)) {
                return new TextClock(context, attrs) { // from class: com.android.launcher3.graphics.LauncherPreviewRenderer.MainThreadRenderer.1
                    @Override // android.view.View
                    public Handler getHandler() {
                        return LauncherPreviewRenderer.this.mUiHandler;
                    }
                };
            }
            if (!"fragment".equals(name)) {
                return null;
            }
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.PreviewFragment);
            FragmentWithPreview fragmentWithPreview = (FragmentWithPreview) Fragment.instantiate(context, typedArrayObtainStyledAttributes.getString(0));
            fragmentWithPreview.enterPreviewMode(context);
            fragmentWithPreview.onInit(null);
            View viewOnCreateView = fragmentWithPreview.onCreateView(LayoutInflater.from(context), (ViewGroup) parent, null);
            viewOnCreateView.setId(typedArrayObtainStyledAttributes.getInt(1, -1));
            return viewOnCreateView;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String name, Context context, AttributeSet attrs) {
            return onCreateView(null, name, context, attrs);
        }

        @Override // com.android.launcher3.views.ActivityContext
        public BaseDragLayer getDragLayer() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.launcher3.views.ActivityContext
        public DeviceProfile getDeviceProfile() {
            return LauncherPreviewRenderer.this.mDp;
        }

        private void inflateAndAddIcon(WorkspaceItemInfo info) {
            BubbleTextView bubbleTextView = (BubbleTextView) this.mHomeElementInflater.inflate(R.layout.app_icon, (ViewGroup) this.mWorkspace, false);
            bubbleTextView.applyFromWorkspaceItem(info);
            addInScreenFromBind(bubbleTextView, info);
        }

        private void inflateAndAddFolder(FolderInfo info) {
            addInScreenFromBind(FolderIcon.inflateIcon(R.layout.folder_icon, this, this.mWorkspace, info), info);
        }

        private void inflateAndAddWidgets(LauncherAppWidgetInfo info, Map<ComponentKey, AppWidgetProviderInfo> widgetProviderInfoMap) {
            AppWidgetProviderInfo appWidgetProviderInfo;
            if (widgetProviderInfoMap == null || (appWidgetProviderInfo = widgetProviderInfoMap.get(new ComponentKey(info.providerName, info.user))) == null) {
                return;
            }
            inflateAndAddWidgets(info, LauncherAppWidgetProviderInfo.fromProviderInfo(getApplicationContext(), appWidgetProviderInfo));
        }

        private void inflateAndAddWidgets(LauncherAppWidgetInfo info, WidgetsModel widgetsModel) {
            WidgetItem widgetProviderInfoByProviderName = widgetsModel.getWidgetProviderInfoByProviderName(info.providerName);
            if (widgetProviderInfoByProviderName == null) {
                return;
            }
            inflateAndAddWidgets(info, widgetProviderInfoByProviderName.widgetInfo);
        }

        private void inflateAndAddWidgets(LauncherAppWidgetInfo info, LauncherAppWidgetProviderInfo providerInfo) {
            AppWidgetHostView appWidgetHostView = new AppWidgetHostView(LauncherPreviewRenderer.this.mContext);
            appWidgetHostView.setAppWidget(-1, providerInfo);
            appWidgetHostView.updateAppWidget(null);
            appWidgetHostView.setTag(info);
            addInScreenFromBind(appWidgetHostView, info);
        }

        private void inflateAndAddPredictedIcon(WorkspaceItemInfo info) {
            View viewInflate = PredictedAppIconInflater.inflate(this.mHomeElementInflater, this.mWorkspace, info);
            if (viewInflate != null) {
                addInScreenFromBind(viewInflate, info);
            }
        }

        private void dispatchVisibilityAggregated(View view, boolean isVisible) {
            boolean z = view.getVisibility() == 0;
            if (z || !isVisible) {
                view.onVisibilityAggregated(isVisible);
            }
            if (view instanceof ViewGroup) {
                boolean z2 = z && isVisible;
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    dispatchVisibilityAggregated(viewGroup.getChildAt(i), z2);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void populate() {
            WorkspaceFetcher workspaceItemsInfoFromPreviewFetcher;
            PreviewContext previewContext;
            if (FeatureFlags.ENABLE_LAUNCHER_PREVIEW_IN_GRID_PICKER.get()) {
                if (LauncherPreviewRenderer.this.mMigrated) {
                    previewContext = new PreviewContext(LauncherPreviewRenderer.this.mContext, LauncherPreviewRenderer.this.mIdp);
                    workspaceItemsInfoFromPreviewFetcher = new WorkspaceItemsInfoFromPreviewFetcher(new LauncherAppState(previewContext, null));
                    Executors.MODEL_EXECUTOR.execute(workspaceItemsInfoFromPreviewFetcher);
                } else {
                    WorkspaceItemsInfoFetcher workspaceItemsInfoFetcher = new WorkspaceItemsInfoFetcher();
                    LauncherAppState.getInstance(LauncherPreviewRenderer.this.mContext).getModel().enqueueModelUpdateTask(workspaceItemsInfoFetcher);
                    workspaceItemsInfoFromPreviewFetcher = workspaceItemsInfoFetcher;
                    previewContext = null;
                }
                WorkspaceResult workspaceResult = workspaceItemsInfoFromPreviewFetcher.get();
                if (previewContext != null) {
                    previewContext.onDestroy();
                }
                if (workspaceResult == null) {
                    return;
                }
                ArrayList<ItemInfo> arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<ItemInfo> arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ModelUtils.filterCurrentWorkspaceItems(0, workspaceResult.mWorkspaceItems, arrayList, arrayList2);
                ModelUtils.filterCurrentWorkspaceItems(0, workspaceResult.mAppWidgets, arrayList3, arrayList4);
                ModelUtils.sortWorkspaceItemsSpatially(LauncherPreviewRenderer.this.mIdp, arrayList);
                for (ItemInfo itemInfo : arrayList) {
                    int i = itemInfo.itemType;
                    if (i != 0 && i != 1) {
                        if (i == 2) {
                            inflateAndAddFolder((FolderInfo) itemInfo);
                        } else if (i != 6) {
                        }
                    }
                    inflateAndAddIcon((WorkspaceItemInfo) itemInfo);
                }
                for (ItemInfo itemInfo2 : arrayList3) {
                    int i2 = itemInfo2.itemType;
                    if (i2 == 4 || i2 == 5) {
                        if (LauncherPreviewRenderer.this.mMigrated) {
                            inflateAndAddWidgets((LauncherAppWidgetInfo) itemInfo2, workspaceResult.mWidgetProvidersMap);
                        } else {
                            inflateAndAddWidgets((LauncherAppWidgetInfo) itemInfo2, workspaceResult.mWidgetsModel);
                        }
                    }
                }
                IntArray missingHotseatRanks = ModelUtils.getMissingHotseatRanks(arrayList, LauncherPreviewRenderer.this.mIdp.numHotseatIcons);
                int iMin = Math.min(missingHotseatRanks.size(), workspaceResult.mCachedPredictedItems.size());
                for (int i3 = 0; i3 < iMin; i3++) {
                    AppInfo appInfo = (AppInfo) workspaceResult.mCachedPredictedItems.get(i3);
                    int i4 = missingHotseatRanks.get(i3);
                    WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(appInfo);
                    workspaceItemInfo.container = LauncherSettings.Favorites.CONTAINER_HOTSEAT_PREDICTION;
                    workspaceItemInfo.rank = i4;
                    workspaceItemInfo.cellX = this.mHotseat.getCellXFromOrder(i4);
                    workspaceItemInfo.cellY = this.mHotseat.getCellYFromOrder(i4);
                    workspaceItemInfo.screenId = i4;
                    inflateAndAddPredictedIcon(workspaceItemInfo);
                }
            } else {
                for (int i5 = 0; i5 < LauncherPreviewRenderer.this.mIdp.numHotseatIcons; i5++) {
                    WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo(LauncherPreviewRenderer.this.mWorkspaceItemInfo);
                    workspaceItemInfo2.container = LauncherSettings.Favorites.CONTAINER_HOTSEAT;
                    workspaceItemInfo2.screenId = i5;
                    inflateAndAddIcon(workspaceItemInfo2);
                }
                for (int i6 = 0; i6 < LauncherPreviewRenderer.this.mIdp.numColumns; i6++) {
                    WorkspaceItemInfo workspaceItemInfo3 = new WorkspaceItemInfo(LauncherPreviewRenderer.this.mWorkspaceItemInfo);
                    workspaceItemInfo3.container = -100;
                    workspaceItemInfo3.screenId = 0;
                    workspaceItemInfo3.cellX = i6;
                    workspaceItemInfo3.cellY = LauncherPreviewRenderer.this.mIdp.numRows - 1;
                    inflateAndAddIcon(workspaceItemInfo3);
                }
            }
            LauncherPreviewRenderer.measureView(this.mRootView, LauncherPreviewRenderer.this.mDp.widthPx, LauncherPreviewRenderer.this.mDp.heightPx);
            dispatchVisibilityAggregated(this.mRootView, true);
            LauncherPreviewRenderer.measureView(this.mRootView, LauncherPreviewRenderer.this.mDp.widthPx, LauncherPreviewRenderer.this.mDp.heightPx);
            LauncherPreviewRenderer.measureView(this.mRootView, LauncherPreviewRenderer.this.mDp.widthPx, LauncherPreviewRenderer.this.mDp.heightPx);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void measureView(View view, int width, int height) {
        view.measure(View.MeasureSpec.makeMeasureSpec(width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(height, BasicMeasure.EXACTLY));
        view.layout(0, 0, width, height);
    }

    private static class WorkspaceItemsInfoFetcher implements LauncherModel.ModelUpdateTask, WorkspaceFetcher {
        private AllAppsList mAllAppsList;
        private LauncherAppState mApp;
        private BgDataModel mBgDataModel;
        private LauncherModel mModel;
        private final FutureTask<WorkspaceResult> mTask;

        @Override // com.android.launcher3.graphics.LauncherPreviewRenderer.WorkspaceFetcher
        public FutureTask<WorkspaceResult> getTask() {
            return this.mTask;
        }

        @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
        public void init(LauncherAppState app, LauncherModel model, BgDataModel dataModel, AllAppsList allAppsList, Executor uiExecutor) {
            this.mApp = app;
            this.mModel = model;
            this.mBgDataModel = dataModel;
            this.mAllAppsList = allAppsList;
        }

        private WorkspaceItemsInfoFetcher() {
            this.mTask = new FutureTask<>(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mTask.run();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public WorkspaceResult call() throws Exception {
            if (!this.mModel.isModelLoaded()) {
                Log.d(LauncherPreviewRenderer.TAG, "Workspace not loaded, loading now");
                this.mModel.startLoaderForResults(new LoaderResults(this.mApp, this.mBgDataModel, this.mAllAppsList, new BgDataModel.Callbacks[0]));
                return null;
            }
            return new WorkspaceResult(this.mBgDataModel.workspaceItems, this.mBgDataModel.appWidgets, this.mBgDataModel.cachedPredictedItems, this.mBgDataModel.widgetsModel, null);
        }
    }

    private static class WorkspaceItemsInfoFromPreviewFetcher extends LoaderTask implements WorkspaceFetcher {
        private final FutureTask<WorkspaceResult> mTask;

        @Override // com.android.launcher3.graphics.LauncherPreviewRenderer.WorkspaceFetcher
        public FutureTask<WorkspaceResult> getTask() {
            return this.mTask;
        }

        WorkspaceItemsInfoFromPreviewFetcher(LauncherAppState app) {
            super(app, null, new BgDataModel(), null);
            this.mTask = new FutureTask<>(this);
        }

        @Override // com.android.launcher3.model.LoaderTask, java.lang.Runnable
        public void run() {
            this.mTask.run();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public WorkspaceResult call() throws Exception {
            loadWorkspace(new ArrayList(), LauncherSettings.Favorites.PREVIEW_CONTENT_URI, "screen = 0 or container = -101");
            return new WorkspaceResult(this.mBgDataModel.workspaceItems, this.mBgDataModel.appWidgets, this.mBgDataModel.cachedPredictedItems, null, this.mWidgetProvidersMap);
        }
    }

    private interface WorkspaceFetcher extends Runnable, Callable<WorkspaceResult> {
        FutureTask<WorkspaceResult> getTask();

        default WorkspaceResult get() {
            try {
                return getTask().get(5L, TimeUnit.SECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Log.d(LauncherPreviewRenderer.TAG, "Error fetching workspace items info", e);
                return null;
            }
        }
    }

    private static class WorkspaceResult {
        private final ArrayList<LauncherAppWidgetInfo> mAppWidgets;
        private final ArrayList<AppInfo> mCachedPredictedItems;
        private final Map<ComponentKey, AppWidgetProviderInfo> mWidgetProvidersMap;
        private final WidgetsModel mWidgetsModel;
        private final ArrayList<ItemInfo> mWorkspaceItems;

        private WorkspaceResult(ArrayList<ItemInfo> workspaceItems, ArrayList<LauncherAppWidgetInfo> appWidgets, ArrayList<AppInfo> cachedPredictedItems, WidgetsModel widgetsModel, Map<ComponentKey, AppWidgetProviderInfo> widgetProviderInfoMap) {
            this.mWorkspaceItems = workspaceItems;
            this.mAppWidgets = appWidgets;
            this.mCachedPredictedItems = cachedPredictedItems;
            this.mWidgetsModel = widgetsModel;
            this.mWidgetProvidersMap = widgetProviderInfoMap;
        }
    }
}
