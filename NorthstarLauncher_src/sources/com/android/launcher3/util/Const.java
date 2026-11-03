package com.android.launcher3.util;

import android.content.ComponentName;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.Utils;
import com.mega.common.split.CommonSplitTaskManager;
import com.mega.common.split.SplitScreenConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Const {
    public static final String ACTION_ASK_ITEM_BROAD = "com.mega.widget.action.ask.cell";
    public static final String ACTION_CHECK_ITEM_BROAD = "com.mega.widget.action.check.cell";
    public static final String ACTION_HIDE_WIDGET = "com.android.launcher3.HIDE_WIDGET";
    public static final String ACTION_SHOW_WIDGET = "com.android.launcher3.SHOW_WIDGET";
    public static final ComponentName APP_LIST;
    private static final List<String> DISALLOW_ANIMATE_ICON_PACKAGES;
    public static final ComponentName ICON_KUGOU;
    public static final ComponentName ICON_LE_TING;
    public static final ComponentName ICON_NETEASE;
    public static final ComponentName ICON_QQ_MUSIC;
    public static final ComponentName ICON_XIMALAYA;
    public static final Set<String> PACKAGES_MOVE_TASK_TO_FRONT;
    public static final Set<String> PACKAGES_POWER_ON_REQUIRED;
    public static final Set<String> PACKAGES_SPLIT_SCREEN;
    public static final String PACKAGE_ANDROID_AUTO = "com.mega.androidauto";
    public static final String PACKAGE_AVM = "com.mega.avm";
    public static final String PACKAGE_CAR_LINK = "com.mega.carlink";
    public static final String PACKAGE_CAR_PLAY = "com.mega.carplay";
    public static final String PACKAGE_HICAR = "com.mega.hicar";
    public static final String PACKAGE_LAUNCHER = "com.android.launcher3";
    public static final String PACKAGE_LION_MEDIA = "com.lion.media";
    public static final String PACKAGE_MEGA_MEDIA = "com.mega.media";
    public static final String PACKAGE_VOICE_ASSISTANCE = "com.mega.assistantcenter";
    public static final ComponentName RECENTS_COMPONENT;
    private static final List<String> STABLE_WIDGET_LIST;
    public static final String PACKAGE_LION_MAP = "com.lion.appfwk.navi";
    public static final String PACKAGE_MAP_TELENAV = "com.telenav.app.arp";
    public static final String PACKAGE_MAP_YANDEX = "com.liontech.autonavi";
    public static final String[] MAP_PACKAGES = {PACKAGE_LION_MAP, PACKAGE_MAP_TELENAV, PACKAGE_MAP_YANDEX};
    public static final String PACKAGE_WEATHER_IFLYTEK = "com.iflytek.autofly.weather";
    public static final String PACKAGE_WEATHER_LIONTECH = "com.liontech.weather";
    public static final String[] WEATHER_PACKAGES = {PACKAGE_WEATHER_IFLYTEK, PACKAGE_WEATHER_LIONTECH};
    public static final String PACKAGE_WIDGET = "com.mega.widget";
    public static final ComponentName WIDGET_MEDIA = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.MidMediaView");
    public static final ComponentName WIDGET_MAP = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.map.MidMapView");
    public static final ComponentName WIDGET_WEATHER = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.weather.MidWeatherView");
    public static final String PACKAGE_CAS_SETTINGS = "com.mega.carsettings";
    public static final ComponentName WIDGET_EV = new ComponentName(PACKAGE_CAS_SETTINGS, "com.mega.ev.ui.EvWidgetView");

    static {
        HashSet hashSet = new HashSet();
        PACKAGES_SPLIT_SCREEN = hashSet;
        HashSet hashSet2 = new HashSet();
        PACKAGES_MOVE_TASK_TO_FRONT = hashSet2;
        ICON_KUGOU = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.ui.KugouActivity");
        ICON_QQ_MUSIC = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.ui.QqMusicActivity");
        ICON_XIMALAYA = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.ui.XimalayaActivity");
        ICON_LE_TING = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.ui.LetingActivity");
        ICON_NETEASE = new ComponentName(PACKAGE_WIDGET, "com.mega.widget.media.ui.NeteaseActivity");
        APP_LIST = new ComponentName("com.android.launcher3", "com.android.launcher3.activity.AppListActivity");
        RECENTS_COMPONENT = new ComponentName(Utils.SYSTEM_PACKAGE, "com.android.systemui.recents.RecentsActivity");
        HashSet hashSet3 = new HashSet();
        PACKAGES_POWER_ON_REQUIRED = hashSet3;
        hashSet3.add(PACKAGE_AVM);
        STABLE_WIDGET_LIST = Arrays.asList(LauncherApplication.get().getResources().getStringArray(R.array.widget_cant_remove));
        DISALLOW_ANIMATE_ICON_PACKAGES = Arrays.asList(LauncherApplication.get().getResources().getStringArray(R.array.disallow_animate_icon_packages));
        if (FlavorUtils.isT1GCInt()) {
            Collections.addAll(hashSet, SplitScreenConstant.TIGC_INT_SUPPORT_SPLIT_PKGS);
        } else {
            Collections.addAll(hashSet, SplitScreenConstant.T1GC_SUPPORT_SPLIT_PKGS);
        }
        hashSet2.add(PACKAGE_LION_MEDIA);
        hashSet2.add(PACKAGE_VOICE_ASSISTANCE);
    }

    public static ComponentName maybeWidgetIcon(ComponentName componentName) {
        if (componentName == null) {
            return null;
        }
        return maybeWidgetIcon(componentName.getPackageName());
    }

    public static ComponentName maybeWidgetIcon(String packageName) {
        if (Objects.equals(packageName, PACKAGE_LION_MEDIA) || Objects.equals(packageName, PACKAGE_MEGA_MEDIA)) {
            return WIDGET_MEDIA;
        }
        if (Objects.equals(packageName, PACKAGE_LION_MAP) || Objects.equals(packageName, PACKAGE_MAP_TELENAV) || Objects.equals(packageName, PACKAGE_MAP_YANDEX)) {
            return WIDGET_MAP;
        }
        if (Objects.equals(packageName, PACKAGE_WEATHER_IFLYTEK) || Objects.equals(packageName, PACKAGE_WEATHER_LIONTECH)) {
            return WIDGET_WEATHER;
        }
        return null;
    }

    public static boolean isCantRemoveWidget(ComponentName app) {
        return STABLE_WIDGET_LIST.contains(app.flattenToShortString());
    }

    public static boolean willSplitScreen(String packageName) {
        LauncherApplication launcherApplication = LauncherApplication.get();
        return PACKAGES_SPLIT_SCREEN.contains(packageName) && CommonSplitTaskManager.INSTANCE.isInNaviState(launcherApplication) && CommonSplitTaskManager.INSTANCE.isSettingSplitScreenOpen(launcherApplication);
    }

    public static boolean inMoveTaskToFront(String packageName) {
        return PACKAGES_MOVE_TASK_TO_FRONT.contains(packageName);
    }

    public static boolean shouldAnimateIcon(String packageName) {
        return (packageName == null || DISALLOW_ANIMATE_ICON_PACKAGES.contains(packageName)) ? false : true;
    }
}
