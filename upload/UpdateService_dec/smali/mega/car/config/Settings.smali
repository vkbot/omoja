.class public interface abstract Lmega/car/config/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x23
    permission = "mega.car.permission.SETTINGS"
.end annotation


# static fields
.field public static final ID_ALARM_VOLUME:I = 0x2300001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/AlarmVolume/Set"
        subscribe = "SystemSetting/AlarmVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ANDROID_READY:I = 0x23000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/AndroidReady/Set"
        subscribe = "SystemSetting/AndroidReady"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASSISTANT_VOLUME:I = 0x2300001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/AssistantVolume/Set"
        subscribe = "SystemSetting/AssistantVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_PRE_CHECK:I = 0x23000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestCheckDoor/Set"
        subscribe = "AVMCalibration/RequestCheckDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_REQUEST4S:I = 0x23000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/Request4SCalib/Set"
        subscribe = "AVMCalibration/Request4SCalib"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_RESULT:I = 0x23000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/ResponseResult/Set"
        subscribe = "AVMCalibration/ResponseResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_RESULT_REQ:I = 0x2300000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestClibResult/Set"
        subscribe = "AVMCalibration/RequestClibResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_SEND_SITE:I = 0x2300000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/SendCalibSite/Set"
        subscribe = "AVMCalibration/SendCalibSite"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_SITE_REQ:I = 0x23000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestFeedBackCalibSiteResult/Set"
        subscribe = "AVMCalibration/RequestFeedBackCalibSiteResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_SITE_RESULT_REQ:I = 0x2300000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestCalibSiteResult/Set"
        subscribe = "AVMCalibration/RequestCalibSiteResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIB_START:I = 0x23000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestClibStart/Set"
        subscribe = "AVMCalibration/RequestClibStart"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_OPEN_REQUEST:I = 0x2300000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestOpenAVM/Set"
        subscribe = "AVMCalibration/RequestOpenAVM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_OPEN_RESULT:I = 0x2300000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestAVMResult/Set"
        subscribe = "AVMCalibration/RequestAVMResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_PRE_CHECK_RESULT:I = 0x23000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVMCalibration/RequestCheckDoorResult/Set"
        subscribe = "AVMCalibration/RequestCheckDoorResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CAN_DATA:I = 0x23000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/CanData/Set"
        subscribe = "SystemSetting/CanData"
        type = [B
    .end annotation
.end field

.field public static final ID_CAR_SPEED_VOLUME_LEVEL:I = 0x23000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/CarSpeedVolumeLevel/Set"
        subscribe = "SystemSetting/CarSpeedVolumeLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DAY_NIGHT_MODE:I = 0x23000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/DayNightMode/Set"
        subscribe = "SystemSetting/DayNightMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DEFAULT_VOLUME:I = 0x23000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/DefaultVolume/Set"
        subscribe = "SystemSetting/DefaultVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_THEME:I = 0x23000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/Theme/Set"
        subscribe = "SystemSetting/Theme"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_VISIBLE:I = 0x23000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IC/Visible/Set"
        subscribe = "IC/Visible"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANGUAGE:I = 0x23000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/Language/Set"
        subscribe = "SystemSetting/Language"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOUDNESS_SWITCH:I = 0x23000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/LoudnessSwitch/Set"
        subscribe = "SystemSetting/LoudnessSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEDIA_VOLUME:I = 0x2300001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/MediaVolume/Set"
        subscribe = "SystemSetting/MediaVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_VOLUME:I = 0x2300001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/NavigationVolume/Set"
        subscribe = "SystemSetting/NavigationVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_VOLUME:I = 0x2300001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/PhoneVolume/Set"
        subscribe = "SystemSetting/PhoneVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUICK_SET_STS_AVM:I = 0x23000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "QuickSet/SettingStsAVM/Set"
        subscribe = "QuickSet/SettingStsAVM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUICK_SET_STS_ESP_OFF:I = 0x23000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "QuickSet/SettingStsESPOFF/Set"
        subscribe = "QuickSet/SettingStsESPOFF"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUICK_SET_STS_HDC:I = 0x23000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "QuickSet/SettingStsHDC/Set"
        subscribe = "QuickSet/SettingStsHDC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUICK_SET_SYNC_STS:I = 0x23000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "QuickSet/SyncSts/Set"
        subscribe = "QuickSet/SyncSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUICK_SET_TIME_SHOW_TYPE:I = 0x23000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "QuickSet/SetTimeShowType/Set"
        subscribe = "QuickSet/SetTimeShowType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_SHOT:I = 0x23000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/ScreenShot/Set"
        subscribe = "SystemSetting/ScreenShot"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOUND_FIELD_BALANCE:I = 0x23000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/SoundFieldBalance/Set"
        subscribe = "SystemSetting/SoundFieldBalance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOUND_FIELD_FADER:I = 0x23000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/SoundFieldFader/Set"
        subscribe = "SystemSetting/SoundFieldFader"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_FORMAT:I = 0x23000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/TimeFormat/Set"
        subscribe = "SystemSetting/TimeFormat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_UPDATE_MODE:I = 0x2300000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "update/mode"
        subscribe = "update/mode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_UUID_DATA:I = 0x23000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Uuid/info/Set"
        subscribe = "Uuid/info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VOLUME_EFFECT_ADJUST:I = 0x2300001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/VolumeEffectAdjust/Set"
        subscribe = "SystemSetting/VolumeEffectAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x23
