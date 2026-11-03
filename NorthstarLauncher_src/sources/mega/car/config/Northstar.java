package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 80, name = Northstar.SERVICE_NAME, permission = "mega.car.permission.VEHICLE_CONTROL")
public final class Northstar {

    @PropertyDefine(changeMode = 2, subscribe = "AVM/ButtonClicked", type = Integer.class)
    public static final int AVM_BUTTON_CLICK_EVENT = 1342177426;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FaceID", type = String.class)
    public static final int FACE_ID = 1342177363;

    @PropertyDefine(publish = "HUD/HUDHeightAutoAdjustment/Set", type = Integer.class)
    public static final int HUD_HEIGHT_AUTO_ADJUST = 1342177432;

    @PropertyDefine(subscribe = "HUD/HUDHeightAutoAdjustmentSts", type = Integer.class)
    public static final int HUD_HEIGHT_AUTO_ADJUST_STS = 1342177433;

    @PropertyDefine(topic = "T1CF1/AdvanceLiveAcoustics", type = Integer.class)
    public static final int ID_ADVANCE_LIVE_ACOUSTICS = 1342177381;

    @PropertyDefine(topic = "T1CF1/AdvanceRestoreDefaults", type = Integer.class)
    public static final int ID_ADVANCE_RESTORE_DEFAULTS = 1342177392;

    @PropertyDefine(topic = "T1CF1/AdvanceVolumeEffect", type = Integer.class)
    public static final int ID_ADVANCE_VOLUME_EFFECT = 1342177382;

    @PropertyDefine(topic = "T1CF1/AndroidReset", type = Integer.class)
    public static final int ID_ANDROID_RESET = 1342177380;

    @PropertyDefine(publish = "T1CF1/AntiTheftAlarm/Set", subscribe = "T1CF1/AntiTheftAlarm", type = Integer.class)
    public static final int ID_ANTI_THEFT_ALARM = 1342177509;

    @PropertyDefine(publish = "T1CF1/ApaSoftKey/Set", type = Integer.class)
    public static final int ID_APA_SOFT_KEY = 1342177484;

    @PropertyDefine(topic = "APA/StandbyActiveStatus", type = Integer.class)
    public static final int ID_APA_STANDBYACTIVESTATUS = 1342177490;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/AutoAPA", type = Integer.class)
    public static final int ID_AUTO_APA = 1342177344;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/AutoHold", type = Integer.class)
    public static final int ID_AUTO_HOLD = 1342177314;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/AutoPark", type = Integer.class)
    public static final int ID_AUTO_PARK = 1342177311;

    @PropertyDefine(subscribe = "HCU/AvgElecCns", type = Float.class)
    public static final int ID_AVG_ELEC_CNS = 1342177423;

    @PropertyDefine(subscribe = "C385/VehAvrgEgyCnseIn50km", type = Float.class)
    public static final int ID_AVG_ENERGY_CNS = 1342177425;

    @PropertyDefine(subscribe = "HCU/AvgFuCns", type = Float.class)
    public static final int ID_AVG_FU_CNS = 1342177424;

    @PropertyDefine(topic = "T1CF1/Avm360Buried", type = String.class)
    public static final int ID_AVM_360_BURIED = 1342177321;

    @PropertyDefine(subscribe = "UI/AVMAPA/ShowSts", type = Integer.class)
    public static final int ID_AVM_APA_SHOW_STS = 1342177506;

    @PropertyDefine(topic = "T1CF1/Avm360BuriedPackageData", type = String.class)
    public static final int ID_AVM_BURIED_PACKAGE_DATA = 1342177466;

    @PropertyDefine(changeMode = 2, topic = "AVM/FloatingWindowPosition", type = String.class)
    public static final int ID_AVM_FLOATING_WINDOW_POSITION = 1342177460;

    @PropertyDefine(publish = "AVM/FloatingWindowTouchInfo", type = String.class)
    public static final int ID_AVM_FLOATING_WINDOW_TOUCH = 1342177461;

    @PropertyDefine(changeMode = 2, topic = "AVM/FloatingWindowVisible", type = Integer.class)
    public static final int ID_AVM_FLOATING_WINDOW_VISIBLE = 1342177459;

    @PropertyDefine(topic = "AVM/QuitByUser", type = Integer.class)
    public static final int ID_AVM_QUIT_BY_USER = 1342177458;

    @PropertyDefine(topic = "T1CF1/AvmResetSettings", type = Integer.class)
    public static final int ID_AVM_RESET_SEETINGS = 1342177338;

    @PropertyDefine(publish = "AVM/Voice/SingleSide/Set", subscribe = "AVM/Voice/SingleSide", type = Integer.class)
    public static final int ID_AVM_SINGLE_SIDE = 1342177510;

    @PropertyDefine(changeMode = 2, topic = "AVM/StandbyActiveStatus", type = Integer.class)
    public static final int ID_AVM_STANDBYACTIVESTATUS = 1342177337;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/BacklightMode", type = Integer.class)
    public static final int ID_BACKLIGHT_MODE = 1342177309;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/BatteryVoltage", type = Integer.class)
    public static final int ID_BATTERY_VOLTAGE = 1342177301;

    @PropertyDefine(subscribe = "T1CF1/BCM4Arming", type = Integer.class)
    public static final int ID_BCM_4_ARMING = 1342177499;

