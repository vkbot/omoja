.class public final Lmega/car/config/Northstar;
.super Ljava/lang/Object;
.source "Northstar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Northstar$SlideScreenControl;,
        Lmega/car/config/Northstar$LanguageType;,
        Lmega/car/config/Northstar$DisplayMode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x50
    name = "glacier"
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final AVM_BUTTON_CLICK_EVENT:I = 0x50000092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "AVM/ButtonClicked"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final FACE_ID:I = 0x50000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FaceID"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final HUD_HEIGHT_AUTO_ADJUST:I = 0x50000098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDHeightAutoAdjustment/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final HUD_HEIGHT_AUTO_ADJUST_STS:I = 0x50000099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "HUD/HUDHeightAutoAdjustmentSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADVANCE_LIVE_ACOUSTICS:I = 0x50000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AdvanceLiveAcoustics"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADVANCE_RESTORE_DEFAULTS:I = 0x50000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AdvanceRestoreDefaults"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADVANCE_VOLUME_EFFECT:I = 0x50000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AdvanceVolumeEffect"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ANDROID_RESET:I = 0x50000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AndroidReset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ANTI_THEFT_ALARM:I = 0x500000e5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/AntiTheftAlarm/Set"
        subscribe = "T1CF1/AntiTheftAlarm"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SOFT_KEY:I = 0x500000cc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ApaSoftKey/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_STANDBYACTIVESTATUS:I = 0x500000d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "APA/StandbyActiveStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_APA:I = 0x50000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoAPA"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_HOLD:I = 0x50000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoHold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_PARK:I = 0x5000001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoPark"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVG_ELEC_CNS:I = 0x5000008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "HCU/AvgElecCns"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_AVG_ENERGY_CNS:I = 0x50000091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "C385/VehAvrgEgyCnseIn50km"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_AVG_FU_CNS:I = 0x50000090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "HCU/AvgFuCns"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_AVM_360_BURIED:I = 0x50000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/Avm360Buried"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_APA_SHOW_STS:I = 0x500000e2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "UI/AVMAPA/ShowSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_BURIED_PACKAGE_DATA:I = 0x500000ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/Avm360BuriedPackageData"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_FLOATING_WINDOW_POSITION:I = 0x500000b4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "AVM/FloatingWindowPosition"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_FLOATING_WINDOW_TOUCH:I = 0x500000b5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/FloatingWindowTouchInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_FLOATING_WINDOW_VISIBLE:I = 0x500000b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "AVM/FloatingWindowVisible"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_QUIT_BY_USER:I = 0x500000b2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/QuitByUser"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_RESET_SEETINGS:I = 0x5000003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AvmResetSettings"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_SINGLE_SIDE:I = 0x500000e6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/Voice/SingleSide/Set"
        subscribe = "AVM/Voice/SingleSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_STANDBYACTIVESTATUS:I = 0x50000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "AVM/StandbyActiveStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BACKLIGHT_MODE:I = 0x5000001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BacklightMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_VOLTAGE:I = 0x50000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BatteryVoltage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BCM_4_ARMING:I = 0x500000db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/BCM4Arming"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BPF_ASSOCI_WITH_DRIVER_MODE:I = 0x5000006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/BPFAssociWithDriverMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BRAKE_PEDAL_FEEL:I = 0x5000006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/BrakePedalFeel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BREAK_LOW:I = 0x50000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BreakLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BSD_CONFIG:I = 0x50000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/BsdConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CAR_BRIGHTNESS:I = 0x500000bb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/CarModelBrightness/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CAR_COLOR:I = 0x5000009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/CarModelColor/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CAR_HEADLIGHT:I = 0x500000cd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/HeadLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_DISCHARGE:I = 0x5000001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ChargeDischarge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_SOC:I = 0x500000e4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChgSoc/Set"
        subscribe = "EnergyInfo/ChgSoc"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_STATE:I = 0x50000094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/Charge/ChargingThermSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHILD_SEAT_SWITCH:I = 0x500000da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ChildSeatSwitch/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHILD_SEAT_WARN:I = 0x500000d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ChildSeatWarn/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHIME_TEST:I = 0x50000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/EngineeringModeChimeTest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_COOLANT_TEMPERATURE_SAMPLE:I = 0x50000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/CoolantTemperatureSample"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_CST:I = 0x50000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/CST"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CST_SENSITIVITY:I = 0x5000006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/CSTSensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DATE_OF_DAY:I = 0x5000002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfDay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DATE_OF_MONTH:I = 0x5000002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfMonth"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DATE_OF_YEAR:I = 0x5000002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfYear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DAY_AND_NIGHT:I = 0x50000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DayAndNight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_TIME_HOUR:I = 0x50000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DischargeTimeHour"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_TIME_MIN:I = 0x50000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DischargeTimeMin"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_OPEN_ALARM_TRIGGER:I = 0x5000005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DoorOpenAlarmTrigger"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_FATIGUE_MONITOR_TRIGGER:I = 0x5000005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DriverFatigueMonitorTrigger"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_AFC:I = 0x5000006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "DrivingInfo/DTE_Afc"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_MAINTAIN:I = 0x50000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DriveModeMaintain"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVING_REAL_SPEED:I = 0x50000097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/RealSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_INFO_ACTUAL_SPEED:I = 0x50000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ActualSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_INFO_INDICATED_SPEED:I = 0x50000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/IndicatedSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_MODE:I = 0x5000003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DrivingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DTE_AVERAGE_FUEL:I = 0x50000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteAverageFuel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FC:I = 0x5000000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFc"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FR:I = 0x5000000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFr"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FT:I = 0x50000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFt"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_VALUE:I = 0x50000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_VALUE:I = 0x50000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_FUNCTION_TYPE:I = 0x500000b8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/FunctionTypeKey"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_KEY:I = 0x50000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/Key"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_MODE:I = 0x500000b7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/ModeKey"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_SPEECH:I = 0x50000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/Speech"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_VOICE:I = 0x500000b9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/Voice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DYNRNG_AVAL:I = 0x5000008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DrivingInfo/Charge/DynamicSOCRangeAval"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_APA_ENUM_CAL_TRIGGER:I = 0x500000d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaEnumCalTrigger"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_APA_FREE_SLOT_INFO:I = 0x500000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaFreeSlotInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DZ_APA_FUNC_OPERATE:I = 0x500000c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaFuncOperate"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DZ_APA_GET_AVM_DATA:I = 0x500000d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaGetAVMData"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_APA_PARKING_FUNC_MOD:I = 0x500000c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ParkingFuncModReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_APA_SLOT_POINT:I = 0x500000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaSlotPoint"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DZ_APA_STRT_AVM_FAIL_STS:I = 0x500000d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/StrtAVMFailSts"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DZ_APA_STRT_VOICE_CONTROL_INFO:I = 0x500000d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/ApaStrtVoiceControlInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DZ_AVM_EVENT:I = 0x500000d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DzAvmEvent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_DIAG_DTC_INFO:I = 0x500000cb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/DiagDtcInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DZ_MRA_OPERATION_ID:I = 0x500000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/MRAOperationId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENG_WHLTRQ_RATIO:I = 0x5000009d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/EngWhlTrqRatio"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ENTER_ICM_DATA:I = 0x50000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/EngineeringModeMeterData"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ESTIMATED_COUPLING_TORQ:I = 0x5000009e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/EstimatedCouplingTorq"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FATIGURE_DRIVING:I = 0x50000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/FatigureDriving"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FATIGURE_DRIVING_TIME:I = 0x50000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/FatigureDrivingTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FEEDBACK_SENSITIVITY:I = 0x5000004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/LaneAssitFeedbackSensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL1_SAMPLE_RESISTANCE:I = 0x5000000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel1SampleResistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL1_SAMPLE_VALUE:I = 0x5000000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel1SampleValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL2_SAMPLE_RESISTANCE:I = 0x50000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel2SampleResistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL2_SAMPLE_VALUE:I = 0x5000000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel2SampleValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUELING_BASE_VALUE:I = 0x50000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelingBaseValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_ALARM_STATUS:I = 0x50000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelAlarmStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_DAMPING_MODE:I = 0x50000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelDampingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_DISPLAY:I = 0x5000006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "FuelBar/DisplayValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_SENSOR_FAULT_STATUS:I = 0x50000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelSensorFaultStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_VALUE:I = 0x5000000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_GEAR_REVERSE:I = 0x50000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ReverseGear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GLASS_WASHING_FRONT:I = 0x50000095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/GlassWashingFront"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GLASS_WASHING_REAR:I = 0x50000096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/GlassWashingRear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HANDBRAKE_STATUS:I = 0x5000001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/HandbrakeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HV_READY:I = 0x500000e1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/HCUHVReadyReq/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_HARDWARE_MCU:I = 0x5000005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ICHardWare/MCU"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_IC_HARDWARE_SOC:I = 0x50000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ICHardWare/Soc"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_IC_INTER_COMMUNICATION:I = 0x50000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/InternalCommunications"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_LOG_EXPORT:I = 0x50000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ICLogExport"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_OUTSIDE_TEMPERATURE_C:I = 0x5000004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/OutsideTemperatureC"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IC_OUTSIDE_TEMPERATURE_F:I = 0x50000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/OutsideTemperatureF"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IC_RAIN_DETECTED:I = 0x50000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RainDetected"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_RAIN_DETECTED_POSITIVE:I = 0x50000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Info/RainFaultInfoThird"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_WIPER_STATE:I = 0x5000005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleWindow/WiperSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IHU_OTASTS:I = 0x500000be
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/OTASts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IHU_OTA_MOD_STS:I = 0x500000bf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/OTAModSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSTANT_FUEL:I = 0x50000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "DrivingInfo/InstantFuel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ISA_NAVI_INFO:I = 0x500000df
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ISANaviInfo/Set"
        type = [B
    .end annotation
.end field

.field public static final ID_LANE_ASSIT_FEEDBACK:I = 0x50000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/LaneAssitFeedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LAUNCHER_READ:I = 0x50000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "android-state-monitor"
        serializable = false
        subscribe = "android-state-monitor"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_LDW_LKA_SWITCH:I = 0x50000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/LdwLkaSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_LAMP_DRIVE:I = 0x500000e3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LampDriveSts/Set"
        subscribe = "Light/LampDriveSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SWITCH_TIME_OUT:I = 0x5000003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/LightSwitchTimeOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEAN_EFFECTIVE_TORQUE:I = 0x5000009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/MeanEffectiveTorque"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_MEM_ACCOUNT_LOGIN_SWITCH:I = 0x500000de
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/AccountLoginMemory"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_METER_VOLUME_RESTORE_DEFAULTS:I = 0x50000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MeterVolumeRestoreDefaults"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_ICM_DOWN:I = 0x5000004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineeringMode/KeyInput/MFS_ICM_Down"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_ICM_LEFT:I = 0x5000004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineeringMode/KeyInput/MFS_ICM_Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_ICM_MENU:I = 0x50000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineeringMode/KeyInput/MFS_ICM_Menu"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_ICM_RIGHT:I = 0x5000004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineeringMode/KeyInput/MFS_ICM_Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_ICM_UP:I = 0x5000004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EngineeringMode/KeyInput/MFS_ICM_Up"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MIRROR_FOLD:I = 0x500000af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MirrorFold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_1000:I = 0x50000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness1000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_120:I = 0x50000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness120"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_1500:I = 0x50000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness1500"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_2000:I = 0x50000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness2000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_250:I = 0x50000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness250"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_500:I = 0x50000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness500"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_6000:I = 0x50000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness6000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_GPS_INFO:I = 0x500000ce
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/GpsInfo/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_NAVIGATION_STS:I = 0x500000d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/NavigationSts/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_TRAFFIC_INFORMATION:I = 0x500000cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/TrafficInfo/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_YAW_STS:I = 0x500000d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/YawSts/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAV_CARPLAY_INFO:I = 0x5000005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Navigation/NavCarplayNavInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_OBD:I = 0x5000003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ODB"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OIL_PRESSURE:I = 0x50000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/OilPressure"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_SPEED_VOLUME:I = 0x5000006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/OutSpeedVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PANORAMIC_FINISH:I = 0x50000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PanoramicFinish"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PANORAMIC_START:I = 0x50000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PanoramicStart"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_AND_BATTERY_PROTECTION:I = 0x500000e0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/NonPwrOffSwt/Set"
        subscribe = "T1CF1/NonPwrOffSwtSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_BRAKE_EPB_ON_AVA:I = 0x50000093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/EPBState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_QUEEN_STATE:I = 0x500000aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerQueenState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_ANGLE:I = 0x500000a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/PassengerSeatAngle/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_ANGLE_SLIDE:I = 0x500000a5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatAngleSlide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_FRONT_REAR:I = 0x500000a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/PassengerSeatFrontRear/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_FRONT_REAR_SLIDE:I = 0x500000a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatFrontRearSlide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_LEG:I = 0x500000a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/PassengerSeatLeg/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_LEG_SLIDE:I = 0x500000a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatLegSlide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_LEVEL_SAVE:I = 0x500000ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatLevelSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_LINK_SAVE:I = 0x500000ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatLinkSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_MEMORY:I = 0x500000a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/PassengerSeatMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_MEM_SAVE:I = 0x500000ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatMemSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_MODE_SAVE:I = 0x500000ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatModeSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_QUEEN:I = 0x500000a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatQueen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_UP_DOWN:I = 0x5000009f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/PassengerSeatUpDown/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_UP_DOWN_SLIDE:I = 0x500000a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassengerSeatUpDownSlide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SEAT_WARN:I = 0x500000a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/PassengerSeatWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_LEAVE_TTS_ALERT:I = 0x50000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleSet/PhoneLeaveTtsAlert"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_KEY:I = 0x50000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/PowerKey"
        subscribe = "DrivingInfo/PowerKey"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_MODE:I = 0x50000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PowerMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_STATUS:I = 0x50000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PowerStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PWRDWN_DIS_REQ:I = 0x500000b6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "T1CF1/PwrdwnDisReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUEEN_BED_CHECK:I = 0x500000c1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/CheckQueenBed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUEEN_BED_MODE:I = 0x500000c0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/QueenBedMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QUEEN_BED_WARN:I = 0x500000c2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/QueenBedWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RADAR_WORK_NOTICE:I = 0x5000001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/RadarWorkNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RANGE_AVAL:I = 0x5000008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DrivingInfo/RangeAval"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_CROSS_COLLISION_WARNING_EV:I = 0x500000bd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/RearCrossCollisionWarningEV"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_AUTO_DIPPING:I = 0x50000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RearViewMirrorAutoTurnDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESIDUAL_ODOMETER:I = 0x5000009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "EnergyInfo/ResidualOdometer"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_RLCR_RAEB_EV:I = 0x50000087
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RLCR/EVRlcrRaebonoffsts/Set"
        subscribe = "RLCR/EVRlcrRaebonoffsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEATBELT_STATUS:I = 0x5000001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/SeatbeltStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_ADJUST:I = 0x500000dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/SeatAdjust/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SET_SWITCH:I = 0x5000005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/IHUSetSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMART_TTS_INFO:I = 0x500000b1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/SmartTtsInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SMART_VOICE_COMMAND:I = 0x500000b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/SmartVoiceCommand"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_START_STOP_SHIELDING:I = 0x50000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/StartStopShielding"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUM_FUEL:I = 0x5000008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "HCU/SumFuel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_SUM_PLG_CHRG_EGY:I = 0x5000008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "HCU/SumPlgChrgEgy"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_SUM_RESET:I = 0x5000008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HCU/SumReset/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUN_ROOF_POSITION:I = 0x50000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/SunRoofPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWIPE_SCREEN:I = 0x500000c3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/SwipeScreen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T1CF1_CAN_DATA:I = 0x5000003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "T1CF1/CAN"
        type = [B
    .end annotation
.end field

.field public static final ID_T1CF1_DVR:I = 0x50000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        serializable = false
        topic = "T1CF1/DVR"
        type = [B
    .end annotation
.end field

.field public static final ID_T1GC_DOOR:I = 0x500000d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "VehicleDoor/Door/All"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TBOX_HIGH_LEVEL:I = 0x500000c4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TboxHighLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TBOX_LOW_LEVEL:I = 0x500000c5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TboxLowLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_OF_HOUR:I = 0x5000002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfHour"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_OF_MINUTE:I = 0x50000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfMinute"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_OF_SECOND:I = 0x50000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfSecond"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_SHOW_MODE:I = 0x5000002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeShowMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TOUCH_VOLUME_SWITCH:I = 0x5000002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/TouchVolumeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TSP_MSG_TO_IC:I = 0x500000dd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/TspMsgToIC/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TSP_STATE:I = 0x500000bc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AndroidTspState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYPE_OF_LANGUAGE:I = 0x50000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TypeOfLanguage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOL_PLUS_MINUS_FOR_DVD_STATUS:I = 0x50000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/VolPlusMinusForDVDSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WASGING_LIQUID:I = 0x5000003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TBDStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_ALL:I = 0x50000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowAll"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_FRONT:I = 0x50000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowFront"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_REAR:I = 0x50000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowRear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGE:I = 0x50000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/WirelessCharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x50

.field public static final PASS_SEAT_MSG_LEVEL:I = 0x50000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassSeatMsgLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final PASS_SEAT_MSG_MODE:I = 0x50000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PassSeatMsgMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"

.field public static final SERVICE_NAME:Ljava/lang/String; = "glacier"

.field public static final SOS_VOLUME_ASSISTANCE_AUDIO:I = 0x50000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "SOS/VolumeAssistanceAudio"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SPEED_LIMIT_ALARM_MODE_ICON:I = 0x50000088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedLimitAlarmMode/Icon/Set"
        subscribe = "ADAS/SpeedLimitAlarmMode/Icon"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final SPEED_LIMIT_ALARM_MODE_SOUND:I = 0x50000089
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedLimitAlarmMode/Sound/Set"
        subscribe = "ADAS/SpeedLimitAlarmMode/Sound"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T1X_DRIVE_GEAR_POSITION:I = 0x50000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DriveGearPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_AVM_DISPLAY:I = 0x50000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AVMDisplaySts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_AVM_SWT:I = 0x5000007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AVMSwt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_CALIBRATION_REQ:I = 0x5000007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/CalibrationReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_FRONT_PDC_OBJECT_DISTANCE:I = 0x5000007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/FrontPDCObjectDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_IHU_CAR_MDL_SET_COLOR:I = 0x50000081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/IHUCarMdlSetColor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_IHU_FRONT_RADAR_SWT:I = 0x50000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/IHUFrontRadarSwt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_MIRROR_SET:I = 0x50000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MirrorSet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_NAVI_BTN_PRESS_INPUT_VALUE_X:I = 0x5000007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/NaviBtnPressInputValueX"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_NAVI_BTN_PRESS_INPUT_VALUE_Y:I = 0x5000007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/NaviBtnPressInputValueY"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_RADAR_WORK:I = 0x50000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RadarWorkSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_REAR_PDC_OBJECT_DISTANCE:I = 0x50000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RearPDCObjectDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_REASON_DVD_NOT_DISPLAY_APA:I = 0x50000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ReasonForDVDNotDisplayAPA"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_RRM_DISPLAY_AVM_OFF:I = 0x5000007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RRMDisplayAVMOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final T2X_TOUCH_EVT:I = 0x50000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TouchEvt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TRIGGER_BATTERY_THERMAL_RUNAWAY:I = 0x50000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/PhevBatteryThermalRunawayTrigger"
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
