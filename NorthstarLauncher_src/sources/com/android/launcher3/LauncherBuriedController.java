package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlavorUtils;
import com.mega.chery.adapter.buried.controller.BuriedController;
import com.mega.chery.adapter.buried.model.BuriedRecord;
import com.mega.chery.adapter.buried.utils.BuriedUtils;
import com.mega.launcher.model.AppUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class LauncherBuriedController {
    private static final String ACTIVITY_CLOSE = "App_Close";
    private static final String ACTIVITY_OPEN = "App_Open";
    private static final String CLOSE_MODE = "ClsMode";
    private static final String CLOSE_TIME = "ClsTime";
    private static final Map<ComponentName, String> COMPONENT_TO_CODE;
    private static final String OPEN_MODE = "OpsMode";
    private static final String OPEN_TIME = "OpsTime";
    private static final Map<String, String> PACKAGE_TO_CODE;
    private static final String TAG = "LauncherBuriedController";
    private final Executor mExecutor = Executors.newSerialExecutor();

    static {
        HashMap map = new HashMap();
        PACKAGE_TO_CODE = map;
        COMPONENT_TO_CODE = new HashMap();
        map.put(Const.PACKAGE_LION_MAP, "ZA010F0F");
        map.put(AppUtils.PKG_BT_PHONE, "ZC030F0F");
        map.put(Const.PACKAGE_CAS_SETTINGS, "ZB140F0F");
        map.put(Const.PACKAGE_WEATHER_IFLYTEK, "SA010F0F");
        map.put("com.mega.carrepair", "ZB110F0F");
        map.put("com.lion.scenemode.hmi", "ZD040F0F");
        map.put(Const.PACKAGE_VOICE_ASSISTANCE, "ZD070F0F");
        map.put("com.mega.chery.gallery", "ZC020F0F");
        map.put("com.lion.video", "ZC040F0F");
        map.put("com.lion.usercenter", "ZB070F0F");
        map.put("com.skyworthauto.dvrchery", "ZE010F0F");
        map.put("com.lion.handbook", "ZC010F0F");
        map.put("com.iflytek.autofly.iqiyi", "SD010F0F");
        map.put("com.bilibili.bilithings", "SD030F0F");
        map.put("com.lion.changba", "SE010F0F");
        map.put("com.mega.hicar", "ZF020F0F");
        map.put("com.mega.carlink", "ZF050F0F");
        map.put("com.lion.appmanager", "ZD050F0F");
        map.put(Utils.PACKAGE_E_CALL, "ZC050F0F");
        map.put("com.lion.themeshop", "ZD020F0F");
        map.put("com.lion.iot", "SB010F0F");
        map.put(Const.PACKAGE_LION_MEDIA, "ZG010F0F");
        map.put(AppUtils.PKG_UPGRADE, "ZB080F0F");
        map.put("com.mega.androidauto", "ZF040F0F");
        if (FlavorUtils.isT1GC()) {
            map.put("com.xiaoji.car", "SJ060F0F");
            map.put("com.tencent.newslite", "SF120F0F");
            map.put("com.flcar.wyhyly.qirui", "SG100F0F");
            map.put("com.huxiu.incar", "SF140F0F");
            map.put("com.onyuan.guandan", "SJ090F0F");
            map.put("onyuan.awww.ddz3", "SJ100F0F");
            map.put("com.duoduo.child.storyhd", "SG030F0F");
            map.put("com.hongen.app.word.local", "SG040F0F");
            map.put("com.hongen.app.word", "SG040F0F");
            map.put("com.ihuman.english", "SG050F0F");
            map.put("com.ihuman.pinyin", "SG060F0F");
            map.put("com.baidu.netdisk.car", "SF130F0F");
            map.put("cn.kuwo.kwmusiccar", "SC120F0F");
            map.put("com.sohu.automotive", "SD040F0F");
            map.put("com.butel.ahcartv", "SC140F0F");
            map.put("com.sdw.flash.game.mini.autoai", "SJ030F0F");
            map.put("com.stnts.sly.androidtv", "SJ050F0F");
            map.put("com.ihuman.imath", "SG070F0F");
            map.put("com.ihuman.ibaike", "SG080F0F");
            return;
        }
        if (FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) {
            map.put("com.mega.manual", "ZC010F0F");
            map.put("com.lion.handbook", "ZC010F0F");
            map.put("com.bitech.instructions", "ZC010F0F");
            map.put("com.bitech.scenemode", "ZD040F0F");
            map.put(Const.PACKAGE_WEATHER_LIONTECH, "SA010F0F");
            map.put("com.uma.musicvk", "SB010F0F");
            map.put("com.vk.vkvideo", "SC010F0F");
            map.put("ru.zen.android", "SB020F0F");
            map.put("com.vk.im", "SE010F0F");
            map.put("com.chery.personalcenter", "ZB070F0F");
            map.put("com.liontech.membercenter", "SG010F0F");
            map.put("com.liontech.appstore", "SH010F0F");
            map.put("com.loostone.tuning", "ZG040F0F");
            map.put("com.telenav.scoutivi.anghami.exeed", "SB030F0F");
            map.put("com.telenav.scoutivi.anghami.chery", "SB030F0F");
            map.put("com.telenav.scoutivi.news.exeed", "SB040F0F");
            map.put("com.telenav.scoutivi.news.chery", "SB040F0F");
            map.put("com.liontech.radio", "SB050F0F");
            map.put("com.beeptunes.cherymusic", "SB070F0F");
            map.put("com.xiaoji.carbox", "SD010F0F");
            map.put("com.telenav.scoutivi.zoom.exeed", "SE020F0F");
            map.put("com.telenav.scoutivi.zoom.chery", "SE020F0F");
            map.put(Const.PACKAGE_MAP_YANDEX, "SF010F0F");
            map.put(Const.PACKAGE_MAP_TELENAV, "SF020F0F");
        }
    }

    public LauncherBuriedController(Context context) {
        BuriedController.getInstance().init(context);
    }

    public void onActivityOpened(final ComponentName componentName) {
        this.mExecutor.execute(new Runnable() { // from class: com.android.launcher3.LauncherBuriedController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m39x7112ae6d(componentName);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onActivityOpened$0$com-android-launcher3-LauncherBuriedController, reason: not valid java name */
    /* synthetic */ void m39x7112ae6d(ComponentName componentName) {
        String strSubstring;
        String orDefault = COMPONENT_TO_CODE.getOrDefault(componentName, PACKAGE_TO_CODE.get(componentName.getPackageName()));
        MLog.d(TAG, "onActivityOpened: " + orDefault + " " + componentName);
        if (TextUtils.isEmpty(orDefault)) {
            return;
        }
        try {
            strSubstring = orDefault.substring(0, 4);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            strSubstring = null;
        }
        if (TextUtils.isEmpty(strSubstring)) {
            return;
        }
        String strComposeOpenMode = composeOpenMode(orDefault);
        String strComposeOpenTime = composeOpenTime(orDefault);
        BuriedRecord.recordValue(strComposeOpenMode, 2);
        BuriedRecord.recordValue(strComposeOpenTime, BuriedUtils.getTimeString());
        BuriedController.getInstance().startDataPoint(strSubstring, strComposeOpenMode, strComposeOpenTime);
    }

    public void onActivityClosed(final ComponentName componentName) {
        this.mExecutor.execute(new Runnable() { // from class: com.android.launcher3.LauncherBuriedController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m38xbc0149a9(componentName);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onActivityClosed$1$com-android-launcher3-LauncherBuriedController, reason: not valid java name */
    /* synthetic */ void m38xbc0149a9(ComponentName componentName) {
        String strSubstring;
        String orDefault = COMPONENT_TO_CODE.getOrDefault(componentName, PACKAGE_TO_CODE.get(componentName.getPackageName()));
        MLog.d(TAG, "onActivityClosed: " + orDefault + " " + componentName);
        if (TextUtils.isEmpty(orDefault)) {
            return;
        }
        try {
            strSubstring = orDefault.substring(0, 4);
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
            strSubstring = null;
        }
        if (TextUtils.isEmpty(strSubstring)) {
            return;
        }
        String strComposeCloseMode = composeCloseMode(orDefault);
        String strComposeCloseTime = composeCloseTime(orDefault);
        BuriedRecord.recordValue(strComposeCloseMode, 2);
        BuriedRecord.recordValue(strComposeCloseTime, BuriedUtils.getTimeString());
        BuriedController.getInstance().startDataPoint(strSubstring, strComposeCloseMode, strComposeCloseTime);
    }

    private String composeOpenMode(String code) {
        return code + "/App_Open/OpsMode";
    }

    private String composeOpenTime(String code) {
        return code + "/App_Open/OpsTime";
    }

    private String composeCloseMode(String code) {
        return code + "/App_Close/ClsMode";
    }

    private String composeCloseTime(String code) {
        return code + "/App_Close/ClsTime";
    }
}
