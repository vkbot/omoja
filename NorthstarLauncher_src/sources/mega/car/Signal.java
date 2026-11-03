package mega.car;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 103, permission = "mega.car.permission.VEHICLE_CONTROL")
public final class Signal {

    @PropertyDefine(topic = "AVM/AVMDisplaySts", type = Integer.class)
    public static final int AVM_DISPLAYSTS = 1728053286;

    @PropertyDefine(topic = "VehicleWindow/DeleteIDInfo", type = Integer.class)
    public static final int DELETE_ID_INFO = 1728053267;

    @PropertyDefine(changeMode = 2, serializable = false, subscribe = "DF/UploadErrCode", type = String.class)
    public static final int DF_UPLOAD_ERR_CODE = 1728053486;

    @PropertyDefine(publish = "DF/UploadErrCode_ACK", serializable = false, type = String.class)
    public static final int DF_UPLOAD_ERR_CODE_ACK = 1728053487;

    @PropertyDefine(topic = "DrivingInfo/EvHevMileageSetting", type = Integer.class)
    public static final int EV_HEV_MILEAGE_SETTING = 1728053270;

    @PropertyDefine(topic = "VehicleWindow/FaceID", type = Integer.class)
    public static final int FACE_ID = 1728053268;

    @PropertyDefine(topic = "FuelBar/Perent", type = Float.class)
    public static final int FUELBAR_PERCENT = 1728053280;

    @PropertyDefine(publish = "ADAS/AbsoluteSpeedLimit/Set", subscribe = "ADAS/AbsoluteSpeedLimit", type = Integer.class)
    public static final int ID_ABSOLUTE_SPEED_LIMIT = 1728053360;

    @PropertyDefine(subscribe = "AC/Voice/EZE", type = Integer.class)
    public static final int ID_AC_EZE_VOICE = 1728053438;

    @PropertyDefine(publish = "ADAS/VoiceReminder/Set", subscribe = "ADAS/VoiceReminder", type = Integer.class)
    public static final int ID_ADAS_VOICE_REMINDER = 1728053357;

    @PropertyDefine(publish = "LHM/LHM1ADBenableFeedback/Set", subscribe = "LHM/LHM1ADBenableFeedback", type = Integer.class)
    public static final int ID_ADB_ENABLE = 1728053311;

    @PropertyDefine(publish = "Telltale/AirbagAlarm/Set", subscribe = "Telltale/AirbagAlarm", type = Integer.class)
    public static final int ID_AIRBAG_STATUS = 1728053534;

    @PropertyDefine(publish = "IHU/AmbLigAuthn/Set", type = Integer.class)
    public static final int ID_AMB_LIG_AUTHN = 1728053408;

    @PropertyDefine(publish = "IHU/AmbLigBriAdj/Set", type = Integer.class)
    public static final int ID_AMB_LIG_BRI_ADJ = 1728053409;

    @PropertyDefine(publish = "IHU/AmbLigColor/Set", type = Integer.class)
    public static final int ID_AMB_LIG_COLOR = 1728053410;

    @PropertyDefine(publish = "IHU/AmbLigFadeEna/Set", type = Integer.class)
    public static final int ID_AMB_LIG_FADE_ENA = 1728053411;

    @PropertyDefine(publish = "IHU/AmbLigFadeINOUT/StepTi/Set", type = Integer.class)
    public static final int ID_AMB_LIG_FADE_IN_OUT_STEP_TI = 1728053432;

    @PropertyDefine(publish = "IHU/AmbLigFlngModSel/Set", type = Integer.class)
    public static final int ID_AMB_LIG_FLNG_MOD_SEL = 1728053412;

    @PropertyDefine(publish = "IHU/AmbLigInfo/Set", type = String.class)
    public static final int ID_AMB_LIG_INFO = 1728053437;

    @PropertyDefine(changeMode = 2, topic = "Android/Reset", type = Integer.class)
    public static final int ID_ANDROID_RESET = 1728053395;

    @PropertyDefine(changeMode = 2, publish = "android/version/resp", subscribe = "android/version/req", type = String.class)
    public static final int ID_ANDROID_VERSION = 1728053484;

    @PropertyDefine(publish = "IHU/AppSts/Set", type = Integer.class)
    public static final int ID_APP_STS = 1728053430;

    @PropertyDefine(publish = "ICMIHU/AsuAssocWithDrvrMod/Set", subscribe = "ICMIHU/AsuAssocWithDrvrMod", type = Integer.class)
    public static final int ID_ASU_ASSOC_WITH_DRVR_MOD = 1728053305;

    @PropertyDefine(publish = "ICMIHU/AsuStyle/Set", subscribe = "ICMIHU/AsuStyle", type = Integer.class)
    public static final int ID_ASU_STYLE = 1728053306;

    @PropertyDefine(publish = "AC/AutoDefogSensitive/Set", subscribe = "AC/AutoDefogSensitive", type = Integer.class)
    public static final int ID_AUTO_DEFOG_SENSITIVE = 1728053461;

    @PropertyDefine(publish = "AC/AutoDefogStatus/Set", subscribe = "AC/AutoDefogStatus", type = Integer.class)
    public static final int ID_AUTO_DEFOG_STS = 1728053460;

    @PropertyDefine(subscribe = "AVM/APAScreenSystemSts", type = Integer.class)
    public static final int ID_AVM_APA_SYSTEM_STS = 1728053454;

    @PropertyDefine(publish = "EnergyInfo/BatteryChargeSts/Set", subscribe = "EnergyInfo/BatteryChargeSts", type = Integer.class)
    public static final int ID_BATTERY_CHARGE_STS = 1728053498;

    @PropertyDefine(publish = "Engmode/BatteryInfo/Soc/Set", subscribe = "Engmode/BatteryInfo/Soc", type = Integer.class)
    public static final int ID_BATTERY_INFO_SOC = 1728053531;

    @PropertyDefine(publish = "EnergyInfo/KeepwarmSts/Set", subscribe = "EnergyInfo/KeepwarmSts", type = Integer.class)
    public static final int ID_BATTERY_KEEP_WARM = 1728053497;

    @PropertyDefine(topic = "DrivingInfo/Charge/PhevSOCDispPercent", type = Integer.class)
    public static final int ID_BATTERY_PERCENT_PHEV = 1728053263;

    @PropertyDefine(subscribe = "EnergyInfo/IBSQuiescentCurrent", type = Float.class)
    public static final int ID_BATTERY_QUIESCENT_CURRENT = 1728053382;

    @PropertyDefine(topic = "EnergyInfo/BatteryReboot", type = Integer.class)
    public static final int ID_BATTERY_REBOOT = 1728053287;

    @PropertyDefine(subscribe = "EnergyInfo/IBSBatteryStartVoltage", type = Float.class)
    public static final int ID_BATTERY_START_VOLTAGE = 1728053381;

    @PropertyDefine(subscribe = "EnergyInfo/IBSBatteryStatus", type = Integer.class)
    public static final int ID_BATTERY_STATUS = 1728053380;

    @PropertyDefine(subscribe = "EnergyInfo/IBSBatteryTemp", type = Float.class)
    public static final int ID_BATTERY_TEMP = 1728053379;

    @PropertyDefine(subscribe = "APA/KeySts", type = Integer.class)
    public static final int ID_BCM_KEY_STS = 1728053419;

