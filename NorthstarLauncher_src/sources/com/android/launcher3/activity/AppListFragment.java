package com.android.launcher3.activity;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.BadgeRepository;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.AllAppInfo;
import com.android.launcher3.activity.model.AppListItemMoveListener;
import com.android.launcher3.activity.model.AppListLaunchHistory;
import com.android.launcher3.activity.model.AppListViewModel;
import com.android.launcher3.activity.model.DownloadAppInfo;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.activity.view.AppListIndicator;
import com.android.launcher3.activity.view.PagerGridLayoutManager;
import com.android.launcher3.activity.view.PagerGridSnapHelper;
import com.android.launcher3.activity.view.RecyclerItemDragCallback;
import com.android.launcher3.appstore.AppStoreManager;
import com.android.launcher3.databinding.FragmentAppListBinding;
import com.android.launcher3.util.AppStarter;
import com.android.launcher3.util.LinkManagerKt;
import com.mega.chery.utils.CheryCountryArea;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class AppListFragment extends Fragment implements AppListItemMoveListener {
    private static final String TAG = "AppListFragment";
    private final BroadcastReceiver mApkBroadcastReceiver;
    private final View.OnClickListener mAppClickListener;
    private AllAppListAdapter mAppListAdapter;
    private AppListIndicator mAppListIndicator;
    private final AllAppListAdapter.OnItemClickListener mAppListItemMoveListener;
    private AppListTransition mAppListTransition;
    private AppListRecyclerView mAppRecyclerView;
    private final AppStoreManager.OnAppInfoChangeListener mAppStoreListener;
    private final BadgeRepository.BadgeChangeListener mBadgeChangeListener;
    private FragmentAppListBinding mBinding;
    private final ContentObserver mContentResolver;
    private final ContentObserver mEditModeResolver;
    private final ContentObserver mEditPkgResolver;
    private boolean mIsFirstEnter;
    private boolean mIsLoaded;
    private int mPageIndex;
    private final PagerGridLayoutManager.PagerChangedListener mPageListener;
    private PagerGridLayoutManager mPagerGridLayoutManager;
    private String mPendingMessage;
    private boolean mPendingMessageSet;
    private final Set<String> mPendingRemoveFromDownload = new HashSet();
    private final BroadcastReceiver mStartOutsideReceiver;
    private final NotifyHandler mUiHandler;
    private AppListViewModel mViewModel;

    public void setAppListTransition(AppListTransition appListTransition) {
        this.mAppListTransition = appListTransition;
    }

    public AppListFragment() {
        NotifyHandler notifyHandler = new NotifyHandler(Looper.getMainLooper(), this);
        this.mUiHandler = notifyHandler;
        this.mIsFirstEnter = true;
        this.mIsLoaded = false;
        this.mStartOutsideReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.activity.AppListFragment.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                MLog.d(AppListFragment.TAG, "onReceive: " + intent);
                if (intent != null) {
                    if (Objects.equals(intent.getAction(), "action.GO_MUSIC") || Objects.equals(intent.getAction(), "action.GO_NAVI")) {
                        AppListLaunchHistory.get().clear();
                    }
                }
            }
        };
        this.mAppStoreListener = new AppStoreManager.OnAppInfoChangeListener() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda5
            @Override // com.android.launcher3.appstore.AppStoreManager.OnAppInfoChangeListener
            public final void onAppInfoChanged(DownloadAppInfo downloadAppInfo) {
                this.f$0.m66lambda$new$1$comandroidlauncher3activityAppListFragment(downloadAppInfo);
            }
        };
        this.mAppListItemMoveListener = new AllAppListAdapter.OnItemClickListener() { // from class: com.android.launcher3.activity.AppListFragment.2
            @Override // com.android.launcher3.activity.AllAppListAdapter.OnItemClickListener
            public void onItemLongClick(View view, int position) {
            }

            @Override // com.android.launcher3.activity.AllAppListAdapter.OnItemClickListener
            public void onItemClick(View view, ResolveInfo info, AllAppInfo appInfo) {
                MLog.d(AppListFragment.TAG, "onItemClick " + info.activityInfo.packageName);
                if (Utils.canStartApp(view.getContext(), info.activityInfo.packageName)) {
                    AppListLaunchHistory.get().noteAppLaunched(view, appInfo);
                    startItemPackage(info, view);
                }
            }

            @Override // com.android.launcher3.activity.AllAppListAdapter.OnItemClickListener
            public void onSelectedChanged(boolean isSelect) {
                MLog.i(AppListFragment.TAG, "onSelectedChanged " + isSelect);
                if (isSelect) {
                    return;
                }
                AppListFragment.this.mPagerGridLayoutManager.smoothScrollToPagerIndex(AppListFragment.this.mPageIndex);
            }

            private void startItemPackage(ResolveInfo info, View view) {
                String str = info.activityInfo.packageName;
                String str2 = info.activityInfo.name;
                MLog.d(AppListFragment.TAG, "startActivity " + str + " " + str2);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.LAUNCHER");
                intent.setComponent(new ComponentName(str, str2));
                intent.setFlags(270532608);
                AppStarter.startPackageActivity(view.getContext(), intent, AppListFragment.this.getLaunchActivityOptionsAsBundle(view), "AppList");
            }
        };
        this.mContentResolver = new ContentObserver(notifyHandler) { // from class: com.android.launcher3.activity.AppListFragment.3
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
                if (selfChange || AppListFragment.this.mUiHandler == null) {
                    return;
                }
                AppListFragment.this.mUiHandler.removeMessages(2);
                AppListFragment.this.mUiHandler.sendEmptyMessage(2);
            }
        };
        this.mEditModeResolver = new ContentObserver(notifyHandler) { // from class: com.android.launcher3.activity.AppListFragment.4
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
                if (selfChange || AppListFragment.this.mUiHandler == null) {
                    return;
                }
                AppListFragment.this.mUiHandler.removeMessages(3);
                AppListFragment.this.mUiHandler.sendEmptyMessage(3);
            }
        };
        this.mEditPkgResolver = new ContentObserver(notifyHandler) { // from class: com.android.launcher3.activity.AppListFragment.5
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
                if (selfChange || AppListFragment.this.mUiHandler == null) {
                    return;
                }
                AppListFragment.this.mUiHandler.removeMessages(4);
                AppListFragment.this.mUiHandler.sendEmptyMessage(4);
            }
        };
        this.mPageListener = new PagerGridLayoutManager.PagerChangedListener() { // from class: com.android.launcher3.activity.AppListFragment.6
            @Override // com.android.launcher3.activity.view.PagerGridLayoutManager.PagerChangedListener
            public void onPagerCountChanged(int pagerCount) {
                MLog.i(AppListFragment.TAG, "onPageSizeChanged " + pagerCount);
                if (AppListFragment.this.mAppListIndicator != null) {
                    AppListFragment.this.mAppListIndicator.setVisibility(pagerCount <= 1 ? 8 : 0);
                    AppListFragment.this.mAppListIndicator.setPageCount(pagerCount);
                }
            }

            @Override // com.android.launcher3.activity.view.PagerGridLayoutManager.PagerChangedListener
            public void onPagerIndexSelected(int prePagerIndex, int currentPagerIndex) {
                MLog.i(AppListFragment.TAG, "onPageSelect " + currentPagerIndex);
                AppListFragment.this.mPageIndex = currentPagerIndex;
                if (AppListFragment.this.mAppListIndicator != null) {
                    AppListFragment.this.mAppListIndicator.setCurrentPosition(currentPagerIndex);
                    if (AppListFragment.this.mPagerGridLayoutManager != null) {
                        AppListFragment.this.mAppListIndicator.setPageCount(AppListFragment.this.mPagerGridLayoutManager.getPagerCount());
                    }
                }
            }
        };
        this.mApkBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.activity.AppListFragment.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Context context2 = AppListFragment.this.getContext();
                if (Objects.equals(intent.getAction(), "android.intent.action.PACKAGE_ADDED")) {
                    String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                    MLog.d(AppListFragment.TAG, schemeSpecificPart + " ADDED replacing=" + intent.getBooleanExtra("android.intent.extra.REPLACING", false));
                    AppListFragment.this.mPendingRemoveFromDownload.add(schemeSpecificPart);
                    if (AppListFragment.this.mViewModel == null || context2 == null) {
                        return;
                    }
                    AppListFragment.this.mViewModel.loadApps(context2, schemeSpecificPart + " added");
                    return;
                }
                if (Objects.equals(intent.getAction(), "android.intent.action.PACKAGE_REPLACED")) {
                    MLog.d(AppListFragment.TAG, intent.getData().getSchemeSpecificPart() + " REPLACED");
                    return;
                }
                if (Objects.equals(intent.getAction(), "android.intent.action.PACKAGE_REMOVED")) {
                    String schemeSpecificPart2 = intent.getData().getSchemeSpecificPart();
                    boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                    MLog.d(AppListFragment.TAG, schemeSpecificPart2 + " REMOVED replacing=" + booleanExtra);
                    if (booleanExtra) {
                        return;
                    }
                    AppListFragment.this.mPendingRemoveFromDownload.add(schemeSpecificPart2);
                    if (AppListFragment.this.mViewModel == null || context2 == null) {
                        return;
                    }
                    AppListFragment.this.mViewModel.loadApps(context2, schemeSpecificPart2 + " removed");
                }
            }
        };
        this.mAppClickListener = new View.OnClickListener() { // from class: com.android.launcher3.activity.AppListFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (R.id.app_bg == v.getId() || R.id.app_list == v.getId()) {
                    MLog.d(AppListFragment.TAG, "blank click, exit Edit mode");
                    if (AppListFragment.this.mAppListAdapter == null || !AppListFragment.this.mAppListAdapter.getAppEditMode()) {
                        return;
                    }
                    AppListFragment.this.mAppListAdapter.setAppEditMode(false);
                }
            }
        };
        this.mBadgeChangeListener = new BadgeRepository.BadgeChangeListener() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda6
            @Override // com.android.launcher3.BadgeRepository.BadgeChangeListener
            public final void onBadgeChanged(String str, String str2, int i, int i2) {
                this.f$0.m67lambda$new$3$comandroidlauncher3activityAppListFragment(str, str2, i, i2);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$new$1$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m66lambda$new$1$comandroidlauncher3activityAppListFragment(final DownloadAppInfo downloadAppInfo) {
        MLog.i(TAG, "onAppInfoChanged: " + downloadAppInfo);
        this.mUiHandler.post(new Runnable() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m65lambda$new$0$comandroidlauncher3activityAppListFragment(downloadAppInfo);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m65lambda$new$0$comandroidlauncher3activityAppListFragment(DownloadAppInfo downloadAppInfo) {
        this.mAppListAdapter.addOrUpdate(downloadAppInfo);
    }

    public Bundle getLaunchActivityOptionsAsBundle(final View view) {
        if (view == null) {
            return null;
        }
        return (Bundle) Optional.ofNullable(this.mAppListTransition).map(new Function() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                View view2 = view;
                return ((AppListTransition) obj).getActivityLaunchOptions(view2.getContext(), view2);
            }
        }).map(new Function() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ActivityOptions) obj).toBundle();
            }
        }).orElse(null);
    }

    /* JADX INFO: renamed from: lambda$new$3$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m67lambda$new$3$comandroidlauncher3activityAppListFragment(String str, String str2, int i, int i2) {
        AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
        if (allAppListAdapter != null) {
            allAppListAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mViewModel = (AppListViewModel) new ViewModelProvider(requireActivity()).get(AppListViewModel.class);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        this.mBinding = FragmentAppListBinding.inflate(inflater, container, false);
        BadgeRepository.INSTANCE.addListener(this.mBadgeChangeListener);
        return this.mBinding.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Context contextRequireContext = requireContext();
        initData(contextRequireContext, view);
        AppStoreManager.INSTANCE.getInstance(contextRequireContext).addListener(this.mAppStoreListener);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
        if (allAppListAdapter != null && allAppListAdapter.hasDownloadApp()) {
            this.mAppListAdapter.notifyDataSetChanged();
        }
        MLog.d(TAG, "onResume: end. cost " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms. " + hashCode());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("action.GO_MUSIC");
        intentFilter.addAction("action.GO_NAVI");
        requireContext().registerReceiver(this.mStartOutsideReceiver, intentFilter);
        MLog.d(TAG, "onStart: end. cost " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms. " + hashCode());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        requireContext().unregisterReceiver(this.mStartOutsideReceiver);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        MLog.i(TAG, "onPause: " + hashCode());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Context contextRequireContext = requireContext();
        contextRequireContext.getContentResolver().unregisterContentObserver(this.mContentResolver);
        contextRequireContext.getContentResolver().unregisterContentObserver(this.mEditModeResolver);
        contextRequireContext.getContentResolver().unregisterContentObserver(this.mEditPkgResolver);
        contextRequireContext.unregisterReceiver(this.mApkBroadcastReceiver);
        AppStoreManager.INSTANCE.getInstance(contextRequireContext).removeListener(this.mAppStoreListener);
        BadgeRepository.INSTANCE.removeListener(this.mBadgeChangeListener);
        this.mBinding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MLog.d(TAG, "onDestroy: " + hashCode());
        this.mUiHandler.removeCallbacksAndMessages(null);
    }

    public void handleIntentMsg(String msg) {
        MLog.d(TAG, "handleIntentMsg: " + msg);
        getContext();
        if ("carplay".equals(msg)) {
            if (this.mIsLoaded) {
                jumpCarPlayIcon();
            } else {
                this.mPendingMessage = msg;
                this.mPendingMessageSet = true;
            }
        }
    }

    private void handlePendingMessageAfterLoaded() {
        if (this.mIsLoaded) {
            return;
        }
        this.mIsLoaded = true;
        if (this.mPendingMessageSet) {
            this.mPendingMessageSet = false;
            if ("carplay".equals(this.mPendingMessage)) {
                jumpCarPlayIcon();
            }
        }
    }

    private void initData(Context context, View view) {
        MLog.d(TAG, "initData");
        this.mAppRecyclerView = (AppListRecyclerView) view.findViewById(R.id.app_list);
        this.mAppListIndicator = (AppListIndicator) view.findViewById(R.id.app_indicator);
        this.mAppListAdapter = new AllAppListAdapter(context);
        PagerGridLayoutManager pagerGridLayoutManager = new PagerGridLayoutManager(3, 6, 0);
        this.mPagerGridLayoutManager = pagerGridLayoutManager;
        pagerGridLayoutManager.setPagerChangedListener(this.mPageListener);
        this.mAppRecyclerView.setLayoutManager(this.mPagerGridLayoutManager);
        this.mAppRecyclerView.addItemDecoration(new AppListPaddingDecoration(context));
        new ItemTouchHelper(new RecyclerItemDragCallback(this.mAppRecyclerView, this)).attachToRecyclerView(this.mAppRecyclerView);
        new PagerGridSnapHelper().attachToRecyclerView(this.mAppRecyclerView);
        this.mAppListAdapter.setOnItemClickListener(this.mAppListItemMoveListener);
        this.mAppRecyclerView.setAdapter(this.mAppListAdapter);
        registerUpgradeUri(context);
        registerApkInstallBroadcast(context);
        this.mBinding.viewLeft.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onSlideToLeft(view2);
            }
        });
        this.mBinding.viewRight.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onSlideToRight(view2);
            }
        });
        this.mViewModel.getAppList().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m59lambda$initData$4$comandroidlauncher3activityAppListFragment((ArrayList) obj);
            }
        });
        this.mViewModel.getTabPosition().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda10
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m60lambda$initData$5$comandroidlauncher3activityAppListFragment((Integer) obj);
            }
        });
        this.mViewModel.getMixLauncherPosition().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda11
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m61lambda$initData$6$comandroidlauncher3activityAppListFragment((Integer) obj);
            }
        });
        LinkManagerKt.getLinkManager(context).getCarPlayState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda12
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m62lambda$initData$7$comandroidlauncher3activityAppListFragment((Boolean) obj);
            }
        });
        LinkManagerKt.getLinkManager(context).getHiCarState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda13
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m63lambda$initData$8$comandroidlauncher3activityAppListFragment((Boolean) obj);
            }
        });
        LinkManagerKt.getLinkManager(context).getCarLinkState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m64lambda$initData$9$comandroidlauncher3activityAppListFragment((Boolean) obj);
            }
        });
        LinkManagerKt.getLinkManager(context).getAndroidAutoState().observe(getViewLifecycleOwner(), new Observer() { // from class: com.android.launcher3.activity.AppListFragment$$ExternalSyntheticLambda2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m58x74f9a1ad((Boolean) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initData$4$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m59lambda$initData$4$comandroidlauncher3activityAppListFragment(ArrayList arrayList) {
        if (arrayList != null) {
            onAppListDataChanged(arrayList);
        }
    }

    /* JADX INFO: renamed from: lambda$initData$5$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m60lambda$initData$5$comandroidlauncher3activityAppListFragment(Integer num) {
        updateSelected(num.intValue(), true, this.mViewModel.getMixLauncherPositionValue(), false);
    }

    /* JADX INFO: renamed from: lambda$initData$6$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m61lambda$initData$6$comandroidlauncher3activityAppListFragment(Integer num) {
        updateSelected(this.mViewModel.getTabPositionValue(), false, num.intValue(), true);
    }

    /* JADX INFO: renamed from: lambda$initData$7$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m62lambda$initData$7$comandroidlauncher3activityAppListFragment(Boolean bool) {
        onDeviceInfoChanged(1, bool != null && bool.booleanValue());
    }

    /* JADX INFO: renamed from: lambda$initData$8$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m63lambda$initData$8$comandroidlauncher3activityAppListFragment(Boolean bool) {
        onDeviceInfoChanged(2, bool != null && bool.booleanValue());
    }

    /* JADX INFO: renamed from: lambda$initData$9$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m64lambda$initData$9$comandroidlauncher3activityAppListFragment(Boolean bool) {
        onDeviceInfoChanged(4, bool != null && bool.booleanValue());
    }

    /* JADX INFO: renamed from: lambda$initData$10$com-android-launcher3-activity-AppListFragment, reason: not valid java name */
    /* synthetic */ void m58x74f9a1ad(Boolean bool) {
        onDeviceInfoChanged(8, bool != null && bool.booleanValue());
    }

    private void registerApkInstallBroadcast(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(this.mApkBroadcastReceiver, intentFilter);
    }

    private void registerUpgradeUri(Context context) {
        Uri uriFor = Settings.Global.getUriFor(Utils.UPGRADE_URI);
        Uri uriFor2 = Settings.Global.getUriFor(Utils.KEY_SETTINGS_APP_LIST_EDIT_MODE);
        Uri uriFor3 = Settings.Global.getUriFor(Utils.KEY_SETTINGS_APP_LIST_DOCK_ADDED_PKG);
        context.getContentResolver().registerContentObserver(uriFor, true, this.mContentResolver);
        context.getContentResolver().registerContentObserver(uriFor2, true, this.mEditModeResolver);
        context.getContentResolver().registerContentObserver(uriFor3, true, this.mEditPkgResolver);
        setUpgradeState();
    }

    private void onDeviceInfoChanged(int type, boolean connected) {
        this.mAppListAdapter.notifyDataSetChanged();
        if (connected) {
            if (type == 4) {
                this.mViewModel.changeMixLauncher(0, "onDeviceInfoChanged");
            } else if (type == 2) {
                this.mViewModel.changeMixLauncher(1, "onDeviceInfoChanged");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerUpgradeMsg() {
        setUpgradeState();
        this.mAppListAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlerEditPkgInfo() {
        Context context = getContext();
        if (context != null) {
            String string = Settings.Global.getString(context.getContentResolver(), Utils.KEY_SETTINGS_APP_LIST_DOCK_ADDED_PKG);
            AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
            if (allAppListAdapter != null) {
                allAppListAdapter.setEditPckInfo(string);
                this.mAppListAdapter.notifyDataSetChanged();
            }
        }
    }

    private void setUpgradeState() {
        Context context = getContext();
        if (context != null) {
            MLog.d(TAG, "setUpgradeState");
            if (this.mAppListAdapter == null) {
                MLog.e("mAppListAdapter is null");
            } else {
                this.mAppListAdapter.setUpgradeRedHotState(CheryCountryArea.KEY_CHILE.equals(Settings.Global.getString(context.getContentResolver(), Utils.UPGRADE_URI)));
            }
        }
    }

    public void onAppListDataChanged(List<AllAppInfo> lists) {
        MLog.i(TAG, "onAppListDataChanged " + lists.size());
        updateAppListData(lists);
        handlePendingMessageAfterLoaded();
    }

    private void updateAppListData(List<AllAppInfo> lists) {
        MLog.i(TAG, "updateAppListData:");
        this.mAppListAdapter.setListData(lists, this.mPendingRemoveFromDownload);
        this.mAppListAdapter.notifyDataSetChanged();
        this.mPendingRemoveFromDownload.clear();
    }

    private void jumpCarPlayIcon() {
        int itemPosition;
        AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
        if (allAppListAdapter == null || (itemPosition = allAppListAdapter.getItemPosition("com.mega.carplay")) < 0) {
            return;
        }
        moveToPosition(itemPosition);
    }

    private void moveToPosition(int position) {
        MLog.d(TAG, "moveToPosition " + position);
        AppListRecyclerView appListRecyclerView = this.mAppRecyclerView;
        if (appListRecyclerView == null) {
            MLog.e(TAG, "mAppRecyclerView is null.");
        } else {
            appListRecyclerView.smoothScrollToPosition(position);
        }
    }

    public View findItemView(ComponentName taskComponent, int flags) {
        ResolveInfo resolveInfo;
        AllAppListAdapter allAppListAdapter;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        if (taskComponent == null) {
            return null;
        }
        AllAppInfo lastLaunched = AppListLaunchHistory.get().getLastLaunched(taskComponent);
        MLog.d(TAG, "findItemView: taskComponent=" + taskComponent + " histItemInfo=" + lastLaunched);
        if (lastLaunched == null || (resolveInfo = lastLaunched.getResolveInfo()) == null || (allAppListAdapter = this.mAppListAdapter) == null) {
            return null;
        }
        if (this.mPagerGridLayoutManager == null || this.mAppRecyclerView == null) {
            MLog.d(TAG, "findItemView: host not initialized");
            return null;
        }
        int itemPosition = allAppListAdapter.getItemPosition(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        if (itemPosition < 0 || (viewHolderFindViewHolderForAdapterPosition = this.mAppRecyclerView.findViewHolderForAdapterPosition(itemPosition)) == null) {
            return null;
        }
        return viewHolderFindViewHolderForAdapterPosition.itemView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlideToLeft(View view) {
        MLog.i(TAG, "onSlideToLeft: ");
        FragmentAppListBinding fragmentAppListBinding = this.mBinding;
        if (fragmentAppListBinding != null) {
            fragmentAppListBinding.allAppsRootView.interceptTouchEvent();
        }
        PagerGridLayoutManager pagerGridLayoutManager = this.mPagerGridLayoutManager;
        if (pagerGridLayoutManager != null) {
            pagerGridLayoutManager.smoothScrollToPrePager();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlideToRight(View view) {
        MLog.i(TAG, "onSlideToRight: ");
        FragmentAppListBinding fragmentAppListBinding = this.mBinding;
        if (fragmentAppListBinding != null) {
            fragmentAppListBinding.allAppsRootView.interceptTouchEvent();
        }
        PagerGridLayoutManager pagerGridLayoutManager = this.mPagerGridLayoutManager;
        if (pagerGridLayoutManager != null) {
            pagerGridLayoutManager.smoothScrollToNextPager();
        }
    }

    @Override // com.android.launcher3.activity.model.AppListItemMoveListener
    public void onItemMove(int fromPosition, int toPosition) {
        this.mViewModel.onItemMoved(fromPosition, toPosition);
        AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
        if (allAppListAdapter != null) {
            allAppListAdapter.onItemMove(fromPosition, toPosition);
        }
    }

    @Override // com.android.launcher3.activity.model.AppListItemMoveListener
    public void onSelectedChanged(boolean isSelect) {
        AllAppListAdapter allAppListAdapter = this.mAppListAdapter;
        if (allAppListAdapter != null) {
            allAppListAdapter.onSelectedChanged(isSelect);
        }
    }

    private static class NotifyHandler extends Handler {
        private static final int MESSAGE_EDIT_MODE_MSG = 3;
        private static final int MESSAGE_EDIT_PKG_MSG = 4;
        private static final int MESSAGE_UPGRADE_MSG = 2;
        private final WeakReference<AppListFragment> mReference;

        private NotifyHandler(Looper looper, AppListFragment controller) {
            super(looper);
            this.mReference = new WeakReference<>(controller);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            AppListFragment appListFragment = this.mReference.get();
            if (appListFragment == null) {
                return;
            }
            int i = msg.what;
            if (i == 2) {
                appListFragment.handlerUpgradeMsg();
            } else {
                if (i != 4) {
                    return;
                }
                appListFragment.handlerEditPkgInfo();
            }
        }
    }

    private void updateSelected(int tabPosition, boolean tabChanged, int mixLauncherPosition, boolean mixLauncherChanged) {
        MLog.d(TAG, "updateSelected: tab=" + tabPosition + "_" + tabChanged + " mixLauncher=" + mixLauncherPosition + "_" + mixLauncherChanged);
        FragmentAppListBinding fragmentAppListBinding = this.mBinding;
        if (fragmentAppListBinding == null) {
            return;
        }
        fragmentAppListBinding.getRoot().setVisibility(tabPosition == 0 ? 0 : 8);
        if (this.mIsFirstEnter) {
            this.mIsFirstEnter = false;
            return;
        }
        if (tabChanged) {
            if (tabPosition == 0) {
                this.mBinding.getRoot().setTranslationX(-100.0f);
                this.mBinding.getRoot().setAlpha(0.0f);
                this.mBinding.getRoot().animate().translationX(0.0f).alpha(1.0f).setDuration(300L);
                return;
            }
            this.mBinding.getRoot().animate().alpha(0.0f).setDuration(50L).start();
        }
    }
}
