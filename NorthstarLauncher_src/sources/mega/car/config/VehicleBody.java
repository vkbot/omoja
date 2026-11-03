package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 9, permission = VehicleBody.PERMISSION)
public interface VehicleBody {

    @PropertyDefine(publish = "BodyInfo/ArmingSts/Set", subscribe = "BodyInfo/ArmingSts", type = Integer.class)
    public static final int ID_BODY_ARMING_STATUS = 150995051;

    @PropertyDefine(publish = "VehicleInfo/VehicleColor/Set", subscribe = "VehicleInfo/VehicleColor", type = Integer.class)
    public static final int ID_BODY_COLOR = 150995054;

    @PropertyDefine(publish = "SOS/CallEmergencyContact/Set", subscribe = "SOS/CallEmergencyContact", type = Integer.class)
    public static final int ID_CALL_EMERGENCY_CONTACT = 150995019;

    @PropertyDefine(publish = "SOS/CallServiceParam/Set", subscribe = "SOS/CallServiceParam", type = String.class)
    public static final int ID_CALL_SERVICE_PARAM = 150995020;

    @PropertyDefine(publish = "VehicleDoor/TrunkSts/Set", subscribe = "VehicleDoor/TrunkSts", type = Integer.class)
    public static final int ID_CONTROL_REAR_DOOR = 150995050;

