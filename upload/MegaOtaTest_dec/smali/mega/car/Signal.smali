.class public final Lmega/car/Signal;
.super Ljava/lang/Object;
.source "Signal.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x67
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final AVM_DISPLAYSTS:I = 0x67000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/AVMDisplaySts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final DELETE_ID_INFO:I = 0x67000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/DeleteIDInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final EV_HEV_MILEAGE_SETTING:I = 0x67000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/EvHevMileageSetting"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final FACE_ID:I = 0x67000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/FaceID"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final FUELBAR_PERCENT:I = 0x67000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FuelBar/Perent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ABSOLUTE_SPEED_LIMIT:I = 0x67000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AbsoluteSpeedLimit/Set"
        subscribe = "ADAS/AbsoluteSpeedLimit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_EZE_VOICE:I = 0x670000be
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/Voice/EZE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_VOICE_REMINDER:I = 0x6700006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/VoiceReminder/Set"
        subscribe = "ADAS/VoiceReminder"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADB_ENABLE:I = 0x6700003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "LHM/LHM1ADBenableFeedback/Set"
        subscribe = "LHM/LHM1ADBenableFeedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_AUTHN:I = 0x670000a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigAuthn/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_BRI_ADJ:I = 0x670000a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigBriAdj/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_COLOR:I = 0x670000a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigColor/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_FADE_ENA:I = 0x670000a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigFadeEna/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_FADE_IN_OUT_STEP_TI:I = 0x670000b8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigFadeINOUT/StepTi/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_FLNG_MOD_SEL:I = 0x670000a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigFlngModSel/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIG_INFO:I = 0x670000bd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AmbLigInfo/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ANDROID_RESET:I = 0x67000093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Android/Reset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APP_STS:I = 0x670000b6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/AppSts/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_ASSOC_WITH_DRVR_MOD:I = 0x67000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICMIHU/AsuAssocWithDrvrMod/Set"
        subscribe = "ICMIHU/AsuAssocWithDrvrMod"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_STYLE:I = 0x6700003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICMIHU/AsuStyle/Set"
        subscribe = "ICMIHU/AsuStyle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_DEFOG_SENSITIVE:I = 0x670000d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefogSensitive/Set"
        subscribe = "AC/AutoDefogSensitive"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_DEFOG_STS:I = 0x670000d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefogStatus/Set"
        subscribe = "AC/AutoDefogStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_APA_SYSTEM_STS:I = 0x670000ce
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AVM/APAScreenSystemSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_PERCENT_PHEV:I = 0x6700000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/Charge/PhevSOCDispPercent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_QUIESCENT_CURRENT:I = 0x67000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/IBSQuiescentCurrent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_BATTERY_REBOOT:I = 0x67000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BatteryReboot"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_START_VOLTAGE:I = 0x67000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/IBSBatteryStartVoltage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_BATTERY_STATUS:I = 0x67000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/IBSBatteryStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_TEMP:I = 0x67000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/IBSBatteryTemp"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_BCM_KEY_STS:I = 0x670000ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "APA/KeySts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLUETOOTH_CALL:I = 0x6700002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/BluetoothCall/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_INFO:I = 0x670000c3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeTimeInfo/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME_DURATION:I = 0x67000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ScheduledChargeDuration"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME_HOUR:I = 0x67000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ScheduledChargeTimeHour"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME_MIN:I = 0x67000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ScheduledChargeTimeMin"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME_WEEK:I = 0x67000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ScheduledChargeWeek"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_TRIP_INFO:I = 0x670000c4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/RsvTravelInfo/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CAR_COLOR:I = 0x67000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/CarColor/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CAR_SHOW_MODE:I = 0x67000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EngineeringMode/CarShowMode/Set"
        subscribe = "EngineeringMode/CarShowMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CC_CONNECT_STS:I = 0x67000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/CCConnectSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_PHEV_PACK_STATUS:I = 0x67000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/Charge/PhevPackChargingThermalSt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_STATE:I = 0x67000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/ChargeState/Set"
        subscribe = "Telltale/ChargeState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGING_STATUS:I = 0x67000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/PackChargingThermalSt/Set"
        subscribe = "EnergyInfo/PackChargingThermalSt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHILD_DETECTION:I = 0x67000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ChildDetection/Set"
        subscribe = "T1CF1/ChildDetection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHILD_DETECTION_REMINDER:I = 0x67000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ChildDetectionReminder/Set"
        subscribe = "T1CF1/ChildDetectionReminder"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHILD_LOCK_REAR:I = 0x67000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/ChildLock/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHRGN_FCT_MEM:I = 0x67000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ChrgnFctMem"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CWC_CHARGESTATUS:I = 0x6700002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "CWC/ChargeStatus/Set"
        subscribe = "CWC/ChargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CWC_PASSCHARGESTATUS:I = 0x6700002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "CWC/PassChargeStatus/Set"
        subscribe = "CWC/PassChargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CYCLE_MODE2:I = 0x670000d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/CycleMode2/Set"
        subscribe = "AC/CycleMode2"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DECO_LIGHT:I = 0x670000aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/Decorative/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DECO_LIGHT_FAIL_STS:I = 0x670000a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Light/DecoFailSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_FAIL:I = 0x67000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/DischargeFail"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_SET:I = 0x67000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/DischargeSet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_DETECT_PERMISSION_SWITCH:I = 0x6700008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DetectPermissionSwitch/Set"
        subscribe = "DMS/DetectPermissionSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_DOOR:I = 0x6700001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Warning/DoorOpen/DriverDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_TEMPERATURE_UNIT:I = 0x670000a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/Temperature/Set"
        subscribe = "DrivingInfo/Temperature"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELECTRIC_TEMP:I = 0x670000b7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/Electric/Set"
        subscribe = "AC/Temperature/Electric"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELECTRONIC_LOCK:I = 0x67000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ElectronicLockSts/Set"
        subscribe = "EnergyInfo/ElectronicLockSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENC_STATE:I = 0x6700009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Enc/State/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGYINFO_BATTERY_LEVEL:I = 0x67000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BatteryLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ETM_EGY_SAVE:I = 0x67000099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IHU/EtmEgySave/Set"
        subscribe = "IHU/EtmEgySave/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXHAUST_MODE:I = 0x670000c0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ExhaustMode/Set"
        subscribe = "AC/ExhaustMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FCM_FRM_TEXT_INFO_INFO:I = 0x670000a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "EngineCandata/FCM_FRM_6_Textinfo_Info"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FCM_LDW_SYS_STS:I = 0x670000a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "EngineCandata/FCM_10_LDWSysSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FILTER_LIFE:I = 0x670000d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/FilterLife"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FILTER_LIFE_RESET:I = 0x670000d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/FilterLifeReset/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRONT_GLASS_HEAT:I = 0x67000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/FrontGlassHeat/Set"
        subscribe = "AC/FrontGlassHeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUNCTION_SAFE_KEY:I = 0x670000c2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Function/Safe/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEAD_VOLUME_TYPE:I = 0x6700006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/HeadVolume/Set"
        subscribe = "Volume/HeadVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HIGHBEAM_LIGHT:I = 0x670000c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "APA/HighBeamSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HOOD:I = 0x6700001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Warning/DoorOpen/Hood"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HOTSPOT_PASSWORD:I = 0x67000094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Hotspot/Password"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HOTSPOT_PASSWORD_GET:I = 0x6700009e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Hotspot/Password/Get"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HOTSPOT_SSID:I = 0x67000095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Hotspot/Ssid"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HOTSPOT_SSID_GET:I = 0x6700009f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Hotspot/Ssid/Get"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HUD_BRI_RAW_VAL:I = 0x670000ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Hud/BriRawVal"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_BRI_RAW_VAL_AND_UNIT:I = 0x670000ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Hud/BriRawValAndUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_BRI_UNIT:I = 0x670000ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Hud/BriUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_ROTATION:I = 0x6700006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/Rotation/Set"
        subscribe = "HUD/Rotation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HVAC_STAY_MODE:I = 0x67000096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/StayMode/Set"
        subscribe = "AC/StayMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HVAC_STAY_MODE_DISPLAY:I = 0x67000097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/StayModeDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ICM_FROZEN_SCREEN:I = 0x670000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICM/FrozenScreen/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ICM_RANGE_DATA_RESET:I = 0x670000cd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingRangeData/Reset/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ICM_SCREEN_LOG_EXPORT:I = 0x670000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICM/Screen/LogExport/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ICM_TT_LIGHT_TEST:I = 0x670000cc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICM/TTLightTest/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ICM_VIDEO_STREAM_STS:I = 0x670000cb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICM/VideoStreamSts/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_ALCDRVRCFM:I = 0x67000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuAlcdrvrcfmonoffsts/Set"
        subscribe = "IDCU/IdcuAlcdrvrcfmonoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_ALCDRV_STY:I = 0x67000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuAlcdrvStysts/Set"
        subscribe = "IDCU/IdcuAlcdrvStysts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_CPON:I = 0x67000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuCponoffsts/Set"
        subscribe = "IDCU/IdcuCponoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_DCLC:I = 0x67000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuDclconoffsts/Set"
        subscribe = "IDCU/IdcuDclconoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_DRV_ASSI_STY:I = 0x6700004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuDrvAssiStysts/Set"
        subscribe = "IDCU/IdcuDrvAssiStysts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_FCTB:I = 0x67000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuFctbonoffsts/Set"
        subscribe = "IDCU/IdcuFctbonoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IDCU_NOC:I = 0x67000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IDCU/IdcuNoconoffsts/Set"
        subscribe = "IDCU/IdcuNoconoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTELLIGENT_WELCOME_LIGHT:I = 0x67000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ICM/LiShowMod/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IS_ENTER_MENU:I = 0x670000b5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DrivingInfo/IsEnterMenu"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_I_SAVE:I = 0x670000b2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ISave/Set"
        subscribe = "EnergyInfo/ISave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_I_SAVE_IMPROV:I = 0x670000b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/ISaveImprov"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_I_SAVE_IMPROV_ALL:I = 0x670000b4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/ISaveImprovAll"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_KEY_ID_INFORMATION:I = 0x67000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/KeyIDInformation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANE_ASSIST_INTERVENTION2:I = 0x67000081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/LaneAssistIntervention2/Set"
        subscribe = "DrivingInfo/LaneAssistIntervention2"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LHF_PULSE_COUNTER:I = 0x67000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LHFPulseCounter/Set"
        subscribe = "BodyInfo/LHFPulseCounter"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LHF_PULSE_COUNTER_FAIL:I = 0x6700007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LHFPulseCounterFailSts/Set"
        subscribe = "BodyInfo/LHFPulseCounterFailSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LHR_PULSE_COUNTER:I = 0x6700007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LHRPulseCounter/Set"
        subscribe = "BodyInfo/LHRPulseCounter"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LHR_PULSE_COUNTER_FAIL:I = 0x6700007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LHRPulseCounterFailSts/Set"
        subscribe = "BodyInfo/LHRPulseCounterFailSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LHTURN_LIGHT:I = 0x670000c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "APA/LHTurnlightSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MAINTENANCE_COUNT:I = 0x670000b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DrivingInfo/MaintenanceCount"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MIC_TEST:I = 0x670000d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MIC/DTC/resp"
        subscribe = "MIC/DTC/req"
        type = Ljava/lang/Byte;
    .end annotation
