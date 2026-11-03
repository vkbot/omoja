package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 35, permission = "mega.car.permission.SETTINGS")
public interface Settings {

    @PropertyDefine(publish = "SystemSetting/AlarmVolume/Set", subscribe = "SystemSetting/AlarmVolume", type = Integer.class)
    public static final int ID_ALARM_VOLUME = 587202590;

    @PropertyDefine(publish = "SystemSetting/AndroidReady/Set", subscribe = "SystemSetting/AndroidReady", type = Integer.class)
    public static final int ID_ANDROID_READY = 587202562;

    @PropertyDefine(publish = "SystemSetting/AssistantVolume/Set", subscribe = "SystemSetting/AssistantVolume", type = Integer.class)
    public static final int ID_ASSISTANT_VOLUME = 587202587;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestCheckDoor/Set", subscribe = "AVMCalibration/RequestCheckDoor", type = Integer.class)
    public static final int ID_AVM_CALIB_PRE_CHECK = 587202563;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/Request4SCalib/Set", subscribe = "AVMCalibration/Request4SCalib", type = Integer.class)
    public static final int ID_AVM_CALIB_REQUEST4S = 587202597;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/ResponseResult/Set", subscribe = "AVMCalibration/ResponseResult", type = Integer.class)
    public static final int ID_AVM_CALIB_RESULT = 587202565;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestClibResult/Set", subscribe = "AVMCalibration/RequestClibResult", type = Integer.class)
    public static final int ID_AVM_CALIB_RESULT_REQ = 587202572;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/SendCalibSite/Set", subscribe = "AVMCalibration/SendCalibSite", type = Integer.class)
    public static final int ID_AVM_CALIB_SEND_SITE = 587202574;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestFeedBackCalibSiteResult/Set", subscribe = "AVMCalibration/RequestFeedBackCalibSiteResult", type = Integer.class)
    public static final int ID_AVM_CALIB_SITE_REQ = 587202576;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestCalibSiteResult/Set", subscribe = "AVMCalibration/RequestCalibSiteResult", type = Integer.class)
    public static final int ID_AVM_CALIB_SITE_RESULT_REQ = 587202575;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestClibStart/Set", subscribe = "AVMCalibration/RequestClibStart", type = Integer.class)
    public static final int ID_AVM_CALIB_START = 587202564;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestOpenAVM/Set", subscribe = "AVMCalibration/RequestOpenAVM", type = Integer.class)
    public static final int ID_AVM_OPEN_REQUEST = 587202570;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestAVMResult/Set", subscribe = "AVMCalibration/RequestAVMResult", type = Integer.class)
    public static final int ID_AVM_OPEN_RESULT = 587202571;

    @PropertyDefine(changeMode = 2, publish = "AVMCalibration/RequestCheckDoorResult/Set", subscribe = "AVMCalibration/RequestCheckDoorResult", type = Integer.class)
    public static final int ID_AVM_PRE_CHECK_RESULT = 587202569;

    @PropertyDefine(publish = "SystemSetting/CanData/Set", subscribe = "SystemSetting/CanData", type = byte[].class)
    public static final int ID_CAN_DATA = 587202566;

    @PropertyDefine(publish = "SystemSetting/CarSpeedVolumeLevel/Set", subscribe = "SystemSetting/CarSpeedVolumeLevel", type = Integer.class)
    public static final int ID_CAR_SPEED_VOLUME_LEVEL = 587202592;

    @PropertyDefine(publish = "SystemSetting/DayNightMode/Set", subscribe = "SystemSetting/DayNightMode", type = Integer.class)
    public static final int ID_DAY_NIGHT_MODE = 587202583;

    @PropertyDefine(publish = "SystemSetting/DefaultVolume/Set", subscribe = "SystemSetting/DefaultVolume", type = Integer.class)
    public static final int ID_DEFAULT_VOLUME = 587202585;

    @PropertyDefine(publish = "SystemSetting/Theme/Set", subscribe = "SystemSetting/Theme", type = Integer.class)
    public static final int ID_DISPLAY_THEME = 587202584;

