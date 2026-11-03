package com.android.launcher3.widget.custom;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Parcel;
import android.os.Process;
import android.util.SparseArray;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.plugins.CustomWidgetPlugin;
import com.android.systemui.plugins.PluginListener;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
public class CustomWidgetManager implements PluginListener<CustomWidgetPlugin> {
    public static final MainThreadInitializedObject<CustomWidgetManager> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.widget.custom.CustomWidgetManager$$ExternalSyntheticLambda0
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return CustomWidgetManager.$r8$lambda$KTvIvuJBygaYFI3nHoDo6nn7Fjg(context);
        }
    });
    private final Context mContext;
    private Consumer<PackageUserKey> mWidgetRefreshCallback;
    private int mAutoProviderId = 0;
    private final SparseArray<CustomWidgetPlugin> mPlugins = new SparseArray<>();
    private final List<CustomAppWidgetProviderInfo> mCustomWidgets = new ArrayList();
    private final SparseArray<ComponentName> mWidgetsIdMap = new SparseArray<>();

    public static /* synthetic */ CustomWidgetManager $r8$lambda$KTvIvuJBygaYFI3nHoDo6nn7Fjg(Context context) {
        return new CustomWidgetManager(context);
    }

    public void setWidgetRefreshCallback(Consumer<PackageUserKey> cb) {
        this.mWidgetRefreshCallback = cb;
    }

    private CustomWidgetManager(Context context) {
        this.mContext = context;
        PluginManagerWrapper.INSTANCE.m166x39265fe7(context).addPluginListener(this, CustomWidgetPlugin.class, true);
    }

    public void onDestroy() {
        PluginManagerWrapper.INSTANCE.m166x39265fe7(this.mContext).removePluginListener(this);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(CustomWidgetPlugin plugin, Context context) {
        this.mPlugins.put(this.mAutoProviderId, plugin);
        List<AppWidgetProviderInfo> installedProvidersForProfile = AppWidgetManager.getInstance(context).getInstalledProvidersForProfile(Process.myUserHandle());
        if (installedProvidersForProfile.isEmpty()) {
            return;
        }
        Parcel parcelObtain = Parcel.obtain();
        installedProvidersForProfile.get(0).writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        CustomAppWidgetProviderInfo customAppWidgetProviderInfoNewInfo = newInfo(this.mAutoProviderId, plugin, parcelObtain, context);
        parcelObtain.recycle();
        this.mCustomWidgets.add(customAppWidgetProviderInfoNewInfo);
        this.mWidgetsIdMap.put(this.mAutoProviderId, customAppWidgetProviderInfoNewInfo.provider);
        this.mWidgetRefreshCallback.accept(null);
        this.mAutoProviderId++;
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(CustomWidgetPlugin plugin) {
        int iFindProviderId = findProviderId(plugin);
        if (iFindProviderId == -1) {
            return;
        }
        this.mPlugins.remove(iFindProviderId);
        this.mCustomWidgets.remove(getWidgetProvider(iFindProviderId));
        this.mWidgetsIdMap.remove(iFindProviderId);
    }

    public void onViewCreated(LauncherAppWidgetHostView view) {
        CustomWidgetPlugin customWidgetPlugin = this.mPlugins.get(((CustomAppWidgetProviderInfo) view.getAppWidgetInfo()).providerId);
        if (customWidgetPlugin == null) {
            return;
        }
        customWidgetPlugin.onViewCreated(view);
    }

    public Stream<CustomAppWidgetProviderInfo> stream() {
        return this.mCustomWidgets.stream();
    }

    public int getWidgetIdForCustomProvider(ComponentName provider) {
        int iIndexOfValue = this.mWidgetsIdMap.indexOfValue(provider);
        if (iIndexOfValue >= 0) {
            return (-100) - this.mWidgetsIdMap.keyAt(iIndexOfValue);
        }
        return 0;
    }

    public LauncherAppWidgetProviderInfo getWidgetProvider(int widgetId) {
        ComponentName componentName = this.mWidgetsIdMap.get((-100) - widgetId);
        for (CustomAppWidgetProviderInfo customAppWidgetProviderInfo : this.mCustomWidgets) {
            if (((LauncherAppWidgetProviderInfo) customAppWidgetProviderInfo).provider.equals(componentName)) {
                return customAppWidgetProviderInfo;
            }
        }
        return null;
    }

    private static CustomAppWidgetProviderInfo newInfo(int providerId, CustomWidgetPlugin plugin, Parcel parcel, Context context) {
        CustomAppWidgetProviderInfo customAppWidgetProviderInfo = new CustomAppWidgetProviderInfo(parcel, false, providerId);
        customAppWidgetProviderInfo.provider = new ComponentName(context.getPackageName(), LauncherAppWidgetProviderInfo.CLS_CUSTOM_WIDGET_PREFIX + providerId);
        customAppWidgetProviderInfo.label = plugin.getLabel();
        customAppWidgetProviderInfo.resizeMode = plugin.getResizeMode();
        customAppWidgetProviderInfo.spanX = plugin.getSpanX();
        customAppWidgetProviderInfo.spanY = plugin.getSpanY();
        customAppWidgetProviderInfo.minSpanX = plugin.getMinSpanX();
        customAppWidgetProviderInfo.minSpanY = plugin.getMinSpanY();
        return customAppWidgetProviderInfo;
    }

    private int findProviderId(CustomWidgetPlugin plugin) {
        for (int i = 0; i < this.mPlugins.size(); i++) {
            int iKeyAt = this.mPlugins.keyAt(i);
            if (this.mPlugins.get(iKeyAt) == plugin) {
                return iKeyAt;
            }
        }
        return -1;
    }
}
