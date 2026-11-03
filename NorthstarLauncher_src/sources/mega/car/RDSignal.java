package mega.car;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 110, permission = "mega.car.permission.VEHICLE_CONTROL")
public final class RDSignal {

    @PropertyDefine(topic = "AC/ACMode/Third", type = Integer.class)
    public static final int AC_AC_MODE_THIRD = 1845493807;

    @PropertyDefine(topic = "AC/AutoMode/Third", type = Integer.class)
    public static final int AC_AUTOMODE_THIRD = 1845493802;

    @PropertyDefine(topic = "AC/WindMode/Face/Third", type = Integer.class)
    public static final int AC_BLOW_FACE_THIRD = 1845493800;

    @PropertyDefine(topic = "AC/WindMode/Foot/Third", type = Integer.class)
    public static final int AC_BLOW_FOOT_THIRD = 1845493801;

    @PropertyDefine(topic = "AC/WindMode/Third", type = Integer.class)
    public static final int AC_BLOW_THIRD = 1845493806;

    @PropertyDefine(topic = "AC/ChildLock/Third", type = Integer.class)
    public static final int AC_CHILD_LOCK_STATUS_THIRD = 1845493809;

    @PropertyDefine(topic = "AC/Display/Third", type = Integer.class)
    public static final int AC_DISPLAY_STATUS_THIRD = 1845493808;

    @PropertyDefine(topic = "AC/Status/Third", type = Integer.class)
    public static final int AC_STATUS_THIRD = 1845493799;

    @PropertyDefine(topic = "AC/Temperature/Third", type = Float.class)
    public static final int AC_TEMPERATURE_THIRD = 1845493803;

    @PropertyDefine(topic = "AC/WindLevel/Third", type = Integer.class)
    public static final int AC_WINDLEVEL_THIRD = 1845493804;

    @PropertyDefine(publish = "ADAS/DowConfig/Set", subscribe = "ADAS/DowConfig", type = Integer.class)
    public static final int ADAS_DOW = 1845493832;

    @PropertyDefine(publish = "ADAS/FctaFctbConfig/Set", subscribe = "ADAS/FctaFctbConfig", type = Integer.class)
    public static final int ADAS_FCTA_FCTB = 1845493833;

    @PropertyDefine(publish = "ADAS/RctaRctbConfig/Set", subscribe = "ADAS/RctaRctbConfig", type = Integer.class)
    public static final int ADAS_RCTA_RCTB = 1845493899;

    @PropertyDefine(topic = "BodyInfo/ElectricalAbsorberMode", type = Integer.class)
    public static final int BODYINFO_ELECTRICAL_ABSORBER_MODE = 1845493762;

    @PropertyDefine(topic = "BodyInfo/HillDescentControl", type = Integer.class)
    public static final int BODYINFO_HILL_DESCENT_CONTROL = 1845493763;

    @PropertyDefine(topic = "BodyInfo/PedalComfort", type = Integer.class)
    public static final int BODYINFO_PEDAL_COMFORT = 1845493765;

    @PropertyDefine(topic = "BodyInfo/PedalComfortAssociatedDriving", type = Integer.class)
    public static final int BODYINFO_PEDAL_COMFORT_ASSOCIATED_DRIVING = 1845493764;

    @PropertyDefine(topic = "BodyInfo/SuspensionHeight", type = Integer.class)
    public static final int BODYINFO_SUSPENSION_HEIGHT = 1845493761;

    @PropertyDefine(publish = "DMS/CancelMatchFaceid/Set", subscribe = "DMS/CancelMatchFaceid", type = Integer.class)
    public static final int CANCEL_MATCH_FACE_ID = 1845493991;

    @PropertyDefine(publish = "OMS/CancelOccupantCare/Set", subscribe = "OMS/CancelOccupantCare", type = Integer.class)
    public static final int CANCEL_OCCUPANT_CARE = 1845493993;

    @PropertyDefine(publish = "DMS/CancelRegisterFaceid/Set", subscribe = "DMS/CancelRegisterFaceid", type = Integer.class)
    public static final int CANCEL_REGISTER_FACE_ID = 1845493990;

    @PropertyDefine(publish = "DMS/CancelUpdateFaceId/Set", subscribe = "DMS/CancelUpdateFaceId", type = Integer.class)
    public static final int CANCEL_UPDATE_FACE_ID = 1845493992;

    @PropertyDefine(topic = "EnergyInfo/WorkingMode", type = Integer.class)
    public static final int CDU_WORKING_MODE = 1845493810;

    @PropertyDefine(topic = "EnergyInfo/ChargeGunStatus", type = Integer.class)
    public static final int ENERGYINFO_CHARGE_GUN_STATUS = 1845493766;

    @PropertyDefine(topic = "EnergyInfo/DischargeSwitch", type = Integer.class)
    public static final int ENERGYINFO_DISCHARGE_SWITCH = 1845493767;

    @PropertyDefine(topic = "EnergyInfo/StopDischarge", type = Integer.class)
    public static final int ENERGYINFO_STOP_DISCHARGE = 1845493768;

    @PropertyDefine(topic = "EnergyInfo/ChargeGunELockSwitch", type = Integer.class)
    public static final int GUN_ELOCK = 1845493811;

    @PropertyDefine(publish = "HUD/ImageRotate/Set", subscribe = "HUD/ImageRotate", type = Integer.class)
    public static final int HUD_IMG_ROTATE_ADJUST = 1845493830;

    @PropertyDefine(publish = "HUD/UserID/Set", subscribe = "HUD/UserID", type = Integer.class)
    public static final int HUD_USER_ID = 1845494025;

    @PropertyDefine(publish = "AC/AutoDefLevel/Set", subscribe = "AC/AutoDefLevel", type = Integer.class)
    public static final int ID_AC_AUTO_DEF_LEVEL = 1845494082;

    @PropertyDefine(topic = "AC/Display/Rear", type = Integer.class)
    public static final int ID_AC_DISPLAY_REAR = 1845493787;

    @PropertyDefine(publish = "AC/ACFast/Cool/Set", subscribe = "AC/ACFast/Cool", type = Integer.class)
    public static final int ID_AC_FAST_COOL = 1845493841;

    @PropertyDefine(publish = "AC/ACFast/Heat/Set", subscribe = "AC/ACFast/Heat", type = Integer.class)
    public static final int ID_AC_FAST_HEAT = 1845493842;

    @PropertyDefine(publish = "AC/ResetFilterStatus/Set", subscribe = "AC/ResetFilterStatus", type = Integer.class)
    public static final int ID_AC_RESET_FILTER_STATUS = 1845493852;

    @PropertyDefine(topic = "AC/WrongOperation", type = Integer.class)
    public static final int ID_AC_WRONG_OPERATION = 1845493805;

    @PropertyDefine(publish = "AC/AirOutlet/DCOnOff/Set", subscribe = "AC/AirOutlet/DCOnOff", type = Integer.class)
    public static final int ID_AIR_OUTLET_DC_ON_OFF = 1845493847;

    @PropertyDefine(publish = "AC/AirOutlet/DLOnOff/Set", subscribe = "AC/AirOutlet/DLOnOff", type = Integer.class)
    public static final int ID_AIR_OUTLET_DL_ON_OFF = 1845493846;