    @PropertyDefine(publish = "AC/BluetoothCall/Set", type = Integer.class)
    public static final int ID_BLUETOOTH_CALL = 1728053294;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeTimeInfo/Set", type = String.class)
    public static final int ID_BOOK_CHARGE_INFO = 1728053443;

    @PropertyDefine(topic = "EnergyInfo/ScheduledChargeDuration", type = Integer.class)
    public static final int ID_BOOK_CHARGE_TIME_DURATION = 1728053251;

    @PropertyDefine(topic = "EnergyInfo/ScheduledChargeTimeHour", type = Integer.class)
    public static final int ID_BOOK_CHARGE_TIME_HOUR = 1728053249;

    @PropertyDefine(topic = "EnergyInfo/ScheduledChargeTimeMin", type = Integer.class)
    public static final int ID_BOOK_CHARGE_TIME_MIN = 1728053250;

    @PropertyDefine(topic = "EnergyInfo/ScheduledChargeWeek", type = Integer.class)
    public static final int ID_BOOK_CHARGE_TIME_WEEK = 1728053252;

    @PropertyDefine(publish = "EnergyInfo/RsvTravelInfo/Set", type = String.class)
    public static final int ID_BOOK_TRIP_INFO = 1728053444;

    @PropertyDefine(publish = "T1CF1/CarColor/Set", type = Integer.class)
    public static final int ID_CAR_COLOR = 1728053318;

    @PropertyDefine(publish = "EngineeringMode/CarShowMode/Set", subscribe = "EngineeringMode/CarShowMode", type = Integer.class)
    public static final int ID_CAR_SHOW_MODE = 1728053378;

    @PropertyDefine(subscribe = "EngineeringMode/CarShowMode/EV", type = Integer.class)
    public static final int ID_CAR_SHOW_MODE_EV = 1728053559;

    @PropertyDefine(topic = "EnergyInfo/CCConnectSts", type = Integer.class)
    public static final int ID_CC_CONNECT_STS = 1728053273;

    @PropertyDefine(publish = "CDC_2D2/CdcSentryModeSwtSts/Set", type = Integer.class)
    public static final int ID_CDC_SENTRY_MODE_SWT_STS = 1728053527;

    @PropertyDefine(subscribe = "EnergyInfo/ScheduledChargeEndTimeHour", type = Integer.class)
    public static final int ID_CHARGE_END_HOUR_TIME = 1728053502;

    @PropertyDefine(subscribe = "EnergyInfo/ScheduledChargeEndTimeMin", type = Integer.class)
    public static final int ID_CHARGE_END_MINUTE_TIME = 1728053503;

    @PropertyDefine(publish = "EnergyInfo/ElectronicLockStsEV/Set", subscribe = "EnergyInfo/ElectronicLockStsEV", type = Integer.class)
    public static final int ID_CHARGE_GUN_LOCK = 1728053496;

    @PropertyDefine(topic = "DrivingInfo/Charge/PhevPackChargingThermalSt", type = Integer.class)
    public static final int ID_CHARGE_PHEV_PACK_STATUS = 1728053269;

    @PropertyDefine(publish = "Telltale/ChargeState/Set", subscribe = "Telltale/ChargeState", type = Integer.class)
    public static final int ID_CHARGE_STATE = 1728053289;

    @PropertyDefine(publish = "EnergyInfo/PackChargingThermalSt/Set", subscribe = "EnergyInfo/PackChargingThermalSt", type = Integer.class)
    public static final int ID_CHARGING_STATUS = 1728053298;

    @PropertyDefine(publish = "T1CF1/ChildDetection/Set", subscribe = "T1CF1/ChildDetection", type = Integer.class)
    public static final int ID_CHILD_DETECTION = 1728053303;

    @PropertyDefine(publish = "T1CF1/ChildDetectionReminder/Set", subscribe = "T1CF1/ChildDetectionReminder", type = Integer.class)
    public static final int ID_CHILD_DETECTION_REMINDER = 1728053364;

    @PropertyDefine(topic = "AC/ChildLock/Rear", type = Integer.class)
    public static final int ID_CHILD_LOCK_REAR = 1728053352;

    @PropertyDefine(topic = "EnergyInfo/ChrgnFctMem", type = Integer.class)
    public static final int ID_CHRGN_FCT_MEM = 1728053256;

    @PropertyDefine(subscribe = "AC/CoolantWarn", type = Integer.class)
    public static final int ID_COOLANT_WARN = 1728053473;

    @PropertyDefine(subscribe = "Seat/FrontRight/MemoryReq", type = Integer.class)
    public static final int ID_COPILOT_SEAT_MEMORY_REQ = 1728053477;

    @PropertyDefine(subscribe = "Seat/FrontRight/PositionSts", type = Integer.class)
    public static final int ID_COPILOT_SEAT_POS = 1728053483;

    @PropertyDefine(publish = "Seat/FrontRight/PositionRecall/Set", type = Integer.class)
    public static final int ID_COPILOT_SEAT_RECOVER = 1728053480;

    @PropertyDefine(subscribe = "Seat/FrontRight/PositionRecallSts", type = Integer.class)
    public static final int ID_COPILOT_SEAT_RECOVER_STS = 1728053481;

    @PropertyDefine(subscribe = "Seat/FrontRight/SelectPositionSts", type = Integer.class)
    public static final int ID_COPILOT_SEAT_SELECT_POS = 1728053482;

    @PropertyDefine(publish = "Seat/FrontRight/PositionStore/Set", type = Integer.class)
    public static final int ID_COPILOT_SEAT_STORE = 1728053478;

    @PropertyDefine(subscribe = "Seat/FrontRight/PositionStoreSts", type = Integer.class)
    public static final int ID_COPILOT_SEAT_STORE_STS = 1728053479;

    @PropertyDefine(publish = "CWC/ChargeStatus/Set", subscribe = "CWC/ChargeStatus", type = Integer.class)
    public static final int ID_CWC_CHARGESTATUS = 1728053290;

    @PropertyDefine(publish = "CWC/PassChargeStatus/Set", subscribe = "CWC/PassChargeStatus", type = Integer.class)
    public static final int ID_CWC_PASSCHARGESTATUS = 1728053291;

    @PropertyDefine(publish = "AC/CycleMode2/Set", subscribe = "AC/CycleMode2", type = Integer.class)
    public static final int ID_CYCLE_MODE2 = 1728053456;

    @PropertyDefine(publish = "Light/Decorative/Set", type = Integer.class)
    public static final int ID_DECO_LIGHT = 1728053418;

    @PropertyDefine(subscribe = "Light/DecoFailSts", type = Integer.class)
    public static final int ID_DECO_LIGHT_FAIL_STS = 1728053417;

    @PropertyDefine(topic = "EnergyInfo/DischargeFail", type = Integer.class)
    public static final int ID_DISCHARGE_FAIL = 1728053272;

    @PropertyDefine(topic = "EnergyInfo/DischargeSet", type = Integer.class)
    public static final int ID_DISCHARGE_SET = 1728053271;

    @PropertyDefine(publish = "EnergyInfo/DischargeSoc/Set", subscribe = "EnergyInfo/DischargeSoc", type = Integer.class)
    public static final int ID_DISCHARGE_SOC = 1728053495;