    @PropertyDefine(topic = "T1CF1/BPFAssociWithDriverMode", type = Integer.class)
    public static final int ID_BPF_ASSOCI_WITH_DRIVER_MODE = 1342177388;

    @PropertyDefine(topic = "T1CF1/BrakePedalFeel", type = Integer.class)
    public static final int ID_BRAKE_PEDAL_FEEL = 1342177387;

    @PropertyDefine(publish = "BodyInfo/BrakePedalEV/Set", subscribe = "BodyInfo/BrakePedalEV", type = Integer.class)
    public static final int ID_BRAKE_PEDAL_STATUS_EV = 1342177519;

    @PropertyDefine(publish = "BodyInfo/BrakePedalValid/Set", subscribe = "BodyInfo/BrakePedalValid", type = Integer.class)
    public static final int ID_BRAKE_PEDAL_STATUS_EV_VALID = 1342177520;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/BreakLow", type = Integer.class)
    public static final int ID_BREAK_LOW = 1342177304;

    @PropertyDefine(topic = "T1CF1/BsdConfig", type = Integer.class)
    public static final int ID_BSD_CONFIG = 1342177362;

    @PropertyDefine(publish = "T1CF1/CampModSwt/Set", subscribe = "T1CF1/CampMod", type = Integer.class)
    public static final int ID_CAMP_MOD = 1342177517;

    @PropertyDefine(publish = "T1CF1/CarModelBrightness/Set", type = Integer.class)
    public static final int ID_CAR_BRIGHTNESS = 1342177467;

    @PropertyDefine(publish = "T1CF1/CarModelColor/Set", type = String.class)
    public static final int ID_CAR_COLOR = 1342177434;

    @PropertyDefine(subscribe = "T1CF1/HeadLight", type = Integer.class)
    public static final int ID_CAR_HEADLIGHT = 1342177485;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/ChargeDischarge", type = Integer.class)
    public static final int ID_CHARGE_DISCHARGE = 1342177306;

    @PropertyDefine(publish = "EnergyInfo/ChgSoc/Set", subscribe = "EnergyInfo/ChgSoc", type = Integer.class)
    public static final int ID_CHARGE_SOC = 1342177508;

    @PropertyDefine(topic = "DrivingInfo/Charge/ChargingThermSts", type = Integer.class)
    public static final int ID_CHARGE_STATE = 1342177428;

    @PropertyDefine(publish = "T1CF1/ChildSeatSwitch/Set", type = Integer.class)
    public static final int ID_CHILD_SEAT_SWITCH = 1342177498;

    @PropertyDefine(publish = "T1CF1/ChildSeatWarn/Set", type = Integer.class)
    public static final int ID_CHILD_SEAT_WARN = 1342177497;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/EngineeringModeChimeTest", type = Integer.class)
    public static final int ID_CHIME_TEST = 1342177378;

    @PropertyDefine(subscribe = "DrivingInfo/CLTCFuCns", type = Integer.class)
    public static final int ID_CLTC_FU_CNS = 1342177512;

    @PropertyDefine(subscribe = "DrivingInfo/CLTCSocRangAval", type = Integer.class)
    public static final int ID_CLTC_SOC_RANG = 1342177511;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/CoolantTemperatureSample", type = Float.class)
    public static final int ID_COOLANT_TEMPERATURE_SAMPLE = 1342177284;

    @PropertyDefine(topic = "T1CF1/CST", type = Integer.class)
    public static final int ID_CST = 1342177385;

    @PropertyDefine(topic = "T1CF1/CSTSensitivity", type = Integer.class)
    public static final int ID_CST_SENSITIVITY = 1342177386;

    @PropertyDefine(topic = "T1CF1/DateOfDay", type = Integer.class)
    public static final int ID_DATE_OF_DAY = 1342177326;

    @PropertyDefine(topic = "T1CF1/DateOfMonth", type = Integer.class)
    public static final int ID_DATE_OF_MONTH = 1342177325;

    @PropertyDefine(topic = "T1CF1/DateOfYear", type = Integer.class)
    public static final int ID_DATE_OF_YEAR = 1342177324;

    @PropertyDefine(topic = "T1CF1/DayAndNight", type = Integer.class)
    public static final int ID_DAY_AND_NIGHT = 1342177379;

    @PropertyDefine(topic = "T1CF1/DischargeTimeHour", type = Integer.class)
    public static final int ID_DISCHARGE_TIME_HOUR = 1342177412;

    @PropertyDefine(topic = "T1CF1/DischargeTimeMin", type = Integer.class)
    public static final int ID_DISCHARGE_TIME_MIN = 1342177413;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DoorOpenAlarmTrigger", type = Integer.class)
    public static final int ID_DOOR_OPEN_ALARM_TRIGGER = 1342177373;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DriverFatigueMonitorTrigger", type = Integer.class)
    public static final int ID_DRIVER_FATIGUE_MONITOR_TRIGGER = 1342177374;

    @PropertyDefine(changeMode = 2, topic = "DrivingInfo/DTE_Afc", type = Float.class)
    public static final int ID_DRIVE_AFC = 1342177390;

    @PropertyDefine(topic = "T1CF1/DriveModeMaintain", type = Integer.class)
    public static final int ID_DRIVE_MODE_MAINTAIN = 1342177348;

