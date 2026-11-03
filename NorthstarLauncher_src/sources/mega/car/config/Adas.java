package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 13, permission = "mega.car.permission.ADAS")
public interface Adas {
    public static final int ADAS_TSR_FRONT_OFF_RAMP_DISTANCE = 218103832;

    @PropertyDefine(publish = "ADAS/ACCMode/Set", subscribe = "ADAS/ACCMode", type = Integer.class)
    public static final int ID_ACC_MODE = 218103882;

    @PropertyDefine(publish = "ADAS/ACCTimeGap/Set", subscribe = "ADAS/ACCTimeGap", type = Integer.class)
    public static final int ID_ACC_TIME_GAP = 218103931;

    @PropertyDefine(publish = "ADAS/ACCVehicleStartRemindSts/Set", subscribe = "ADAS/ACCVehicleStartRemindSts", type = Integer.class)
    public static final int ID_ACC_VEHICLE_START_REMIND = 218103890;

    @PropertyDefine(publish = "ADAS/AdasAccDispSts/Set", subscribe = "ADAS/AdasAccDispSts", type = Integer.class)
    public static final int ID_ADAS_ACC_DISPSTS = 218103905;

    @PropertyDefine(publish = "ADAS/AdasAccTargetSpeed/Set", subscribe = "ADAS/AdasAccTargetSpeed", type = Integer.class)
    public static final int ID_ADAS_ACC_TARGETSPEED = 218103913;

    @PropertyDefine(publish = "ADAS/AEBSwitch/Set", subscribe = "ADAS/AEBSwitch", type = Integer.class)
    public static final int ID_ADAS_AEB_AUTO_EMERGENCY_BRAKING_CONFIG = 218103814;

    @PropertyDefine(publish = "ADAS/AdasAllowSpeedPercent/Set", subscribe = "ADAS/AdasAllowSpeedPercent", type = Integer.class)
    public static final int ID_ADAS_ALLOW_SPEED_PERCENT = 218103916;

    @PropertyDefine(publish = "ADAS/BsdConfig/Set", subscribe = "ADAS/BsdConfig", type = Integer.class)
    public static final int ID_ADAS_BSD_CONFIG = 218103815;

    @PropertyDefine(publish = "ADAS/IACCEnable/Set", subscribe = "ADAS/IACCEnable", type = Integer.class)
    public static final int ID_ADAS_CRUISE_MODE_CONFIG = 218103819;

    @PropertyDefine(publish = "ADAS/DoorOpenWarning/Set", subscribe = "ADAS/DoorOpenWarning", type = Integer.class)
    public static final int ID_ADAS_DOOR_OPEN_WARNING_CONFIG = 218103835;

    @PropertyDefine(publish = "ADAS/DoorOpenWarningVoice/Set", subscribe = "ADAS/DoorOpenWarningVoice", type = Integer.class)
    public static final int ID_ADAS_DOOR_OPEN_WARNING_VOICE = 218103856;

    @PropertyDefine(publish = "ADAS/AdasElkDispSts/Set", subscribe = "ADAS/AdasElkDispSts", type = Integer.class)
    public static final int ID_ADAS_ELK_DISPSTS = 218103912;

    @PropertyDefine(publish = "ADAS/EmergencyLaneKeeping/Set", subscribe = "ADAS/EmergencyLaneKeeping", type = Integer.class)
    public static final int ID_ADAS_EMERGENCY_LANE_KEEPING_CONFIG = 218103847;

    @PropertyDefine(publish = "ADAS/AdasEmergencySterringAssistConfig/Set", subscribe = "ADAS/AdasEmergencySterringAssistConfig", type = Integer.class)
    public static final int ID_ADAS_EMERGENCY_STEERING_ASSIST_CONFIG = 218103838;

    @PropertyDefine(publish = "ADAS/AdasFcwReq/Set", subscribe = "ADAS/AdasFcwReq", type = Integer.class)
    public static final int ID_ADAS_FCW_REQ = 218103904;

    @PropertyDefine(publish = "ADAS/FCWSensitivity/Set", subscribe = "ADAS/FCWSensitivity", type = Integer.class)
    public static final int ID_ADAS_FCW_SENSITIVITY_CONFIG = 218103870;

    @PropertyDefine(publish = "ADAS/ForwardCollisionWarning/Set", subscribe = "ADAS/ForwardCollisionWarning", type = Integer.class)
    public static final int ID_ADAS_FCW_SWITCH_CONFIG = 218103813;

    @PropertyDefine(publish = "ADAS/FCWDistance/Set", subscribe = "ADAS/FCWDistance", type = Integer.class)
    public static final int ID_ADAS_FCW_WARN_DISTANCE_CONFIG = 218103820;

    @PropertyDefine(publish = "ADAS/AdasForwardCrossingTrafficAlertingConfig/Set", subscribe = "ADAS/AdasForwardCrossingTrafficAlertingConfig", type = Integer.class)
    public static final int ID_ADAS_FORWARD_CROSSING_TRAFFIC_ALERTING_CONFIG = 218103836;