    @PropertyDefine(publish = "EnergyInfo/DischargeV2L/Set", subscribe = "EnergyInfo/DischargeV2L", type = Integer.class)
    public static final int ID_DISCHARGE_V2L = 1728053494;

    @PropertyDefine(publish = "DMS/DetectPermissionSwitch/Set", subscribe = "DMS/DetectPermissionSwitch", type = Integer.class)
    public static final int ID_DMS_DETECT_PERMISSION_SWITCH = 1728053390;

    @PropertyDefine(subscribe = "TTS/DoorOpen", type = Integer.class)
    public static final int ID_DOOR_OPEN_ALARM = 1728053543;

    @PropertyDefine(topic = "Warning/DoorOpen/DriverDoor", type = Integer.class)
    public static final int ID_DRIVER_DOOR = 1728053276;

    @PropertyDefine(publish = "DrivingInfo/Temperature/Set", subscribe = "DrivingInfo/Temperature", type = Integer.class)
    public static final int ID_DRV_INFO_TEMPERATURE_UNIT = 1728053416;

    @PropertyDefine(subscribe = "ADCC/CameraStreamSts", type = Integer.class)
    public static final int ID_DVR_CAMERA_STREAM = 1728053541;

    @PropertyDefine(subscribe = "Sentinel/PRNDGearAct", type = Integer.class)
    public static final int ID_DVR_SENTRY_GEAR = 1728053542;

    @PropertyDefine(publish = "sentry/record_start", type = Integer.class)
    public static final int ID_DVR_SENTRY_RECORD_START = 1728053539;

    @PropertyDefine(publish = "sentry/record_stop", type = Integer.class)
    public static final int ID_DVR_SENTRY_RECORD_STOP = 1728053540;

    @PropertyDefine(publish = "Sentinel/Sensitivity/Set", subscribe = "Sentinel/Sensitivity", type = Integer.class)
    public static final int ID_DVR_SENTRY_SENSITIVITY = 1728053544;

    @PropertyDefine(publish = "sentry/start", type = Integer.class)
    public static final int ID_DVR_SENTRY_START = 1728053537;

    @PropertyDefine(publish = "sentry/stop", type = Integer.class)
    public static final int ID_DVR_SENTRY_STOP = 1728053538;

    @PropertyDefine(publish = "DVR/WaterMaskEnable/Set", type = Integer.class)
    public static final int ID_DVR_WATER_MASK_ENABLE = 1728053536;

    @PropertyDefine(subscribe = "T1CF1/EEMReq", type = Integer.class)
    public static final int ID_EEM_REQ = 1728053492;

    @PropertyDefine(publish = "AC/Temperature/Electric/Set", subscribe = "AC/Temperature/Electric", type = Integer.class)
    public static final int ID_ELECTRIC_TEMP = 1728053431;

    @PropertyDefine(publish = "EnergyInfo/ElectronicLockSts/Set", subscribe = "EnergyInfo/ElectronicLockSts", type = Integer.class)
    public static final int ID_ELECTRONIC_LOCK = 1728053297;

    @PropertyDefine(publish = "Enc/State/Set", type = Integer.class)
    public static final int ID_ENC_STATE = 1728053402;

    @PropertyDefine(topic = "EnergyInfo/BatteryLevel", type = Integer.class)
    public static final int ID_ENERGYINFO_BATTERY_LEVEL = 1728053288;

    @PropertyDefine(subscribe = "EnergyInfo/PowerFlowDirectionEV", type = Integer.class)
    public static final int ID_ENERGY_FLOW_T19C = 1728053493;

    @PropertyDefine(publish = "DF/ReportErrCode", type = byte[].class)
    public static final int ID_ERROR_REPORT = 1728053485;

    @PropertyDefine(publish = "IHU/EtmEgySave/Set", subscribe = "IHU/EtmEgySave/Set", type = Integer.class)
    public static final int ID_ETM_EGY_SAVE = 1728053401;

    @PropertyDefine(publish = "EnergyInfo/EVIndicatorLight/Set", subscribe = "EnergyInfo/EVIndicatorLight", type = Integer.class)
    public static final int ID_EV_INDICATOR_LIGHT = 1728053501;

    @PropertyDefine(publish = "AC/ExhaustMode/Set", subscribe = "AC/ExhaustMode", type = Integer.class)
    public static final int ID_EXHAUST_MODE = 1728053440;

    @PropertyDefine(changeMode = 2, subscribe = "EngineCandata/FCM_FRM_6_Textinfo_Info", type = Integer.class)
    public static final int ID_FCM_FRM_TEXT_INFO_INFO = 1728053414;

    @PropertyDefine(changeMode = 2, subscribe = "EngineCandata/FCM_10_LDWSysSts", type = Integer.class)
    public static final int ID_FCM_LDW_SYS_STS = 1728053415;

    @PropertyDefine(subscribe = "AC/FilterLife", type = Integer.class)
    public static final int ID_FILTER_LIFE = 1728053462;

    @PropertyDefine(publish = "AC/FilterLifeReset/Set", subscribe = "AC/FilterLifeReset", type = Integer.class)
    public static final int ID_FILTER_LIFE_RESET = 1728053463;

    @PropertyDefine(publish = "AC/FrontGlassHeat/Set", subscribe = "AC/FrontGlassHeat", type = Integer.class)
    public static final int ID_FRONT_GLASS_HEAT = 1728053346;

    @PropertyDefine(publish = "Fuel/RangeType/Set", subscribe = "Fuel/RangeType", type = Integer.class)
    public static final int ID_FUEL_RANGE_TYPE = 1728053488;

    @PropertyDefine(publish = "Function/Safe/Set", type = Integer.class)
    public static final int ID_FUNCTION_SAFE_KEY = 1728053442;

    @PropertyDefine(publish = "GPS/Hdop/Set", type = Float.class)
    public static final int ID_GPS_HDOP = 1728053547;

    @PropertyDefine(publish = "GPS/Latitude/Set", type = Double.class)
    public static final int ID_GPS_LATITUDE = 1728053546;

    @PropertyDefine(publish = "GPS/Longitude/Set", type = Double.class)
    public static final int ID_GPS_LONGITUDE = 1728053545;

    @PropertyDefine(publish = "GPS/Num/Set", type = Integer.class)
    public static final int ID_GPS_NUM = 1728053549;

    @PropertyDefine(publish = "Hazard/Light/Set", subscribe = "Hazard/Light", type = Integer.class)
    public static final int ID_HAZARD_LIGHT = 1728053525;

    @PropertyDefine(publish = "Volume/HeadVolume/Set", subscribe = "Volume/HeadVolume", type = Integer.class)
    public static final int ID_HEAD_VOLUME_TYPE = 1728053355;

    @PropertyDefine(subscribe = "APA/HighBeamSts", type = Integer.class)
    public static final int ID_HIGHBEAM_LIGHT = 1728053447;

    @PropertyDefine(topic = "Warning/DoorOpen/Hood", type = Integer.class)
    public static final int ID_HOOD = 1728053275;

    @PropertyDefine(changeMode = 2, topic = "Hotspot/Password", type = String.class)
    public static final int ID_HOTSPOT_PASSWORD = 1728053396;

    @PropertyDefine(changeMode = 2, topic = "Hotspot/Password/Get", type = String.class)
    public static final int ID_HOTSPOT_PASSWORD_GET = 1728053406;