    @PropertyDefine(topic = "DrivingInfo/RealSpeed", type = Float.class)
    public static final int ID_DRIVING_REAL_SPEED = 1342177431;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/ActualSpeed", type = Float.class)
    public static final int ID_DRV_INFO_ACTUAL_SPEED = 1342177283;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/IndicatedSpeed", type = Float.class)
    public static final int ID_DRV_INFO_INDICATED_SPEED = 1342177282;

    @PropertyDefine(topic = "T1CF1/DrivingMode", type = Integer.class)
    public static final int ID_DRV_MODE = 1342177339;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteAverageFuel", type = Float.class)
    public static final int ID_DTE_AVERAGE_FUEL = 1342177288;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteCalculatedFc", type = Float.class)
    public static final int ID_DTE_CALCULATED_FC = 1342177291;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteCalculatedFr", type = Float.class)
    public static final int ID_DTE_CALCULATED_FR = 1342177290;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteCalculatedFt", type = Float.class)
    public static final int ID_DTE_CALCULATED_FT = 1342177289;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteCalculatedValue", type = Float.class)
    public static final int ID_DTE_CALCULATED_VALUE = 1342177287;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/DteValue", type = Float.class)
    public static final int ID_DTE_VALUE = 1342177286;

    @PropertyDefine(topic = "T1CF1/DvrSnapshot/FunctionTypeKey", type = Integer.class)
    public static final int ID_DVR_SNAPSHOT_FUNCTION_TYPE = 1342177464;

    @PropertyDefine(topic = "T1CF1/DvrSnapshot/Key", type = Integer.class)
    public static final int ID_DVR_SNAPSHOT_KEY = 1342177345;

    @PropertyDefine(topic = "T1CF1/DvrSnapshot/ModeKey", type = Integer.class)
    public static final int ID_DVR_SNAPSHOT_MODE = 1342177463;

    @PropertyDefine(topic = "T1CF1/DvrSnapshot/Speech", type = Integer.class)
    public static final int ID_DVR_SNAPSHOT_SPEECH = 1342177346;

    @PropertyDefine(topic = "T1CF1/DvrSnapshot/Voice", type = Integer.class)
    public static final int ID_DVR_SNAPSHOT_VOICE = 1342177465;

    @PropertyDefine(subscribe = "DrivingInfo/Charge/DynamicSOCRangeAval", type = Integer.class)
    public static final int ID_DYNRNG_AVAL = 1342177419;

    @PropertyDefine(subscribe = "DrivingInfo/DynamicFuCns", type = Integer.class)
    public static final int ID_DYN_FU_CNS = 1342177514;

    @PropertyDefine(subscribe = "T1CF1/ApaEnumCalTrigger", type = Integer.class)
    public static final int ID_DZ_APA_ENUM_CAL_TRIGGER = 1342177493;

    @PropertyDefine(subscribe = "T1CF1/ApaFreeSlotInfo", type = String.class)
    public static final int ID_DZ_APA_FREE_SLOT_INFO = 1342177480;

    @PropertyDefine(subscribe = "T1CF1/ApaFuncOperate", type = String.class)
    public static final int ID_DZ_APA_FUNC_OPERATE = 1342177479;

    @PropertyDefine(subscribe = "T1CF1/ApaGetAVMData", type = Integer.class)
    public static final int ID_DZ_APA_GET_AVM_DATA = 1342177494;

    @PropertyDefine(subscribe = "T1CF1/ParkingFuncModReq", type = Integer.class)
    public static final int ID_DZ_APA_PARKING_FUNC_MOD = 1342177478;

    @PropertyDefine(subscribe = "T1CF1/ApaSlotPoint", type = String.class)
    public static final int ID_DZ_APA_SLOT_POINT = 1342177481;

    @PropertyDefine(subscribe = "T1CF1/StrtAVMFailSts", type = String.class)
    public static final int ID_DZ_APA_STRT_AVM_FAIL_STS = 1342177492;

    @PropertyDefine(subscribe = "T1CF1/ApaStrtVoiceControlInfo", type = String.class)
    public static final int ID_DZ_APA_STRT_VOICE_CONTROL_INFO = 1342177495;

    @PropertyDefine(topic = "T1CF1/DzAvmEvent", type = Integer.class)
    public static final int ID_DZ_AVM_EVENT = 1342177491;

    @PropertyDefine(subscribe = "T1CF1/DiagDtcInfo", type = Integer.class)
    public static final int ID_DZ_DIAG_DTC_INFO = 1342177483;

    @PropertyDefine(subscribe = "T1CF1/MRAOperationId", type = Integer.class)
    public static final int ID_DZ_MRA_OPERATION_ID = 1342177482;

    @PropertyDefine(changeMode = 2, publish = "T1CF1/ECallMode/Set", subscribe = "T1CF1/ECallMode", type = Integer.class)
    public static final int ID_ECALL_MODE = 1342177521;

    @PropertyDefine(publish = "T1CF1/HCUEngineStartInhibitReq/Set", type = Integer.class)
    public static final int ID_ENGINE_START_INHIBIT_REQ = 1342177522;

    @PropertyDefine(subscribe = "T1CF1/EngWhlTrqRatio", type = Float.class)
    public static final int ID_ENG_WHLTRQ_RATIO = 1342177437;

    @PropertyDefine(topic = "T1CF1/EngineeringModeMeterData", type = Integer.class)
    public static final int ID_ENTER_ICM_DATA = 1342177349;

