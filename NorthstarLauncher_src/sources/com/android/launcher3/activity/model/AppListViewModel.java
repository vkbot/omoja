package com.android.launcher3.activity.model;

import android.app.Application;
import android.content.Context;
import android.os.SystemClock;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.util.LooperExecutor;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import mega.log.MLog;

/* JADX INFO: compiled from: AppListViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 02\u00020\u0001:\u00010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%J\u0016\u0010&\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%J\u0018\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020)2\b\u0010$\u001a\u0004\u0018\u00010%J\b\u0010*\u001a\u00020\"H\u0014J\u0018\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0007J\u0006\u0010.\u001a\u00020/R$\u0010\u0005\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R'\u0010\u0010\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\t0\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00118F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\u001b\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00118F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0013R\u0011\u0010\u001f\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b \u0010\u0018¨\u00061"}, d2 = {"Lcom/android/launcher3/activity/model/AppListViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "app", "Landroid/app/Application;", "(Landroid/app/Application;)V", "_appList", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/ArrayList;", "Lcom/android/launcher3/activity/model/AllAppInfo;", "Lkotlin/collections/ArrayList;", "_mixLauncherPosition", "", "kotlin.jvm.PlatformType", "_tabPosition", "activeTime", "", "appList", "Landroidx/lifecycle/LiveData;", "getAppList", "()Landroidx/lifecycle/LiveData;", "appListRepository", "Lcom/android/launcher3/activity/model/AppListRepository;", "appListSize", "getAppListSize", "()I", "mixLauncherPosition", "getMixLauncherPosition", "mixLauncherPositionValue", "getMixLauncherPositionValue", "tabPosition", "getTabPosition", "tabPositionValue", "getTabPositionValue", "changeMixLauncher", "", "position", "reason", "", "changeTab", "loadApps", "context", "Landroid/content/Context;", "onCleared", "onItemMoved", "fromPosition", "toPosition", "useActive", "", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppListViewModel extends AndroidViewModel {
    private static final String TAG = "AppListViewModel";
    private final MutableLiveData<ArrayList<AllAppInfo>> _appList;
    private final MutableLiveData<Integer> _mixLauncherPosition;
    private final MutableLiveData<Integer> _tabPosition;
    private long activeTime;
    private final Application app;
    private final AppListRepository appListRepository;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppListViewModel(Application app) {
        super(app);
        Intrinsics.checkNotNullParameter(app, "app");
        this.app = app;
        this._tabPosition = new MutableLiveData<>(0);
        this._mixLauncherPosition = new MutableLiveData<>(Integer.valueOf(FlavorUtils.isT28() ? 1 : 0));
        AppListRepository appListRepository = new AppListRepository(app);
        this.appListRepository = appListRepository;
        this._appList = new MutableLiveData<>();
        appListRepository.setCallback(new AnonymousClass1());
    }

    public final LiveData<Integer> getTabPosition() {
        LiveData<Integer> liveDataDistinctUntilChanged = Transformations.distinctUntilChanged(this._tabPosition);
        Intrinsics.checkNotNullExpressionValue(liveDataDistinctUntilChanged, "distinctUntilChanged(_tabPosition)");
        return liveDataDistinctUntilChanged;
    }

    public final int getTabPositionValue() {
        Integer value = this._tabPosition.getValue();
        if (value == null) {
            return 0;
        }
        return value.intValue();
    }

    public final LiveData<Integer> getMixLauncherPosition() {
        LiveData<Integer> liveDataDistinctUntilChanged = Transformations.distinctUntilChanged(this._mixLauncherPosition);
        Intrinsics.checkNotNullExpressionValue(liveDataDistinctUntilChanged, "distinctUntilChanged(_mixLauncherPosition)");
        return liveDataDistinctUntilChanged;
    }

    public final int getMixLauncherPositionValue() {
        Integer value = this._mixLauncherPosition.getValue();
        if (value == null) {
            return 0;
        }
        return value.intValue();
    }

    public final LiveData<ArrayList<AllAppInfo>> getAppList() {
        return this._appList;
    }

    public final int getAppListSize() {
        ArrayList<AllAppInfo> value = this._appList.getValue();
        if (value != null) {
            return value.size();
        }
        return 0;
    }

    /* JADX INFO: renamed from: com.android.launcher3.activity.model.AppListViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppListViewModel.kt */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0016¨\u0006\u0007"}, d2 = {"com/android/launcher3/activity/model/AppListViewModel$1", "Lcom/android/launcher3/activity/model/AppListRepository$Callback;", "onAppListDataChanged", "", "apps", "", "Lcom/android/launcher3/activity/model/AllAppInfo;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnonymousClass1 implements AppListRepository.Callback {
        AnonymousClass1() {
        }

        @Override // com.android.launcher3.activity.model.AppListRepository.Callback
        public void onAppListDataChanged(final List<? extends AllAppInfo> apps) {
            Intrinsics.checkNotNullParameter(apps, "apps");
            LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
            final AppListViewModel appListViewModel = AppListViewModel.this;
            looperExecutor.execute(new Runnable() { // from class: com.android.launcher3.activity.model.AppListViewModel$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppListViewModel.AnonymousClass1.onAppListDataChanged$lambda$0(appListViewModel, apps);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onAppListDataChanged$lambda$0(AppListViewModel this$0, List apps) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(apps, "$apps");
            this$0._appList.setValue(new ArrayList(apps));
        }
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
    }

    public final boolean useActive() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.activeTime <= 500) {
            return false;
        }
        this.activeTime = jElapsedRealtime;
        return true;
    }

    public final void changeTab(int position, String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "changeTab: pos=" + position + ' ' + reason);
        this._tabPosition.setValue(Integer.valueOf(position));
    }

    public final void changeMixLauncher(int position, String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "changeMixLauncher: pos=" + position + ' ' + reason);
        this._mixLauncherPosition.setValue(Integer.valueOf(position));
    }

    public final void loadApps(final Context context, String reason) {
        Intrinsics.checkNotNullParameter(context, "context");
        MLog.d(TAG, "loadApps: reason=" + reason);
        Executors.runOnWork("loadApps", new Runnable() { // from class: com.android.launcher3.activity.model.AppListViewModel$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppListViewModel.loadApps$lambda$0(this.f$0, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadApps$lambda$0(AppListViewModel this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        this$0.appListRepository.loadApps(context);
    }

    public final void onItemMoved(int fromPosition, int toPosition) {
        ArrayList<AllAppInfo> value = this._appList.getValue();
        if (value != null) {
            IntRange indices = CollectionsKt.getIndices(value);
            int first = indices.getFirst();
            if (fromPosition > indices.getLast() || first > fromPosition) {
                return;
            }
            int first2 = indices.getFirst();
            if (toPosition > indices.getLast() || first2 > toPosition) {
                return;
            }
            AllAppInfo allAppInfoRemove = value.remove(fromPosition);
            Intrinsics.checkNotNullExpressionValue(allAppInfoRemove, "it.removeAt(fromPosition)");
            value.add(toPosition, allAppInfoRemove);
        }
    }
}
