.class public interface abstract Lmega/car/config/VehicleBody;
.super Ljava/lang/Object;
.source "VehicleBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/VehicleBody$NetworkMode;,
        Lmega/car/config/VehicleBody$AccessAuthResult;,
        Lmega/car/config/VehicleBody$DiagnosisState;,
        Lmega/car/config/VehicleBody$UsageMode;,
        Lmega/car/config/VehicleBody$LightSWReason;,
        Lmega/car/config/VehicleBody$MaintenanceItem;,
        Lmega/car/config/VehicleBody$AssistanceStatus;,
        Lmega/car/config/VehicleBody$Assistance;,
        Lmega/car/config/VehicleBody$Wiper;,
        Lmega/car/config/VehicleBody$ParamsPOTCtrlPosition;,
        Lmega/car/config/VehicleBody$PARAMS_VEH_HEIGHT_CURRENT_LEVEL_STS;,
        Lmega/car/config/VehicleBody$PARAMS_VEH_HEIGHT_LEVEL_STS;,
        Lmega/car/config/VehicleBody$PARAMS_VEH_HEIGHT_REQUEST;,
        Lmega/car/config/VehicleBody$PARAMS_JACK_MODE;,
        Lmega/car/config/VehicleBody$REARDoorStatus;,
        Lmega/car/config/VehicleBody$VehicleSettingsDefault;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x9
    permission = "mega.car.permission.VEHICLE_BODY"
.end annotation


