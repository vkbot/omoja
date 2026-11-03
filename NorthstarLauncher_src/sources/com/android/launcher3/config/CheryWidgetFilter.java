package com.android.launcher3.config;

import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import com.android.launcher3.AppFilter;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.carproperty.CountryOrRegion;
import com.android.launcher3.carproperty.DrivingPowerTypeKt;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.FlavorUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: CheryWidgetFilter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/android/launcher3/config/CheryWidgetFilter;", "Lcom/android/launcher3/AppFilter;", "()V", "hiddenWidgets", "Ljava/util/HashSet;", "Landroid/content/ComponentName;", "Lkotlin/collections/HashSet;", "visibleWidgets", "shouldShowApp", "", "component", "packageName", "", "className", "Companion", "InstanceHolder", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CheryWidgetFilter extends AppFilter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "CheryWidgetFilter";
    private final HashSet<ComponentName> hiddenWidgets;
    private final HashSet<ComponentName> visibleWidgets;

    public /* synthetic */ CheryWidgetFilter(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final CheryWidgetFilter get() {
        return INSTANCE.get();
    }

    private CheryWidgetFilter() {
        this.visibleWidgets = new HashSet<>();
        this.hiddenWidgets = new HashSet<>();
        LauncherApplication launcherApplication = LauncherApplication.INSTANCE.get();
        String[] stringArray = launcherApplication.getResources().getStringArray((FlavorUtils.isT19CFL1() && DrivingPowerTypeKt.isICE()) ? R.array.app_widget_white_list_t19cfl_int_ice : R.array.app_widget_white_list);
        Intrinsics.checkNotNullExpressionValue(stringArray, "context.resources.getStr…dget_white_list\n        )");
        ArrayList arrayList = new ArrayList();
        for (String str : stringArray) {
            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
            if (componentNameUnflattenFromString != null) {
                arrayList.add(componentNameUnflattenFromString);
            }
        }
        this.visibleWidgets.addAll(arrayList);
        String[] stringArray2 = launcherApplication.getResources().getStringArray(R.array.hidden_app_widgets_common);
        Intrinsics.checkNotNullExpressionValue(stringArray2, "context.resources.getStr…idden_app_widgets_common)");
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : stringArray2) {
            ComponentName componentNameUnflattenFromString2 = ComponentName.unflattenFromString(str2);
            if (componentNameUnflattenFromString2 != null) {
                arrayList2.add(componentNameUnflattenFromString2);
            }
        }
        this.hiddenWidgets.addAll(arrayList2);
        if (FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) {
            if (!FlavorUtils.isNetworkArea()) {
                String[] stringArray3 = launcherApplication.getResources().getStringArray(R.array.hidden_app_widgets_t1gc_int_when_no_network);
                Intrinsics.checkNotNullExpressionValue(stringArray3, "context.resources.getStr…t1gc_int_when_no_network)");
                ArrayList arrayList3 = new ArrayList();
                for (String str3 : stringArray3) {
                    ComponentName componentNameUnflattenFromString3 = ComponentName.unflattenFromString(str3);
                    if (componentNameUnflattenFromString3 != null) {
                        arrayList3.add(componentNameUnflattenFromString3);
                    }
                }
                this.hiddenWidgets.addAll(arrayList3);
            }
            if (CountryOrRegion.isEuropeGroup()) {
                String[] stringArray4 = launcherApplication.getResources().getStringArray(R.array.hidden_app_widgets_t1gc_int_when_europe);
                Intrinsics.checkNotNullExpressionValue(stringArray4, "context.resources.getStr…ets_t1gc_int_when_europe)");
                ArrayList arrayList4 = new ArrayList();
                for (String str4 : stringArray4) {
                    ComponentName componentNameUnflattenFromString4 = ComponentName.unflattenFromString(str4);
                    if (componentNameUnflattenFromString4 != null) {
                        arrayList4.add(componentNameUnflattenFromString4);
                    }
                }
                this.hiddenWidgets.addAll(arrayList4);
            }
            List<ApplicationInfo> installedApplications = launcherApplication.getPackageManager().getInstalledApplications(0);
            Intrinsics.checkNotNullExpressionValue(installedApplications, "context.packageManager.getInstalledApplications(0)");
            ArrayList arrayList5 = new ArrayList();
            Iterator<T> it = installedApplications.iterator();
            while (it.hasNext()) {
                String str5 = ((ApplicationInfo) it.next()).packageName;
                if (str5 != null) {
                    arrayList5.add(str5);
                }
            }
            ArrayList arrayList6 = arrayList5;
            if (!this.hiddenWidgets.contains(Const.WIDGET_MAP)) {
                String[] MAP_PACKAGES = Const.MAP_PACKAGES;
                Intrinsics.checkNotNullExpressionValue(MAP_PACKAGES, "MAP_PACKAGES");
                String[] strArr = MAP_PACKAGES;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (arrayList6.contains(strArr[i])) {
                            break;
                        } else {
                            i++;
                        }
                    } else {
                        this.hiddenWidgets.add(Const.WIDGET_MAP);
                        MLog.d(TAG, "map not installed");
                        break;
                    }
                }
            }
            if (!this.hiddenWidgets.contains(Const.WIDGET_WEATHER)) {
                String[] WEATHER_PACKAGES = Const.WEATHER_PACKAGES;
                Intrinsics.checkNotNullExpressionValue(WEATHER_PACKAGES, "WEATHER_PACKAGES");
                for (String str6 : WEATHER_PACKAGES) {
                    if (!arrayList6.contains(str6)) {
                    }
                }
                this.hiddenWidgets.add(Const.WIDGET_WEATHER);
                MLog.d(TAG, "weather not installed");
            }
        }
        MLog.d(TAG, "visible=" + this.visibleWidgets);
        MLog.d(TAG, "hidden=" + this.hiddenWidgets);
    }

    @Override // com.android.launcher3.AppFilter
    public boolean shouldShowApp(ComponentName component) {
        Intrinsics.checkNotNullParameter(component, "component");
        return this.visibleWidgets.contains(component) && !this.hiddenWidgets.contains(component);
    }

    @Override // com.android.launcher3.AppFilter
    public boolean shouldShowApp(String packageName, String className) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(className, "className");
        return shouldShowApp(new ComponentName(packageName, className));
    }

    /* JADX INFO: compiled from: CheryWidgetFilter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004¢\u0006\n\n\u0002\b\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/android/launcher3/config/CheryWidgetFilter$InstanceHolder;", "", "()V", "INSTANCE", "Lcom/android/launcher3/config/CheryWidgetFilter;", "getINSTANCE", "()Lcom/android/launcher3/config/CheryWidgetFilter;", "INSTANCE$1", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class InstanceHolder {
        public static final InstanceHolder INSTANCE = new InstanceHolder();

        /* JADX INFO: renamed from: INSTANCE$1, reason: from kotlin metadata */
        private static final CheryWidgetFilter INSTANCE = new CheryWidgetFilter(null);

        public final CheryWidgetFilter getINSTANCE() {
            return INSTANCE;
        }

        private InstanceHolder() {
        }
    }

    /* JADX INFO: compiled from: CheryWidgetFilter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/android/launcher3/config/CheryWidgetFilter$Companion;", "", "()V", "TAG", "", "get", "Lcom/android/launcher3/config/CheryWidgetFilter;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CheryWidgetFilter get() {
            return InstanceHolder.INSTANCE.getINSTANCE();
        }
    }
}