    @PropertyDefine(publish = "ADAS/WSOSSwSts/Set", subscribe = "ADAS/WSOSSwSts", type = Integer.class)
    public static final int ID_ERROR_LANE_OVHD_SUPPRESS = 1342177527;

    @PropertyDefine(subscribe = "T1CF1/EstimatedCouplingTorq", type = Float.class)
    public static final int ID_ESTIMATED_COUPLING_TORQ = 1342177438;

    @PropertyDefine(topic = "T1CF1/FatigureDriving", type = Integer.class)
    public static final int ID_FATIGURE_DRIVING = 1342177383;

    @PropertyDefine(topic = "T1CF1/FatigureDrivingTime", type = Integer.class)
    public static final int ID_FATIGURE_DRIVING_TIME = 1342177384;

    @PropertyDefine(topic = "T1CF1/LaneAssitFeedbackSensitivity", type = Integer.class)
    public static final int ID_FEEDBACK_SENSITIVITY = 1342177355;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/Fuel1SampleResistance", type = Float.class)
    public static final int ID_FUEL1_SAMPLE_RESISTANCE = 1342177295;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/Fuel1SampleValue", type = Float.class)
    public static final int ID_FUEL1_SAMPLE_VALUE = 1342177293;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/Fuel2SampleResistance", type = Float.class)
    public static final int ID_FUEL2_SAMPLE_RESISTANCE = 1342177296;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/Fuel2SampleValue", type = Float.class)
    public static final int ID_FUEL2_SAMPLE_VALUE = 1342177294;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FuelingBaseValue", type = Float.class)
    public static final int ID_FUELING_BASE_VALUE = 1342177297;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FuelAlarmStatus", type = Integer.class)
    public static final int ID_FUEL_ALARM_STATUS = 1342177300;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FuelDampingMode", type = Integer.class)
    public static final int ID_FUEL_DAMPING_MODE = 1342177299;

    @PropertyDefine(changeMode = 2, topic = "FuelBar/DisplayValue", type = Float.class)
    public static final int ID_FUEL_DISPLAY = 1342177389;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FuelSensorFaultStatus", type = Integer.class)
    public static final int ID_FUEL_SENSOR_FAULT_STATUS = 1342177298;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/FuelValue", type = Float.class)
    public static final int ID_FUEL_VALUE = 1342177292;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/ReverseGear", type = Integer.class)
    public static final int ID_GEAR_REVERSE = 1342177320;

    @PropertyDefine(topic = "T1CF1/GlassWashingFront", type = Integer.class)
    public static final int ID_GLASS_WASHING_FRONT = 1342177429;

    @PropertyDefine(topic = "T1CF1/GlassWashingRear", type = Integer.class)
    public static final int ID_GLASS_WASHING_REAR = 1342177430;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/HandbrakeStatus", type = Integer.class)
    public static final int ID_HANDBRAKE_STATUS = 1342177307;

    @PropertyDefine(topic = "T1CF1/HCU/PTReady", type = Integer.class)
    public static final int ID_HCU_PT_READY = 1342177523;

    @PropertyDefine(publish = "T1CF1/HCUHVReadyReq/Set", type = Integer.class)
    public static final int ID_HV_READY = 1342177505;

    @PropertyDefine(topic = "T1CF1/ICHardWare/MCU", type = String.class)
    public static final int ID_IC_HARDWARE_MCU = 1342177370;

    @PropertyDefine(topic = "T1CF1/ICHardWare/Soc", type = String.class)
    public static final int ID_IC_HARDWARE_SOC = 1342177369;

    @PropertyDefine(topic = "T1CF1/InternalCommunications", type = Integer.class)
    public static final int ID_IC_INTER_COMMUNICATION = 1342177351;

    @PropertyDefine(topic = "T1CF1/ICLogExport", type = Integer.class)
    public static final int ID_IC_LOG_EXPORT = 1342177350;

    @PropertyDefine(topic = "Sensor/OutsideTemperatureC", type = Float.class)
    public static final int ID_IC_OUTSIDE_TEMPERATURE_C = 1342177354;

    @PropertyDefine(topic = "Sensor/OutsideTemperatureF", type = Float.class)
    public static final int ID_IC_OUTSIDE_TEMPERATURE_F = 1342177353;

    @PropertyDefine(topic = "T1CF1/RainDetected", type = Integer.class)
    public static final int ID_IC_RAIN_DETECTED = 1342177352;

    @PropertyDefine(topic = "Info/RainFaultInfoThird", type = Integer.class)
    public static final int ID_IC_RAIN_DETECTED_POSITIVE = 1342177366;

    @PropertyDefine(topic = "VehicleWindow/WiperSts", type = Integer.class)
    public static final int ID_IC_WIPER_STATE = 1342177371;

    @PropertyDefine(topic = "T1CF1/OTASts", type = Integer.class)
    public static final int ID_IHU_OTASTS = 1342177470;

    @PropertyDefine(topic = "T1CF1/OTAModSts", type = Integer.class)
    public static final int ID_IHU_OTA_MOD_STS = 1342177471;

    @PropertyDefine(changeMode = 2, topic = "DrivingInfo/InstantFuel", type = Float.class)
    public static final int ID_INSTANT_FUEL = 1342177285;

    @PropertyDefine(publish = "T1CF1/ISANaviInfo/Set", type = String.class)
    public static final int ID_ISA_NAVI_INFO = 1342177503;