    @PropertyDefine(publish = "AC/AirOutlet/DROnOff/Set", subscribe = "AC/AirOutlet/DROnOff", type = Integer.class)
    public static final int ID_AIR_OUTLET_DR_ON_OFF = 1845493845;

    @PropertyDefine(publish = "AC/AirOutlet/PLOnOff/Set", subscribe = "AC/AirOutlet/PLOnOff", type = Integer.class)
    public static final int ID_AIR_OUTLET_PL_ON_OFF = 1845493844;

    @PropertyDefine(publish = "AC/AirOutlet/PROnOff/Set", subscribe = "AC/AirOutlet/PROnOff", type = Integer.class)
    public static final int ID_AIR_OUTLET_PR_ON_OFF = 1845493843;

    @PropertyDefine(publish = "Alarm/Arming/Set", subscribe = "Alarm/Arming", type = Integer.class)
    public static final int ID_ALARM_ARMING = 1845494007;

    @PropertyDefine(publish = "Light/AmbLightSet/Set", subscribe = "Light/AmbLightSet", type = String.class)
    public static final int ID_AMB_LIGHT_SET = 1845493943;

    @PropertyDefine(publish = "DMS/AndroidHealthMessage", type = String.class)
    public static final int ID_ANDROID_HEALTH_MESSAGE = 1845494012;

    @PropertyDefine(publish = "Android/Reboot/Set", type = Integer.class)
    public static final int ID_ANDROID_REBOOT = 1845494258;

    @PropertyDefine(publish = "BodyInfo/ApproveUnlock/Set", subscribe = "BodyInfo/ApproveUnlock", type = Integer.class)
    public static final int ID_APPROVE_UNLOCK = 1845493916;

    @PropertyDefine(publish = "AC/AQSDisplay/Set", subscribe = "AC/AQSDisplay", type = Integer.class)
    public static final int ID_AQS_DISPLAY = 1845493849;

    @PropertyDefine(publish = "eHMI_ASUset/notifyASUAssistPassSet", subscribe = "DrivingInfo/ntfSuspSts/assistPassStatus", type = Integer.class)
    public static final int ID_ASSIST_PASS_STATUS = 1845494250;

    @PropertyDefine(publish = "BodyInfo/ASUHighwayMod/Set", subscribe = "BodyInfo/ASUHighwayMod", type = Integer.class)
    public static final int ID_ASU_HIGHWAY_MOD = 1845493860;

    @PropertyDefine(publish = "BodyInfo/ASUMap/Set", subscribe = "BodyInfo/ASUMap", type = Integer.class)
    public static final int ID_ASU_MAP = 1845493859;

    @PropertyDefine(publish = "BodyInfo/ASUMemoryPosition/Set", subscribe = "BodyInfo/ASUMemoryPosition", type = Integer.class)
    public static final int ID_ASU_MEMORY_POSITION = 1845493880;

    @PropertyDefine(publish = "BodyInfo/ASUPreviewContent/Set", subscribe = "BodyInfo/ASUPreviewContent", type = Integer.class)
    public static final int ID_ASU_PREVIEW_CONTENT = 1845493858;

    @PropertyDefine(publish = "BodyInfo/AutomaticLocked/Set", subscribe = "BodyInfo/AutomaticLocked", type = Integer.class)
    public static final int ID_AUTOMATIC_LOCKED = 1845493890;

    @PropertyDefine(publish = "BodyInfo/AutoEasyLoadingEnable/Set", subscribe = "BodyInfo/AutoEasyLoadingEnable", type = Integer.class)
    public static final int ID_AUTO_EASY_LOADING_ENABLE = 1845493922;

    @PropertyDefine(publish = "BodyInfo/AutoEasyEntry/Set", subscribe = "BodyInfo/AutoEasyEntry", type = Integer.class)
    public static final int ID_AUTO_EASY_OUT = 1845493924;

    @PropertyDefine(publish = "BodyInfo/AwayLock/Set", subscribe = "BodyInfo/AwayLock", type = Integer.class)
    public static final int ID_AWAY_LOCK = 1845493891;

    @PropertyDefine(publish = "EnergyInfo/BattAvgTemp/Set", subscribe = "EnergyInfo/BattAvgTemp", type = Integer.class)
    public static final int ID_BATT_AVG_TEMP = 1845493869;

    @PropertyDefine(publish = "EnergyInfo/BattKeepWarm/Set", subscribe = "EnergyInfo/BattKeepWarm", type = Integer.class)
    public static final int ID_BATT_KEEP_WARM = 1845493868;

    @PropertyDefine(publish = "EnergyInfo/BattKeepWarmFailReason/Set", subscribe = "EnergyInfo/BattKeepWarmFailReason", type = Integer.class)
    public static final int ID_BATT_KEEP_WARM_FAIL_REASON = 1845493870;

    @PropertyDefine(publish = "EnergyInfo/BattKeepWarmStartTime/Set", subscribe = "EnergyInfo/BattKeepWarmStartTime", type = String.class)
    public static final int ID_BATT_KEEP_WARM_START_TIME = 1845493871;

    @PropertyDefine(publish = "EnergyInfo/BattStopKeepWarm/Set", subscribe = "EnergyInfo/BattStopKeepWarm", type = String.class)
    public static final int ID_BATT_STOP_KEEP_WARM = 1845493872;

    @PropertyDefine(publish = "BodyInfo/BLEOpenDriverDoor/Set", subscribe = "BodyInfo/BLEOpenDriverDoor", type = Integer.class)
    public static final int ID_BLE_DOOR_DRIVER_DOOR = 1845493878;

    @PropertyDefine(topic = "EnergyInfo/BookChargeCycle", type = String.class)
    public static final int ID_BOOK_CHARGE_CYCLE = 1845493794;

    @PropertyDefine(topic = "EnergyInfo/BookChargeCycleType", type = Integer.class)
    public static final int ID_BOOK_CHARGE_CYCLE_TYPE = 1845493793;

    @PropertyDefine(topic = "EnergyInfo/BookChargeDuration", type = Integer.class)
    public static final int ID_BOOK_CHARGE_DURATION = 1845493792;

    @PropertyDefine(topic = "EnergyInfo/BookChargeFailReason", type = Integer.class)
    public static final int ID_BOOK_CHARGE_FAIL_REASON = 1845493798;

    @PropertyDefine(topic = "EnergyInfo/BookChargeResponse", type = Integer.class)
    public static final int ID_BOOK_CHARGE_RESPONSE = 1845493796;

    @PropertyDefine(topic = "EnergyInfo/BookChargeSetFailReason", type = Integer.class)
    public static final int ID_BOOK_CHARGE_SET_FAIL_REASON = 1845493797;

    @PropertyDefine(topic = "EnergyInfo/BookChargeStatus", type = Integer.class)
    public static final int ID_BOOK_CHARGE_STATUS = 1845493795;

    @PropertyDefine(topic = "EnergyInfo/BookChargeSwitch", type = Integer.class)
    public static final int ID_BOOK_CHARGE_SWITCH = 1845493790;

    @PropertyDefine(topic = "EnergyInfo/BookChargeTime", type = String.class)
    public static final int ID_BOOK_CHARGE_TIME = 1845493791;