    @PropertyDefine(changeMode = 2, topic = "Hotspot/Ssid", type = String.class)
    public static final int ID_HOTSPOT_SSID = 1728053397;

    @PropertyDefine(changeMode = 2, topic = "Hotspot/Ssid/Get", type = String.class)
    public static final int ID_HOTSPOT_SSID_GET = 1728053407;

    @PropertyDefine(subscribe = "Hud/BriRawVal", type = Integer.class)
    public static final int ID_HUD_BRI_RAW_VAL = 1728053420;

    @PropertyDefine(subscribe = "Hud/BriRawValAndUnit", type = Integer.class)
    public static final int ID_HUD_BRI_RAW_VAL_AND_UNIT = 1728053422;

    @PropertyDefine(subscribe = "Hud/BriUnit", type = Integer.class)
    public static final int ID_HUD_BRI_UNIT = 1728053421;

    @PropertyDefine(publish = "HUD/Rotation/Set", subscribe = "HUD/Rotation", type = Integer.class)
    public static final int ID_HUD_ROTATION = 1728053354;

    @PropertyDefine(publish = "AC/StayMode/Set", subscribe = "AC/StayMode", type = Integer.class)
    public static final int ID_HVAC_STAY_MODE = 1728053398;

    @PropertyDefine(subscribe = "AC/StayModeDisplay", type = Integer.class)
    public static final int ID_HVAC_STAY_MODE_DISPLAY = 1728053399;

    @PropertyDefine(publish = "Telltale/HvReadyPHEV/Set", subscribe = "Telltale/HvReadyPHEV", type = Integer.class)
    public static final int ID_HV_READY_PHEV = 1728053523;

    @PropertyDefine(publish = "ICM/FrozenScreen/Set", type = Integer.class)
    public static final int ID_ICM_FROZEN_SCREEN = 1728053450;

    @PropertyDefine(publish = "DrivingRangeData/Reset/Set", type = Integer.class)
    public static final int ID_ICM_RANGE_DATA_RESET = 1728053453;

    @PropertyDefine(publish = "ICM/Screen/LogExport/Set", type = Integer.class)
    public static final int ID_ICM_SCREEN_LOG_EXPORT = 1728053449;

    @PropertyDefine(publish = "ICM/TTLightTest/Set", type = Integer.class)
    public static final int ID_ICM_TT_LIGHT_TEST = 1728053452;

    @PropertyDefine(publish = "ICM/VideoStreamSts/Set", type = Integer.class)
    public static final int ID_ICM_VIDEO_STREAM_STS = 1728053451;

    @PropertyDefine(publish = "IDCU/IdcuAlcdrvrcfmonoffsts/Set", subscribe = "IDCU/IdcuAlcdrvrcfmonoffsts", type = Integer.class)
    public static final int ID_IDCU_ALCDRVRCFM = 1728053319;

    @PropertyDefine(publish = "IDCU/IdcuAlcdrvStysts/Set", subscribe = "IDCU/IdcuAlcdrvStysts", type = Integer.class)
    public static final int ID_IDCU_ALCDRV_STY = 1728053320;

    @PropertyDefine(publish = "IDCU/IdcuCponoffsts/Set", subscribe = "IDCU/IdcuCponoffsts", type = Integer.class)
    public static final int ID_IDCU_CPON = 1728053330;

    @PropertyDefine(publish = "IDCU/IdcuDclconoffsts/Set", subscribe = "IDCU/IdcuDclconoffsts", type = Integer.class)
    public static final int ID_IDCU_DCLC = 1728053321;

    @PropertyDefine(publish = "IDCU/IdcuDrvAssiStysts/Set", subscribe = "IDCU/IdcuDrvAssiStysts", type = Integer.class)
    public static final int ID_IDCU_DRV_ASSI_STY = 1728053322;

    @PropertyDefine(publish = "IDCU/IdcuFctbonoffsts/Set", subscribe = "IDCU/IdcuFctbonoffsts", type = Integer.class)
    public static final int ID_IDCU_FCTB = 1728053315;

    @PropertyDefine(publish = "IDCU/IdcuNoconoffsts/Set", subscribe = "IDCU/IdcuNoconoffsts", type = Integer.class)
    public static final int ID_IDCU_NOC = 1728053331;

    @PropertyDefine(publish = "ICM/LiShowMod/Set", type = Integer.class)
    public static final int ID_INTELLIGENT_WELCOME_LIGHT = 1728053316;

    @PropertyDefine(subscribe = "DrivingInfo/IsEnterMenu", type = Integer.class)
    public static final int ID_IS_ENTER_MENU = 1728053429;

    @PropertyDefine(publish = "EnergyInfo/ISave/Set", subscribe = "EnergyInfo/ISave", type = Integer.class)
    public static final int ID_I_SAVE = 1728053426;

    @PropertyDefine(subscribe = "EnergyInfo/ISaveImprov", type = Float.class)
    public static final int ID_I_SAVE_IMPROV = 1728053427;

    @PropertyDefine(subscribe = "EnergyInfo/ISaveImprovAll", type = Float.class)
    public static final int ID_I_SAVE_IMPROV_ALL = 1728053428;

    @PropertyDefine(topic = "VehicleWindow/KeyIDInformation", type = Integer.class)
    public static final int ID_KEY_ID_INFORMATION = 1728053264;

    @PropertyDefine(publish = "DrivingInfo/LaneAssistIntervention2/Set", subscribe = "DrivingInfo/LaneAssistIntervention2", type = Integer.class)
    public static final int ID_LANE_ASSIST_INTERVENTION2 = 1728053377;

    @PropertyDefine(publish = "BodyInfo/LateralAcceleration/Set", subscribe = "BodyInfo/LateralAcceleration", type = String.class)
    public static final int ID_LATERAL_ACCELERATION = 1728053532;

    @PropertyDefine(publish = "GPS/LatitudeType/Set", type = Integer.class)
    public static final int ID_LATITUDE_TYPE = 1728053550;

    @PropertyDefine(publish = "BodyInfo/LHFPulseCounter/Set", subscribe = "BodyInfo/LHFPulseCounter", type = Integer.class)
    public static final int ID_LHF_PULSE_COUNTER = 1728053369;

    @PropertyDefine(publish = "BodyInfo/LHFPulseCounterFailSts/Set", subscribe = "BodyInfo/LHFPulseCounterFailSts", type = Integer.class)
    public static final int ID_LHF_PULSE_COUNTER_FAIL = 1728053370;

    @PropertyDefine(publish = "BodyInfo/LHRPulseCounter/Set", subscribe = "BodyInfo/LHRPulseCounter", type = Integer.class)
    public static final int ID_LHR_PULSE_COUNTER = 1728053371;

    @PropertyDefine(publish = "BodyInfo/LHRPulseCounterFailSts/Set", subscribe = "BodyInfo/LHRPulseCounterFailSts", type = Integer.class)
    public static final int ID_LHR_PULSE_COUNTER_FAIL = 1728053372;

    @PropertyDefine(subscribe = "APA/LHTurnlightSts", type = Integer.class)
    public static final int ID_LHTURN_LIGHT = 1728053446;

    @PropertyDefine(subscribe = "APA/DirectionIndLeft", type = Integer.class)
    public static final int ID_LHTURN_LIGHT_STEADILY = 1728053490;