    @PropertyDefine(topic = "T1CF1/KeySts", type = Integer.class)
    public static final int ID_KEY_STS = 1342177524;

    @PropertyDefine(topic = "T1CF1/LaneAssitFeedback", type = Integer.class)
    public static final int ID_LANE_ASSIT_FEEDBACK = 1342177347;

    @PropertyDefine(publish = "android-state-monitor", serializable = false, subscribe = "android-state-monitor", type = String.class)
    public static final int ID_LAUNCHER_READ = 1342177377;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/LdwLkaSwitch", type = Integer.class)
    public static final int ID_LDW_LKA_SWITCH = 1342177303;

    @PropertyDefine(publish = "Light/LampDriveSts/Set", subscribe = "Light/LampDriveSts", type = Integer.class)
    public static final int ID_LIGHT_LAMP_DRIVE = 1342177507;

    @PropertyDefine(topic = "T1CF1/LightSwitchTimeOut", type = Integer.class)
    public static final int ID_LIGHT_SWITCH_TIME_OUT = 1342177343;

    @PropertyDefine(subscribe = "T1CF1/MeanEffectiveTorque", type = Float.class)
    public static final int ID_MEAN_EFFECTIVE_TORQUE = 1342177436;

    @PropertyDefine(publish = "T1CF1/AccountLoginMemory", type = String.class)
    public static final int ID_MEM_ACCOUNT_LOGIN_SWITCH = 1342177502;

    @PropertyDefine(topic = "T1CF1/MeterVolumeRestoreDefaults", type = Integer.class)
    public static final int ID_METER_VOLUME_RESTORE_DEFAULTS = 1342177393;

    @PropertyDefine(topic = "EngineeringMode/KeyInput/MFS_ICM_Down", type = Integer.class)
    public static final int ID_MFS_ICM_DOWN = 1342177359;

    @PropertyDefine(topic = "EngineeringMode/KeyInput/MFS_ICM_Left", type = Integer.class)
    public static final int ID_MFS_ICM_LEFT = 1342177356;

    @PropertyDefine(topic = "EngineeringMode/KeyInput/MFS_ICM_Menu", type = Integer.class)
    public static final int ID_MFS_ICM_MENU = 1342177360;

    @PropertyDefine(topic = "EngineeringMode/KeyInput/MFS_ICM_Right", type = Integer.class)
    public static final int ID_MFS_ICM_RIGHT = 1342177357;

    @PropertyDefine(topic = "EngineeringMode/KeyInput/MFS_ICM_Up", type = Integer.class)
    public static final int ID_MFS_ICM_UP = 1342177358;

    @PropertyDefine(topic = "T1CF1/MirrorFold", type = Integer.class)
    public static final int ID_MIRROR_FOLD = 1342177455;

