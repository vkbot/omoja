package com.android.launcher3.activity.model;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.CheryAppFilter;
import com.mega.launcher.model.AppIcon;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: AppListRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0007J\u0010\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/android/launcher3/activity/model/AppListRepository;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appFilter", "Lcom/android/launcher3/config/CheryAppFilter;", "appListCallback", "Lcom/android/launcher3/activity/model/AppListRepository$Callback;", "fetchAppIcon", "Landroid/graphics/drawable/Drawable;", "info", "Landroid/content/pm/ResolveInfo;", "loadApps", "", "activityContext", "setCallback", "callback", "Callback", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppListRepository {
    private static final String TAG = "AppListRepository";
    private final CheryAppFilter appFilter;
    private Callback appListCallback;
    private final Context context;

    /* JADX INFO: compiled from: AppListRepository.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/activity/model/AppListRepository$Callback;", "", "onAppListDataChanged", "", "apps", "", "Lcom/android/launcher3/activity/model/AllAppInfo;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Callback {
        void onAppListDataChanged(List<? extends AllAppInfo> apps);
    }

    public final void setCallback(Callback callback) {
        this.appListCallback = callback;
    }

    public AppListRepository(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.appFilter = new CheryAppFilter();
    }

    public final void loadApps(Context activityContext) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        MLog.d(TAG, "loadApps: begin.");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        int i = 0;
        List<ResolveInfo> listQueryIntentActivities = activityContext.getPackageManager().queryIntentActivities(intent, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "activityContext.packageM…Activities(mainIntent, 0)");
        ArrayList arrayList = new ArrayList();
        MLog.i(TAG, "loadApps: allApps=" + listQueryIntentActivities.size());
        for (ResolveInfo info : listQueryIntentActivities) {
            if (this.appFilter.shouldShowApp(info.activityInfo.packageName, info.activityInfo.name)) {
                AllAppInfo allAppInfo = new AllAppInfo(info, i);
                allAppInfo.setTitle(Utilities.getActivityLabel(activityContext, info).orElse(info.activityInfo.loadLabel(activityContext.getPackageManager()).toString()));
                Intrinsics.checkNotNullExpressionValue(info, "info");
                allAppInfo.setIcon(fetchAppIcon(activityContext, info));
                arrayList.add(allAppInfo);
                i++;
            }
        }
        MLog.i(TAG, "loadApps: shown size=" + arrayList.size());
        List<AllAppInfo> listSortAppList = AppListSort.INSTANCE.get().sortAppList(arrayList);
        AppListSort.INSTANCE.get().saveAppList(listSortAppList);
        MLog.i(TAG, "loadApps: end. " + CollectionsKt.joinToString$default(listSortAppList, null, null, null, 0, null, new Function1<AllAppInfo, CharSequence>() { // from class: com.android.launcher3.activity.model.AppListRepository.loadApps.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(AllAppInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getResolveInfo().activityInfo.packageName + '#' + it.getTitle();
            }
        }, 31, null));
        Callback callback = this.appListCallback;
        if (callback != null) {
            callback.onAppListDataChanged(new ArrayList(listSortAppList));
        }
    }

    private final Drawable fetchAppIcon(Context context, ResolveInfo info) {
        Drawable appIcon = AppIcon.getInstance().getAppIcon(context, info.activityInfo.packageName, info.activityInfo.name);
        if (Intrinsics.areEqual(info.activityInfo.packageName, "com.mega.carplay")) {
            appIcon = AppIcon.getInstance().getCarPlayIcon(context, MegaLinkManager.getInstance().isCarPlayConnected());
        } else if (Intrinsics.areEqual(info.activityInfo.packageName, "com.mega.androidauto")) {
            appIcon = AppIcon.getInstance().getAndroidAutoIcon(context, MegaLinkManager.getInstance().getAndroidAutoConnectionStatus() == 2);
        }
        if (appIcon != null) {
            return appIcon;
        }
        Drawable drawableLoadIcon = info.activityInfo.loadIcon(context.getPackageManager());
        Intrinsics.checkNotNullExpressionValue(drawableLoadIcon, "info.activityInfo.loadIcon(context.packageManager)");
        return drawableLoadIcon;
    }
}