    @PropertyDefine(publish = "DMS/CallDetectSwitch/Set", subscribe = "DMS/CallDetectSwitch", type = Integer.class)
    public static final int ID_CALL_DETECT_SWITCH = 1845493968;

    @PropertyDefine(publish = "DMS/CallEvent/Set", subscribe = "DMS/CallEvent", type = String.class)
    public static final int ID_CALL_EVENT = 1845493978;

    @PropertyDefine(publish = "BodyInfo/ConsoleAdjust/Set", subscribe = "BodyInfo/ConsoleAdjust", type = Integer.class)
    public static final int ID_CONSOLE_ADJUST = 1845493933;

    @PropertyDefine(publish = "BodyInfo/CSTEnableStatus/Set", subscribe = "BodyInfo/CSTEnableStatus", type = Integer.class)
    public static final int ID_CST_ENABLE_STATUS = 1845493855;

    @PropertyDefine(publish = "BodyInfo/CSTIntervention/Set", subscribe = "BodyInfo/CSTIntervention", type = Integer.class)
    public static final int ID_CST_INTERVENTION = 1845493856;

    @PropertyDefine(publish = "AC/AirOutlet/DCSwingLeftRightPos/Set", subscribe = "AC/AirOutlet/DCSwingLeftRightPos", type = Integer.class)
    public static final int ID_DCSWING_LEFT_RIGHT_POS = 1845493848;

    @PropertyDefine(publish = "BNCM/DigitalKey/Set", subscribe = "BNCM/DigitalKey", type = String.class)
    public static final int ID_DIGITAL_KEY = 1845494036;

    @PropertyDefine(publish = "DMS/DistractionEvent/Set", subscribe = "DMS/DistractionEvent", type = String.class)
    public static final int ID_DISTRACTION_EVENT = 1845493975;

    @PropertyDefine(publish = "DMS/AutoRecognition/Set", subscribe = "DMS/AutoRecognition", type = Integer.class)
    public static final int ID_DMS_AUTORECOGNITION = 1845494006;

    @PropertyDefine(publish = "DMS/CancelOccupantCare/Set", subscribe = "DMS/CancelOccupantCare", type = String.class)
    public static final int ID_DMS_CANCELOCCUPANTCARE = 1845494000;

    @PropertyDefine(publish = "DMS/DmsDetectSwitch/Set", subscribe = "DMS/DmsDetectSwitch", type = Integer.class)
    public static final int ID_DMS_DETECT_SWITCH = 1845493963;

    @PropertyDefine(publish = "DMS/GetAllFaceInfo/Set", subscribe = "DMS/GetAllFaceInfo", type = String.class)
    public static final int ID_DMS_GETALLFACEINFO = 1845494003;

    @PropertyDefine(publish = "DMS/HealthDetectSwitch/Set", subscribe = "DMS/HealthDetectSwitch", type = Integer.class)
    public static final int ID_DMS_HEALTH_DETECT = 1845494038;

    @PropertyDefine(publish = "DMS/NotifyColdStart/Set", subscribe = "DMS/NotifyColdStart", type = String.class)
    public static final int ID_DMS_NOTIFYCOLDSTART = 1845494004;

    @PropertyDefine(publish = "DMS/RearViewMirror/Set", subscribe = "DMS/RearViewMirror", type = Integer.class)
    public static final int ID_DMS_REAR_VIEW_MIRROR = 1845494028;

    @PropertyDefine(publish = "DMS/SyncState/Set", subscribe = "DMS/SyncState", type = Integer.class)
    public static final int ID_DMS_SYNCSTATE = 1845494005;

    @PropertyDefine(publish = "DMS/UpdateFaceId/Set", subscribe = "DMS/UpdateFaceId", type = String.class)
    public static final int ID_DMS_UPDATEFACEID = 1845494002;

    @PropertyDefine(publish = "VehicleDoor/CentralLock/Set", subscribe = "VehicleDoor/CentralLock", type = Integer.class)
    public static final int ID_DOOR_CENTRAL_LOCK = 1845493910;

    @PropertyDefine(publish = "VehicleDoor/ChargeGate/Set", subscribe = "VehicleDoor/ChargeGate", type = Integer.class)
    public static final int ID_DOOR_CHARGE_GATE = 1845493915;

    @PropertyDefine(topic = "VehicleDoor/ChildLock", type = Integer.class)
    public static final int ID_DOOR_CHILD_LOCK = 1845493911;

    @PropertyDefine(publish = "VehicleDoor/ChildLockSwitch/Set", subscribe = "VehicleDoor/ChildLockSwitch", type = Integer.class)
    public static final int ID_DOOR_CHILD_LOCK_SWITCH = 1845493912;

    @PropertyDefine(publish = "VehicleDoor/CloseAllDoors/Set", subscribe = "VehicleDoor/CloseAllDoors", type = Integer.class)
    public static final int ID_DOOR_CLOSE_ALL_DOORS = 1845493902;

    @PropertyDefine(publish = "VehicleDoor/DoorControlMode/Front/Set", subscribe = "VehicleDoor/DoorControlMode/Front", type = Integer.class)
    public static final int ID_DOOR_CONTROL_MODE_FRONT = 1845493903;

    @PropertyDefine(publish = "VehicleDoor/DoorControlMode/Rear/Set", subscribe = "VehicleDoor/DoorControlMode/Rear", type = Integer.class)
    public static final int ID_DOOR_CONTROL_MODE_REAR = 1845493904;

    @PropertyDefine(topic = "VehicleDoor/CurrentPosition", type = Integer.class)
    public static final int ID_DOOR_CURRENT_POSITION = 1845493901;

    @PropertyDefine(subscribe = "VehicleDoor/OpenPositionSettingInfo", type = Integer.class)
    public static final int ID_DOOR_FUNCTION_POSITION = 1845494245;

    @PropertyDefine(publish = "VehicleDoor/HoodSW/Set", subscribe = "VehicleDoor/HoodSW", type = Integer.class)
    public static final int ID_DOOR_HOOD_SW = 1845493913;

    @PropertyDefine(subscribe = "VehicleDoor/MotionDirection", type = Integer.class)
    public static final int ID_DOOR_MOTION_DIRECTION = 1845494080;

    @PropertyDefine(topic = "VehicleDoor/MotionPrompt", type = Integer.class)
    public static final int ID_DOOR_MOTION_PROMPT = 1845493909;

    @PropertyDefine(publish = "BodyInfo/DoorRemoteKeyControl/Set", subscribe = "BodyInfo/DoorRemoteKeyControl", type = Integer.class)
    public static final int ID_DOOR_REMOTE_KEY_CONTROL = 1845493877;

    @PropertyDefine(publish = "VehicleDoor/TailgateSW/Set", subscribe = "VehicleDoor/TailgateSW", type = Integer.class)
    public static final int ID_DOOR_TAILGATE_SW = 1845493914;

    @PropertyDefine(publish = "VehicleDoor/WindowLockStatus/Set", subscribe = "VehicleDoor/WindowLockStatus", type = Integer.class)
    public static final int ID_DOOR_WINDOW_LOCK_STATUS = 1845493934;