    @PropertyDefine(publish = "ADAS/AdasFrontVehicleStartReminderConfid/Set", subscribe = "ADAS/AdasFrontVehicleStartReminderConfid", type = Integer.class)
    public static final int ID_ADAS_FRONT_VEHICLE_START_REMINDER_CONFIG = 218103837;

    @PropertyDefine(publish = "ADAS/AdasFvsrWarn/Set", subscribe = "ADAS/AdasFvsrWarn", type = Integer.class)
    public static final int ID_ADAS_FVSR_WARN = 218103898;
    public static final int ID_ADAS_HMA_SWITCH_CONFIG = 218103812;
    public static final int ID_ADAS_IACC_CAMERA_AHEAD_DISTANCE = 218103824;
    public static final int ID_ADAS_IACC_LIMIT_SPEED = 218103821;
    public static final int ID_ADAS_IACC_LIMIT_SPEED_UNIT = 218103822;
    public static final int ID_ADAS_IACC_NAVI_CORP = 218103827;
    public static final int ID_ADAS_IACC_NAVI_NEW_ICON_REMAIN_DISTANCE = 218103830;
    public static final int ID_ADAS_IACC_NAVI_NEW_ICON_TYPE = 218103831;
    public static final int ID_ADAS_IACC_NAVI_STATUS = 218103828;
    public static final int ID_ADAS_IACC_OFF_RAMP_STATUS = 218103817;
    public static final int ID_ADAS_IACC_REST_DISTANCE_ON_ISD = 218103823;
    public static final int ID_ADAS_IACC_ROAD_TYPE = 218103825;

    @PropertyDefine(publish = "ADAS/AutoAdjustCruiseSpeed/Set", subscribe = "ADAS/AutoAdjustCruiseSpeed", type = Integer.class)
    public static final int ID_ADAS_IACC_SPEED_LIMIT_TYPE = 218103826;
    public static final int ID_ADAS_IACC_ZONE_CODE = 218103829;

    @PropertyDefine(publish = "ADAS/AdasIcaDispSts/Set", subscribe = "ADAS/AdasIcaDispSts", type = Integer.class)
    public static final int ID_ADAS_ICA_DISPSTS = 218103908;

    @PropertyDefine(publish = "ADAS/OverSpeedDeviation/Set", subscribe = "ADAS/OverSpeedDeviation", type = Integer.class)
    public static final int ID_ADAS_ISA_ALLOWOVERS_CONFIG = 218103853;

    @PropertyDefine(publish = "ADAS/AdasIsaConfig/Set", subscribe = "ADAS/AdasIsaConfig", type = Integer.class)
    public static final int ID_ADAS_ISA_CONFIG = 218103850;

    @PropertyDefine(publish = "ADAS/AdasIsaConfirmConfig/Set", subscribe = "ADAS/AdasIsaConfirmConfig", type = Integer.class)
    public static final int ID_ADAS_ISA_CONFIRM_CONFIG = 218103852;

    @PropertyDefine(publish = "ADAS/AdasIsLcConfig/Set", subscribe = "ADAS/AdasIsLcConfig", type = Integer.class)
    public static final int ID_ADAS_ISLC_CONFIG = 218103851;
    public static final int ID_ADAS_JUNCTION_ASSIST_CONFIG = 218103841;

    @PropertyDefine(publish = "ADAS/AdasLaneLineColorLeft/Set", subscribe = "ADAS/AdasLaneLineColorLeft", type = Integer.class)
    public static final int ID_ADAS_LANELINECOLOR_LEFT = 218103899;

    @PropertyDefine(publish = "ADAS/AdasLaneLineColorRight/Set", subscribe = "ADAS/AdasLaneLineColorRight", type = Integer.class)
    public static final int ID_ADAS_LANELINECOLOR_RIGHT = 218103900;

    @PropertyDefine(publish = "ADAS/LaneAssistSystem/Set", subscribe = "ADAS/LaneAssistSystem", type = Integer.class)
    public static final int ID_ADAS_LANE_AID_TYPE_REQUEST_CONFIG = 218103818;

    @PropertyDefine(publish = "ADAS/LaneChangeAssistMode/Set", subscribe = "ADAS/LaneChangeAssistMode", type = Integer.class)
    public static final int ID_ADAS_LANE_CHANGE_ASSIST_CONFIG = 218103834;
    public static final int ID_ADAS_LANE_DEPARTURE_SENSITIVITY_CONFIG = 218103840;

    @PropertyDefine(publish = "ADAS/LaneDepartueWarning/Set", subscribe = "ADAS/LaneDepartueWarning", type = Integer.class)
    public static final int ID_ADAS_LANE_DEPARTURE_WARNING_CONFIG = 218103839;
    public static final int ID_ADAS_LANE_KEEPING_ASSIST_CONFIG = 218103809;

    @PropertyDefine(publish = "ADAS/LCASensitivity/Set", subscribe = "ADAS/LCASensitivity", type = Integer.class)
    public static final int ID_ADAS_LCA_SENSITIVITY_CONFIG = 218103872;