    @PropertyDefine(topic = "T1CF1/MusicLoudness1000", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_1000 = 1342177333;

    @PropertyDefine(topic = "T1CF1/MusicLoudness120", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_120 = 1342177330;

    @PropertyDefine(topic = "T1CF1/MusicLoudness1500", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_1500 = 1342177334;

    @PropertyDefine(topic = "T1CF1/MusicLoudness2000", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_2000 = 1342177335;

    @PropertyDefine(topic = "T1CF1/MusicLoudness250", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_250 = 1342177331;

    @PropertyDefine(topic = "T1CF1/MusicLoudness500", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_500 = 1342177332;

    @PropertyDefine(topic = "T1CF1/MusicLoudness6000", type = Integer.class)
    public static final int ID_MUSIC_LOUDNESS_6000 = 1342177336;

    @PropertyDefine(publish = "T1CF1/GpsInfo/Set", type = Integer.class)
    public static final int ID_NAVI_GPS_INFO = 1342177486;

    @PropertyDefine(publish = "T1CF1/NavigationSts/Set", type = Integer.class)
    public static final int ID_NAVI_NAVIGATION_STS = 1342177489;

    @PropertyDefine(publish = "T1CF1/TrafficInfo/Set", type = Integer.class)
    public static final int ID_NAVI_TRAFFIC_INFORMATION = 1342177487;

    @PropertyDefine(publish = "T1CF1/YawSts/Set", type = Integer.class)
    public static final int ID_NAVI_YAW_STS = 1342177488;

    @PropertyDefine(topic = "Navigation/NavCarplayNavInfo", type = String.class)
    public static final int ID_NAV_CARPLAY_INFO = 1342177372;

    @PropertyDefine(topic = "T1CF1/ODB", type = Integer.class)
    public static final int ID_OBD = 1342177342;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/OilPressure", type = Integer.class)
    public static final int ID_OIL_PRESSURE = 1342177305;

    @PropertyDefine(topic = "T1CF1/OutSpeedVolume", type = Integer.class)
    public static final int ID_OUT_SPEED_VOLUME = 1342177391;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/PanoramicFinish", type = Integer.class)
    public static final int ID_PANORAMIC_FINISH = 1342177316;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/PanoramicStart", type = Integer.class)
    public static final int ID_PANORAMIC_START = 1342177315;

    @PropertyDefine(publish = "T1CF1/NonPwrOffSwt/Set", subscribe = "T1CF1/NonPwrOffSwtSts", type = Integer.class)
    public static final int ID_PARKING_AND_BATTERY_PROTECTION = 1342177504;

    @PropertyDefine(topic = "T1CF1/EPBState", type = Integer.class)
    public static final int ID_PARKING_BRAKE_EPB_ON_AVA = 1342177427;

    @PropertyDefine(topic = "T1CF1/PassengerQueenState", type = Integer.class)
    public static final int ID_PASSENGER_QUEEN_STATE = 1342177450;

    @PropertyDefine(publish = "T1CF1/PassengerSeatAngle/Set", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_ANGLE = 1342177441;

    @PropertyDefine(topic = "T1CF1/PassengerSeatAngleSlide", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_ANGLE_SLIDE = 1342177445;

    @PropertyDefine(publish = "T1CF1/PassengerSeatFrontRear/Set", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_FRONT_REAR = 1342177440;

    @PropertyDefine(topic = "T1CF1/PassengerSeatFrontRearSlide", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_FRONT_REAR_SLIDE = 1342177444;

    @PropertyDefine(publish = "T1CF1/PassengerSeatLeg/Set", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_LEG = 1342177442;

    @PropertyDefine(topic = "T1CF1/PassengerSeatLegSlide", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_LEG_SLIDE = 1342177446;

    @PropertyDefine(topic = "T1CF1/PassengerSeatLevelSave", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_LEVEL_SAVE = 1342177454;

    @PropertyDefine(topic = "T1CF1/PassengerSeatLinkSave", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_LINK_SAVE = 1342177452;

    @PropertyDefine(subscribe = "T1CF1/PassengerSeatMemory", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_MEMORY = 1342177449;

    @PropertyDefine(topic = "T1CF1/PassengerSeatMemSave", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_MEM_SAVE = 1342177451;

    @PropertyDefine(topic = "T1CF1/PassengerSeatModeSave", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_MODE_SAVE = 1342177453;

    @PropertyDefine(topic = "T1CF1/PassengerSeatQueen", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_QUEEN = 1342177447;

    @PropertyDefine(publish = "T1CF1/PassengerSeatUpDown/Set", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_UP_DOWN = 1342177439;

    @PropertyDefine(topic = "T1CF1/PassengerSeatUpDownSlide", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_UP_DOWN_SLIDE = 1342177443;

    @PropertyDefine(subscribe = "T1CF1/PassengerSeatWarn", type = Integer.class)
    public static final int ID_PASSENGER_SEAT_WARN = 1342177448;

    @PropertyDefine(publish = "T1CF1/PetModeSwt/Set", type = Integer.class)
    public static final int ID_PET_MODE_SWT = 1342177515;

    @PropertyDefine(subscribe = "T1CF1/PetModeWarning/Set", type = Integer.class)
    public static final int ID_PET_MODE_WARNING = 1342177516;

    @PropertyDefine(topic = "VehicleSet/PhoneLeaveTtsAlert", type = Integer.class)
    public static final int ID_PHONE_LEAVE_TTS_ALERT = 1342177361;

    @PropertyDefine(publish = "DrivingInfo/PowerKey", subscribe = "DrivingInfo/PowerKey", type = Integer.class)
    public static final int ID_POWER_KEY = 1342177414;

    @PropertyDefine(topic = "T1CF1/PowerMode", type = Integer.class)
    public static final int ID_POWER_MODE = 1342177368;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/PowerStatus", type = Integer.class)
    public static final int ID_POWER_STATUS = 1342177302;

    @PropertyDefine(subscribe = "T1CF1/PwrdwnDisReq", type = Integer.class)
    public static final int ID_PWRDWN_DIS_REQ = 1342177462;

    @PropertyDefine(topic = "T1CF1/CheckQueenBed", type = Integer.class)
    public static final int ID_QUEEN_BED_CHECK = 1342177473;

    @PropertyDefine(topic = "T1CF1/QueenBedMode", type = Integer.class)
    public static final int ID_QUEEN_BED_MODE = 1342177472;

    @PropertyDefine(topic = "T1CF1/QueenBedWarn", type = Integer.class)
    public static final int ID_QUEEN_BED_WARN = 1342177474;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/RadarWorkNotice", type = Integer.class)
    public static final int ID_RADAR_WORK_NOTICE = 1342177310;

    @PropertyDefine(subscribe = "DrivingInfo/RangeAval", type = Integer.class)
    public static final int ID_RANGE_AVAL = 1342177418;

    @PropertyDefine(topic = "DrivingInfo/RearCrossCollisionWarningEV", type = Integer.class)
    public static final int ID_REAR_CROSS_COLLISION_WARNING_EV = 1342177469;

    @PropertyDefine(topic = "T1CF1/RearViewMirrorAutoTurnDown", type = Integer.class)
    public static final int ID_REAR_VIEW_MIRROR_AUTO_DIPPING = 1342177411;

    @PropertyDefine(publish = "EnergyInfo/EnergyRecoveryMode/Set", subscribe = "EnergyInfo/EnergyRecoveryModeEV", type = Integer.class)
    public static final int ID_REGENERATE_LEVEL_EV = 1342177518;

    @PropertyDefine(subscribe = "EnergyInfo/ResidualOdometer", type = Float.class)
    public static final int ID_RESIDUAL_ODOMETER = 1342177435;

    @PropertyDefine(publish = "RLCR/EVRlcrRaebonoffsts/Set", subscribe = "RLCR/EVRlcrRaebonoffsts", type = Integer.class)
    public static final int ID_RLCR_RAEB_EV = 1342177415;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/SeatbeltStatus", type = Integer.class)
    public static final int ID_SEATBELT_STATUS = 1342177308;

    @PropertyDefine(publish = "T1CF1/SeatAdjust/Set", type = String.class)
    public static final int ID_SEAT_ADJUST = 1342177500;

    @PropertyDefine(topic = "T1CF1/IHUSetSwitch", type = Integer.class)
    public static final int ID_SET_SWITCH = 1342177375;

    @PropertyDefine(topic = "T1CF1/SmartTtsInfo", type = String.class)
    public static final int ID_SMART_TTS_INFO = 1342177457;

    @PropertyDefine(topic = "T1CF1/SmartVoiceCommand", type = Integer.class)
    public static final int ID_SMART_VOICE_COMMAND = 1342177456;

    @PropertyDefine(topic = "T1CF1/StartStopShielding", type = Integer.class)
    public static final int ID_START_STOP_SHIELDING = 1342177313;

    @PropertyDefine(subscribe = "HCU/SumFuel", type = Float.class)
    public static final int ID_SUM_FUEL = 1342177421;

    @PropertyDefine(subscribe = "HCU/SumPlgChrgEgy", type = Float.class)
    public static final int ID_SUM_PLG_CHRG_EGY = 1342177420;

    @PropertyDefine(publish = "HCU/SumReset/Set", type = Integer.class)
    public static final int ID_SUM_RESET = 1342177422;

    @PropertyDefine(topic = "T1CF1/SunRoofPosition", type = Integer.class)
    public static final int ID_SUN_ROOF_POSITION = 1342177376;

    @PropertyDefine(topic = "T1CF1/SwipeScreen", type = Integer.class)
    public static final int ID_SWIPE_SCREEN = 1342177475;

    @PropertyDefine(serializable = false, topic = "T1CF1/CAN", type = byte[].class)
    public static final int ID_T1CF1_CAN_DATA = 1342177341;

    @PropertyDefine(changeMode = 2, serializable = false, topic = "T1CF1/DVR", type = byte[].class)
    public static final int ID_T1CF1_DVR = 1342177281;

    @PropertyDefine(subscribe = "VehicleDoor/Door/All", type = Integer.class)
    public static final int ID_T1GC_DOOR = 1342177496;

    @PropertyDefine(topic = "T1CF1/TboxHighLevel", type = Integer.class)
    public static final int ID_TBOX_HIGH_LEVEL = 1342177476;

    @PropertyDefine(topic = "T1CF1/TboxLowLevel", type = Integer.class)
    public static final int ID_TBOX_LOW_LEVEL = 1342177477;

    @PropertyDefine(topic = "T1CF1/TimeOfHour", type = Integer.class)
    public static final int ID_TIME_OF_HOUR = 1342177327;

    @PropertyDefine(topic = "T1CF1/TimeOfMinute", type = Integer.class)
    public static final int ID_TIME_OF_MINUTE = 1342177328;

    @PropertyDefine(topic = "T1CF1/TimeOfSecond", type = Integer.class)
    public static final int ID_TIME_OF_SECOND = 1342177329;

    @PropertyDefine(topic = "T1CF1/TimeShowMode", type = Integer.class)
    public static final int ID_TIME_SHOW_MODE = 1342177323;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/TouchVolumeSwitch", type = Integer.class)
    public static final int ID_TOUCH_VOLUME_SWITCH = 1342177322;

    @PropertyDefine(publish = "T1CF1/TspMsgToIC/Set", type = Integer.class)
    public static final int ID_TSP_MSG_TO_IC = 1342177501;

    @PropertyDefine(topic = "T1CF1/AndroidTspState", type = Integer.class)
    public static final int ID_TSP_STATE = 1342177468;

    @PropertyDefine(topic = "T1CF1/TypeOfLanguage", type = Integer.class)
    public static final int ID_TYPE_OF_LANGUAGE = 1342177329;

    @PropertyDefine(topic = "T1CF1/VCUPtReady", type = Integer.class)
    public static final int ID_VCU_PT_READY = 1342177526;

    @PropertyDefine(topic = "T1CF1/VehPowerMode", type = Integer.class)
    public static final int ID_VEH_POWER_MODE = 1342177525;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/VolPlusMinusForDVDSts", type = Integer.class)
    public static final int ID_VOL_PLUS_MINUS_FOR_DVD_STATUS = 1342177367;

    @PropertyDefine(topic = "T1CF1/TBDStatus", type = Integer.class)
    public static final int ID_WASGING_LIQUID = 1342177340;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/WindowAll", type = Integer.class)
    public static final int ID_WINDOW_ALL = 1342177319;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/WindowFront", type = Integer.class)
    public static final int ID_WINDOW_FRONT = 1342177317;

    @PropertyDefine(changeMode = 2, topic = "T1CF1/WindowRear", type = Integer.class)
    public static final int ID_WINDOW_REAR = 1342177318;

    @PropertyDefine(topic = "T1CF1/WirelessCharge", type = Integer.class)
    public static final int ID_WIRELESS_CHARGE = 1342177312;

    @PropertyDefine(subscribe = "DrivingInfo/WLTCFuCns", type = Integer.class)
    public static final int ID_WLTC_FU_CNS = 1342177513;
    public static final int MGR_ID = 80;

    @PropertyDefine(topic = "T1CF1/PassSeatMsgLevel", type = Integer.class)
    public static final int PASS_SEAT_MSG_LEVEL = 1342177364;

    @PropertyDefine(topic = "T1CF1/PassSeatMsgMode", type = Integer.class)
    public static final int PASS_SEAT_MSG_MODE = 1342177365;
    public static final String PERMISSION = "mega.car.permission.VEHICLE_CONTROL";
    public static final String SERVICE_NAME = "glacier";

    @PropertyDefine(topic = "SOS/VolumeAssistanceAudio", type = Integer.class)
    public static final int SOS_VOLUME_ASSISTANCE_AUDIO = 1342177395;

    @PropertyDefine(publish = "ADAS/SpeedLimitAlarmMode/Icon/Set", subscribe = "ADAS/SpeedLimitAlarmMode/Icon", type = Integer.class)
    public static final int SPEED_LIMIT_ALARM_MODE_ICON = 1342177416;

    @PropertyDefine(publish = "ADAS/SpeedLimitAlarmMode/Sound/Set", subscribe = "ADAS/SpeedLimitAlarmMode/Sound", type = Integer.class)
    public static final int SPEED_LIMIT_ALARM_MODE_SOUND = 1342177417;

    @PropertyDefine(topic = "T1CF1/DriveGearPosition", type = Integer.class)
    public static final int T1X_DRIVE_GEAR_POSITION = 1342177396;

    @PropertyDefine(topic = "T1CF1/AVMDisplaySts", type = Integer.class)
    public static final int T2X_AVM_DISPLAY = 1342177398;

    @PropertyDefine(topic = "T1CF1/AVMSwt", type = Integer.class)
    public static final int T2X_AVM_SWT = 1342177403;

    @PropertyDefine(topic = "T1CF1/CalibrationReq", type = Integer.class)
    public static final int T2X_CALIBRATION_REQ = 1342177405;

    @PropertyDefine(topic = "T1CF1/FrontPDCObjectDistance", type = Integer.class)
    public static final int T2X_FRONT_PDC_OBJECT_DISTANCE = 1342177402;

    @PropertyDefine(topic = "T1CF1/IHUCarMdlSetColor", type = Integer.class)
    public static final int T2X_IHU_CAR_MDL_SET_COLOR = 1342177409;

    @PropertyDefine(topic = "T1CF1/IHUFrontRadarSwt", type = Integer.class)
    public static final int T2X_IHU_FRONT_RADAR_SWT = 1342177410;

    @PropertyDefine(topic = "T1CF1/MirrorSet", type = Integer.class)
    public static final int T2X_MIRROR_SET = 1342177397;

    @PropertyDefine(topic = "T1CF1/NaviBtnPressInputValueX", type = Integer.class)
    public static final int T2X_NAVI_BTN_PRESS_INPUT_VALUE_X = 1342177406;

    @PropertyDefine(topic = "T1CF1/NaviBtnPressInputValueY", type = Integer.class)
    public static final int T2X_NAVI_BTN_PRESS_INPUT_VALUE_Y = 1342177407;

    @PropertyDefine(topic = "T1CF1/RadarWorkSts", type = Integer.class)
    public static final int T2X_RADAR_WORK = 1342177400;

    @PropertyDefine(topic = "T1CF1/RearPDCObjectDistance", type = Integer.class)
    public static final int T2X_REAR_PDC_OBJECT_DISTANCE = 1342177401;

    @PropertyDefine(topic = "T1CF1/ReasonForDVDNotDisplayAPA", type = Integer.class)
    public static final int T2X_REASON_DVD_NOT_DISPLAY_APA = 1342177399;

    @PropertyDefine(topic = "T1CF1/RRMDisplayAVMOff", type = Integer.class)
    public static final int T2X_RRM_DISPLAY_AVM_OFF = 1342177404;

    @PropertyDefine(topic = "T1CF1/TouchEvt", type = Integer.class)
    public static final int T2X_TOUCH_EVT = 1342177408;

    @PropertyDefine(topic = "T1CF1/PhevBatteryThermalRunawayTrigger", type = Integer.class)
    public static final int TRIGGER_BATTERY_THERMAL_RUNAWAY = 1342177394;

    public interface DisplayMode {
        public static final int MODE_AUTO = 2;
        public static final int MODE_DAY = 0;
        public static final int MODE_NIGHT = 1;
    }

    public interface LanguageType {
        public static final int TYPE_ARABIC = 4;
        public static final int TYPE_CHINESE = 1;
        public static final int TYPE_ENGLISH = 2;
        public static final int TYPE_FARSI = 6;
        public static final int TYPE_INDONESIAN = 12;
        public static final int TYPE_ITALIAN = 8;
        public static final int TYPE_PORTUGUESE = 5;
        public static final int TYPE_RUSSIAN = 3;
        public static final int TYPE_SPANISH = 7;
        public static final int TYPE_THAI = 11;
        public static final int TYPE_TURKISH = 9;
        public static final int TYPE_UKRAINIAN = 10;
    }

    public interface SlideScreenControl {
        public static final int FOUR_FINGER = 2;
        public static final int KEY_EVENT = 4;
        public static final int MINUS_SCREEN = 1;
        public static final int SCENE_MODE = 5;
        public static final int SMALL_NOTE = 6;
        public static final String TYPE = "center_slide_screen_type";
        public static final int VOICE = 3;
    }
}