    @PropertyDefine(publish = "DMS/DrinkDetectSwitch/Set", subscribe = "DMS/DrinkDetectSwitch", type = Integer.class)
    public static final int ID_DRINK_DETECT_SWITCH = 1845493967;

    @PropertyDefine(publish = "DMS/DrinkEvent/Set", subscribe = "DMS/DrinkEvent", type = String.class)
    public static final int ID_DRINK_EVENT = 1845493979;

    @PropertyDefine(topic = "DrivingInfo/AirconditionMode", type = Integer.class)
    public static final int ID_DRIVE_MODE_AIRCONDITION_MODE = 1845493818;

    @PropertyDefine(topic = "DrivingInfo/BrakePedalFeelMode", type = Integer.class)
    public static final int ID_DRIVE_MODE_BRAKE_PEDAL_FEEL_MODE = 1845493819;

    @PropertyDefine(topic = "DrivingInfo/ESPMode", type = Integer.class)
    public static final int ID_DRIVE_MODE_ESP_MODE = 1845493820;

    @PropertyDefine(topic = "DrivingInfo/PropulsionMode", type = Integer.class)
    public static final int ID_DRIVE_MODE_PROPULSION_MODE = 1845493814;

    @PropertyDefine(topic = "DrivingInfo/SteeringMode", type = Integer.class)
    public static final int ID_DRIVE_MODE_STEERING_MODE = 1845493815;

    @PropertyDefine(topic = "DrivingInfo/SuspensionDamping", type = Integer.class)
    public static final int ID_DRIVE_MODE_SUSPENSION_DAMPING = 1845493817;

    @PropertyDefine(topic = "DrivingInfo/SuspensionHeight", type = Integer.class)
    public static final int ID_DRIVE_MODE_SUSPENSION_HEIGHT = 1845493816;

    @PropertyDefine(publish = "AVM/DrivingInfo/Gear/Set", subscribe = "AVM/DrivingInfo/Gear", type = Integer.class)
    public static final int ID_DRIVING_INFO_GEAR = 1845493948;

    @PropertyDefine(publish = "BodyInfo/EasyLoadingEnable/Set", subscribe = "BodyInfo/EasyLoadingEnable", type = Integer.class)
    public static final int ID_EASY_LOADING_ENABLE = 1845493921;

    @PropertyDefine(publish = "BodyInfo/EESMode/Set", subscribe = "BodyInfo/EESMode", type = Integer.class)
    public static final int ID_EES_MODE = 1845493926;

    @PropertyDefine(publish = "BodyInfo/EESModeAvailable/Set", subscribe = "BodyInfo/EESModeAvailable", type = Integer.class)
    public static final int ID_EES_MODE_AVAILABLE = 1845493925;

    @PropertyDefine(publish = "BodyInfo/EESModeExtendRang/Set", subscribe = "BodyInfo/EESModeExtendRang", type = Integer.class)
    public static final int ID_EES_MODE_EXTEND_RANG = 1845493927;

    @PropertyDefine(publish = "BodyInfo/EESMode/QNX/Set", subscribe = "BodyInfo/EESMode/QNX", type = Integer.class)
    public static final int ID_EES_MODE_QNX = 1845494037;

    @PropertyDefine(publish = "BodyInfo/EESModeReq/Set", subscribe = "BodyInfo/EESModeReq", type = Integer.class)
    public static final int ID_EES_MODE_REQ = 1845493941;

    @PropertyDefine(publish = "Volume/effect/balance/Set", subscribe = "Volume/effect/balance", type = Integer.class)
    public static final int ID_EFFECT_BALANCE = 1845494021;

    @PropertyDefine(publish = "Volume/effect/decline/Set", subscribe = "Volume/effect/decline", type = Integer.class)
    public static final int ID_EFFECT_DECLINE = 1845494020;

    @PropertyDefine(publish = "Volume/effect/soundFiled/Set", subscribe = "Volume/effect/soundFiled", type = Integer.class)
    public static final int ID_EFFECT_SOUND_FILED = 1845494022;

    @PropertyDefine(publish = "BodyInfo/EgyRegenLevelHighAllowed/Set", subscribe = "BodyInfo/EgyRegenLevelHighAllowed", type = Integer.class)
    public static final int ID_EGY_REGEN_LEVEL_HIGH_ALLOWED = 1845494046;

    @PropertyDefine(publish = "eHMI_DoorSet/notifySetOpenAngle", type = Integer.class)
    public static final int ID_EHMI_DOORSET_NOTIFY_SET_OPEN_ANGLE = 1845494243;

    @PropertyDefine(publish = "OMS/ExpressionDetectSwitch/Set", subscribe = "OMS/ExpressionDetectSwitch", type = Integer.class)
    public static final int ID_EMOTION_DETECT_SWITCH = 1845493972;

    @PropertyDefine(topic = "Battery/Capacity", type = Integer.class)
    public static final int ID_ENERGYINFO_BATTERY_CAPACITY = 1845494026;

    @PropertyDefine(topic = "EnergyInfo/EnergyConsumptionPer10KmChart", type = Float[].class)
    public static final int ID_ENERGY_CONSUMPTION_10_KM_CHART = 1845493994;

    @PropertyDefine(topic = "EnergyInfo/EnergyConsumptionPer25KmChart", type = Float[].class)
    public static final int ID_ENERGY_CONSUMPTION_25_KM_CHART = 1845493995;

    @PropertyDefine(topic = "EnergyInfo/EnergyConsumptionPer50KmChart", type = Float[].class)
    public static final int ID_ENERGY_CONSUMPTION_50_KM_CHART = 1845493996;

    @PropertyDefine(publish = "BodyInfo/EnergyConsumptionPer100Km/Set", subscribe = "BodyInfo/EnergyConsumptionPer100Km", type = Integer.class)
    public static final int ID_ENERGY_CONSUMPTION_PER_100_KM = 1845493885;

    @PropertyDefine(publish = "EnergyInfo/EnergyConsumptionPer10Km/Set", subscribe = "EnergyInfo/EnergyConsumptionPer10Km", type = Integer.class)
    public static final int ID_ENERGY_CONSUMPTION_PER_10_KM = 1845493882;

    @PropertyDefine(publish = "BodyInfo/EnergyConsumptionPer25Km/Set", subscribe = "BodyInfo/EnergyConsumptionPer25Km", type = Integer.class)
    public static final int ID_ENERGY_CONSUMPTION_PER_25_KM = 1845493883;

    @PropertyDefine(publish = "BodyInfo/EnergyConsumptionPer50Km/Set", subscribe = "BodyInfo/EnergyConsumptionPer50Km", type = Integer.class)
    public static final int ID_ENERGY_CONSUMPTION_PER_50_KM = 1845493884;

    @PropertyDefine(publish = "OMS/ExpressionEvent/Set", subscribe = "OMS/ExpressionEvent", type = String.class)
    public static final int ID_EXPRESSION_EVENT = 1845493981;

    @PropertyDefine(publish = "BodyInfo/EPedalModeStatus/Set", subscribe = "BodyInfo/EPedalModeStatus", type = Integer.class)
    public static final int ID_E_PEDAL_MODE_STATUS = 1845494049;

    @PropertyDefine(publish = "BodyInfo/EPedalOPDInfo/Set", subscribe = "BodyInfo/EPedalOPDInfo", type = Integer.class)
    public static final int ID_E_PEDAL_OPD_INFO = 1845494050;