    @PropertyDefine(publish = "GPS/LongitudeType/Set", type = Integer.class)
    public static final int ID_LONGITUDE_TYPE = 1728053548;

    @PropertyDefine(publish = "BodyInfo/LongitudinalAcceleration/Set", subscribe = "BodyInfo/LongitudinalAcceleration", type = String.class)
    public static final int ID_LONGITUDINAL_ACCELERATION = 1728053533;

    @PropertyDefine(subscribe = "DrivingInfo/MaintenanceCount", type = Integer.class)
    public static final int ID_MAINTENANCE_COUNT = 1728053424;

    @PropertyDefine(publish = "MIC/DTC/resp", subscribe = "MIC/DTC/req", type = Byte.class)
    public static final int ID_MIC_TEST = 1728053457;

    @PropertyDefine(publish = "DVD/ModeKeyFunctionType/Set", type = Integer.class)
    public static final int ID_MODE_KEY_FUNCTION_TYPE = 1728053361;

    @PropertyDefine(publish = "DVD/ModeKeySts/Set", type = Integer.class)
    public static final int ID_MODE_KEY_STS = 1728053362;

    @PropertyDefine(publish = "MusicShow/LHM/Set", type = Integer.class)
    public static final int ID_MUSIC_SHOW_LHM = 1728053312;

    @PropertyDefine(publish = "MusicShow/RHM/Set", subscribe = "MusicShow/RHM/Set", type = Integer.class)
    public static final int ID_MUSIC_SHOW_RHM = 1728053313;

    @PropertyDefine(publish = "OTA/Antitheft/Status/Set", subscribe = "OTA/Antitheft/Status", type = Integer.class)
    public static final int ID_OTA_ANTITHEFT_STATUS = 1728053521;

    @PropertyDefine(publish = "OTA/ArmingSts/Set", subscribe = "OTA/ArmingSts", type = Integer.class)
    public static final int ID_OTA_ARMING_STATUS = 1728053555;

    @PropertyDefine(publish = "EngineCandata/BatteryVoltage/Set", subscribe = "EngineCandata/BatteryVoltage", type = Float.class)
    public static final int ID_OTA_BATTERY_VOLTAGE = 1728053556;

    @PropertyDefine(publish = "OTA/DriverDoorSts/Set", subscribe = "OTA/DriverDoorSts", type = Integer.class)
    public static final int ID_OTA_DOOR_STATUS = 1728053553;

    @PropertyDefine(publish = "OTA/ECallMode/Set", subscribe = "OTA/ECallMode", type = Integer.class)
    public static final int ID_OTA_ECALL_STATUS = 1728053557;

    @PropertyDefine(publish = "OTA/DriverSeatBeltSwitch/Set", subscribe = "OTA/DriverSeatBeltSwitch", type = Integer.class)
    public static final int ID_OTA_SEAT_BELT_LOCK = 1728053554;

    @PropertyDefine(publish = "SIC/OTASts/Set", subscribe = "SIC/OTASts", type = Integer.class)
    public static final int ID_OTA_STS = 1728053535;

    @PropertyDefine(publish = "ABM/PabSetsts/Set", subscribe = "ABM/PabSetsts", type = Integer.class)
    public static final int ID_PAB_SET = 1728053325;

    @PropertyDefine(topic = "AC/Setting/PanelKeyVoiceRemind", type = Integer.class)
    public static final int ID_PANEL_KEY_VOICE_REMIND = 1728053293;

    @PropertyDefine(publish = "ADAS/ParkingMemory/Set", subscribe = "ADAS/ParkingMemory", type = Integer.class)
    public static final int ID_PARKING_MEMORY = 1728053356;

    @PropertyDefine(subscribe = "Light/ParkLightSts", type = Integer.class)
    public static final int ID_PARK_LIGHT = 1728053448;

    @PropertyDefine(publish = "BodyInfo/PassengerAirbag/Set", subscribe = "BodyInfo/PassengerAirbag", type = Integer.class)
    public static final int ID_PASSENGER_AIRBAG = 1728053292;

    @PropertyDefine(publish = "PetInfo/reevPetWarn/Set", type = Integer.class)
    public static final int ID_PETINFO_REEVPETWARN = 1728053528;

    @PropertyDefine(subscribe = "PetMode/LowVol", type = Integer.class)
    public static final int ID_PETMODE_LOW_VOL = 1728053529;

    @PropertyDefine(publish = "OTA/HvReadyPHEV/Set", subscribe = "OTA/HvReadyPHEV", type = Integer.class)
    public static final int ID_PHEV_READY = 1728053551;

    @PropertyDefine(topic = "EngineCandata/PLG_PositionSts", type = Integer.class)
    public static final int ID_PLG_POSITION_STS = 1728053274;

    @PropertyDefine(topic = "Telltale/PowerEvHevPHEV", type = Integer.class)
    public static final int ID_POWER_EV_HEV_PHEV = 1728053260;

    @PropertyDefine(topic = "Telltale/PowerHvReadyPHEV", type = Integer.class)
    public static final int ID_POWER_HV_READY_PHEV = 1728053262;

    @PropertyDefine(publish = "PPMI/PpmiBsrbpasts/Set", subscribe = "PPMI/PpmiBsrbpasts", type = Integer.class)
    public static final int ID_PPMI_BSRBPASTS = 1728053323;

    @PropertyDefine(publish = "PPMI/PpmiHWsts/Set", subscribe = "PPMI/PpmiHWsts", type = Integer.class)
    public static final int ID_PPMI_HW = 1728053324;

    @PropertyDefine(topic = "Warning/DoorOpen/PsngrDoor", type = Integer.class)
    public static final int ID_PSNGR_DOOR = 1728053277;

    @PropertyDefine(subscribe = "T1CF1/PTReadySts", type = Integer.class)
    public static final int ID_PTREADY_STS = 1728053491;

    @PropertyDefine(topic = "Telltale/PtReadyPHEVInfo", type = Integer.class)
    public static final int ID_PT_READY_CHIME_PHEV = 1728053261;

    @PropertyDefine(subscribe = "QNX/AvmImgDetectLowRiskMsg", type = Integer.class)
    public static final int ID_QNX_DETECT_LOW_RISK_MSG = 1728053512;

    @PropertyDefine(changeMode = 2, subscribe = "QNX/TTSTextInfo", type = String.class)
    public static final int ID_QNX_TTS_TEXT_INFO = 1728053391;

    @PropertyDefine(topic = "Warning/DoorOpen/LHRdoor", type = Integer.class)
    public static final int ID_REAR_LEFT_DOOR = 1728053278;

    @PropertyDefine(topic = "Warning/DoorOpen/RHRDoor", type = Integer.class)
    public static final int ID_REAR_RIGHT_DOOR = 1728053279;

    @PropertyDefine(subscribe = "AC/RfgtLkDisplay", type = Integer.class)
    public static final int ID_REFRIGERANT_LEAK_DISPLAY = 1728053295;

    @PropertyDefine(publish = "ADAS/RelativeSpeedLimit/Set", subscribe = "ADAS/RelativeSpeedLimit", type = Integer.class)
    public static final int ID_RELATIVE_SPEED_LIMIT = 1728053359;