.end field

.field public static final ID_MODE_KEY_FUNCTION_TYPE:I = 0x67000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DVD/ModeKeyFunctionType/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_KEY_STS:I = 0x67000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DVD/ModeKeySts/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_SHOW_LHM:I = 0x67000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MusicShow/LHM/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_SHOW_RHM:I = 0x67000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MusicShow/RHM/Set"
        subscribe = "MusicShow/RHM/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PAB_SET:I = 0x6700004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ABM/PabSetsts/Set"
        subscribe = "ABM/PabSetsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PANEL_KEY_VOICE_REMIND:I = 0x6700002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/Setting/PanelKeyVoiceRemind"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_MEMORY:I = 0x6700006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ParkingMemory/Set"
        subscribe = "ADAS/ParkingMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARK_LIGHT:I = 0x670000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Light/ParkLightSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_AIRBAG:I = 0x6700002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PassengerAirbag/Set"
        subscribe = "BodyInfo/PassengerAirbag"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PLG_POSITION_STS:I = 0x6700001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineCandata/PLG_PositionSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_EV_HEV_PHEV:I = 0x6700000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Telltale/PowerEvHevPHEV"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_HV_READY_PHEV:I = 0x6700000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Telltale/PowerHvReadyPHEV"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PPMI_BSRBPASTS:I = 0x6700004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "PPMI/PpmiBsrbpasts/Set"
        subscribe = "PPMI/PpmiBsrbpasts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PPMI_HW:I = 0x6700004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "PPMI/PpmiHWsts/Set"
        subscribe = "PPMI/PpmiHWsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PSNGR_DOOR:I = 0x6700001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Warning/DoorOpen/PsngrDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PT_READY_CHIME_PHEV:I = 0x6700000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Telltale/PtReadyPHEVInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QNX_TTS_TEXT_INFO:I = 0x6700008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "QNX/TTSTextInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_REAR_LEFT_DOOR:I = 0x6700001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Warning/DoorOpen/LHRdoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_RIGHT_DOOR:I = 0x6700001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Warning/DoorOpen/RHRDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REFRIGERANT_LEAK_DISPLAY:I = 0x6700002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/RfgtLkDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RELATIVE_SPEED_LIMIT:I = 0x6700006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/RelativeSpeedLimit/Set"
        subscribe = "ADAS/RelativeSpeedLimit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RHF_PULSE_COUNTER:I = 0x6700007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RHFPulseCounter/Set"
        subscribe = "BodyInfo/RHFPulseCounter"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RHF_PULSE_COUNTER_FAIL:I = 0x6700007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RHFPulseCounterFailSts/Set"
        subscribe = "BodyInfo/RHFPulseCounterFailSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RHR_PULSE_COUNTER:I = 0x6700007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RHRPulseCounter/Set"
        subscribe = "BodyInfo/RHRPulseCounter"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RHR_PULSE_COUNTER_FAIL:I = 0x67000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RHRPulseCounterFailSts/Set"
        subscribe = "BodyInfo/RHRPulseCounterFailSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RHTURN_LIGHT:I = 0x670000c5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "APA/RHTurnlightSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RLCR_RAEB:I = 0x67000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RLCR/RlcrRaebonoffsts/Set"
        subscribe = "RLCR/RlcrRaebonoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RSV_TRAVEL:I = 0x67000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/RsvTravel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RSV_TRAVEL_HOUR:I = 0x6700000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/RsvTravelHour"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RSV_TRAVEL_MIN:I = 0x6700000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/RsvTravelMin"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RSV_TRAVEL_WEEK:I = 0x67000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/RsvTravelWeek/Set"
        subscribe = "EnergyInfo/RsvTravelWeek"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEATS_BELT_DRIVER:I = 0x67000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EngineCandata/DriverSeatBeltWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEATS_BELT_PASSENGER:I = 0x67000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EngineCandata/PsngrSeatBeltWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE_FRONT_LEFT:I = 0x6700005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatRotationAngleAdjust/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE_FRONT_RIGHT:I = 0x6700005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatRotationAngleAdjust/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE_REAR_LEFT:I = 0x6700005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatRotationAngleAdjust/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE_REAR_RIGHT:I = 0x6700005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatRotationAngleAdjust/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_DRIVER_MASSAGE_LEVEL:I = 0x67000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageLevel/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_DRIVER_MASSAGE_MODE:I = 0x67000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_FRONT_LEFT_REQUEST:I = 0x6700008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/VoiceSeatHeating/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_FRONT_RIGHT_REQUEST:I = 0x6700008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/VoiceSeatHeating/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_FRONT_LEFT:I = 0x6700005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMemory/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_FRONT_RIGHT:I = 0x67000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMemory/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MIRROR_MEMORY:I = 0x67000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "VehicleWindow/SeatAndRearMirrorMemoryEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MIRROR_MEMORY_ALLOW:I = 0x67000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatAndRearMirrorMemoryReqId/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_PASS_MASSAGE_LEVEL:I = 0x67000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageLevel/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_PASS_MASSAGE_MODE:I = 0x67000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_RELATE_KEY:I = 0x670000c1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Seat/RelateKeyOrFace/Set"
        subscribe = "Seat/RelateKeyOrFace"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_FRONT_LEFT_REQUEST:I = 0x6700008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/VoiceSeatVentilation/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_FRONT_RIGHT_REQUEST:I = 0x6700008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/VoiceSeatVentilation/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION_FRONT_LEFT:I = 0x67000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatForeBackAdjust/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION_FRONT_RIGHT:I = 0x67000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatForeBackAdjust/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION_REAR_LEFT:I = 0x67000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatForeBackAdjust/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION_REAR_RIGHT:I = 0x67000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatForeBackAdjust/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_Z_DIRECTION_FRONT_LEFT:I = 0x67000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatUpDownAdjust/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_Z_DIRECTION_FRONT_RIGHT:I = 0x67000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatUpDownAdjust/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SECOND_ROW_DISPLAY:I = 0x67000087
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/SecondRowDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_SENSITIVITY:I = 0x670000d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/Sentinel/SentinelSensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_SENTINEL_ALARM_MODE:I = 0x670000db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/Sentinel/SentinelAlarmMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_SENTINEL_FAULT_MODE:I = 0x670000da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/Sentinel/SentinelFaultMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_SENTINEL_WORKING_MODE:I = 0x670000d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/Sentinel/SentinelWorkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_SENTRY_POSITION_REQ:I = 0x670000dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "BodyInfo/SentryPositionInfo/Req"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTINEL_STATE:I = 0x670000dd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/SentinelStateInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SENTRY_NEGATIVE_SCREEN:I = 0x670000de
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/SentryNegativeScreen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SHU_SEAT_HEAT_FRONT_LEFT:I = 0x670000b9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/SeatHeatingSHU/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SHU_SEAT_HEAT_FRONT_RIGHT:I = 0x670000ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/SeatHeatingSHU/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SHU_SEAT_VENT_FRONT_LEFT:I = 0x670000bb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/SeatVentilationSHU/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SHU_SEAT_VENT_FRONT_RIGHT:I = 0x670000bc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/SeatVentilationSHU/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOC_DISP:I = 0x67000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/SocDisp/Set"
        subscribe = "EnergyInfo/SocDisp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOC_MANAGE:I = 0x67000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/SOCManage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOC_RANGE_TYPE:I = 0x67000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOC/RangeType/Set"
        subscribe = "SOC/RangeType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOH:I = 0x67000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/SOH"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPECIAL_PARKING_MODE:I = 0x67000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/SpecialParkingMode/Set"
        subscribe = "T1CF1/SpecialParkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPEED_LIMIT_CHANGE:I = 0x67000098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedLimitChange/Set"
        subscribe = "ADAS/SpeedLimitChange"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPEED_LIMIT_OFFSET:I = 0x6700006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedLimitOffset/Set"
        subscribe = "ADAS/SpeedLimitOffset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPEED_REDUCTION_ASSIST:I = 0x670000d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedReductionAssist/Set"
        subscribe = "ADAS/SpeedReductionAssist"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEERING_ANGLE:I = 0x67000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SteeringAngle/Set"
        subscribe = "BodyInfo/SteeringAngle"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_STEERING_ANGLE_VALID_DATA:I = 0x67000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SteeringAngleValidData/Set"
        subscribe = "BodyInfo/SteeringAngleValidData"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEERING_HEAT_REQUEST:I = 0x67000089
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/VoiceSteeringWheelHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SYSTEM_TIMEZONE:I = 0x6700009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "System/TimeZone/Set"
        subscribe = "System/TimeZone"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TEST_APP_QUERY:I = 0x67000092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Test/App/Query"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_THIRD_ROW_DISPLAY:I = 0x67000088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/ThirdRowDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_UNIT:I = 0x67000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "NorthstarTPMS/KpaUnit/Set"
        subscribe = "NorthstarTPMS/KpaUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRIP_UNIT:I = 0x6700009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripUnit/Set"
        subscribe = "DrivingInfo/TripUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYRE_PRESSURE_FRONT_LEFT:I = 0x6700003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "PHEVVehicleWheel/TyrePressure/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYRE_PRESSURE_FRONT_RIGHT:I = 0x6700003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "PHEVVehicleWheel/TyrePressure/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYRE_PRESSURE_REAR_LEFT:I = 0x6700003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "PHEVVehicleWheel/TyrePressure/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYRE_PRESSURE_REAR_RIGHT:I = 0x6700003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "PHEVVehicleWheel/TyrePressure/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_USB_MODE_QUERY:I = 0x67000090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Usb/Mode/Query"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_USB_MODE_SWITCH:I = 0x67000091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "Usb/Mode/Switch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_REMAIN_MILEAGE_HEV:I = 0x670000af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DrivingInfo/MaintenanceMileageHev"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MODE:I = 0x670000bf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Vehicle/Mode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_WINDOW_OPEN:I = 0x67000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowAll/Set"
        subscribe = "VehicleWindow/WindowAll"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIND_LEVEL_AUTO_STS:I = 0x670000cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/WindLevel/AutoSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPR_SNVTY_SET_FB:I = 0x6700004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BCM/WiprSnvtySetFb/Set"
        subscribe = "BCM/WiprSnvtySetFb"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGING_TEMP_WARNING:I = 0x670000d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/TempWarning/Status/Set"
        subscribe = "BodyInfo/TempWarning/Status"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ZERO_GRAVITY_STS:I = 0x670000df
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ZeroGravitySts/Set"
        subscribe = "AC/ZeroGravitySts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ZERO_GRAVITY_WARN:I = 0x670000e0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/ZeroGravityWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x67

.field public static final NAV_MAP_SWITCH:I = 0x67000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Navigation/NavMapSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"

.field public static final SEAT_AND_REAR_MIRROR_MEMORY_REQ:I = 0x67000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatAndRearMirrorMemoryReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SEAT_AND_REAR_MIRROR_MEMORY_STS:I = 0x67000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatAndRearMirrorMemorySts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SEAT_AND_REAR_MIRROR_POSITION_MEMORY:I = 0x67000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/SeatAndRearMirrorPositionMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SENSOR_STSFAILOFTEMPERATURE:I = 0x67000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/StsFailOfTemperature"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SENSOR_UNITOFTEMPERATURE:I = 0x67000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/UnitOfTemperature"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final VOICE_QNX_AUTOMAP:I = 0x67000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Voice/QnxAutoMap"
        type = Ljava/lang/Integer;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