    @PropertyDefine(publish = "DMS/FatigueEvent/Set", subscribe = "DMS/FatigueEvent", type = String.class)
    public static final int ID_FATIGUE_EVENT = 1845493976;

    @PropertyDefine(subscribe = "AC/Fragrance/RunOut", type = Integer.class)
    public static final int ID_FRAGRANCE_RUN_OUT = 1845494010;

    @PropertyDefine(publish = "AC/Fragrance/Unset/Set", subscribe = "AC/Fragrance/Unset", type = Integer.class)
    public static final int ID_FRAGRANCE_UNSET = 1845493835;

    @PropertyDefine(publish = "VehicleDoor/FrontDoorVoiceControl/Set", subscribe = "VehicleDoor/FrontDoorVoiceControl", type = Integer.class)
    public static final int ID_FRONT_DOOR_VOICE_CONTROL = 1845493932;

    @PropertyDefine(publish = "DMS/GazaOnRVMDetectSwitch/Set", subscribe = "DMS/GazaOnRVMDetectSwitch", type = Integer.class)
    public static final int ID_GAZA_ON_REAR_VIEW_MIRROR_DETECT_SWITCH = 1845493970;

    @PropertyDefine(publish = "DMS/GazaOnCCSDetectSwitch/Set", subscribe = "DMS/GazaOnCCSDetectSwitch", type = Integer.class)
    public static final int ID_GAZA_ON_SCREEN_DETECT_SWITCH = 1845493969;

    @PropertyDefine(publish = "DMS/GazeAreaEvent/Set", subscribe = "DMS/GazeAreaEvent", type = String.class)
    public static final int ID_GAZE_AREA_EVENT = 1845493980;

    @PropertyDefine(publish = "BodyInfo/GloveBoxSwitch/Set", subscribe = "BodyInfo/GloveBoxSwitch", type = Integer.class)
    public static final int ID_GLOVE_BOX_SWITCH = 1845493881;

    @PropertyDefine(publish = "HUD/Default/Set", subscribe = "HUD/Default", type = Integer.class)
    public static final int ID_HUD_DEFAULT = 1845493962;

    @PropertyDefine(publish = "HUD/NavigationStartup/Set", subscribe = "HUD/NavigationStartup", type = Integer.class)
    public static final int ID_HUD_NAVIGATION_START_UP = 1845493983;

    @PropertyDefine(publish = "HUD/HUDSnowMode/Set", subscribe = "HUD/HUDSnowMode", type = Integer.class)
    public static final int ID_HUD_SNOW_MODE = 1845494202;

    @PropertyDefine(publish = "AC/InteMode/AQSAutoRun/Set", subscribe = "AC/InteMode/AQSAutoRun", type = Integer.class)
    public static final int ID_INTE_MODE_AQS_AUTO_RUN = 1845493836;

    @PropertyDefine(publish = "AC/InteMode/InteCleanCar/Set", subscribe = "AC/InteMode/InteCleanCar", type = Integer.class)
    public static final int ID_INTE_MODE_CLEAN_CAR = 1845493839;

    @PropertyDefine(publish = "AC/InteMode/DFM/Set", subscribe = "AC/InteMode/DFM", type = Integer.class)
    public static final int ID_INTE_MODE_DFM = 1845493837;

    @PropertyDefine(publish = "AC/InteMode/KeepWarm/Set", subscribe = "AC/InteMode/KeepWarm", type = Integer.class)
    public static final int ID_INTE_MODE_KEEP_WARM = 1845493840;

    @PropertyDefine(publish = "AC/InteMode/LoveRemind/Set", subscribe = "AC/InteMode/LoveRemind", type = Integer.class)
    public static final int ID_INTE_MODE_LOVE_REMIND = 1845493838;

    @PropertyDefine(publish = "Light/AutoReadLight/Set", subscribe = "Light/AutoReadLight", type = Integer.class)
    public static final int ID_LIGHT_AUTO_READ_LIGHT = 1845493917;

    @PropertyDefine(publish = "Light/IntelligentHighBeam/Set", subscribe = "Light/IntelligentHighBeam", type = Integer.class)
    public static final int ID_LIGHT_INTELLIGENT_HIGH_BEAM = 1845493867;

    @PropertyDefine(publish = "Light/InteractiveSignal/Set", subscribe = "Light/InteractiveSignal", type = Integer.class)
    public static final int ID_LIGHT_INTERACTIVE_SIGNAL = 1845493919;

    @PropertyDefine(publish = "Light/InteractiveSignalMode/Set", subscribe = "Light/InteractiveSignalMode", type = Integer.class)
    public static final int ID_LIGHT_INTERACTIVE_SIGNAL_MODE = 1845493920;

    @PropertyDefine(publish = "Light/ISDLightStatus/Set", subscribe = "Light/ISDLightStatus", type = String.class)
    public static final int ID_LIGHT_ISD_LIGHT_STATUS = 1845494108;

    @PropertyDefine(publish = "Light/MusicLightShow/Set", subscribe = "Light/MusicLightShow", type = String.class)
    public static final int ID_LIGHT_MUSIC_LIGHT_SHOW = 1845493940;

    @PropertyDefine(publish = "Light/WelcomeOpen/Set", subscribe = "Light/WelcomeOpen", type = Integer.class)
    public static final int ID_LIGHT_WELCOME_OPEN = 1845493866;

    @PropertyDefine(publish = "BodyInfo/LockCarWindowClose/Set", subscribe = "BodyInfo/LockCarWindowClose", type = Integer.class)
    public static final int ID_LOCK_CAR_WINDOW_CLOSE = 1845493864;

    @PropertyDefine(publish = "MaintenanceMode/Suspension/Set", subscribe = "MaintenanceMode/Suspension", type = Integer.class)
    public static final int ID_MAINTENANCE_MODE_SUSPENSION = 1845493854;

    @PropertyDefine(publish = "MaintenanceMode/Wiper/Set", subscribe = "MaintenanceMode/Wiper", type = String.class)
    public static final int ID_MAINTENANCE_MODE_WIPER = 1845493853;

    @PropertyDefine(publish = "BodyInfo/ManualEasyOut/Set", subscribe = "BodyInfo/ManualEasyOut", type = Integer.class)
    public static final int ID_MANUAL_EASY_OUT = 1845493923;

    @PropertyDefine(publish = "BodyInfo/MFSSwitchMode/Set", subscribe = "BodyInfo/MFSSwitchMode", type = Integer.class)
    public static final int ID_MFS_SWITCH_MODE = 1845493894;

    @PropertyDefine(topic = "AC/WindMode/Defrost/Front", type = Integer.class)
    public static final int ID_MODE_DEFROST_FRONT = 1845493776;

    @PropertyDefine(topic = "AC/WindSweepMode/FrontLeft", type = Integer.class)
    public static final int ID_MODE_DRIVER_SWEEP = 1845493777;

    @PropertyDefine(topic = "AC/WindMode/Face/Front", type = Integer.class)
    public static final int ID_MODE_FACE_FRONT = 1845493774;