    @PropertyDefine(publish = "BodyInfo/RHFPulseCounter/Set", subscribe = "BodyInfo/RHFPulseCounter", type = Integer.class)
    public static final int ID_RHF_PULSE_COUNTER = 1728053373;

    @PropertyDefine(publish = "BodyInfo/RHFPulseCounterFailSts/Set", subscribe = "BodyInfo/RHFPulseCounterFailSts", type = Integer.class)
    public static final int ID_RHF_PULSE_COUNTER_FAIL = 1728053374;

    @PropertyDefine(publish = "BodyInfo/RHRPulseCounter/Set", subscribe = "BodyInfo/RHRPulseCounter", type = Integer.class)
    public static final int ID_RHR_PULSE_COUNTER = 1728053375;

    @PropertyDefine(publish = "BodyInfo/RHRPulseCounterFailSts/Set", subscribe = "BodyInfo/RHRPulseCounterFailSts", type = Integer.class)
    public static final int ID_RHR_PULSE_COUNTER_FAIL = 1728053376;

    @PropertyDefine(subscribe = "APA/RHTurnlightSts", type = Integer.class)
    public static final int ID_RHTURN_LIGHT = 1728053445;

    @PropertyDefine(subscribe = "APA/DirectionIndRight", type = Integer.class)
    public static final int ID_RHTURN_LIGHT_STEADILY = 1728053489;

    @PropertyDefine(publish = "RLCR/RlcrRaebonoffsts/Set", subscribe = "RLCR/RlcrRaebonoffsts", type = Integer.class)
    public static final int ID_RLCR_RAEB = 1728053329;

    @PropertyDefine(topic = "EnergyInfo/RsvTravel", type = Integer.class)
    public static final int ID_RSV_TRAVEL = 1728053257;

    @PropertyDefine(topic = "EnergyInfo/RsvTravelHour", type = Integer.class)
    public static final int ID_RSV_TRAVEL_HOUR = 1728053258;

    @PropertyDefine(topic = "EnergyInfo/RsvTravelMin", type = Integer.class)
    public static final int ID_RSV_TRAVEL_MIN = 1728053259;

    @PropertyDefine(publish = "EnergyInfo/RsvTravelWeek/Set", subscribe = "EnergyInfo/RsvTravelWeek", type = Integer.class)
    public static final int ID_RSV_TRAVEL_WEEK = 1728053296;

    @PropertyDefine(subscribe = "EngineCandata/DriverSeatBeltWarning", type = Integer.class)
    public static final int ID_SEATS_BELT_DRIVER = 1728053365;

    @PropertyDefine(subscribe = "EngineCandata/PsngrSeatBeltWarning", type = Integer.class)
    public static final int ID_SEATS_BELT_PASSENGER = 1728053366;