    @PropertyDefine(publish = "ADAS/AdasLccHandsOffWarning/Set", subscribe = "ADAS/AdasLccHandsOffWarning", type = Integer.class)
    public static final int ID_ADAS_LCC_HANDSOFF_WARNING = 218103895;

    @PropertyDefine(publish = "ADAS/AdasLciNfor/Set", subscribe = "ADAS/AdasLciNfor", type = Integer.class)
    public static final int ID_ADAS_LCI_NFOR = 218103896;

    @PropertyDefine(publish = "ADAS/AdasLcDispSts/Set", subscribe = "ADAS/AdasLcDispSts", type = Integer.class)
    public static final int ID_ADAS_LC_DISP_STS = 218103894;

    @PropertyDefine(publish = "ADAS/AdasLcObstacle/Set", subscribe = "ADAS/AdasLcObstacle", type = Integer.class)
    public static final int ID_ADAS_LC_OBSTACLE_ID = 218103897;

    @PropertyDefine(publish = "ADAS/LDWFuncWarnModSet/Set", subscribe = "ADAS/LDWFuncWarnModSet", type = Integer.class)
    public static final int ID_ADAS_LDW_FUNCTWARNMOD_CONFIG = 218103871;

    @PropertyDefine(publish = "ADAS/AdasLkahAndOffWarn/Set", subscribe = "ADAS/AdasLkahAndOffWarn", type = Integer.class)
    public static final int ID_ADAS_LKAHANDOFF_WARN = 218103911;
    public static final int ID_ADAS_LKA_CONFIG = 218103849;
    public static final int ID_ADAS_MEB_CONFIG = 218103854;

    @PropertyDefine(publish = "ADAS/AdasMonSensitivitySw/Set", subscribe = "ADAS/AdasMonSensitivitySw", type = Integer.class)
    public static final int ID_ADAS_MON_SENSITIVITY_SW = 218103919;

    @PropertyDefine(publish = "ADAS/AdasMonSw/Set", subscribe = "ADAS/AdasMonSw", type = Integer.class)
    public static final int ID_ADAS_MON_SW = 218103918;

    @PropertyDefine(publish = "ADAS/AdasNavigationOnDrivingAssistConfig/Set", subscribe = "ADAS/AdasNavigationOnDrivingAssistConfig", type = Integer.class)
    public static final int ID_ADAS_NAVIGATION_ON_DRIVING_ASSIST_CONFIG = 218103842;

    @PropertyDefine(publish = "ADAS/NavCurrentRoadType/Set", subscribe = "ADAS/NavCurrentRoadType", type = Integer.class)
    public static final int ID_ADAS_NAV_CUR_ROAD_TYPE = 218103914;

    @PropertyDefine(publish = "ADAS/AdasNoaAlcConfirmConfig/Set", subscribe = "ADAS/AdasNoaAlcConfirmConfig", type = Integer.class)
    public static final int ID_ADAS_NOA_ALC_CONFIRM_CONFIG = 218103844;

    @PropertyDefine(publish = "ADAS/AdasNoaDispSts/Set", subscribe = "ADAS/AdasNoaDispSts", type = Integer.class)
    public static final int ID_ADAS_NOA_DISPSTS = 218103909;

    @PropertyDefine(publish = "ADAS/AdasNoaLowSpdAlcConfig/Set", subscribe = "ADAS/AdasNoaLowSpdAlcConfig", type = Integer.class)
    public static final int ID_ADAS_NOA_LOWSPD_ALC_CONFIG = 218103843;

    @PropertyDefine(publish = "ADAS/AdasNoaOverTakingBackAlcConfig/Set", subscribe = "ADAS/AdasNoaOverTakingBackAlcConfig", type = Integer.class)
    public static final int ID_ADAS_NOA_OVERTAKINGBACK_ALC_CONFIG = 218103845;

    @PropertyDefine(publish = "ADAS/AdasNoaWarningReq/Set", subscribe = "ADAS/AdasNoaWarningReq", type = Integer.class)
    public static final int ID_ADAS_NOA_WARNINGREQ = 218103910;
    public static final int ID_ADAS_NVSOBJMARK_ONOFF = 218103920;

    @PropertyDefine(publish = "ADAS/AdasOverspdAlert/Set", subscribe = "ADAS/AdasOverspdAlert", type = Integer.class)
    public static final int ID_ADAS_OVERSPD_ALERT = 218103907;

    @PropertyDefine(publish = "ADAS/AdasPebStarObj/Set", subscribe = "ADAS/AdasPebStarObj", type = Integer.class)
    public static final int ID_ADAS_PEB_STAROBJ_ID = 218103903;
    public static final int ID_ADAS_PERCEPT_LINEINFO = 218103902;
    public static final int ID_ADAS_PERCEPT_OBJINFO = 218103901;

    @PropertyDefine(publish = "ADAS/RearTransverseBrakeWarning/Set", subscribe = "ADAS/RearTransverseBrakeWarning", type = Integer.class)
    public static final int ID_ADAS_RCTA_CONFIG = 218103816;