    @PropertyDefine(topic = "AC/WindMode/Face/Rear", type = Integer.class)
    public static final int ID_MODE_FACE_REAR = 1845493788;

    @PropertyDefine(topic = "AC/WindMode/Foot/Front", type = Integer.class)
    public static final int ID_MODE_FOOT_FRONT = 1845493775;

    @PropertyDefine(topic = "AC/WindMode/Foot/Rear", type = Integer.class)
    public static final int ID_MODE_FOOT_REAR = 1845493789;

    @PropertyDefine(topic = "AC/WindSweepMode/FrontRight", type = Integer.class)
    public static final int ID_MODE_PSR_SWEEP = 1845493778;

    @PropertyDefine(publish = "BodyInfo/NFCCard1Info/Set", subscribe = "BodyInfo/NFCCard1Info", type = String.class)
    public static final int ID_NFC_CARD1_INFO = 1845493873;

    @PropertyDefine(publish = "BodyInfo/NFCCard2Info/Set", subscribe = "BodyInfo/NFCCard2Info", type = String.class)
    public static final int ID_NFC_CARD2_INFO = 1845493874;

    @PropertyDefine(publish = "BodyInfo/NFCCard3Info/Set", subscribe = "BodyInfo/NFCCard3Info", type = String.class)
    public static final int ID_NFC_CARD3_INFO = 1845493875;

    @PropertyDefine(publish = "BodyInfo/NFCCard4Info/Set", subscribe = "BodyInfo/NFCCard4Info", type = String.class)
    public static final int ID_NFC_CARD4_INFO = 1845493876;

    @PropertyDefine(publish = "OMS/OccupantCareDetectSwitch/Set", subscribe = "OMS/OccupantCareDetectSwitch", type = Integer.class)
    public static final int ID_OCCUPANT_CARE_DETECT_SWITCH = 1845493973;

    @PropertyDefine(publish = "OMS/OccupantCare/Set", subscribe = "OMS/OccupantCare", type = String.class)
    public static final int ID_OCCUPANT_CARE_EVENT = 1845493982;

    @PropertyDefine(publish = "OMS/OmsDetectSwitch/Set", subscribe = "OMS/OmsDetectSwitch", type = Integer.class)
    public static final int ID_OMS_DETECT_SWITCH = 1845493971;

    @PropertyDefine(publish = "OMS/HealthDetectSwitch/Set", subscribe = "OMS/HealthDetectSwitch", type = Integer.class)
    public static final int ID_OMS_HEALTH_DETECT = 1845494039;

    @PropertyDefine(publish = "BodyInfo/PedalCloseDriverDoor/Set", subscribe = "BodyInfo/PedalCloseDriverDoor", type = Integer.class)
    public static final int ID_PEDAL_CLOSE_DRIVER_DOOR = 1845493879;

    @PropertyDefine(publish = "PET/petModeStatus/Set", subscribe = "PET/petModeStatus", type = Integer.class)
    public static final int ID_PET_MODE_ENABLE = 1845493949;

    @PropertyDefine(publish = "BodyInfo/PhoneChargeStatus/Set", subscribe = "BodyInfo/PhoneChargeStatus", type = Integer.class)
    public static final int ID_PHONE_CHARGE_STATUS = 1845494030;

    @PropertyDefine(publish = "BodyInfo/PhoneForgottenStatus/Set", subscribe = "BodyInfo/PhoneForgottenStatus", type = Integer.class)
    public static final int ID_PHONE_FORGOTTEN_STATUS = 1845494029;

    @PropertyDefine(publish = "BodyInfo/PhoneLeaveAlert/Set", subscribe = "BodyInfo/PhoneLeaveAlert", type = Integer.class)
    public static final int ID_PHONE_LEAVE_ALERT = 1845493892;

    @PropertyDefine(publish = "BodyInfo/WirelessCharge/Set", subscribe = "BodyInfo/WirelessCharge", type = Integer.class)
    public static final int ID_PHONE_WIRELESS_CHARGE = 1845493893;

    @PropertyDefine(publish = "AC/PM25TooHigh/Set", subscribe = "AC/PM25TooHigh", type = Integer.class)
    public static final int ID_PM25_TOO_HIGH = 1845493834;

    @PropertyDefine(topic = "AC/DriverLeftVent/LeftRight", type = Integer.class)
    public static final int ID_POSITION_DRIVER_LEFT_VENT_HORIZONTAL = 1845493780;

    @PropertyDefine(topic = "AC/DriverLeftVent/UpDown", type = Integer.class)
    public static final int ID_POSITION_DRIVER_LEFT_VENT_VERTICAL = 1845493779;

    @PropertyDefine(topic = "AC/DriverRightVent/LeftRight", type = Integer.class)
    public static final int ID_POSITION_DRIVER_RIGHT_VENT_HORIZONTAL = 1845493782;

    @PropertyDefine(topic = "AC/DriverRightVent/UpDown", type = Integer.class)
    public static final int ID_POSITION_DRIVER_RIGHT_VENT_VERTICAL = 1845493781;

    @PropertyDefine(topic = "AC/PsrLeftVent/LeftRight", type = Integer.class)
    public static final int ID_POSITION_PSR_LEFT_VENT_HORIZONTAL = 1845493784;

    @PropertyDefine(topic = "AC/PsrLeftVent/UpDown", type = Integer.class)
    public static final int ID_POSITION_PSR_LEFT_VENT_VERTICAL = 1845493783;

    @PropertyDefine(topic = "AC/PsrRightVent/LeftRight", type = Integer.class)
    public static final int ID_POSITION_PSR_RIGHT_VENT_HORIZONTAL = 1845493786;

    @PropertyDefine(topic = "AC/PsrRightVent/UpDown", type = Integer.class)
    public static final int ID_POSITION_PSR_RIGHT_VENT_VERTICAL = 1845493785;

    @PropertyDefine(subscribe = "Power/LimitLow", type = Integer.class)
    public static final int ID_POWER_LIMITLOW = 1845494023;

    @PropertyDefine(publish = "BodyInfo/PowerOff/Set", subscribe = "BodyInfo/PowerOff", type = Integer.class)
    public static final int ID_POWER_OFF = 1845493918;

    @PropertyDefine(publish = "EnergyInfo/PowerStatus/Set", subscribe = "EnergyInfo/PowerStatus", type = Integer.class)
    public static final int ID_POWER_STATUS = 1845493944;

    @PropertyDefine(subscribe = "DMS/QnxHealthMessage", type = String.class)
    public static final int ID_QNX_HEALTH_MESSAGE = 1845494013;

    @PropertyDefine(publish = "BodyInfo/RainWindowClose/Set", subscribe = "BodyInfo/RainWindowClose", type = Integer.class)
    public static final int ID_RAIN_WINDOW_CLOSE = 1845493865;

    @PropertyDefine(publish = "RangeAval/CLTC/Set", subscribe = "RangeAval/CLTC", type = Integer.class)
    public static final int ID_RANGE_AVAL_CLTC = 1845493897;

    @PropertyDefine(publish = "RangeAval/Dynamic/Set", subscribe = "RangeAval/Dynamic", type = Integer.class)
    public static final int ID_RANGE_AVAL_DYNAMIC = 1845493898;

