package com.android.launcher3.widget;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.custom.CustomAppWidgetProviderInfo;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
public class WidgetManagerHelper {
    public static final String WIDGET_OPTION_RESTORE_COMPLETED = "appWidgetRestoreCompleted";
    final AppWidgetManager mAppWidgetManager;
    final Context mContext;

    public WidgetManagerHelper(Context context) {
        this.mContext = context;
        this.mAppWidgetManager = AppWidgetManager.getInstance(context);
    }

    public LauncherAppWidgetProviderInfo getLauncherAppWidgetInfo(int appWidgetId) {
        if (appWidgetId <= -100) {
            return CustomWidgetManager.INSTANCE.m166x39265fe7(this.mContext).getWidgetProvider(appWidgetId);
        }
        AppWidgetProviderInfo appWidgetInfo = this.mAppWidgetManager.getAppWidgetInfo(appWidgetId);
        if (appWidgetInfo == null) {
            return null;
        }
        return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetInfo);
    }

    public List<AppWidgetProviderInfo> getAllProviders(PackageUserKey packageUser) {
        Stream<CustomAppWidgetProviderInfo> streamEmpty;
        if (packageUser == null) {
            return (List) allWidgetsSteam(this.mContext).collect(Collectors.toList());
        }
        if (Utilities.ATLEAST_OREO) {
            return this.mAppWidgetManager.getInstalledProvidersForPackage(packageUser.mPackageName, packageUser.mUser);
        }
        final String str = packageUser.mPackageName;
        Stream<AppWidgetProviderInfo> streamFilter = this.mAppWidgetManager.getInstalledProvidersForProfile(packageUser.mUser).stream().filter(new Predicate() { // from class: com.android.launcher3.widget.WidgetManagerHelper$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((AppWidgetProviderInfo) obj).provider.equals(str);
            }
        });
        if (Process.myUserHandle().equals(packageUser.mUser) && this.mContext.getPackageName().equals(str)) {
            streamEmpty = CustomWidgetManager.INSTANCE.m166x39265fe7(this.mContext).stream();
        } else {
            streamEmpty = Stream.empty();
        }
        return (List) Stream.concat(streamFilter, streamEmpty).collect(Collectors.toList());
    }

    public boolean bindAppWidgetIdIfAllowed(int appWidgetId, AppWidgetProviderInfo info, Bundle options) {
        if (appWidgetId <= -100) {
            return true;
        }
        return this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.getProfile(), info.provider, options);
    }

    public LauncherAppWidgetProviderInfo findProvider(ComponentName provider, UserHandle user) {
        for (AppWidgetProviderInfo appWidgetProviderInfo : getAllProviders(new PackageUserKey(provider.getPackageName(), user))) {
            if (appWidgetProviderInfo.provider.equals(provider)) {
                return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
            }
        }
        return null;
    }

    public boolean isAppWidgetRestored(int appWidgetId) {
        return this.mAppWidgetManager.getAppWidgetOptions(appWidgetId).getBoolean(WIDGET_OPTION_RESTORE_COMPLETED);
    }

    public static Map<ComponentKey, AppWidgetProviderInfo> getAllProvidersMap(Context context) {
        return (Map) allWidgetsSteam(context).collect(Collectors.toMap(new Function() { // from class: com.android.launcher3.widget.WidgetManagerHelper$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return WidgetManagerHelper.lambda$getAllProvidersMap$1((AppWidgetProviderInfo) obj);
            }
        }, Function.identity()));
    }

    static /* synthetic */ ComponentKey lambda$getAllProvidersMap$1(AppWidgetProviderInfo appWidgetProviderInfo) {
        return new ComponentKey(appWidgetProviderInfo.provider, appWidgetProviderInfo.getProfile());
    }

    private static Stream<AppWidgetProviderInfo> allWidgetsSteam(Context context) {
        final AppWidgetManager appWidgetManager = (AppWidgetManager) context.getSystemService(AppWidgetManager.class);
        return Stream.concat(UserCache.INSTANCE.m166x39265fe7(context).getUserProfiles().stream().flatMap(new Function() { // from class: com.android.launcher3.widget.WidgetManagerHelper$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return appWidgetManager.getInstalledProvidersForProfile((UserHandle) obj).stream();
            }
        }), CustomWidgetManager.INSTANCE.m166x39265fe7(context).stream());
    }
}