    @PropertyDefine(publish = "IC/Visible/Set", subscribe = "IC/Visible", type = Integer.class)
    public static final int ID_IC_VISIBLE = 587202582;

    @PropertyDefine(publish = "SystemSetting/Language/Set", subscribe = "SystemSetting/Language", type = Integer.class)
    public static final int ID_LANGUAGE = 587202561;

    @PropertyDefine(publish = "SystemSetting/LoudnessSwitch/Set", subscribe = "SystemSetting/LoudnessSwitch", type = Integer.class)
    public static final int ID_LOUDNESS_SWITCH = 587202593;

    @PropertyDefine(publish = "SystemSetting/MediaVolume/Set", subscribe = "SystemSetting/MediaVolume", type = Integer.class)
    public static final int ID_MEDIA_VOLUME = 587202588;

    @PropertyDefine(publish = "SystemSetting/NavigationVolume/Set", subscribe = "SystemSetting/NavigationVolume", type = Integer.class)
    public static final int ID_NAVIGATION_VOLUME = 587202586;

    @PropertyDefine(publish = "SystemSetting/PhoneVolume/Set", subscribe = "SystemSetting/PhoneVolume", type = Integer.class)
    public static final int ID_PHONE_VOLUME = 587202589;

    @PropertyDefine(changeMode = 2, publish = "QuickSet/SettingStsAVM/Set", subscribe = "QuickSet/SettingStsAVM", type = Integer.class)
    public static final int ID_QUICK_SET_STS_AVM = 587202579;

    @PropertyDefine(changeMode = 2, publish = "QuickSet/SettingStsESPOFF/Set", subscribe = "QuickSet/SettingStsESPOFF", type = Integer.class)
    public static final int ID_QUICK_SET_STS_ESP_OFF = 587202580;

    @PropertyDefine(changeMode = 2, publish = "QuickSet/SettingStsHDC/Set", subscribe = "QuickSet/SettingStsHDC", type = Integer.class)
    public static final int ID_QUICK_SET_STS_HDC = 587202578;

    @PropertyDefine(changeMode = 2, publish = "QuickSet/SyncSts/Set", subscribe = "QuickSet/SyncSts", type = Integer.class)
    public static final int ID_QUICK_SET_SYNC_STS = 587202581;

    @PropertyDefine(changeMode = 2, publish = "QuickSet/SetTimeShowType/Set", subscribe = "QuickSet/SetTimeShowType", type = Integer.class)
    public static final int ID_QUICK_SET_TIME_SHOW_TYPE = 587202577;

    @PropertyDefine(publish = "SystemSetting/ScreenShot/Set", subscribe = "SystemSetting/ScreenShot", type = Integer.class)
    public static final int ID_SCREEN_SHOT = 587202567;

    @PropertyDefine(publish = "SystemSetting/SoundFieldBalance/Set", subscribe = "SystemSetting/SoundFieldBalance", type = Integer.class)
    public static final int ID_SOUND_FIELD_BALANCE = 587202595;

    @PropertyDefine(publish = "SystemSetting/SoundFieldFader/Set", subscribe = "SystemSetting/SoundFieldFader", type = Integer.class)
    public static final int ID_SOUND_FIELD_FADER = 587202594;

    @PropertyDefine(publish = "SystemSetting/TimeFormat/Set", subscribe = "SystemSetting/TimeFormat", type = Integer.class)
    public static final int ID_TIME_FORMAT = 587202568;

    @PropertyDefine(publish = "update/mode", subscribe = "update/mode", type = Integer.class)
    public static final int ID_UPDATE_MODE = 587202573;

    @PropertyDefine(publish = "Uuid/info/Set", subscribe = "Uuid/info", type = String.class)
    public static final int ID_UUID_DATA = 587202596;

    @PropertyDefine(publish = "SystemSetting/VolumeEffectAdjust/Set", subscribe = "SystemSetting/VolumeEffectAdjust", type = Integer.class)
    public static final int ID_VOLUME_EFFECT_ADJUST = 587202591;
    public static final int MGR_ID = 35;
}