# static fields
.field public static final ID_BODY_ARMING_STATUS:I = 0x900006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ArmingSts/Set"
        subscribe = "BodyInfo/ArmingSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BODY_COLOR:I = 0x900006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleInfo/VehicleColor/Set"
        subscribe = "VehicleInfo/VehicleColor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALL_EMERGENCY_CONTACT:I = 0x900004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/CallEmergencyContact/Set"
        subscribe = "SOS/CallEmergencyContact"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALL_SERVICE_PARAM:I = 0x900004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/CallServiceParam/Set"
        subscribe = "SOS/CallServiceParam"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CONTROL_REAR_DOOR:I = 0x900006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/TrunkSts/Set"
        subscribe = "VehicleDoor/TrunkSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_ANGLE:I = 0x900001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenAngle/Set"
        subscribe = "ControlScreen/ControlScreenAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_ANGLE_AUTO:I = 0x900001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenAngleAuto/Set"
        subscribe = "ControlScreen/ControlScreenAngleAuto"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_ANGLE_PRECISION:I = 0x9000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenAnglePrecision/Set"
        subscribe = "ControlScreen/ControlScreenAnglePrecision"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_ANGLE_RANGE:I = 0x9000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenAngleRangePositive/Set"
        subscribe = "ControlScreen/ControlScreenAngleRangePositive"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_ANGLE_RANGE_NEG:I = 0x9000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenAngleRangeNegative/Set"
        subscribe = "ControlScreen/ControlScreenAngleRangeNegative"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_CALIBRATION:I = 0x9000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenCalibration/Set"
        subscribe = "ControlScreen/ControlScreenCalibration"
        type = [I
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_LIGHT:I = 0x9000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenLight/Set"
        subscribe = "ControlScreen/ControlScreenLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_MOTOR_ERROR:I = 0x9000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenMotorError/Set"
        subscribe = "ControlScreen/ControlScreenMotorError"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_MOTOR_SYNC:I = 0x9000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenMotorSync/Set"
        subscribe = "ControlScreen/ControlScreenMotorSync"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_SCREEN_MOTOR_WAKEUP:I = 0x900001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ControlScreenMotorWakeup/Set"
        subscribe = "ControlScreen/ControlScreenMotorWakeup"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS:I = 0x9000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/DMS/Set"
        subscribe = "BodyInfo/DMS"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR:I = 0x9000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/DVR/Set"
        subscribe = "BodyInfo/DVR"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_TAILWELBUTTON_ONOFF:I = 0x900005e

.field public static final ID_EMERGENCY_ASSISTANCE:I = 0x9000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistance/Set"
        subscribe = "SOS/EmergencyAssistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_ASSISTANCE_ACOUST_REQ:I = 0x9000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistanceAcoustReq/Set"
        subscribe = "SOS/EmergencyAssistanceAcoustReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_ASSISTANCE_AUDIO:I = 0x9000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistanceAudio/Set"
        subscribe = "SOS/EmergencyAssistanceAudio"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_ASSISTANCE_CALLBACK_REQ:I = 0x900001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistanceCallbackReq/Set"
        subscribe = "SOS/EmergencyAssistanceCallbackReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_ASSISTANCE_PHONE:I = 0x9000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistancePhoneNumber/Set"
        subscribe = "SOS/EmergencyAssistancePhoneNumber"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_EMERGENCY_ASSISTANCE_SPEAKER_REQ:I = 0x900001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/EmergencyAssistanceSpeakerReq/Set"
        subscribe = "SOS/EmergencyAssistanceSpeakerReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ETC_STATUS:I = 0x9000058

.field public static final ID_ETC_TRANAMOUNT:I = 0x9000059

.field public static final ID_GAS_DETECTION:I = 0x9000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/GasDetection/Set"
        subscribe = "BodyInfo/GasDetection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_SCREEN_LIGHT:I = 0x900004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ControlScreen/ICScreenLight/Set"
        subscribe = "ControlScreen/ICScreenLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IMU_AX_SENSORDATA:I = 0x900003c

.field public static final ID_IMU_AY_SENSORDATA:I = 0x900003d

.field public static final ID_IMU_YAWRATE:I = 0x900003e

.field public static final ID_INIT_RESET_FACTORY_REQ:I = 0x9000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Account/ResetFactory/Set"
        subscribe = "Account/ResetFactory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSIDE_TEMPERATURE:I = 0x9000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleBody/InsideTemperature/Set"
        subscribe = "VehicleBody/InsideTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_LIGHT_SW_REASON:I = 0x900003b

.field public static final ID_ONE_KEY_SERVICE:I = 0x9000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/OneKeyService/Set"
        subscribe = "SOS/OneKeyService"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ONE_KEY_SERVICE_PHONE:I = 0x900004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/OneKeyServicePhoneNumber/Set"
        subscribe = "SOS/OneKeyServicePhoneNumber"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_OUTSIDE_TEMPERATURE:I = 0x9000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleBody/OutsideTemperature/Set"
        subscribe = "VehicleBody/OutsideTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_POTCTRL_POSITION:I = 0x9000012

.field public static final ID_REPAIR_AC_FILTER_LAST_KM:I = 0x9000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/ACFilterRepairLastKM/Set"
        subscribe = "VehicleMaintenance/ACFilterRepairLastKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_AC_FILTER_LAST_TIME:I = 0x9000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/ACFilterRepairLastTime/Set"
        subscribe = "VehicleMaintenance/ACFilterRepairLastTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_AC_FILTER_NEXT_KM:I = 0x9000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/ACFilterRepairNextKM/Set"
        subscribe = "VehicleMaintenance/ACFilterRepairNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_AC_FILTER_NEXT_TIME:I = 0x9000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/ACFilterRepairNextTime/Set"
        subscribe = "VehicleMaintenance/ACFilterRepairNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_AIR_FILTER_LAST_KM:I = 0x9000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/AirFilterRepairLastKM/Set"
        subscribe = "VehicleMaintenance/AirFilterRepairLastKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_AIR_FILTER_LAST_TIME:I = 0x9000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/AirFilterRepairLastTime/Set"
        subscribe = "VehicleMaintenance/AirFilterRepairLastTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_AIR_FILTER_NEXT_KM:I = 0x9000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/AirFilterRepairNextKM/Set"
        subscribe = "VehicleMaintenance/AirFilterRepairNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_AIR_FILTER_NEXT_TIME:I = 0x9000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/AirFilterRepairNextTime/Set"
        subscribe = "VehicleMaintenance/AirFilterRepairNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_BRAKE_FLUID_LAST_KM:I = 0x900002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/BrakeFluidRepairLastKM/Set"
        subscribe = "VehicleMaintenance/BrakeFluidRepairLastKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_BRAKE_FLUID_LAST_TIME:I = 0x900002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/BrakeFluidRepairLastTime/Set"
        subscribe = "VehicleMaintenance/BrakeFluidRepairLastTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_BRAKE_FLUID_NEXT_KM:I = 0x9000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/BrakeFluidRepairNextKM/Set"
        subscribe = "VehicleMaintenance/BrakeFluidRepairNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_BRAKE_FLUID_NEXT_TIME:I = 0x9000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/BrakeFluidRepairNextTime/Set"
        subscribe = "VehicleMaintenance/BrakeFluidRepairNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_OIL_FILTER_LAST_KM:I = 0x9000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/OilFilterRepairLastKM/Set"
        subscribe = "VehicleMaintenance/OilFilterRepairLastKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_OIL_FILTER_LAST_TIME:I = 0x9000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/OilFilterRepairLastTime/Set"
        subscribe = "VehicleMaintenance/OilFilterRepairLastTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_OIL_FILTER_NEXT_KM:I = 0x9000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/OilFilterRepairNextKM/Set"
        subscribe = "VehicleMaintenance/OilFilterRepairNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_OIL_FILTER_NEXT_TIME:I = 0x9000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/OilFilterRepairNextTime/Set"
        subscribe = "VehicleMaintenance/OilFilterRepairNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_SPARK_PLUG_LAST_KM:I = 0x900002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/SparkPlugRepairLastKM/Set"
        subscribe = "VehicleMaintenance/SparkPlugRepairLastKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_SPARK_PLUG_LAST_TIME:I = 0x900002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/SparkPlugRepairLastTime/Set"
        subscribe = "VehicleMaintenance/SparkPlugRepairLastTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_REPAIR_SPARK_PLUG_NEXT_KM:I = 0x900002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/SparkPlugRepairNextKM/Set"
        subscribe = "VehicleMaintenance/SparkPlugRepairNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPAIR_SPARK_PLUG_NEXT_TIME:I = 0x900002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/SparkPlugRepairNextTime/Set"
        subscribe = "VehicleMaintenance/SparkPlugRepairNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE:I = 0x9000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistance/Set"
        subscribe = "SOS/RoadsideAssistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE_ACOUST_REQ:I = 0x9000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistanceAcoustReq/Set"
        subscribe = "SOS/RoadsideAssistanceAcoustReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE_AUDIO:I = 0x9000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistanceAudio/Set"
        subscribe = "SOS/RoadsideAssistanceAudio"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE_CALLBACK_REQ:I = 0x9000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistanceCallbackReq/Set"
        subscribe = "SOS/RoadsideAssistanceCallbackReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE_PHONE:I = 0x9000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistancePhoneNumber/Set"
        subscribe = "SOS/RoadsideAssistancePhoneNumber"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ROADSIDE_ASSISTANCE_SPEAKER_REQ:I = 0x9000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideAssistanceSpeakerReq/Set"
        subscribe = "SOS/RoadsideAssistanceSpeakerReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROADSIDE_B_CALL:I = 0x900006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideBCall/Set"
        subscribe = "SOS/RoadsideBCall"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_ROADSIDE_E_CALL:I = 0x900006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SOS/RoadsideECall/Set"
        subscribe = "SOS/RoadsideECall"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_SCREEN_TEMPERATURE:I = 0x9000042

.field public static final ID_SEAT_DRV_CALL:I = 0x9000006

.field public static final ID_SEAT_DRV_SAVE:I = 0x9000005

.field public static final ID_SEAT_EASY_ENTRY:I = 0x9000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/Set"
        subscribe = "VehicleSeat/EasyEntry"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ENTRY_FRONTLEFT:I = 0x900007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/FrontLeft/Set"
        subscribe = "VehicleSeat/EasyEntry/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ENTRY_FRONTRIGHT:I = 0x900007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/FrontRight/Set"
        subscribe = "VehicleSeat/EasyEntry/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ENTRY_REARLEFT:I = 0x900007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/RearLeft/Set"
        subscribe = "VehicleSeat/EasyEntry/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ENTRY_REARMIDDLE:I = 0x900007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/RearMiddle/Set"
        subscribe = "VehicleSeat/EasyEntry/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ENTRY_REARRIGHT:I = 0x9000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/EasyEntry/RearRight/Set"
        subscribe = "VehicleSeat/EasyEntry/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_LEAVE_SPACE:I = 0x9000007

.field public static final ID_SYSTEM_SUPPLIER_S32GM:I = 0x9000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_TBOX_ACCESSAUTH:I = 0x9000057

.field public static final ID_TIRE_PRESSURE:I = 0x9000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/Set"
        subscribe = "VehicleWheel/TyrePressure"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_FL:I = 0x900006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/FrontLeft_DiSABLE/Set"
        subscribe = "VehicleWheel/TyrePressure/FrontLeft_DiSABLE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_FR:I = 0x9000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/FrontRight_DiSABLE/Set"
        subscribe = "VehicleWheel/TyrePressure/FrontRight_DiSABLE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_FRONTLEFT:I = 0x9000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/FrontLeft/Set"
        subscribe = "VehicleWheel/TyrePressure/FrontLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_FRONTRIGHT:I = 0x9000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/FrontRight/Set"
        subscribe = "VehicleWheel/TyrePressure/FrontRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_REARLEFT:I = 0x9000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/RearLeft/Set"
        subscribe = "VehicleWheel/TyrePressure/RearLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_REARRIGHT:I = 0x9000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/RearRight/Set"
        subscribe = "VehicleWheel/TyrePressure/RearRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_RL:I = 0x9000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/RearLeft_DiSABLE/Set"
        subscribe = "VehicleWheel/TyrePressure/RearLeft_DiSABLE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_PRESSURE_RR:I = 0x9000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyrePressure/RearRight_DiSABLE/Set"
        subscribe = "VehicleWheel/TyrePressure/RearRight_DiSABLE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TEMPERATURE:I = 0x9000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyreTemperature/Set"
        subscribe = "VehicleWheel/TyreTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_TEMPERATURE_FRONTLEFT:I = 0x9000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyreTemperature/FrontLeft/Set"
        subscribe = "VehicleWheel/TyreTemperature/FrontLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_TEMPERATURE_FRONTRIGHT:I = 0x9000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyreTemperature/FrontRight/Set"
        subscribe = "VehicleWheel/TyreTemperature/FrontRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_TEMPERATURE_REARLEFT:I = 0x900007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyreTemperature/RearLeft/Set"
        subscribe = "VehicleWheel/TyreTemperature/RearLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_TEMPERATURE_REARRIGHT:I = 0x900007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWheel/TyreTemperature/RearRight/Set"
        subscribe = "VehicleWheel/TyreTemperature/RearRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_T_BOX_CONNECT_STATE:I = 0x9000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/ConnectState/Set"
        subscribe = "TBox/ConnectState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_ICCID:I = 0x9000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/Iccid/Set"
        subscribe = "TBox/Iccid"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_T_BOX_NETWORK:I = 0x9000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/NetworkInfo/Set"
        subscribe = "TBox/NetworkInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_SIGNAL_STRENGTH:I = 0x9000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/SignalStrength/Set"
        subscribe = "TBox/SignalStrength"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_SIM_STATUS:I = 0x900005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/SimStatus/Set"
        subscribe = "TBox/SimStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_SN:I = 0x9000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/Sn/Set"
        subscribe = "TBox/Sn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_VERSION:I = 0x9000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/Version/Set"
        subscribe = "TBox/Version"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T_BOX_VIN:I = 0x900005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/Vin/Set"
        subscribe = "TBox/Vin"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_DIAGNOSIS_NOTIFICATION:I = 0x900004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Diagnosis/VehicleDiagnosisNotification/Set"
        subscribe = "Diagnosis/VehicleDiagnosisNotification"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VEHICLE_DIAGNOSIS_REQUEST:I = 0x900004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Diagnosis/VehicleDiagnosisRequest/Set"
        subscribe = "Diagnosis/VehicleDiagnosisRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_ALLOW_NOTIFICATION_BAR:I = 0x900005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/MaintenanceNotice/Set"
        subscribe = "DrivingInfo/MaintenanceNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_NEXT_KM:I = 0x9000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/VehicleMaintenanceNextKM/Set"
        subscribe = "VehicleMaintenance/VehicleMaintenanceNextKM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_NEXT_TIME:I = 0x9000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/VehicleMaintenanceNextTime/Set"
        subscribe = "VehicleMaintenance/VehicleMaintenanceNextTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_NOTICE:I = 0x9000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/VehicleMaintenanceNotice"
        subscribe = "VehicleMaintenance/VehicleMaintenanceNotice/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_REMAIN_DAYS:I = 0x900005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/MaintenanceTime/Set"
        subscribe = "DrivingInfo/MaintenanceTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_REMAIN_MILEAGE:I = 0x900005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/MaintenanceMileage/Set"
        subscribe = "DrivingInfo/MaintenanceMileage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MAINTENANCE_SAVE:I = 0x9000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleMaintenance/VehicleMaintenanceSave/Set"
        subscribe = "VehicleMaintenance/VehicleMaintenanceSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_MANUFACTURER_S32G:I = 0x9000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VEHICLE_MANUFACTURER_S32GM:I = 0x9000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VEHICLE_SETTINGS_DEFAULT:I = 0x9000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSettings/Default/Set"
        subscribe = "VehicleSettings/Default"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_USAGEMODE:I = 0x900003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "icdriving/UsageMode/Set"
        subscribe = "icdriving/UsageMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER:I = 0x9000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Wiper/Set"
        subscribe = "VehicleWindow/Wiper"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_ACOUST:I = 0x9000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperAcoust/Set"
        subscribe = "VehicleWindow/WiperAcoust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_ACOUST_FRONT:I = 0x9000087
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperAcoust/Front/Set"
        subscribe = "VehicleWindow/WiperAcoust/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_ACOUST_REAR:I = 0x9000088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperAcoust/Rear/Set"
        subscribe = "VehicleWindow/WiperAcoust/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_FRONT:I = 0x9000081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Wiper/Front/Set"
        subscribe = "VehicleWindow/Wiper/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_REAR:I = 0x9000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Wiper/Rear/Set"
        subscribe = "VehicleWindow/Wiper/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_STATUS:I = 0x900001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperStatus/Set"
        subscribe = "VehicleWindow/WiperStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_STATUS_FRONT:I = 0x9000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperStatus/Front/Set"
        subscribe = "VehicleWindow/WiperStatus/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_STATUS_REAR:I = 0x9000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WiperStatus/Rear/Set"
        subscribe = "VehicleWindow/WiperStatus/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_TIP:I = 0x900003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_TIP_FRONT:I = 0x9000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_TIP_REAR:I = 0x9000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x9

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_BODY"


# direct methods
.method public static isTempOrPressValueValid(F)Z
    .locals 1
    .param p0, "value"    # F

    .line 390
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