    @PropertyDefine(publish = "ControlScreen/ControlScreenAngle/Set", subscribe = "ControlScreen/ControlScreenAngle", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_ANGLE = 150994973;

    @PropertyDefine(publish = "ControlScreen/ControlScreenAngleAuto/Set", subscribe = "ControlScreen/ControlScreenAngleAuto", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_ANGLE_AUTO = 150994974;

    @PropertyDefine(publish = "ControlScreen/ControlScreenAnglePrecision/Set", subscribe = "ControlScreen/ControlScreenAnglePrecision", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_ANGLE_PRECISION = 150994978;

    @PropertyDefine(publish = "ControlScreen/ControlScreenAngleRangePositive/Set", subscribe = "ControlScreen/ControlScreenAngleRangePositive", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_ANGLE_RANGE = 150994977;

    @PropertyDefine(publish = "ControlScreen/ControlScreenAngleRangeNegative/Set", subscribe = "ControlScreen/ControlScreenAngleRangeNegative", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_ANGLE_RANGE_NEG = 150994979;

    @PropertyDefine(publish = "ControlScreen/ControlScreenCalibration/Set", subscribe = "ControlScreen/ControlScreenCalibration", type = int[].class)
    public static final int ID_CONTROL_SCREEN_CALIBRATION = 150995049;

    @PropertyDefine(publish = "ControlScreen/ControlScreenLight/Set", subscribe = "ControlScreen/ControlScreenLight", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_LIGHT = 150995011;

    @PropertyDefine(publish = "ControlScreen/ControlScreenMotorError/Set", subscribe = "ControlScreen/ControlScreenMotorError", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_MOTOR_ERROR = 150995012;

    @PropertyDefine(publish = "ControlScreen/ControlScreenMotorSync/Set", subscribe = "ControlScreen/ControlScreenMotorSync", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_MOTOR_SYNC = 150994976;

    @PropertyDefine(publish = "ControlScreen/ControlScreenMotorWakeup/Set", subscribe = "ControlScreen/ControlScreenMotorWakeup", type = Integer.class)
    public static final int ID_CONTROL_SCREEN_MOTOR_WAKEUP = 150994975;

    @PropertyDefine(publish = "BodyInfo/DMS/Set", subscribe = "BodyInfo/DMS", type = Integer.class)
    public static final int ID_DMS = 150994947;

    @PropertyDefine(publish = "BodyInfo/DVR/Set", subscribe = "BodyInfo/DVR", type = Integer.class)
    public static final int ID_DVR = 150994948;
    public static final int ID_ELEC_TAILWELBUTTON_ONOFF = 150995038;

    @PropertyDefine(publish = "SOS/EmergencyAssistance/Set", subscribe = "SOS/EmergencyAssistance", type = Integer.class)
    public static final int ID_EMERGENCY_ASSISTANCE = 150994968;

    @PropertyDefine(publish = "SOS/EmergencyAssistanceAcoustReq/Set", subscribe = "SOS/EmergencyAssistanceAcoustReq", type = Integer.class)
    public static final int ID_EMERGENCY_ASSISTANCE_ACOUST_REQ = 150994969;

    @PropertyDefine(publish = "SOS/EmergencyAssistanceAudio/Set", subscribe = "SOS/EmergencyAssistanceAudio", type = Integer.class)
    public static final int ID_EMERGENCY_ASSISTANCE_AUDIO = 150995030;

    @PropertyDefine(publish = "SOS/EmergencyAssistanceCallbackReq/Set", subscribe = "SOS/EmergencyAssistanceCallbackReq", type = Integer.class)
    public static final int ID_EMERGENCY_ASSISTANCE_CALLBACK_REQ = 150994970;

    @PropertyDefine(publish = "SOS/EmergencyAssistancePhoneNumber/Set", subscribe = "SOS/EmergencyAssistancePhoneNumber", type = String.class)
    public static final int ID_EMERGENCY_ASSISTANCE_PHONE = 150995016;

    @PropertyDefine(publish = "SOS/EmergencyAssistanceSpeakerReq/Set", subscribe = "SOS/EmergencyAssistanceSpeakerReq", type = Integer.class)
    public static final int ID_EMERGENCY_ASSISTANCE_SPEAKER_REQ = 150994971;
    public static final int ID_ETC_STATUS = 150995032;
    public static final int ID_ETC_TRANAMOUNT = 150995033;

    @PropertyDefine(publish = "BodyInfo/GasDetection/Set", subscribe = "BodyInfo/GasDetection", type = Integer.class)
    public static final int ID_GAS_DETECTION = 150995026;

    @PropertyDefine(publish = "ControlScreen/ICScreenLight/Set", subscribe = "ControlScreen/ICScreenLight", type = Integer.class)
    public static final int ID_IC_SCREEN_LIGHT = 150995021;
    public static final int ID_IMU_AX_SENSORDATA = 150995004;
    public static final int ID_IMU_AY_SENSORDATA = 150995005;
    public static final int ID_IMU_YAWRATE = 150995006;

    @PropertyDefine(publish = "Account/ResetFactory/Set", subscribe = "Account/ResetFactory", type = Integer.class)
    public static final int ID_INIT_RESET_FACTORY_REQ = 150994960;

    @PropertyDefine(publish = "VehicleBody/InsideTemperature/Set", subscribe = "VehicleBody/InsideTemperature", type = Float.class)
    public static final int ID_INSIDE_TEMPERATURE = 150995013;
    public static final int ID_LIGHT_SW_REASON = 150995003;

    @PropertyDefine(publish = "SOS/OneKeyService/Set", subscribe = "SOS/OneKeyService", type = Integer.class)
    public static final int ID_ONE_KEY_SERVICE = 150995017;

    @PropertyDefine(publish = "SOS/OneKeyServicePhoneNumber/Set", subscribe = "SOS/OneKeyServicePhoneNumber", type = String.class)
    public static final int ID_ONE_KEY_SERVICE_PHONE = 150995018;

    @PropertyDefine(publish = "VehicleBody/OutsideTemperature/Set", subscribe = "VehicleBody/OutsideTemperature", type = Float.class)
    public static final int ID_OUTSIDE_TEMPERATURE = 150995014;
    public static final int ID_POTCTRL_POSITION = 150994962;

    @PropertyDefine(publish = "VehicleMaintenance/ACFilterRepairLastKM/Set", subscribe = "VehicleMaintenance/ACFilterRepairLastKM", type = Integer.class)
    public static final int ID_REPAIR_AC_FILTER_LAST_KM = 150994995;

    @PropertyDefine(publish = "VehicleMaintenance/ACFilterRepairLastTime/Set", subscribe = "VehicleMaintenance/ACFilterRepairLastTime", type = Long.class)
    public static final int ID_REPAIR_AC_FILTER_LAST_TIME = 150994994;

    @PropertyDefine(publish = "VehicleMaintenance/ACFilterRepairNextKM/Set", subscribe = "VehicleMaintenance/ACFilterRepairNextKM", type = Integer.class)
    public static final int ID_REPAIR_AC_FILTER_NEXT_KM = 150994997;

    @PropertyDefine(publish = "VehicleMaintenance/ACFilterRepairNextTime/Set", subscribe = "VehicleMaintenance/ACFilterRepairNextTime", type = Long.class)
    public static final int ID_REPAIR_AC_FILTER_NEXT_TIME = 150994996;

    @PropertyDefine(publish = "VehicleMaintenance/AirFilterRepairLastKM/Set", subscribe = "VehicleMaintenance/AirFilterRepairLastKM", type = Integer.class)
    public static final int ID_REPAIR_AIR_FILTER_LAST_KM = 150994999;

    @PropertyDefine(publish = "VehicleMaintenance/AirFilterRepairLastTime/Set", subscribe = "VehicleMaintenance/AirFilterRepairLastTime", type = Long.class)
    public static final int ID_REPAIR_AIR_FILTER_LAST_TIME = 150994998;

    @PropertyDefine(publish = "VehicleMaintenance/AirFilterRepairNextKM/Set", subscribe = "VehicleMaintenance/AirFilterRepairNextKM", type = Integer.class)
    public static final int ID_REPAIR_AIR_FILTER_NEXT_KM = 150995001;

    @PropertyDefine(publish = "VehicleMaintenance/AirFilterRepairNextTime/Set", subscribe = "VehicleMaintenance/AirFilterRepairNextTime", type = Long.class)
    public static final int ID_REPAIR_AIR_FILTER_NEXT_TIME = 150995000;

    @PropertyDefine(publish = "VehicleMaintenance/BrakeFluidRepairLastKM/Set", subscribe = "VehicleMaintenance/BrakeFluidRepairLastKM", type = Integer.class)
    public static final int ID_REPAIR_BRAKE_FLUID_LAST_KM = 150994991;

    @PropertyDefine(publish = "VehicleMaintenance/BrakeFluidRepairLastTime/Set", subscribe = "VehicleMaintenance/BrakeFluidRepairLastTime", type = Long.class)
    public static final int ID_REPAIR_BRAKE_FLUID_LAST_TIME = 150994990;

    @PropertyDefine(publish = "VehicleMaintenance/BrakeFluidRepairNextKM/Set", subscribe = "VehicleMaintenance/BrakeFluidRepairNextKM", type = Integer.class)
    public static final int ID_REPAIR_BRAKE_FLUID_NEXT_KM = 150994993;

    @PropertyDefine(publish = "VehicleMaintenance/BrakeFluidRepairNextTime/Set", subscribe = "VehicleMaintenance/BrakeFluidRepairNextTime", type = Long.class)
    public static final int ID_REPAIR_BRAKE_FLUID_NEXT_TIME = 150994992;

    @PropertyDefine(publish = "VehicleMaintenance/OilFilterRepairLastKM/Set", subscribe = "VehicleMaintenance/OilFilterRepairLastKM", type = Integer.class)
    public static final int ID_REPAIR_OIL_FILTER_LAST_KM = 150994983;

    @PropertyDefine(publish = "VehicleMaintenance/OilFilterRepairLastTime/Set", subscribe = "VehicleMaintenance/OilFilterRepairLastTime", type = Long.class)
    public static final int ID_REPAIR_OIL_FILTER_LAST_TIME = 150994982;

    @PropertyDefine(publish = "VehicleMaintenance/OilFilterRepairNextKM/Set", subscribe = "VehicleMaintenance/OilFilterRepairNextKM", type = Integer.class)
    public static final int ID_REPAIR_OIL_FILTER_NEXT_KM = 150994985;

    @PropertyDefine(publish = "VehicleMaintenance/OilFilterRepairNextTime/Set", subscribe = "VehicleMaintenance/OilFilterRepairNextTime", type = Long.class)
    public static final int ID_REPAIR_OIL_FILTER_NEXT_TIME = 150994984;

    @PropertyDefine(publish = "VehicleMaintenance/SparkPlugRepairLastKM/Set", subscribe = "VehicleMaintenance/SparkPlugRepairLastKM", type = Integer.class)
    public static final int ID_REPAIR_SPARK_PLUG_LAST_KM = 150994987;

    @PropertyDefine(publish = "VehicleMaintenance/SparkPlugRepairLastTime/Set", subscribe = "VehicleMaintenance/SparkPlugRepairLastTime", type = Long.class)
    public static final int ID_REPAIR_SPARK_PLUG_LAST_TIME = 150994986;

    @PropertyDefine(publish = "VehicleMaintenance/SparkPlugRepairNextKM/Set", subscribe = "VehicleMaintenance/SparkPlugRepairNextKM", type = Integer.class)
    public static final int ID_REPAIR_SPARK_PLUG_NEXT_KM = 150994989;

    @PropertyDefine(publish = "VehicleMaintenance/SparkPlugRepairNextTime/Set", subscribe = "VehicleMaintenance/SparkPlugRepairNextTime", type = Long.class)
    public static final int ID_REPAIR_SPARK_PLUG_NEXT_TIME = 150994988;

    @PropertyDefine(publish = "SOS/RoadsideAssistance/Set", subscribe = "SOS/RoadsideAssistance", type = Integer.class)
    public static final int ID_ROADSIDE_ASSISTANCE = 150994964;

    @PropertyDefine(publish = "SOS/RoadsideAssistanceAcoustReq/Set", subscribe = "SOS/RoadsideAssistanceAcoustReq", type = Integer.class)
    public static final int ID_ROADSIDE_ASSISTANCE_ACOUST_REQ = 150994965;

    @PropertyDefine(publish = "SOS/RoadsideAssistanceAudio/Set", subscribe = "SOS/RoadsideAssistanceAudio", type = Integer.class)
    public static final int ID_ROADSIDE_ASSISTANCE_AUDIO = 150995029;

    @PropertyDefine(publish = "SOS/RoadsideAssistanceCallbackReq/Set", subscribe = "SOS/RoadsideAssistanceCallbackReq", type = Integer.class)
    public static final int ID_ROADSIDE_ASSISTANCE_CALLBACK_REQ = 150994966;

    @PropertyDefine(publish = "SOS/RoadsideAssistancePhoneNumber/Set", subscribe = "SOS/RoadsideAssistancePhoneNumber", type = String.class)
    public static final int ID_ROADSIDE_ASSISTANCE_PHONE = 150995015;

    @PropertyDefine(publish = "SOS/RoadsideAssistanceSpeakerReq/Set", subscribe = "SOS/RoadsideAssistanceSpeakerReq", type = Integer.class)
    public static final int ID_ROADSIDE_ASSISTANCE_SPEAKER_REQ = 150994967;

    @PropertyDefine(publish = "SOS/RoadsideBCall/Set", subscribe = "SOS/RoadsideBCall", type = PropertyDefine.JsonString.class)
    public static final int ID_ROADSIDE_B_CALL = 150995052;

    @PropertyDefine(publish = "SOS/RoadsideECall/Set", subscribe = "SOS/RoadsideECall", type = PropertyDefine.JsonString.class)
    public static final int ID_ROADSIDE_E_CALL = 150995053;
    public static final int ID_SCREEN_TEMPERATURE = 150995010;
    public static final int ID_SEAT_DRV_CALL = 150994950;
    public static final int ID_SEAT_DRV_SAVE = 150994949;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/Set", subscribe = "VehicleSeat/EasyEntry", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY = 150994952;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/FrontLeft/Set", subscribe = "VehicleSeat/EasyEntry/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY_FRONTLEFT = 150995068;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/FrontRight/Set", subscribe = "VehicleSeat/EasyEntry/FrontRight", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY_FRONTRIGHT = 150995069;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/RearLeft/Set", subscribe = "VehicleSeat/EasyEntry/RearLeft", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY_REARLEFT = 150995070;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/RearMiddle/Set", subscribe = "VehicleSeat/EasyEntry/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY_REARMIDDLE = 150995071;

    @PropertyDefine(publish = "VehicleSeat/EasyEntry/RearRight/Set", subscribe = "VehicleSeat/EasyEntry/RearRight", type = Integer.class)
    public static final int ID_SEAT_EASY_ENTRY_REARRIGHT = 150995072;
    public static final int ID_SEAT_LEAVE_SPACE = 150994951;

    @PropertyDefine(type = String.class)
    public static final int ID_SYSTEM_SUPPLIER_S32GM = 150995047;
    public static final int ID_TBOX_ACCESSAUTH = 150995031;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/Set", subscribe = "VehicleWheel/TyrePressure", type = Float.class)
    public static final int ID_TIRE_PRESSURE = 150994945;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/FrontLeft_DiSABLE/Set", subscribe = "VehicleWheel/TyrePressure/FrontLeft_DiSABLE", type = Integer.class)
    public static final int ID_TIRE_PRESSURE_FL = 150995055;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/FrontRight_DiSABLE/Set", subscribe = "VehicleWheel/TyrePressure/FrontRight_DiSABLE", type = Integer.class)
    public static final int ID_TIRE_PRESSURE_FR = 150995056;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/FrontLeft/Set", subscribe = "VehicleWheel/TyrePressure/FrontLeft", type = Float.class)
    public static final int ID_TIRE_PRESSURE_FRONTLEFT = 150995060;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/FrontRight/Set", subscribe = "VehicleWheel/TyrePressure/FrontRight", type = Float.class)
    public static final int ID_TIRE_PRESSURE_FRONTRIGHT = 150995061;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/RearLeft/Set", subscribe = "VehicleWheel/TyrePressure/RearLeft", type = Float.class)
    public static final int ID_TIRE_PRESSURE_REARLEFT = 150995062;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/RearRight/Set", subscribe = "VehicleWheel/TyrePressure/RearRight", type = Float.class)
    public static final int ID_TIRE_PRESSURE_REARRIGHT = 150995063;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/RearLeft_DiSABLE/Set", subscribe = "VehicleWheel/TyrePressure/RearLeft_DiSABLE", type = Integer.class)
    public static final int ID_TIRE_PRESSURE_RL = 150995057;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyrePressure/RearRight_DiSABLE/Set", subscribe = "VehicleWheel/TyrePressure/RearRight_DiSABLE", type = Integer.class)
    public static final int ID_TIRE_PRESSURE_RR = 150995058;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyreTemperature/Set", subscribe = "VehicleWheel/TyreTemperature", type = Float.class)
    public static final int ID_TIRE_TEMPERATURE = 150994946;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyreTemperature/FrontLeft/Set", subscribe = "VehicleWheel/TyreTemperature/FrontLeft", type = Float.class)
    public static final int ID_TIRE_TEMPERATURE_FRONTLEFT = 150995064;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyreTemperature/FrontRight/Set", subscribe = "VehicleWheel/TyreTemperature/FrontRight", type = Float.class)
    public static final int ID_TIRE_TEMPERATURE_FRONTRIGHT = 150995065;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyreTemperature/RearLeft/Set", subscribe = "VehicleWheel/TyreTemperature/RearLeft", type = Float.class)
    public static final int ID_TIRE_TEMPERATURE_REARLEFT = 150995066;

    @PropertyDefine(changeMode = 2, publish = "VehicleWheel/TyreTemperature/RearRight/Set", subscribe = "VehicleWheel/TyreTemperature/RearRight", type = Float.class)
    public static final int ID_TIRE_TEMPERATURE_REARRIGHT = 150995067;

    @PropertyDefine(publish = "TBox/ConnectState/Set", subscribe = "TBox/ConnectState", type = Integer.class)
    public static final int ID_T_BOX_CONNECT_STATE = 150995027;

    @PropertyDefine(publish = "TBox/Iccid/Set", subscribe = "TBox/Iccid", type = String.class)
    public static final int ID_T_BOX_ICCID = 150995043;

    @PropertyDefine(publish = "TBox/NetworkInfo/Set", subscribe = "TBox/NetworkInfo", type = Integer.class)
    public static final int ID_T_BOX_NETWORK = 150995042;

    @PropertyDefine(publish = "TBox/SignalStrength/Set", subscribe = "TBox/SignalStrength", type = Integer.class)
    public static final int ID_T_BOX_SIGNAL_STRENGTH = 150995041;

    @PropertyDefine(publish = "TBox/SimStatus/Set", subscribe = "TBox/SimStatus", type = Integer.class)
    public static final int ID_T_BOX_SIM_STATUS = 150995034;

    @PropertyDefine(publish = "TBox/Sn/Set", subscribe = "TBox/Sn", type = Integer.class)
    public static final int ID_T_BOX_SN = 150995040;

    @PropertyDefine(publish = "TBox/Version/Set", subscribe = "TBox/Version", type = Integer.class)
    public static final int ID_T_BOX_VERSION = 150995028;

    @PropertyDefine(publish = "TBox/Vin/Set", subscribe = "TBox/Vin", type = Integer.class)
    public static final int ID_T_BOX_VIN = 150995039;

    @PropertyDefine(changeMode = 2, publish = "Diagnosis/VehicleDiagnosisNotification/Set", subscribe = "Diagnosis/VehicleDiagnosisNotification", type = String.class)
    public static final int ID_VEHICLE_DIAGNOSIS_NOTIFICATION = 150995023;

    @PropertyDefine(publish = "Diagnosis/VehicleDiagnosisRequest/Set", subscribe = "Diagnosis/VehicleDiagnosisRequest", type = Integer.class)
    public static final int ID_VEHICLE_DIAGNOSIS_REQUEST = 150995022;

    @PropertyDefine(publish = "DrivingInfo/MaintenanceNotice/Set", subscribe = "DrivingInfo/MaintenanceNotice", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_ALLOW_NOTIFICATION_BAR = 150995035;

    @PropertyDefine(publish = "VehicleMaintenance/VehicleMaintenanceNextKM/Set", subscribe = "VehicleMaintenance/VehicleMaintenanceNextKM", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_NEXT_KM = 150995009;

    @PropertyDefine(publish = "VehicleMaintenance/VehicleMaintenanceNextTime/Set", subscribe = "VehicleMaintenance/VehicleMaintenanceNextTime", type = Long.class)
    public static final int ID_VEHICLE_MAINTENANCE_NEXT_TIME = 150995008;

    @PropertyDefine(publish = "VehicleMaintenance/VehicleMaintenanceNotice", subscribe = "VehicleMaintenance/VehicleMaintenanceNotice/Set", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_NOTICE = 150994980;

    @PropertyDefine(publish = "DrivingInfo/MaintenanceTime/Set", subscribe = "DrivingInfo/MaintenanceTime", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_REMAIN_DAYS = 150995037;

    @PropertyDefine(publish = "DrivingInfo/MaintenanceMileage/Set", subscribe = "DrivingInfo/MaintenanceMileage", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_REMAIN_MILEAGE = 150995036;

    @PropertyDefine(publish = "VehicleMaintenance/VehicleMaintenanceSave/Set", subscribe = "VehicleMaintenance/VehicleMaintenanceSave", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_SAVE = 150994981;

    @PropertyDefine(type = String.class)
    public static final int ID_VEHICLE_MANUFACTURER_S32G = 150995046;

    @PropertyDefine(type = String.class)
    public static final int ID_VEHICLE_MANUFACTURER_S32GM = 150995048;

    @PropertyDefine(publish = "VehicleSettings/Default/Set", subscribe = "VehicleSettings/Default", type = Integer.class)
    public static final int ID_VEHICLE_SETTINGS_DEFAULT = 150995059;

    @PropertyDefine(publish = "icdriving/UsageMode/Set", subscribe = "icdriving/UsageMode", type = Integer.class)
    public static final int ID_VEHICLE_USAGEMODE = 150995007;

    @PropertyDefine(publish = "VehicleWindow/Wiper/Set", subscribe = "VehicleWindow/Wiper", type = Integer.class)
    public static final int ID_WIPER = 150994963;

    @PropertyDefine(publish = "VehicleWindow/WiperAcoust/Set", subscribe = "VehicleWindow/WiperAcoust", type = Integer.class)
    public static final int ID_WIPER_ACOUST = 150995025;

    @PropertyDefine(publish = "VehicleWindow/WiperAcoust/Front/Set", subscribe = "VehicleWindow/WiperAcoust/Front", type = Integer.class)
    public static final int ID_WIPER_ACOUST_FRONT = 150995079;

    @PropertyDefine(publish = "VehicleWindow/WiperAcoust/Rear/Set", subscribe = "VehicleWindow/WiperAcoust/Rear", type = Integer.class)
    public static final int ID_WIPER_ACOUST_REAR = 150995080;

    @PropertyDefine(publish = "VehicleWindow/Wiper/Front/Set", subscribe = "VehicleWindow/Wiper/Front", type = Integer.class)
    public static final int ID_WIPER_FRONT = 150995073;

    @PropertyDefine(publish = "VehicleWindow/Wiper/Rear/Set", subscribe = "VehicleWindow/Wiper/Rear", type = Integer.class)
    public static final int ID_WIPER_REAR = 150995074;

    @PropertyDefine(publish = "VehicleWindow/WiperStatus/Set", subscribe = "VehicleWindow/WiperStatus", type = Integer.class)
    public static final int ID_WIPER_STATUS = 150994972;

    @PropertyDefine(publish = "VehicleWindow/WiperStatus/Front/Set", subscribe = "VehicleWindow/WiperStatus/Front", type = Integer.class)
    public static final int ID_WIPER_STATUS_FRONT = 150995075;

    @PropertyDefine(publish = "VehicleWindow/WiperStatus/Rear/Set", subscribe = "VehicleWindow/WiperStatus/Rear", type = Integer.class)
    public static final int ID_WIPER_STATUS_REAR = 150995076;

    @PropertyDefine(type = Integer.class)
    public static final int ID_WIPER_TIP = 150995002;

    @PropertyDefine(type = Integer.class)
    public static final int ID_WIPER_TIP_FRONT = 150995077;

    @PropertyDefine(type = Integer.class)
    public static final int ID_WIPER_TIP_REAR = 150995078;
    public static final int MGR_ID = 9;
    public static final String PERMISSION = "mega.car.permission.VEHICLE_BODY";

    public interface AccessAuthResult {
        public static final int AUTHRESULT_FAILED = 2;
        public static final int AUTHRESULT_NOTAUTH = 0;
        public static final int AUTHRESULT_SUCCESSED = 1;
    }

    public interface Assistance {
        public static final int CALL = 1;
        public static final int CALLBACK = 3;
        public static final int HANGUP = 2;
        public static final int REJECT = 4;
    }

    public interface AssistanceStatus {
        public static final int CALLEND = 3;
        public static final int CALLING = 2;
        public static final int CALL_FAIL = 6;
        public static final int COMING = 4;
        public static final int CONNECTING = 1;
        public static final int NOT_ACTIVE = 5;
        public static final int STANDBY = 0;
    }

    public interface DiagnosisState {
        public static final int DIAGNOSING = 1;
        public static final int FAILURE_DI_CONNECTED = 5;
        public static final int FAILURE_KEY_NOT_ON = 4;
        public static final int FAILURE_UPLOADED = 6;
        public static final int SUCCESS = 3;
        public static final int UNKNOWN = 0;
        public static final int UPLOADING = 2;
    }

    public interface LightSWReason {
        public static final int DARK = 2;
        public static final int DARKSTART = 4;
        public static final int DAY = 0;
        public static final int OTHERS = 1;
        public static final int TUNNEL = 3;
    }

    public interface MaintenanceItem {
        public static final int AC_FILTER = 16;
        public static final int AIR_FILTER = 32;
        public static final int BRAKE_FLUID = 8;
        public static final int IS_FIRST = 1;
        public static final int OIL_FILTER = 2;
        public static final int SPARK_PLUG = 4;
    }

    public interface NetworkMode {
        public static final int MODE_2G = 1;
        public static final int MODE_3G = 2;
        public static final int MODE_4G = 3;
        public static final int MODE_5G = 4;
        public static final int NONE = 0;
    }

    public interface ParamsPOTCtrlPosition {
        public static final int POTSETPOST_CURRENTPOS = 7;
        public static final int POTSETPOST_SETINGPOSTION100 = 0;
        public static final int POTSETPOST_SETINGPOSTION40 = 6;
        public static final int POTSETPOST_SETINGPOSTION50 = 5;
        public static final int POTSETPOST_SETINGPOSTION60 = 4;
        public static final int POTSETPOST_SETINGPOSTION70 = 3;
        public static final int POTSETPOST_SETINGPOSTION80 = 2;
        public static final int POTSETPOST_SETINGPOSTION90 = 1;
    }

    public interface REARDoorStatus {
        public static final int CLOSE = 2;
        public static final int NOT_ACTIVE = 0;
        public static final int OPEN = 1;
    }

    public interface UsageMode {
        public static final int ABANDONED = 4;
        public static final int CONVENIENT = 0;
        public static final int DRIVING = 3;
        public static final int ROBOTDRIVING = 1;
        public static final int SYSTEMUPDATE = 2;
    }

    public interface VehicleSettingsDefault {
        public static final int NOT_ACTIVE = 0;
        public static final int SET_ALL_TO_DEFAULT = 2;
        public static final int SET_HUD_TO_DEFAULT = 3;
        public static final int SET_PERSONALIZATION_TO_DEFAULT = 1;
    }

    public interface Wiper {
        public static final int AUTO = 3;
        public static final int HIGH = 1;
        public static final int LOW = 2;
        public static final int OFF = 0;
        public static final int ONCE = 4;
        public static final int SERVICE = 6;
        public static final int WASH = 5;
    }

    static boolean isTempOrPressValueValid(float f) {
        return f <= 500.0f;
    }
}