    @PropertyDefine(publish = "VehicleDoor/RearDoorVoiceControl/Set", subscribe = "VehicleDoor/RearDoorVoiceControl", type = Integer.class)
    public static final int ID_REAR_DOOR_VOICE_CONTROL = 1845493931;

    @PropertyDefine(publish = "BodyInfo/RearViewAutoFold/Set", subscribe = "BodyInfo/RearViewAutoFold", type = Integer.class)
    public static final int ID_REAR_VIEW_AUTO_FOLD = 1845493861;

    @PropertyDefine(publish = "BodyInfo/RearViewFlip/Set", subscribe = "BodyInfo/RearViewFlip", type = Integer.class)
    public static final int ID_REAR_VIEW_FLIP = 1845493862;

    @PropertyDefine(publish = "BodyInfo/RearViewFold/Set", subscribe = "BodyInfo/RearViewFold", type = Integer.class)
    public static final int ID_REAR_VIEW_FOLD = 1845493942;

    @PropertyDefine(publish = "BodyInfo/RearViewRainAutoHeat/Set", subscribe = "BodyInfo/RearViewRainAutoHeat", type = Integer.class)
    public static final int ID_REAR_VIEW_RAIN_AUTO_HEAT = 1845493863;

    @PropertyDefine(publish = "DrivingInfo/RemainingMileageMode/Set", subscribe = "DrivingInfo/RemainingMileageMode", type = Integer.class)
    public static final int ID_REMAINING_MILEAGE_MODE = 1845493974;

    @PropertyDefine(publish = "BodyInfo/SafetyBeltStatus/Set", subscribe = "BodyInfo/SafetyBeltStatus", type = Integer.class)
    public static final int ID_SAFETY_BELT_STATUS = 1845493889;

    @PropertyDefine(topic = "AC/SeatBackHeating", type = Integer.class)
    public static final int ID_SEAT_BACK_HEAT = 1845493821;