    @PropertyDefine(topic = "VehicleWindow/SeatRotationAngleAdjust/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE_FRONT_LEFT = 1728053339;

    @PropertyDefine(topic = "VehicleWindow/SeatRotationAngleAdjust/FrontRight", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE_FRONT_RIGHT = 1728053338;

    @PropertyDefine(topic = "VehicleWindow/SeatRotationAngleAdjust/RearLeft", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE_REAR_LEFT = 1728053341;

    @PropertyDefine(topic = "VehicleWindow/SeatRotationAngleAdjust/RearRight", type = Integer.class)
    public static final int ID_SEAT_BACK_REST_ANGLE_REAR_RIGHT = 1728053340;

    @PropertyDefine(topic = "AC/SeatMassageLevel/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_DRIVER_MASSAGE_LEVEL = 1728053348;

    @PropertyDefine(topic = "AC/SeatMassageMode/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_DRIVER_MASSAGE_MODE = 1728053350;

    @PropertyDefine(subscribe = "AC/VoiceSeatHeating/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_HEAT_FRONT_LEFT_REQUEST = 1728053386;

    @PropertyDefine(subscribe = "AC/VoiceSeatHeating/FrontRight", type = Integer.class)
    public static final int ID_SEAT_HEAT_FRONT_RIGHT_REQUEST = 1728053387;

    @PropertyDefine(topic = "AC/SeatMemory/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_MEMORY_FRONT_LEFT = 1728053343;

    @PropertyDefine(topic = "AC/SeatMemory/FrontRight", type = Integer.class)
    public static final int ID_SEAT_MEMORY_FRONT_RIGHT = 1728053344;

    @PropertyDefine(subscribe = "VehicleWindow/SeatAndRearMirrorMemoryEnable", type = Integer.class)
    public static final int ID_SEAT_MIRROR_MEMORY = 1728053301;

    @PropertyDefine(publish = "VehicleWindow/SeatAndRearMirrorMemoryReqId/Set", type = Integer.class)
    public static final int ID_SEAT_MIRROR_MEMORY_ALLOW = 1728053302;

    @PropertyDefine(topic = "AC/SeatMassageLevel/FrontRight", type = Integer.class)
    public static final int ID_SEAT_PASS_MASSAGE_LEVEL = 1728053349;

    @PropertyDefine(topic = "AC/SeatMassageMode/FrontRight", type = Integer.class)
    public static final int ID_SEAT_PASS_MASSAGE_MODE = 1728053351;

    @PropertyDefine(subscribe = "Seat/FrontLeft/PositionSts", type = Integer.class)
    public static final int ID_SEAT_POSITION_STS = 1728053476;

    @PropertyDefine(subscribe = "Seat/FrontLeft/SeatRecoverSts", type = Integer.class)
    public static final int ID_SEAT_RECOVER_STS = 1728053474;

    @PropertyDefine(publish = "Seat/RelateKeyOrFace/Set", subscribe = "Seat/RelateKeyOrFace", type = Integer.class)
    public static final int ID_SEAT_RELATE_KEY = 1728053441;

    @PropertyDefine(subscribe = "Seat/FrontLeft/SelectPositionSts", type = Integer.class)
    public static final int ID_SEAT_SELECT_POSITION_STS = 1728053475;

    @PropertyDefine(subscribe = "AC/VoiceSeatVentilation/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_VENT_FRONT_LEFT_REQUEST = 1728053388;

    @PropertyDefine(subscribe = "AC/VoiceSeatVentilation/FrontRight", type = Integer.class)
    public static final int ID_SEAT_VENT_FRONT_RIGHT_REQUEST = 1728053389;

    @PropertyDefine(topic = "VehicleWindow/SeatForeBackAdjust/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION_FRONT_LEFT = 1728053333;

    @PropertyDefine(topic = "VehicleWindow/SeatForeBackAdjust/FrontRight", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION_FRONT_RIGHT = 1728053332;

    @PropertyDefine(topic = "VehicleWindow/SeatForeBackAdjust/RearLeft", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION_REAR_LEFT = 1728053335;

    @PropertyDefine(topic = "VehicleWindow/SeatForeBackAdjust/RearRight", type = Integer.class)
    public static final int ID_SEAT_X_DIRECTION_REAR_RIGHT = 1728053334;

    @PropertyDefine(topic = "VehicleWindow/SeatUpDownAdjust/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_Z_DIRECTION_FRONT_LEFT = 1728053336;

    @PropertyDefine(topic = "VehicleWindow/SeatUpDownAdjust/FrontRight", type = Integer.class)
    public static final int ID_SEAT_Z_DIRECTION_FRONT_RIGHT = 1728053337;

    @PropertyDefine(subscribe = "AC/SecondRowDisplay", type = Integer.class)
    public static final int ID_SECOND_ROW_DISPLAY = 1728053383;

    @PropertyDefine(publish = "Sentinel/HV/Req/Set", subscribe = "Sentinel/HV/Req", type = Integer.class)
    public static final int ID_SENTINEL_HV = 1728053522;

    @PropertyDefine(publish = "Sentinel/Mode/Set", subscribe = "Sentinel/Mode", type = Integer.class)
    public static final int ID_SENTINEL_MODE = 1728053519;

    @PropertyDefine(publish = "Sentinel/Mode/Alarm/Set", subscribe = "Sentinel/Mode/Alarm", type = Integer.class)
    public static final int ID_SENTINEL_MODE_ALARM = 1728053517;

    @PropertyDefine(publish = "ICC_SentinelModeInfo/notifySentinelModeAlarmSts", subscribe = "BodyInfo/SentinelModeAlarmSts", type = Integer.class)
    public static final int ID_SENTINEL_MODE_ALARM_STATUS = 1728053513;

    @PropertyDefine(publish = "Sentinel/Mode/Awake/Set", type = Integer.class)
    public static final int ID_SENTINEL_MODE_AWAKE = 1728053530;

    @PropertyDefine(publish = "Sentinel/Mode/Exit/Set", subscribe = "Sentinel/Mode/Exit", type = Integer.class)
    public static final int ID_SENTINEL_MODE_EXIT_REASON = 1728053518;

    @PropertyDefine(publish = "Sentinel/Mode/Fault/Set", subscribe = "Sentinel/Mode/Fault", type = Integer.class)
    public static final int ID_SENTINEL_MODE_FAULT = 1728053516;

    @PropertyDefine(publish = "Sentinel/Mode/Switch/Set", subscribe = "Sentinel/Mode/Switch", type = Integer.class)
    public static final int ID_SENTINEL_MODE_SWITCH = 1728053514;

    @PropertyDefine(publish = "Sentinel/Mode/Working/Set", subscribe = "Sentinel/Mode/Working", type = Integer.class)
    public static final int ID_SENTINEL_MODE_WORKING = 1728053515;

    @PropertyDefine(publish = "Sentinel/Request/Set", subscribe = "Sentinel/Request", type = Integer.class)
    public static final int ID_SENTINEL_REQUEST = 1728053520;

    @PropertyDefine(topic = "BodyInfo/Sentinel/SentinelSensitivity", type = Integer.class)
    public static final int ID_SENTINEL_SENSITIVITY = 1728053464;

    @PropertyDefine(topic = "BodyInfo/Sentinel/SentinelAlarmMode", type = Integer.class)
    public static final int ID_SENTINEL_SENTINEL_ALARM_MODE = 1728053467;

    @PropertyDefine(topic = "BodyInfo/Sentinel/SentinelFaultMode", type = Integer.class)
    public static final int ID_SENTINEL_SENTINEL_FAULT_MODE = 1728053466;

    @PropertyDefine(topic = "BodyInfo/Sentinel/SentinelWorkingMode", type = Integer.class)
    public static final int ID_SENTINEL_SENTINEL_WORKING_MODE = 1728053465;

    @PropertyDefine(changeMode = 2, topic = "BodyInfo/SentryPositionInfo/Req", type = Integer.class)
    public static final int ID_SENTINEL_SENTRY_POSITION_REQ = 1728053468;

    @PropertyDefine(topic = "BodyInfo/SentinelStateInfo", type = Integer.class)
    public static final int ID_SENTINEL_STATE = 1728053469;

    @PropertyDefine(topic = "BodyInfo/SentryNegativeScreen", type = Integer.class)
    public static final int ID_SENTRY_NEGATIVE_SCREEN = 1728053470;

    @PropertyDefine(subscribe = "AC/SeatHeatingSHU/FrontLeft", type = Integer.class)
    public static final int ID_SHU_SEAT_HEAT_FRONT_LEFT = 1728053433;

    @PropertyDefine(subscribe = "AC/SeatHeatingSHU/FrontRight", type = Integer.class)
    public static final int ID_SHU_SEAT_HEAT_FRONT_RIGHT = 1728053434;

    @PropertyDefine(subscribe = "AC/SeatVentilationSHU/FrontLeft", type = Integer.class)
    public static final int ID_SHU_SEAT_VENT_FRONT_LEFT = 1728053435;

    @PropertyDefine(subscribe = "AC/SeatVentilationSHU/FrontRight", type = Integer.class)
    public static final int ID_SHU_SEAT_VENT_FRONT_RIGHT = 1728053436;

    @PropertyDefine(publish = "EnergyInfo/SocDisp/Set", subscribe = "EnergyInfo/SocDisp", type = Float.class)
    public static final int ID_SOC_DISP = 1728053299;

    @PropertyDefine(subscribe = "ENC/SocDis", type = Float.class)
    public static final int ID_SOC_DISPLAY = 1728053499;

    @PropertyDefine(topic = "EnergyInfo/SOCManage", type = Integer.class)
    public static final int ID_SOC_MANAGE = 1728053254;

    @PropertyDefine(publish = "SOC/RangeType/Set", subscribe = "SOC/RangeType", type = Integer.class)
    public static final int ID_SOC_RANGE_TYPE = 1728053363;

    @PropertyDefine(publish = "SOC/Real/Set", subscribe = "SOC/Real", type = Integer.class)
    public static final int ID_SOC_REAL = 1728053526;

    @PropertyDefine(topic = "EnergyInfo/SOH", type = Integer.class)
    public static final int ID_SOH = 1728053255;

    @PropertyDefine(publish = "T1CF1/SpecialParkingMode/Set", subscribe = "T1CF1/SpecialParkingMode", type = Integer.class)
    public static final int ID_SPECIAL_PARKING_MODE = 1728053347;

    @PropertyDefine(publish = "ADAS/SpeedLimitChange/Set", subscribe = "ADAS/SpeedLimitChange", type = Integer.class)
    public static final int ID_SPEED_LIMIT_CHANGE = 1728053400;

    @PropertyDefine(publish = "ADAS/SpeedLimitOffset/Set", subscribe = "ADAS/SpeedLimitOffset", type = Integer.class)
    public static final int ID_SPEED_LIMIT_OFFSET = 1728053358;

    @PropertyDefine(publish = "ADAS/SpeedReductionAssist/Set", subscribe = "ADAS/SpeedReductionAssist", type = Integer.class)
    public static final int ID_SPEED_REDUCTION_ASSIST = 1728053459;

    @PropertyDefine(publish = "BodyInfo/SteeringAngle/Set", subscribe = "BodyInfo/SteeringAngle", type = Float.class)
    public static final int ID_STEERING_ANGLE = 1728053367;

    @PropertyDefine(publish = "BodyInfo/SteeringAngleValidData/Set", subscribe = "BodyInfo/SteeringAngleValidData", type = Integer.class)
    public static final int ID_STEERING_ANGLE_VALID_DATA = 1728053368;

    @PropertyDefine(subscribe = "AC/VoiceSteeringWheelHeating", type = Integer.class)
    public static final int ID_STEERING_HEAT_REQUEST = 1728053385;

    @PropertyDefine(publish = "System/TimeZone/Set", subscribe = "System/TimeZone", type = String.class)
    public static final int ID_SYSTEM_TIMEZONE = 1728053404;

    @PropertyDefine(publish = "EnergyInfo/ScheduledT19CChargeTimeInfo/Set", type = String.class)
    public static final int ID_T19C_CHARGE_SCHEDULE = 1728053504;

    @PropertyDefine(publish = "EnergyInfo/RsvT19CTravelInfo/Set", type = String.class)
    public static final int ID_T19C_TRAVEL_SET = 1728053510;

    @PropertyDefine(subscribe = "TBOX/SentinelModeSw", type = Integer.class)
    public static final int ID_TBOX_SENTINEL_MODE_SW = 1728053524;

    @PropertyDefine(changeMode = 2, topic = "Test/App/Query", type = Integer.class)
    public static final int ID_TEST_APP_QUERY = 1728053394;

    @PropertyDefine(subscribe = "AC/ThirdRowDisplay", type = Integer.class)
    public static final int ID_THIRD_ROW_DISPLAY = 1728053384;

    @PropertyDefine(publish = "NorthstarTPMS/KpaUnit/Set", subscribe = "NorthstarTPMS/KpaUnit", type = Integer.class)
    public static final int ID_TIRE_KPA_UNIT = 1728053353;

    @PropertyDefine(publish = "T1CF1/TowMode/Set", subscribe = "T1CF1/TowMode", type = Integer.class)
    public static final int ID_TOW_MODE = 1728053500;

    @PropertyDefine(subscribe = "EnergyInfo/RsvTraveCbSts", type = Integer.class)
    public static final int ID_TRAVEL_SWITCH1 = 1728053508;

    @PropertyDefine(subscribe = "EnergyInfo/RsvTraveCbSts2", type = Integer.class)
    public static final int ID_TRAVEL_SWITCH2 = 1728053509;

    @PropertyDefine(subscribe = "EnergyInfo/RsvTravelHour2", type = Integer.class)
    public static final int ID_TRAVEL_TIME_HOUR2 = 1728053506;

    @PropertyDefine(subscribe = "EnergyInfo/RsvTravelMin2", type = Integer.class)
    public static final int ID_TRAVEL_TIME_MINUTE2 = 1728053507;

    @PropertyDefine(subscribe = "EnergyInfo/RsvTravelWeek2", type = Integer.class)
    public static final int ID_TRAVEL_TIME_WEEK2 = 1728053505;

    @PropertyDefine(publish = "DrivingInfo/TripUnit/Set", subscribe = "DrivingInfo/TripUnit", type = Integer.class)
    public static final int ID_TRIP_UNIT = 1728053403;

    @PropertyDefine(subscribe = "PHEVVehicleWheel/TyrePressure/FrontLeft", type = Integer.class)
    public static final int ID_TYRE_PRESSURE_FRONT_LEFT = 1728053307;

    @PropertyDefine(subscribe = "PHEVVehicleWheel/TyrePressure/FrontRight", type = Integer.class)
    public static final int ID_TYRE_PRESSURE_FRONT_RIGHT = 1728053308;

    @PropertyDefine(subscribe = "PHEVVehicleWheel/TyrePressure/RearLeft", type = Integer.class)
    public static final int ID_TYRE_PRESSURE_REAR_LEFT = 1728053309;

    @PropertyDefine(subscribe = "PHEVVehicleWheel/TyrePressure/RearRight", type = Integer.class)
    public static final int ID_TYRE_PRESSURE_REAR_RIGHT = 1728053310;

    @PropertyDefine(changeMode = 2, topic = "Usb/Mode/Query", type = Integer.class)
    public static final int ID_USB_MODE_QUERY = 1728053392;

    @PropertyDefine(changeMode = 2, topic = "Usb/Mode/Switch", type = Integer.class)
    public static final int ID_USB_MODE_SWITCH = 1728053393;

    @PropertyDefine(subscribe = "OTA/VCUHvReady", type = Integer.class)
    public static final int ID_VCU_HV_READY = 1728053511;

    @PropertyDefine(publish = "OTA/VCUHvReady/Set", subscribe = "OTA/VCUHvReady", type = Integer.class)
    public static final int ID_VCU_READY = 1728053552;

    @PropertyDefine(subscribe = "DrivingInfo/MaintenanceMileageHev", type = Integer.class)
    public static final int ID_VEHICLE_MAINTENANCE_REMAIN_MILEAGE_HEV = 1728053423;

    @PropertyDefine(subscribe = "Vehicle/Mode", type = Integer.class)
    public static final int ID_VEHICLE_MODE = 1728053439;

    @PropertyDefine(publish = "VehicleWindow/WindowAll/Set", subscribe = "VehicleWindow/WindowAll", type = Integer.class)
    public static final int ID_VEHICLE_WINDOW_OPEN = 1728053300;

    @PropertyDefine(subscribe = "AC/WindLevel/AutoSts", type = Integer.class)
    public static final int ID_WIND_LEVEL_AUTO_STS = 1728053455;

    @PropertyDefine(publish = "BCM/WiprSnvtySetFb/Set", subscribe = "BCM/WiprSnvtySetFb", type = Integer.class)
    public static final int ID_WIPR_SNVTY_SET_FB = 1728053326;

    @PropertyDefine(publish = "BodyInfo/TempWarning/Status/Set", subscribe = "BodyInfo/TempWarning/Status", type = Integer.class)
    public static final int ID_WIRELESS_CHARGING_TEMP_WARNING = 1728053458;

    @PropertyDefine(publish = "AC/ZeroGravitySts/Set", subscribe = "AC/ZeroGravitySts", type = Integer.class)
    public static final int ID_ZERO_GRAVITY_STS = 1728053471;

    @PropertyDefine(subscribe = "AC/ZeroGravityWarn", type = Integer.class)
    public static final int ID_ZERO_GRAVITY_WARN = 1728053472;
    public static final int MGR_ID = 103;

    @PropertyDefine(topic = "Navigation/NavMapSwitch", type = Integer.class)
    public static final int NAV_MAP_SWITCH = 1728053285;
    public static final String PERMISSION = "mega.car.permission.VEHICLE_CONTROL";

    @PropertyDefine(topic = "VehicleWindow/SeatAndRearMirrorMemoryReq", type = Integer.class)
    public static final int SEAT_AND_REAR_MIRROR_MEMORY_REQ = 1728053266;

    @PropertyDefine(topic = "VehicleWindow/SeatAndRearMirrorMemorySts", type = Integer.class)
    public static final int SEAT_AND_REAR_MIRROR_MEMORY_STS = 1728053265;

    @PropertyDefine(topic = "VehicleWindow/SeatAndRearMirrorPositionMemory", type = Integer.class)
    public static final int SEAT_AND_REAR_MIRROR_POSITION_MEMORY = 1728053253;

    @PropertyDefine(topic = "Sensor/StsFailOfTemperature", type = Integer.class)
    public static final int SENSOR_STSFAILOFTEMPERATURE = 1728053282;

    @PropertyDefine(topic = "Sensor/UnitOfTemperature", type = Integer.class)
    public static final int SENSOR_UNITOFTEMPERATURE = 1728053281;

    @PropertyDefine(topic = "Voice/QnxAutoMap", type = Integer.class)
    public static final int VOICE_QNX_AUTOMAP = 1728053284;
}
