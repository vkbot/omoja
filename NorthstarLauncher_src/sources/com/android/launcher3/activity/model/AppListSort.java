package com.android.launcher3.activity.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ResolveInfo;
import android.os.Process;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.FlavorUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import mega.log.MLog;

/* JADX INFO: compiled from: AppListSort.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00140\u0010R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/android/launcher3/activity/model/AppListSort;", "", "context", "Landroid/content/Context;", "resId", "", "(Landroid/content/Context;I)V", "preferences", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "sorted", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroid/content/ComponentName;", "saveAppList", "", "list", "", "Lcom/android/launcher3/activity/model/AllAppInfo;", "sortAppList", "sortWidgetItems", "Lcom/android/launcher3/model/WidgetItem;", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppListSort {
    public static final String APP_SP_NAME = "list_sort_sp";
    public static final boolean DEBUG = true;
    public static final String KEY_COMPONENT_SORT = "sorted_components";
    private static final String TAG = "AppListSort";
    private final SharedPreferences preferences;
    private final CopyOnWriteArrayList<ComponentName> sorted;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<AppListSort> appListSort$delegate = LazyKt.lazy(new Function0<AppListSort>() { // from class: com.android.launcher3.activity.model.AppListSort$Companion$appListSort$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AppListSort invoke() {
            LauncherApplication launcherApplication = LauncherApplication.INSTANCE.get();
            boolean zIsT28 = FlavorUtils.isT28();
            int i = R.array.app_list_order;
            if (zIsT28) {
                if (FlavorUtils.INSTANCE.is25My()) {
                    i = R.array.app_list_order_t28_25my;
                }
            } else if (!FlavorUtils.isT1GC()) {
                i = R.array.app_list_order_t1gc_int;
            }
            return new AppListSort(launcherApplication, i);
        }
    });

    @JvmStatic
    public static final AppListSort get() {
        return INSTANCE.get();
    }

    public AppListSort(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences(APP_SP_NAME, 0);
        this.preferences = sharedPreferences;
        CopyOnWriteArrayList<ComponentName> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.sorted = copyOnWriteArrayList;
        String string = sharedPreferences.getString(KEY_COMPONENT_SORT, "");
        String str = string;
        if (str == null || str.length() == 0) {
            List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(null, Process.myUserHandle());
            Intrinsics.checkNotNullExpressionValue(activityList, "context.getSystemService…, Process.myUserHandle())");
            List<LauncherActivityInfo> list = activityList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((LauncherActivityInfo) it.next()).getComponentName());
            }
            ArrayList arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
            for (Object obj : arrayList2) {
                linkedHashMap.put(((ComponentName) obj).getPackageName(), obj);
            }
            String[] stringArray = context.getResources().getStringArray(i);
            Intrinsics.checkNotNullExpressionValue(stringArray, "context.resources.getStringArray(resId)");
            ArrayList arrayList3 = new ArrayList();
            for (String it2 : stringArray) {
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                ComponentName componentNameUnflattenFromString = StringsKt.contains$default((CharSequence) it2, '/', false, 2, (Object) null) ? ComponentName.unflattenFromString(it2) : (ComponentName) linkedHashMap.get(it2);
                if (componentNameUnflattenFromString != null) {
                    arrayList3.add(componentNameUnflattenFromString);
                }
            }
            this.sorted.addAll(CollectionsKt.toList(arrayList3));
        } else {
            List dataList = (List) new Gson().fromJson(string, new TypeToken<List<? extends String>>() { // from class: com.android.launcher3.activity.model.AppListSort$dataList$1
            }.getType());
            Intrinsics.checkNotNullExpressionValue(dataList, "dataList");
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = dataList.iterator();
            while (it3.hasNext()) {
                ComponentName componentNameUnflattenFromString2 = ComponentName.unflattenFromString((String) it3.next());
                if (componentNameUnflattenFromString2 != null) {
                    arrayList4.add(componentNameUnflattenFromString2);
                }
            }
            copyOnWriteArrayList.addAll(arrayList4);
        }
        StringBuilder sb = new StringBuilder("<init>: ");
        CopyOnWriteArrayList<ComponentName> copyOnWriteArrayList2 = this.sorted;
        String strLineSeparator = System.lineSeparator();
        Intrinsics.checkNotNullExpressionValue(strLineSeparator, "lineSeparator()");
        MLog.d(TAG, sb.append(CollectionsKt.joinToString$default(copyOnWriteArrayList2, strLineSeparator, null, null, 0, null, null, 62, null)).toString());
    }

    public final List<AllAppInfo> sortAppList(List<? extends AllAppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        StringBuilder sb = new StringBuilder("sortAppList: ");
        List<? extends AllAppInfo> list2 = list;
        String strLineSeparator = System.lineSeparator();
        Intrinsics.checkNotNullExpressionValue(strLineSeparator, "lineSeparator()");
        MLog.d(TAG, sb.append(CollectionsKt.joinToString$default(list2, strLineSeparator, null, null, 0, null, new Function1<AllAppInfo, CharSequence>() { // from class: com.android.launcher3.activity.model.AppListSort.sortAppList.1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(AllAppInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ComponentName componentName = AppListSortKt.componentName(it);
                String string = componentName != null ? componentName.toString() : null;
                if (string == null) {
                    string = "";
                }
                return string;
            }
        }, 30, null)).toString());
        return CollectionsKt.sortedWith(list2, new Comparator<AllAppInfo>() { // from class: com.android.launcher3.activity.model.AppListSort.sortAppList.2
            @Override // java.util.Comparator
            public int compare(AllAppInfo o1, AllAppInfo o2) {
                ResolveInfo resolveInfo;
                ResolveInfo resolveInfo2;
                ActivityInfo activityInfo = null;
                ActivityInfo activityInfo2 = (o1 == null || (resolveInfo2 = o1.getResolveInfo()) == null) ? null : resolveInfo2.activityInfo;
                if (o2 != null && (resolveInfo = o2.getResolveInfo()) != null) {
                    activityInfo = resolveInfo.activityInfo;
                }
                if (activityInfo2 == null || activityInfo == null) {
                    return 0;
                }
                ComponentName componentName = new ComponentName(activityInfo2.packageName, activityInfo2.name);
                ComponentName componentName2 = new ComponentName(activityInfo.packageName, activityInfo.name);
                int iIndexOf = AppListSort.this.sorted.indexOf(componentName);
                int iIndexOf2 = AppListSort.this.sorted.indexOf(componentName2);
                if (iIndexOf == -1 && iIndexOf2 != -1) {
                    return 1;
                }
                if (iIndexOf == -1 || iIndexOf2 != -1) {
                    return iIndexOf - iIndexOf2;
                }
                return -1;
            }
        });
    }

    public final void saveAppList(List<? extends AllAppInfo> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ResolveInfo resolveInfo = ((AllAppInfo) it.next()).getResolveInfo();
            ActivityInfo activityInfo = resolveInfo != null ? resolveInfo.activityInfo : null;
            if (activityInfo != null) {
                arrayList.add(activityInfo);
            }
        }
        ArrayList<ActivityInfo> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (ActivityInfo activityInfo2 : arrayList2) {
            arrayList3.add(new ComponentName(activityInfo2.packageName, activityInfo2.name));
        }
        ArrayList arrayList4 = arrayList3;
        this.sorted.clear();
        this.sorted.addAll(arrayList4);
        ArrayList arrayList5 = arrayList4;
        ArrayList arrayList6 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList5, 10));
        Iterator it2 = arrayList5.iterator();
        while (it2.hasNext()) {
            arrayList6.add(((ComponentName) it2.next()).flattenToString());
        }
        String json = new Gson().toJson(arrayList6);
        StringBuilder sb = new StringBuilder("saveAppList: ");
        String strLineSeparator = System.lineSeparator();
        Intrinsics.checkNotNullExpressionValue(strLineSeparator, "lineSeparator()");
        MLog.d(TAG, sb.append(CollectionsKt.joinToString$default(arrayList5, strLineSeparator, null, null, 0, null, null, 62, null)).toString());
        this.preferences.edit().putString(KEY_COMPONENT_SORT, json).apply();
    }

    public final List<WidgetItem> sortWidgetItems(List<? extends WidgetItem> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return CollectionsKt.sortedWith(list, new Comparator<WidgetItem>() { // from class: com.android.launcher3.activity.model.AppListSort.sortWidgetItems.1
            @Override // java.util.Comparator
            public int compare(WidgetItem o1, WidgetItem o2) {
                AppInfo appInfo;
                AppInfo appInfo2;
                ComponentName componentName = null;
                ComponentName componentName2 = (o1 == null || (appInfo2 = o1.appInfo) == null) ? null : appInfo2.componentName;
                if (o2 != null && (appInfo = o2.appInfo) != null) {
                    componentName = appInfo.componentName;
                }
                if (componentName2 == null || componentName == null) {
                    return 0;
                }
                int iIndexOf = AppListSort.this.sorted.indexOf(componentName2);
                int iIndexOf2 = AppListSort.this.sorted.indexOf(componentName);
                if (iIndexOf == -1 && iIndexOf2 != -1) {
                    return 1;
                }
                if (iIndexOf == -1 || iIndexOf2 != -1) {
                    return iIndexOf - iIndexOf2;
                }
                return -1;
            }
        });
    }

    /* JADX INFO: compiled from: AppListSort.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/android/launcher3/activity/model/AppListSort$Companion;", "", "()V", "APP_SP_NAME", "", "DEBUG", "", "KEY_COMPONENT_SORT", "TAG", "appListSort", "Lcom/android/launcher3/activity/model/AppListSort;", "getAppListSort", "()Lcom/android/launcher3/activity/model/AppListSort;", "appListSort$delegate", "Lkotlin/Lazy;", "get", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final AppListSort getAppListSort() {
            return (AppListSort) AppListSort.appListSort$delegate.getValue();
        }

        @JvmStatic
        public final AppListSort get() {
            return getAppListSort();
        }
    }
}