    @PropertyDefine(topic = "AC/SeatBackRestAngle", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE = 1845493825;

    @PropertyDefine(topic = "AC/SeatBackRestAngleInch", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE_INCH = 1845493946;

    @PropertyDefine(topic = "AC/SeatBackVentilation", type = Integer.class)
    public static final int ID_SEAT_BACK_VENT = 1845493822;

    @PropertyDefine(topic = "AC/SeatBackZAngle", type = Integer.class)
    public static final int ID_SEAT_BACK_Z_ANGLE = 1845493826;

    @PropertyDefine(topic = "AC/SeatCushionInch", type = Integer.class)
    public static final int ID_SEAT_CUSHION_INCH = 1845493947;

    @PropertyDefine(topic = "AC/SeatCushionTargetPos", type = Integer.class)
    public static final int ID_SEAT_CUSHION_TARGET_POS = 1845493935;

    @PropertyDefine(topic = "AC/SeatEasyAccess", type = Integer.class)
    public static final int ID_SEAT_EASY_ACCESS = 1845493929;

    @PropertyDefine(publish = "AC/SeatEasyAccessPosition/Set", subscribe = "AC/SeatEasyAccessPosition", type = Integer.class)
    public static final int ID_SEAT_EASY_ACCESS_POSITION = 1845494044;

    @PropertyDefine(topic = "AC/SeatEasyAccessReq", type = Integer.class)
    public static final int ID_SEAT_EASY_ACCESS_REQ = 1845493930;

    @PropertyDefine(topic = "AC/SeatFootRestAngle", type = Integer.class)
    public static final int ID_SEAT_FOOT_REST_ANGLE = 1845493937;

    @PropertyDefine(topic = "AC/SeatHeadRestPos", type = Integer.class)
    public static final int ID_SEAT_HEAD_REST_POS = 1845494045;

    @PropertyDefine(topic = "AC/SeatLegRestAngle", type = Integer.class)
    public static final int ID_SEAT_LEG_REST_ANGLE = 1845493936;

    @PropertyDefine(topic = "AC/SeatMassage", type = String.class)
    public static final int ID_SEAT_MASSAGE = 1845493831;

    @PropertyDefine(topic = "AC/SeatMassageLevel", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_LEVEL = 0;

    @PropertyDefine(topic = "AC/SeatMassageMode", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE = 0;

    @PropertyDefine(topic = "AC/SeatMemory", type = Integer.class)
    public static final int ID_SEAT_MEMORY = 1845493938;

    @PropertyDefine(topic = "AC/SeatNeedMemory", type = Integer.class)
    public static final int ID_SEAT_NEED_MEMORY = 1845493939;

    @PropertyDefine(topic = "AC/SeatXDirection", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION = 1845493823;

    @PropertyDefine(topic = "AC/SeatXDirectionInch", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION_INCH = 1845493945;

    @PropertyDefine(topic = "AC/SeatZDirection", type = Integer.class)
    public static final int ID_SEAT_Z_DIRECTION = 1845493824;

    @PropertyDefine(publish = "DMS/SmokingEvent/Set", subscribe = "DMS/SmokingEvent", type = String.class)
    public static final int ID_SMOKING_EVENT = 1845493977;

    @PropertyDefine(publish = "BodyInfo/SpoilerFail/Set", subscribe = "BodyInfo/SpoilerFail", type = Integer.class)
    public static final int ID_SPOILER_FAIL = 1845493984;

    @PropertyDefine(publish = "BodyInfo/SpoilerFeedBack/Set", subscribe = "BodyInfo/SpoilerFeedBack", type = Integer.class)
    public static final int ID_SPOILER_FEED_BACK = 1845494009;

    @PropertyDefine(publish = "BodyInfo/SpoilerHeight/Set", subscribe = "BodyInfo/SpoilerHeight", type = Integer.class)
    public static final int ID_SPOILER_HEIGHT = 1845493906;

    @PropertyDefine(publish = "BodyInfo/SpoilerSwitch/Set", subscribe = "BodyInfo/SpoilerSwitch", type = Integer.class)
    public static final int ID_SPOILER_SWITCH = 1845493905;

    @PropertyDefine(topic = "EnergyInfo/StopCharge", type = Integer.class)
    public static final int ID_STOP_CHARGE = 1845494027;

    @PropertyDefine(publish = "BodyInfo/StopModeAllowed/Set", subscribe = "BodyInfo/StopModeAllowed", type = Integer.class)
    public static final int ID_STOP_MODE_ALLOWED = 1845494047;

    @PropertyDefine(publish = "BodyInfo/StopModeStatusResp/Set", subscribe = "BodyInfo/StopModeStatusResp", type = Integer.class)
    public static final int ID_STOP_MODE_STATUS_RESP = 1845494048;

    @PropertyDefine(publish = "BodyInfo/StopModeSwitch/Set", subscribe = "BodyInfo/StopModeSwitch", type = Integer.class)
    public static final int ID_STOP_MODE_SWITCH = 1845493900;

    @PropertyDefine(subscribe = "Telltale/HazardLightTellTale", type = Integer.class)
    public static final int ID_TELLTALE_HAZARDLIGHTTELLTALE = 1845494014;

    @PropertyDefine(subscribe = "Sensor/NumberOfTemperature", type = Float.class)
    public static final int ID_TEMPERATURE_OUTSIDE = 1845494011;

    @PropertyDefine(publish = "EOXTPMS/LeftFront/TireKpaNum/Set", subscribe = "EOXTPMS/LeftFront/TireKpaNum", type = Integer.class)
    public static final int ID_TIRE_KPA_NUM_LEFTFRONT = 1845493958;

    @PropertyDefine(publish = "EOXTPMS/LeftRear/TireKpaNum/Set", subscribe = "EOXTPMS/LeftRear/TireKpaNum", type = Integer.class)
    public static final int ID_TIRE_KPA_NUM_LEFTREAR = 1845493960;

    @PropertyDefine(publish = "EOXTPMS/RightFront/TireKpaNum/Set", subscribe = "EOXTPMS/RightFront/TireKpaNum", type = Integer.class)
    public static final int ID_TIRE_KPA_NUM_RIGHTFRONT = 1845493959;

    @PropertyDefine(publish = "EOXTPMS/RightRear/TireKpaNum/Set", subscribe = "EOXTPMS/RightRear/TireKpaNum", type = Integer.class)
    public static final int ID_TIRE_KPA_NUM_RIGHTREAR = 1845493961;

    @PropertyDefine(publish = "EOXTPMS/KpaUnit/Set", subscribe = "EOXTPMS/KpaUnit", type = Integer.class)
    public static final int ID_TIRE_KPA_UNIT = 1845494024;

    @PropertyDefine(publish = "EOXTPMS/LeftFront/TireSts/Set", subscribe = "EOXTPMS/LeftFront/TireSts", type = Integer.class)
    public static final int ID_TIRE_TIRESTS_LEFTFRONT = 1845494032;

    @PropertyDefine(publish = "EOXTPMS/LeftRear/TireSts/Set", subscribe = "EOXTPMS/LeftRear/TireSts", type = Integer.class)
    public static final int ID_TIRE_TIRESTS_LEFTREAR = 1845494034;

    @PropertyDefine(publish = "EOXTPMS/RightFront/TireSts/Set", subscribe = "EOXTPMS/RightFront/TireSts", type = Integer.class)
    public static final int ID_TIRE_TIRESTS_RIGHTFRONT = 1845494033;

    @PropertyDefine(publish = "EOXTPMS/RightRear/TireSts/Set", subscribe = "EOXTPMS/RightRear/TireSts", type = Integer.class)
    public static final int ID_TIRE_TIRESTS_RIGHTREAR = 1845494035;

    @PropertyDefine(publish = "EOXTPMS/LeftFront/TireTempNum/Set", subscribe = "EOXTPMS/LeftFront/TireTempNum", type = Integer.class)
    public static final int ID_TIRE_TIRETEMPNUM_LEFTFRONT = 1845494040;

    @PropertyDefine(publish = "EOXTPMS/LeftRear/TireTempNum/Set", subscribe = "EOXTPMS/LeftRear/TireTempNum", type = Integer.class)
    public static final int ID_TIRE_TIRETEMPNUM_LEFTREAR = 1845494042;

    @PropertyDefine(publish = "EOXTPMS/RightFront/TireTempNum/Set", subscribe = "EOXTPMS/RightFront/TireTempNum", type = Integer.class)
    public static final int ID_TIRE_TIRETEMPNUM_RIGHTFRONT = 1845494041;

    @PropertyDefine(publish = "EOXTPMS/RightRear/TireTempNum/Set", subscribe = "EOXTPMS/RightRear/TireTempNum", type = Integer.class)
    public static final int ID_TIRE_TIRETEMPNUM_RIGHTREAR = 1845494043;

    @PropertyDefine(publish = "EnergyInfo/TowModeAvailable/Set", subscribe = "EnergyInfo/TowModeAvailable", type = Integer.class)
    public static final int ID_TOWING_MODE_AVAILABLE = 1845493928;

    @PropertyDefine(subscribe = "DrivingInfo/TripAAverageElectric", type = Float.class)
    public static final int ID_TRIPA_AVERAGE_ELECTRIC = 1845494259;

    @PropertyDefine(publish = "DrivingInfo/TripADriveDistance/Set", subscribe = "DrivingInfo/TripADriveDistance", type = Float.class)
    public static final int ID_TRIP_A_DRIVE_DISTANCE = 1845493951;

    @PropertyDefine(publish = "DrivingInfo/TripADriveTime/Set", subscribe = "DrivingInfo/TripADriveTime", type = Float.class)
    public static final int ID_TRIP_A_DRIVE_TIME = 1845493950;

    @PropertyDefine(publish = "DrivingInfo/TripBDriveDistance/Set", subscribe = "DrivingInfo/TripBDriveDistance", type = Float.class)
    public static final int ID_TRIP_B_DRIVE_DISTANCE = 1845493954;

    @PropertyDefine(publish = "BodyInfo/UnlockAlarmWarn/Set", subscribe = "BodyInfo/UnlockAlarmWarn", type = Integer.class)
    public static final int ID_UNLOCK_ALARM_WARN = 1845493886;

    @PropertyDefine(publish = "BodyInfo/UnlockDoorSet/Set", subscribe = "BodyInfo/UnlockDoorSet", type = Integer.class)
    public static final int ID_UNLOCK_DOOR_SET = 1845493887;

    @PropertyDefine(subscribe = "Vehicle/Enhance/BreakLightStatus", type = Integer.class)
    public static final int ID_VEHICLE_ENHANCE_BREAKLIGHTSTATUS = 1845494015;

    @PropertyDefine(publish = "BodyInfo/VibrationWarning/Set", subscribe = "BodyInfo/VibrationWarning", type = Integer.class)
    public static final int ID_VIBRATION_WARNING = 1845493888;

    @PropertyDefine(publish = "VehicleWindow/AllWindowAdjust/Set", subscribe = "VehicleWindow/AllWindowAdjust", type = Integer.class)
    public static final int ID_WINDOW_ALL_WINDOW_ADJUST = 1845493907;

    @PropertyDefine(publish = "VehicleWindow/WindowVentilate/Set", subscribe = "VehicleWindow/WindowVentilate", type = Integer.class)
    public static final int ID_WINDOW_VENTILATE = 1845493908;

    @PropertyDefine(publish = "BodyInfo/WiperSensitivity/Set", subscribe = "BodyInfo/WiperSensitivity", type = Integer.class)
    public static final int ID_WIPER_SENSITIVITY = 1845493857;

    @PropertyDefine(publish = "AC/ZeroHeavySeat/Set", subscribe = "AC/ZeroHeavySeat", type = Integer.class)
    public static final int ID_ZERO_HEAVY_SEAT = 1845493896;

    @PropertyDefine(topic = "Light/Auto", type = Integer.class)
    public static final int LIGHT_AUTO = 1845493771;

    @PropertyDefine(topic = "Light/Off", type = Integer.class)
    public static final int LIGHT_OFF = 1845493772;
    public static final int MGR_ID = 110;
    public static final String PERMISSION = "mega.car.permission.VEHICLE_CONTROL";

    @PropertyDefine(topic = "EnergyInfo/SftWarningSwitch", type = Integer.class)
    public static final int SFT_WARNING = 1845493813;

    @PropertyDefine(topic = "EnergyInfo/TowingModeSwitch", type = Integer.class)
    public static final int TOWING_MODE = 1845493812;
}