    @PropertyDefine(publish = "ADAS/RearTransverseBrake/Set", subscribe = "ADAS/RearTransverseBrake", type = Integer.class)
    public static final int ID_ADAS_RCTB_CONFIG = 218103869;

    @PropertyDefine(publish = "ADAS/RearCollisionWarning/Set", subscribe = "ADAS/RearCollisionWarning", type = Integer.class)
    public static final int ID_ADAS_RCW_CONFIG = 218103848;

    @PropertyDefine(publish = "ADAS/AdasSpdDisplayValue/Set", subscribe = "ADAS/AdasSpdDisplayValue", type = Integer.class)
    public static final int ID_ADAS_SPD_DISPLAYVALUE = 218103906;

    @PropertyDefine(publish = "ADAS/ACCEnable/Set", subscribe = "ADAS/ACCEnable", type = Integer.class)
    public static final int ID_ADAS_STS_GEAR_SHIFT_LEVEL = 218103833;

    @PropertyDefine(publish = "ADAS/AdasTrafficLaneChangingConfig/Set", subscribe = "ADAS/AdasTrafficLaneChangingConfig", type = Integer.class)
    public static final int ID_ADAS_TRAFFIC_LANE_CHANGING_CONFIG = 218103846;

    @PropertyDefine(publish = "ADAS/TrafficLightAssist/Set", subscribe = "ADAS/TrafficLightAssist", type = Integer.class)
    public static final int ID_ADAS_TRAFFIC_LIGHT_ASSIST = 218103855;

    @PropertyDefine(publish = "ADAS/OverSpeedSoundWarning/Set", subscribe = "ADAS/OverSpeedSoundWarning", type = Integer.class)
    public static final int ID_ADAS_TSR_AUDIO_SWITCH_CONFIG = 218103811;

    @PropertyDefine(publish = "ADAS/TSRSwitch/Set", subscribe = "ADAS/TSRSwitch", type = Integer.class)
    public static final int ID_ADAS_TSR_SWITCH_CONFIG = 218103810;

    @PropertyDefine(publish = "ADAS/ADSVoiceRequest/Set", subscribe = "ADAS/ADSVoiceRequest", type = Integer.class)
    public static final int ID_ADS_VOICE_REQUEST = 218103887;

    @PropertyDefine(publish = "ADAS/AebDecActive/Set", subscribe = "ADAS/AebDecActive", type = Integer.class)
    public static final int ID_AEB_DEC_ACTIVE = 218103891;

    @PropertyDefine(publish = "ADAS/AssidDrvgStyle/Set", subscribe = "ADAS/AssidDrvgStyle", type = Integer.class)
    public static final int ID_ASSID_DRVG_STYLE = 218103925;

    @PropertyDefine(publish = "ADAS/DistanceWarning/Set", subscribe = "ADAS/DistanceWarning", type = Integer.class)
    public static final int ID_DISTANCE_WARNING = 218103932;

    @PropertyDefine(publish = "ADAS/FrontTransverseBrake/Set", subscribe = "ADAS/FrontTransverseBrake", type = Integer.class)
    public static final int ID_FRONT_TRANS_BRAKE = 218103865;

    @PropertyDefine(publish = "ADAS/FrontTransverseBrakeWarning/Set", subscribe = "ADAS/FrontTransverseBrakeWarning", type = Integer.class)
    public static final int ID_FRONT_TRANS_BRAKE_WARNING = 218103866;

    @PropertyDefine(publish = "ADAS/IACCHWAMode/Set", subscribe = "ADAS/IACCHWAMode", type = Integer.class)
    public static final int ID_IACC_HWA_MODE = 218103884;

    @PropertyDefine(publish = "ADAS/IACCMode/Set", subscribe = "ADAS/IACCMode", type = Integer.class)
    public static final int ID_IACC_MODE = 218103883;

    @PropertyDefine(publish = "ADAS/IsaIdentifyLowerSpeed/Set", subscribe = "ADAS/IsaIdentifyLowerSpeed", type = Integer.class)
    public static final int ID_ISA_IDENTIFY_LOWER_SPEED = 218103926;

    @PropertyDefine(publish = "ADAS/LaneChangeReq/Set", subscribe = "ADAS/LaneChangeReq", type = Integer.class)
    public static final int ID_LANE_CHANGE_REQ = 218103886;

    @PropertyDefine(publish = "ADAS/LowSpeedAEBEnable/Set", subscribe = "ADAS/LowSpeedAEBEnable", type = Integer.class)
    public static final int ID_LOW_SPEED_AUTO_EMERGENCY_BRAKE = 218103867;

    @PropertyDefine(publish = "ADAS/LowSpeedAEBNotice/Set", subscribe = "ADAS/LowSpeedAEBNotice", type = Integer.class)
    public static final int ID_LOW_SPEED_AUTO_EMERGENCY_BRAKE_WARN = 218103868;

    @PropertyDefine(publish = "ADAS/MFSIntegratedCruiseAssist/Action/Set", subscribe = "ADAS/MFSIntegratedCruiseAssist/Action", type = Integer.class)
    public static final int ID_MFS_TJA_ICA_ON_OFF = 218103929;

    @PropertyDefine(publish = "ADAS/NavDrvDangerWarEnable/Set", subscribe = "ADAS/NavDrvDangerWarEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_DANGER_WARN = 218103860;

    @PropertyDefine(publish = "ADAS/NavDrvHighWayAssistEnable/Set", subscribe = "ADAS/NavDrvHighWayAssistEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_HIGH_WAY_ASSIST = 218103863;

    @PropertyDefine(publish = "ADAS/NavDrvLaneChangeEnable/Set", subscribe = "ADAS/NavDrvLaneChangeEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_LANE_CHANGE = 218103858;

    @PropertyDefine(publish = "ADAS/NavDrvSafeWarEnable/Set", subscribe = "ADAS/NavDrvSafeWarEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_SAFE_WARN = 218103861;

    @PropertyDefine(publish = "ADAS/NavDrvSwitch/Set", subscribe = "ADAS/NavDrvSwitch", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_SWITCH = 218103857;

    @PropertyDefine(publish = "ADAS/TrafficJamAssistEnable/Set", subscribe = "ADAS/TrafficJamAssistEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_TRAFFIC_ASSIST = 218103864;

    @PropertyDefine(publish = "ADAS/NavDrvInfoBroadcastEnable/Set", subscribe = "ADAS/NavDrvInfoBroadcastEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_VOICE_BROADCAST = 218103862;

    @PropertyDefine(publish = "ADAS/NavDrvAudioWarEnable/Set", subscribe = "ADAS/NavDrvAudioWarEnable", type = Integer.class)
    public static final int ID_NAVIGATION_DRIVE_VOICE_ENABLE = 218103859;

    @PropertyDefine(publish = "ADAS/OverSpeedWarningThresholdOut/Set", subscribe = "ADAS/OverSpeedWarningThresholdOut", type = Integer.class)
    public static final int ID_OUT_OVER_SPEED_WARN_THRESHOLD = 218103924;

    @PropertyDefine(publish = "ADAS/OverSpeedWarning/Set", subscribe = "ADAS/OverSpeedWarning", type = Integer.class)
    public static final int ID_OVER_SPEED_WARN = 218103921;

    @PropertyDefine(publish = "ADAS/OverSpeedWarningThreshold/Set", subscribe = "ADAS/OverSpeedWarningThreshold", type = Integer.class)
    public static final int ID_OVER_SPEED_WARN_THRESHOLD = 218103922;

    @PropertyDefine(publish = "ADAS/SEAAlert/Set", subscribe = "ADAS/SEAAlert", type = Integer.class)
    public static final int ID_SEA_ALERT = 218103889;

    @PropertyDefine(publish = "ADAS/SEAAlert/Left/Set", subscribe = "ADAS/SEAAlert/Left", type = Integer.class)
    public static final int ID_SEA_ALERT_LEFT = 218103933;

    @PropertyDefine(publish = "ADAS/SEAAlert/Right/Set", subscribe = "ADAS/SEAAlert/Right", type = Integer.class)
    public static final int ID_SEA_ALERT_RIGHT = 218103934;

    @PropertyDefine(publish = "ADAS/SpeedLimitAssistant/Set", subscribe = "ADAS/SpeedLimitAssistant", type = Integer.class)
    public static final int ID_SPEED_LIMIT_ASSISTANT = 218103923;

    @PropertyDefine(publish = "ADAS/LimitDriveInteract/Set", subscribe = "ADAS/LimitDriveInteract", type = Integer.class)
    public static final int ID_SPEED_LIMIT_DRIVE_INTERACT = 218103927;

    @PropertyDefine(publish = "ADAS/TakeoverReqAtIPFail/Set", subscribe = "ADAS/TakeoverReqAtIPFail", type = Integer.class)
    public static final int ID_TAKEOVER_AT_FAIL = 218103888;

    @PropertyDefine(publish = "ADAS/TJAIntegratedCruiseAssist/Mode/Set", subscribe = "ADAS/TJAIntegratedCruiseAssist/Mode", type = Integer.class)
    public static final int ID_TJA_ICA_MODE = 218103928;

    @PropertyDefine(publish = "ADAS/TJAIntegratedCruiseAssist/Switch/Set", subscribe = "ADAS/TJAIntegratedCruiseAssist/Switch", type = Integer.class)
    public static final int ID_TJA_ICA_ON_OFF = 218103930;
    public static final int ID_V2X_DYNAMICROADINFORMATION = 218103892;

    @PropertyDefine(publish = "DrivingInfo/V2xEnable/Set", subscribe = "DrivingInfo/V2xEnable", type = Integer.class)
    public static final int ID_V2X_ENABLE = 218103881;
    public static final int ID_V2X_ROAD_HAZARDINFO = 218103878;
    public static final int ID_V2X_SAFETYTIPS = 218103893;
    public static final int ID_V2X_SETTINGS = 218103915;
    public static final int ID_V2X_STATUS = 218103917;
    public static final int ID_V2X_TARGETRV_AVW = 218103876;
    public static final int ID_V2X_TARGETRV_CLW = 218103877;
    public static final int ID_V2X_TARGETRV_DNPW = 218103875;
    public static final int ID_V2X_TARGETRV_EVW = 218103879;
    public static final int ID_V2X_TRAFFIC_JAMINFO = 218103880;
    public static final int ID_V2X_TRAFFIC_REDORGREELIGHT = 218103874;
    public static final int ID_V2X_TRAFFIC_RLVW = 218103873;

    @PropertyDefine(publish = "ADAS/VoiceCruiseSpeedSet/Set", subscribe = "ADAS/VoiceCruiseSpeedSet", type = Integer.class)
    public static final int ID_VOICE_CRUISE_SPEED = 218103885;
    public static final int MGR_ID = 13;

    public interface ACCDispSts {
        public static final int ACC_DISP_STS_ACTIVE = 3;
        public static final int ACC_DISP_STS_DRIVER_OVERRIDE = 4;
        public static final int ACC_DISP_STS_ERROR = 2;
        public static final int ACC_DISP_STS_OFF = 0;
        public static final int ACC_DISP_STS_STANDBY = 1;
    }

    public interface AEBTriggered {
        public static final int AEBT_PEDESTRAIN_TRIGGERED = 2;
        public static final int AEBT_UNTRIGEGGERED = 0;
        public static final int AEBT_VEHICLE_TRIGGERED = 1;
    }

    public interface AssidDrvgStyle {
        public static final int COMFORTPRIORITY = 1;
        public static final int EFFICIENCYPRIORITY = 2;
        public static final int INVALID = 3;
        public static final int STANDARD = 0;
    }

    public interface CruiseMode {
        public static final int CRUISE_MODE_ACC = 1;
        public static final int CRUISE_MODE_NO_COMMAND = 0;
        public static final int CRUISE_MODE_TJA_AND_ICA = 2;
    }

    public interface FCWSensitivity {
        public static final int RESERVED = 4;
        public static final int SS_HIGH = 3;
        public static final int SS_INVALID = 0;
        public static final int SS_LOW = 1;
        public static final int SS_NORMAL = 2;
    }

    public interface FcwReq {
        public static final int FCW_REQ_NO_WARMING = 0;
        public static final int FCW_REQ_PEDESTRIN_FIRST_LEVEL_ALARM = 3;
        public static final int FCW_REQ_PEDESTRIN_SECOND_LEVEL_ALARM = 4;
        public static final int FCW_REQ_RESERVED = 5;
        public static final int FCW_REQ_VEHICEL_SECOND_LEVEL_ALARM = 2;
        public static final int FCW_REQ_VEHICLE_FIREST_LEVEL_ALARM = 1;
    }

    public interface FcwWarnDistance {
        public static final int DISTANCE_CLOSE = 2;
        public static final int DISTANCE_FAR = 3;
        public static final int DISTANCE_NORMAL = 1;
        public static final int DISTANCE_OFF = 0;
    }

    public interface FuncDispSts {
        public static final int FUNCDISPSTS_DEFAULT = 3;
        public static final int FUNCDISPSTS_ERROR = 2;
        public static final int FUNCDISPSTS_OFF = 0;
        public static final int FUNCDISPSTS_ON = 1;
    }

    public interface GearShiftLevel {
        public static final int GEAR_SHIFT0 = 0;
        public static final int GEAR_SHIFT1 = 1;
        public static final int GEAR_SHIFT2 = 2;
        public static final int GEAR_SHIFT3 = 3;
        public static final int GEAR_SHIFT4 = 4;
    }

    public interface IcaDispSts {
        public static final int ICADISPSTS_ACTIVE = 1;
        public static final int ICADISPSTS_ERROR = 2;
        public static final int ICADISPSTS_NOTACTIVE = 0;
        public static final int ICADISPSTS_NO_DISPLAY = 3;
    }

    public interface LCASensitivity {
        public static final int HIGH_SENSITIVITY = 2;
        public static final int LOW_SENSITIVITY = 0;
        public static final int MIDDLE_SENSITIVITY = 1;
    }

    public interface LCCHandsOffWarningReq {
        public static final int FUNCTION_FORBIDDEN = 4;
        public static final int LCCHOWR_NO_REQUEST = 0;
        public static final int LCCHOWR_REQUEST_LEVEL1 = 1;
        public static final int LCCHOWR_REQUEST_LEVEL2 = 2;
        public static final int LCCHOWR_REQUEST_LEVEL3 = 3;
    }

    public interface LCDispSts {
        public static final int LCDS_ERROR = 8;
        public static final int LCDS_LCING_LEFT = 5;
        public static final int LCDS_LCING_RIGHT = 6;
        public static final int LCDS_NO_DISPLAY = 0;
        public static final int LCDS_REQUEST_LEFT = 1;
        public static final int LCDS_REQUEST_RIGHT = 2;
        public static final int LCDS_RETURN = 7;
        public static final int LCDS_WAIT_LEFT = 3;
        public static final int LCDS_WAIT_RIGHT = 4;
    }

    public interface LCInfor {
        public static final int TLCLCI_ALLOWEDLANECHANGE = 0;
        public static final int TLCLCI_DISALLOWEDLANECHANGE_LEFT = 1;
        public static final int TLCLCI_DISALLOWEDLANECHANGE_RIGHT = 2;
    }

    public interface LDWFuncWarnModSet {
        public static final int VISION_VIBRATION = 1;
        public static final int VISION_VOICE = 0;
        public static final int VISION_VOICE_VIBRATION = 2;
    }

    public interface LKAHandoffWarn {
        public static final int LKAHOFW_LEVEL1 = 1;
        public static final int LKAHOFW_LEVEL2 = 2;
        public static final int LKAHOFW_LEVEL3 = 3;
        public static final int LKAHOFW_LEVEL4 = 4;
        public static final int LKAHOFW_NO_HAND_OFF_WARNING = 0;
    }

    public interface LKSFunSwSet {
        public static final int LDW = 1;
        public static final int LDW_LKA = 2;
        public static final int OFF = 0;
        public static final int RESERVED = 3;
    }

    public interface LKSFunctSwSts {
        public static final int ERROR = 3;
        public static final int LDW = 1;
        public static final int LDW_LKA = 2;
        public static final int OFF = 0;
        public static final int RESERVED = 4;
    }

    public interface LaneDepartureSensitivity {
        public static final int LDWSS_HIGH = 3;
        public static final int LDWSS_LOW = 1;
        public static final int LDWSS_NORMAL = 2;
        public static final int LDWSS_NOT_ACTOVE = 0;
        public static final int LDWSS_RESERVED = 4;
    }

    public interface Lanelinecolor {
        public static final int LLC_BLUE = 2;
        public static final int LLC_GREY = 0;
        public static final int LLC_LIGHTRED_LKA_LEFT = 6;
        public static final int LLC_LIGHTRED_LKA_RIGHT = 7;
        public static final int LLC_RED = 3;
        public static final int LLC_RED_LDW_LEFT = 4;
        public static final int LLC_RED_LDW_RIGHT = 5;
        public static final int LLC_WHITE = 1;
    }

    public interface LksModeParams {
        public static final int LKS_OFF = 0;
        public static final int LKS_TYPE_STEERING = 1;
        public static final int LKS_TYPE_STEERING_AND_WARNING = 3;
        public static final int LKS_TYPE_WARNING = 2;
    }

    public interface LksWarnMode {
        public static final int ALERT = 1;
        public static final int ALERT_VIBRATION = 3;
        public static final int OFF = 0;
        public static final int VIBRATION = 2;
    }

    public interface MONSensitivitySts {
        public static final int MONSS_DEFAULT = 0;
        public static final int MONSS_HIGH = 3;
        public static final int MONSS_LOW = 1;
        public static final int MONSS_MIDDLE = 2;
    }

    public interface NOAWarningReq {
        public static final int NOADISTR_REQUEST_1 = 3;
        public static final int NOADISTR_REQUEST_2 = 4;
        public static final int NOAHOWR_REQUEST_1 = 1;
        public static final int NOAHOWR_REQUEST_2 = 2;
        public static final int NOATAKEOVERREQ = 5;
        public static final int NOA_ABNORMALEXIT = 7;
        public static final int NOA_MANUALLANECHANGEREQ = 8;
        public static final int NOA_NO_REQUEST = 0;
        public static final int NOA_SAFESTOP = 6;
    }

    public interface NavCorpType {
        public static final int BAIDU_MAP = 3;
        public static final int GAODE_MAP = 1;
        public static final int RUITU_MAP = 4;
        public static final int TENCENT_MAP = 2;
        public static final int UNKNOWN_CORP = 0;
    }

    public interface NavIconType {
        public static final int GO_STRAIGHT_ICON = 9;
        public static final int LEFT_FRONT_ICON = 3;
        public static final int LEFT_ICON = 1;
        public static final int LEFT_REAR_ICON = 5;
        public static final int LEFT_UTURN_ICON = 7;
        public static final int RIGHT_FRONT_ICON = 4;
        public static final int RIGHT_ICON = 2;
        public static final int RIGHT_REAR_ICON = 6;
        public static final int RIGHT_UTURN_ICON = 8;
        public static final int ROUNDABOUT_ENTRANCE_ICON = 10;
        public static final int ROUNDABOUT_EXIT_ICON = 11;
        public static final int SERVICE_AREA_ICON = 12;
        public static final int TOLL_STATION_ICON = 13;
        public static final int TUNNEL_ICON = 14;
        public static final int UNKNOWN_ICON = 0;
    }

    public interface NavRoadType {
        public static final int CITY_EXPRESS_WAY = 6;
        public static final int COUNTRY_ROAD = 4;
        public static final int HIGH_WAY = 1;
        public static final int MAJOR_URBAN_ROAD = 7;
        public static final int NATIONAL_ROAD = 2;
        public static final int NON_NAVIGATION_ROAD = 10;
        public static final int NORMAL_URBAN_ROAD = 9;
        public static final int PROVINCIAL_ROAD = 3;
        public static final int SECONDARY_URBAN_ROAD = 8;
        public static final int UNKNOWN_ROAD = 0;
        public static final int VILLAGE_ROAD = 5;
    }

    public interface NavSpeedLimitType {
        public static final int ALL_ROAD = 1;
        public static final int CAMERA_DETECTION = 2;
        public static final int NOT_SPECIFIC = 0;
    }

    public interface NavStatus {
        public static final int NAVI_NOT_USED = 3;
        public static final int NAVI_UNKNOWN = 0;
        public static final int ON_CRUISE = 1;
        public static final int ON_NAVIGATION = 2;
    }

    public interface NavZoneType {
        public static final int CODE_CHINA = 1;
        public static final int CODE_UNKNOWN = 0;
    }

    public interface NoaDispSts {
        public static final int NOAL_ACTIVE = 2;
        public static final int NOAL_ERROR = 3;
        public static final int NOAL_NO_DISPLAY = 0;
        public static final int NOAL_STANDBY = 1;
    }

    public interface OnOffError {
        public static final int ERROR = 2;
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public interface OverSpeedWarningThreshold {
        public static final int KM_100 = 100;
        public static final int KM_105 = 105;
        public static final int KM_110 = 110;
        public static final int KM_115 = 115;
        public static final int KM_120 = 120;
        public static final int KM_125 = 125;
        public static final int KM_130 = 130;
        public static final int KM_30 = 30;
        public static final int KM_35 = 35;
        public static final int KM_40 = 40;
        public static final int KM_45 = 45;
        public static final int KM_50 = 50;
        public static final int KM_55 = 55;
        public static final int KM_60 = 60;
        public static final int KM_65 = 65;
        public static final int KM_70 = 70;
        public static final int KM_75 = 75;
        public static final int KM_80 = 80;
        public static final int KM_85 = 85;
        public static final int KM_90 = 90;
        public static final int KM_95 = 95;
    }

    public interface OverSpeedWarningThresholdOut {
        public static final int CLOSE = 62;
        public static final int KM_100 = 15;
        public static final int KM_105 = 16;
        public static final int KM_110 = 17;
        public static final int KM_115 = 18;
        public static final int KM_120 = 19;
        public static final int KM_125 = 20;
        public static final int KM_130 = 21;
        public static final int KM_30 = 1;
        public static final int KM_35 = 2;
        public static final int KM_40 = 3;
        public static final int KM_45 = 4;
        public static final int KM_50 = 5;
        public static final int KM_55 = 6;
        public static final int KM_60 = 7;
        public static final int KM_65 = 8;
        public static final int KM_70 = 9;
        public static final int KM_75 = 10;
        public static final int KM_80 = 11;
        public static final int KM_85 = 12;
        public static final int KM_90 = 13;
        public static final int KM_95 = 14;
        public static final int OPEN = 63;
    }

    public interface RoadType {
        public static final int CITY = 1;
        public static final int MOUNTAIN = 0;
    }

    public interface SpdDisplayValue {
        public static final int ISSDV_10 = 3;
        public static final int ISSDV_100 = 21;
        public static final int ISSDV_105 = 22;
        public static final int ISSDV_110 = 23;
        public static final int ISSDV_115 = 24;
        public static final int ISSDV_120 = 25;
        public static final int ISSDV_125 = 26;
        public static final int ISSDV_130 = 27;
        public static final int ISSDV_15 = 4;
        public static final int ISSDV_20 = 5;
        public static final int ISSDV_25 = 6;
        public static final int ISSDV_30 = 7;
        public static final int ISSDV_35 = 8;
        public static final int ISSDV_40 = 9;
        public static final int ISSDV_45 = 10;
        public static final int ISSDV_5 = 2;
        public static final int ISSDV_50 = 11;
        public static final int ISSDV_55 = 12;
        public static final int ISSDV_60 = 13;
        public static final int ISSDV_65 = 14;
        public static final int ISSDV_70 = 15;
        public static final int ISSDV_75 = 16;
        public static final int ISSDV_80 = 17;
        public static final int ISSDV_85 = 18;
        public static final int ISSDV_90 = 19;
        public static final int ISSDV_95 = 20;
        public static final int ISSDV_CANCELLED = 1;
        public static final int ISSDV_NO_DISPLAY = 0;
    }

    public interface SpeedInfoMode {
        public static final int KILOMETER_PER_HOUR = 0;
        public static final int MILES_PER_HOUR = 1;
    }

    public interface TSRMode {
        public static final int ALL = 1;
        public static final int ELECTRONIC_EYE = 2;
        public static final int HIGHWAY = 3;
        public static final int OFF = 0;
    }

    public interface V2XStatus {
        public static final int V2X_ABNORMAL = 2;
        public static final int V2X_CONNECTED = 1;
        public static final int V2X_NOSIGNAL = 0;
        public static final int V2X_WEAKSIGNAL = 3;
    }
}
