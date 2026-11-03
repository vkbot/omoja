package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 8, permission = "mega.car.permission.LIGHTING")
public interface Lighting {

    @PropertyDefine(publish = "AmbLightAPP/FortifyNotice/Set", subscribe = "AmbLightAPP/FortifyNotice", type = Integer.class)
    public static final int ID_AMB_FORTIFY_NOTICE = 134217783;

    @PropertyDefine(publish = "Light/AmbientLightBrightness/Set", subscribe = "Light/AmbientLightBrightness", type = Integer.class)
    public static final int ID_AMB_LIGHT_BRIGHTNESS = 134217740;

    @PropertyDefine(publish = "Light/AmbientLightColor/Set", subscribe = "Light/AmbientLightColor", type = Integer.class)
    public static final int ID_AMB_LIGHT_COLOR = 134217741;

    @PropertyDefine(publish = "AmbLightAPP/DriveModeSelectType/Set", subscribe = "AmbLightAPP/DriveModeSelectType", type = Integer.class)
    public static final int ID_AMB_LIGHT_DRIVEMODE = 134217764;

    @PropertyDefine(publish = "AmbLightAPP/GameMode/Set", subscribe = "AmbLightAPP/GameMode", type = Integer.class)
    public static final int ID_AMB_LIGHT_GAMEMODE = 134217781;

    @PropertyDefine(publish = "AmbLightAPP/ColorSelectType/Set", subscribe = "AmbLightAPP/ColorSelectType", type = Integer.class)
    public static final int ID_AMB_LIGHT_GAMUT = 134217763;

    @PropertyDefine(publish = "Light/AmbientLightMode/Set", subscribe = "Light/AmbientLightMode", type = Integer.class)
    public static final int ID_AMB_LIGHT_MODE = 134217735;

    @PropertyDefine(publish = "AmbLightAPP/MusicSelectType/Set", subscribe = "AmbLightAPP/MusicSelectType", type = Integer.class)
    public static final int ID_AMB_LIGHT_MUSIC_FREQ = 134217765;
    public static final int ID_AMB_LIGHT_MUSIC_MODE = 134217742;

    @PropertyDefine(publish = "AmbLightAPP/AmbLightFeature/Set", subscribe = "AmbLightAPP/AmbLightFeature", type = PropertyDefine.JsonString.class)
    public static final int ID_AMB_LIGHT_MUSIC_PLAYSTS = 134217766;

    @PropertyDefine(publish = "Light/AmbientLightSwitch/Set", subscribe = "Light/AmbientLightSwitch", type = Integer.class)
    public static final int ID_AMB_LIGHT_ON_OFF = 134217736;

    @PropertyDefine(publish = "AmbLightAPP/VoiceAssistantFeedbackStatus/Set", subscribe = "AmbLightAPP/VoiceAssistantFeedbackStatus", type = Integer.class)
    public static final int ID_AMB_LIGHT_ON_OFF_VR = 134217750;

    @PropertyDefine(publish = "AmbLightAPP/VoiceSpeakStatus/Set", subscribe = "AmbLightAPP/VoiceSpeakStatus", type = Integer.class)
    public static final int ID_AMB_LIGHT_VOICESTATUS = 134217782;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF = 134217737;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF_ALL = 134217792;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF_FRONTLEFT = 134217788;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF_FRONTRIGHT = 134217789;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF_REARLEFT = 134217790;

    @PropertyDefine(type = Integer.class)
    public static final int ID_CABIN_LIGHT_ON_OFF_REARRIGHT = 134217791;

    @PropertyDefine(publish = "RainLightInfo/DAY_NIGHT_MODE/Set", subscribe = "RainLightInfo/DAY_NIGHT_MODE", type = Integer.class)
    public static final int ID_DAY_NIGHT_MODE = 134217767;

    @PropertyDefine(changeMode = 2, publish = "Light/EmergencyLightSwitchStatus/Set", subscribe = "Light/EmergencyLightSwitchStatus", type = Integer.class)
    public static final int ID_EMERGENCY_LIGHT_SWITCH_STS = 134217771;

    @PropertyDefine(publish = "Light/AutoHighBeam/Set", subscribe = "Light/AutoHighBeam", type = Integer.class)
    public static final int ID_EXT_LIGHT_AUTO_BEAM_SWITCH = 134217734;

    @PropertyDefine(publish = "Light/AutoHeadLamp/Set", subscribe = "Light/AutoHeadLamp", type = Integer.class)
    public static final int ID_EXT_LIGHT_AUTO_LIGHT_SNS_CFG = 134217744;

    @PropertyDefine(publish = "Light/DaytimeRunningLamp/Set", subscribe = "Light/DaytimeRunningLamp", type = Integer.class)
    public static final int ID_EXT_LIGHT_DAYTIME_RUNNING_CFG = 134217738;
    public static final int ID_EXT_LIGHT_FOG_LAMP_TURN_CFG = 134217739;

    @PropertyDefine(publish = "Light/HighBeamDelay/Set", subscribe = "Light/HighBeamDelay", type = Integer.class)
    public static final int ID_EXT_LIGHT_FOLLOW_ME_HOME_CFG = 134217743;
    public static final int ID_EXT_LIGHT_FOLLOW_ME_HOME_MODE = 134217732;
    public static final int ID_EXT_LIGHT_HEAD_LIGHT_MODE = 134217731;

    @PropertyDefine(publish = "Light/LightHeight/Set", subscribe = "Light/LightHeight", type = Integer.class)
    public static final int ID_EXT_LIGHT_HEIGHT_AUTO = 134217756;

    @PropertyDefine(publish = "Light/Mode/Set", subscribe = "Light/Mode", type = Integer.class)
    public static final int ID_EXT_LIGHT_MODE = 134217759;

    @PropertyDefine(publish = "Light/LightWelcome/Set", subscribe = "Light/LightWelcome", type = Integer.class)
    public static final int ID_EXT_LIGHT_WELCOME_MODE = 134217733;

    @PropertyDefine(publish = "Light/HazardWarning/Set", subscribe = "Light/HazardWarning", type = Integer.class)
    public static final int ID_HAZARD_WARNING = 134217758;

    @PropertyDefine(publish = "Light/HazardWarningAcoust/Set", subscribe = "Light/HazardWarningAcoust", type = Integer.class)
    public static final int ID_HAZARD_WARNING_ACOUST = 134217784;

    @PropertyDefine(publish = "Light/HighBeam/Set", subscribe = "Light/HighBeam", type = Integer.class)
    public static final int ID_HIGH_BEAM = 134217757;

    @PropertyDefine(changeMode = 2, publish = "Light/HighBeamSwitchStatus/Set", subscribe = "Light/HighBeamSwitchStatus", type = Integer.class)
    public static final int ID_HIGH_BEAM_SWITCH_STS = 134217773;
    public static final int ID_INFO_BACKLIGHT = 134217768;

    @PropertyDefine(publish = "AmbLightAPP/LightsStatus/Set", subscribe = "AmbLightAPP/LightsStatus", type = Integer.class)
    public static final int ID_INTERIOR_LIGHT_AMBIENT_LIGHT = 134217745;

    @PropertyDefine(publish = "Light/DoorLight/OpenWithDoor/Set", subscribe = "Light/DoorLight/OpenWithDoor", type = Integer.class)
    public static final int ID_INTERIOR_LIGHT_AUTO_DOME = 134217751;

    @PropertyDefine(publish = "Light/LightedRoofRack/Set", subscribe = "Light/LightedRoofRack", type = Integer.class)
    public static final int ID_LIGHTED_ROOF_RACK = 134217787;

    @PropertyDefine(publish = "Light/CourtesyPed/Set", subscribe = "Light/CourtesyPed", type = Integer.class)
    public static final int ID_LIGHT_COURTESY_PED = 134217779;

    @PropertyDefine(publish = "Light/LightDetected/Set", subscribe = "Light/LightDetected", type = Integer.class)
    public static final int ID_LIGHT_DETECTED = 134217785;

    @PropertyDefine(publish = "Light/ParkLightSts/Set", subscribe = "Light/ParkLightSts", type = Integer.class)
    public static final int ID_LIGHT_PARK_LIGHT_STS = 134217786;

    @PropertyDefine(publish = "Light/PositionLampType/Set", subscribe = "Light/PositionLampType", type = Integer.class)
    public static final int ID_LIGHT_POSITION_TYPE = 134217780;

    @PropertyDefine(publish = "Light/LightShowDayLight/Set", subscribe = "Light/LightShowDayLight", type = Integer.class)
    public static final int ID_LIGHT_SHOW_DAY_LIGHT = 134217774;

    @PropertyDefine(publish = "Light/LightShowHighBeam/Set", subscribe = "Light/LightShowHighBeam", type = Integer.class)
    public static final int ID_LIGHT_SHOW_HIGH_BEAM = 134217776;

    @PropertyDefine(publish = "Light/LightShowInteractiveLight/Set", subscribe = "Light/LightShowInteractiveLight", type = Integer.class)
    public static final int ID_LIGHT_SHOW_INTERACTIVE_LIGHT = 134217772;

    @PropertyDefine(publish = "Light/LightShowInteractiveMode/Set", subscribe = "Light/LightShowInteractiveMode", type = Integer.class)
    public static final int ID_LIGHT_SHOW_INTERACTIVE_MODE = 134217762;

    @PropertyDefine(publish = "Light/LightShowLightMode/Set", subscribe = "Light/LightShowLightMode", type = Integer.class)
    public static final int ID_LIGHT_SHOW_LIGHT_MODE = 134217761;

    @PropertyDefine(publish = "Light/LightShowLowBeam/Set", subscribe = "Light/LightShowLowBeam", type = Integer.class)
    public static final int ID_LIGHT_SHOW_LOW_BEAM = 134217778;

    @PropertyDefine(publish = "Light/LightShowOutSwitch/Set", subscribe = "Light/LightShowOutSwitch", type = Integer.class)
    public static final int ID_LIGHT_SHOW_OUT_SWITCH = 134217775;

    @PropertyDefine(publish = "Light/LightShowPositionLight/Set", subscribe = "Light/LightShowPositionLight", type = Integer.class)
    public static final int ID_LIGHT_SHOW_POSITION_LIGHT = 134217777;

    @PropertyDefine(publish = "Light/LightShowSwitch/Set", subscribe = "Light/LightShowSwitch", type = Integer.class)
    public static final int ID_LIGHT_SHOW_SWITCH = 134217760;

    @PropertyDefine(publish = "Light/TurnLeft/Set", subscribe = "Light/TurnLeft", type = Integer.class)
    public static final int ID_L_TURN_SIGNAL_STS = 134217729;

    @PropertyDefine(changeMode = 2, publish = "Light/OvertakeLight/Set", subscribe = "Light/OvertakeLight", type = Integer.class)
    public static final int ID_OVERTAKE_LIGHT = 134217769;

    @PropertyDefine(publish = "Light/TurnRight/Set", subscribe = "Light/TurnRight", type = Integer.class)
    public static final int ID_R_TURN_SIGNAL_STS = 134217730;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/Set", subscribe = "VehicleSeat/SeatOccupied", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED = 134217748;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/FrontLeft/Set", subscribe = "VehicleSeat/SeatOccupied/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED_FRONTLEFT = 134217798;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/FrontRight/Set", subscribe = "VehicleSeat/SeatOccupied/FrontRight", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED_FRONTRIGHT = 134217799;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/RearLeft/Set", subscribe = "VehicleSeat/SeatOccupied/RearLeft", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED_REARLEFT = 134217800;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/RearMiddle/Set", subscribe = "VehicleSeat/SeatOccupied/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED_REARMIDDLE = 134217801;

    @PropertyDefine(publish = "VehicleSeat/SeatOccupied/RearRight/Set", subscribe = "VehicleSeat/SeatOccupied/RearRight", type = Integer.class)
    public static final int ID_SEAT_OCCUPIED_REARRIGHT = 134217802;

    @PropertyDefine(publish = "Light/FogLamp/Set", subscribe = "Light/FogLamp", type = Integer.class)
    public static final int ID_TELLTALE_FOG_LAMP = 134217753;

    @PropertyDefine(publish = "Light/FogLamp/All/Set", subscribe = "Light/FogLamp/All", type = Integer.class)
    public static final int ID_TELLTALE_FOG_LAMP_ALL = 134217805;

    @PropertyDefine(publish = "Light/FogLamp/Front/Set", subscribe = "Light/FogLamp/Front", type = Integer.class)
    public static final int ID_TELLTALE_FOG_LAMP_FRONT = 134217803;

    @PropertyDefine(publish = "Light/FogLamp/Rear/Set", subscribe = "Light/FogLamp/Rear", type = Integer.class)
    public static final int ID_TELLTALE_FOG_LAMP_REAR = 134217804;

    @PropertyDefine(publish = "Light/LowBeam/Set", subscribe = "Light/LowBeam", type = Integer.class)
    public static final int ID_TELLTALE_LOW_BEAM = 134217755;
    public static final int ID_TELLTALE_STS_BOOK_CHARGING_LAMP = 134217749;

    @PropertyDefine(publish = "Light/PositionLamp/Set", subscribe = "Light/PositionLamp", type = Integer.class)
    public static final int ID_TELLTALE_STS_POSITION_LIGHT_ON_OFF_LAMP = 134217746;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/Set", subscribe = "VehicleSeat/SeatBelt", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP = 134217747;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/FrontLeft/Set", subscribe = "VehicleSeat/SeatBelt/FrontLeft", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP_FRONTLEFT = 134217793;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/FrontRight/Set", subscribe = "VehicleSeat/SeatBelt/FrontRight", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP_FRONTRIGHT = 134217794;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/RearLeft/Set", subscribe = "VehicleSeat/SeatBelt/RearLeft", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP_REARLEFT = 134217795;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/RearMiddle/Set", subscribe = "VehicleSeat/SeatBelt/RearMiddle", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP_REARMIDDLE = 134217796;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/RearRight/Set", subscribe = "VehicleSeat/SeatBelt/RearRight", type = Integer.class)
    public static final int ID_TELLTALE_STS_SEAT_BELT_LAMP_REARRIGHT = 134217797;

    @PropertyDefine(publish = "Telltale/Ready/Set", subscribe = "Telltale/Ready", type = Integer.class)
    public static final int ID_TELLTALE_STS_VEHICLE_READY_LAMP = 134217752;

    @PropertyDefine(changeMode = 2, publish = "Light/TurnLightStatus/Set", subscribe = "Light/TurnLightStatus", type = Integer.class)
    public static final int ID_TURN_LIGHT_STS = 134217770;
    public static final int MGR_ID = 8;

    public interface AmbLightBrightness {
        public static final int BRIGHTNESS_INVALID_MAX = 9;
        public static final int BRIGHTNESS_INVALID_MIN = 0;
        public static final int BRIGHTNESS_LEVEL_1 = 1;
        public static final int BRIGHTNESS_LEVEL_2 = 2;
        public static final int BRIGHTNESS_LEVEL_3 = 3;
        public static final int BRIGHTNESS_LEVEL_4 = 4;
        public static final int BRIGHTNESS_LEVEL_5 = 5;
        public static final int BRIGHTNESS_LEVEL_6 = 6;
        public static final int BRIGHTNESS_LEVEL_7 = 7;
        public static final int BRIGHTNESS_LEVEL_8 = 8;
    }

    public interface AmbLightColor {
        public static final int AMB_LIGHT_COLOR_1 = 1;
        public static final int AMB_LIGHT_COLOR_10 = 10;
        public static final int AMB_LIGHT_COLOR_11 = 11;
        public static final int AMB_LIGHT_COLOR_12 = 12;
        public static final int AMB_LIGHT_COLOR_13 = 13;
        public static final int AMB_LIGHT_COLOR_14 = 14;
        public static final int AMB_LIGHT_COLOR_15 = 15;
        public static final int AMB_LIGHT_COLOR_16 = 16;
        public static final int AMB_LIGHT_COLOR_17 = 17;
        public static final int AMB_LIGHT_COLOR_18 = 18;
        public static final int AMB_LIGHT_COLOR_19 = 19;
        public static final int AMB_LIGHT_COLOR_2 = 2;
        public static final int AMB_LIGHT_COLOR_20 = 20;
        public static final int AMB_LIGHT_COLOR_21 = 21;
        public static final int AMB_LIGHT_COLOR_22 = 22;
        public static final int AMB_LIGHT_COLOR_23 = 23;
        public static final int AMB_LIGHT_COLOR_24 = 24;
        public static final int AMB_LIGHT_COLOR_25 = 25;
        public static final int AMB_LIGHT_COLOR_26 = 26;
        public static final int AMB_LIGHT_COLOR_27 = 27;
        public static final int AMB_LIGHT_COLOR_28 = 28;
        public static final int AMB_LIGHT_COLOR_29 = 29;
        public static final int AMB_LIGHT_COLOR_3 = 3;
        public static final int AMB_LIGHT_COLOR_30 = 30;
        public static final int AMB_LIGHT_COLOR_31 = 31;
        public static final int AMB_LIGHT_COLOR_32 = 32;
        public static final int AMB_LIGHT_COLOR_4 = 4;
        public static final int AMB_LIGHT_COLOR_5 = 5;
        public static final int AMB_LIGHT_COLOR_6 = 6;
        public static final int AMB_LIGHT_COLOR_7 = 7;
        public static final int AMB_LIGHT_COLOR_8 = 8;
        public static final int AMB_LIGHT_COLOR_9 = 9;
        public static final int AMB_LIGHT_COLOR_INVALID_MAX = 33;
        public static final int AMB_LIGHT_COLOR_INVALID_MIN = 0;
    }

    public interface AutoLightSnsParams {
        public static final int ALS_NO_COMMAND = 0;
        public static final int HIGH_SENSITIVITY = 1;
        public static final int LOW_SENSITIVITY = 3;
        public static final int MEDIUM_SENSITIVITY = 2;
    }

    public interface BacklightAdjust {
        public static final int LEVEL1 = 1;
        public static final int LEVEL10 = 10;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int LEVEL6 = 6;
        public static final int LEVEL7 = 7;
        public static final int LEVEL8 = 8;
        public static final int LEVEL9 = 9;
        public static final int NOACTION = 0;
    }

    public interface ColorGamut {
        public static final int COOLCOLOR = 1;
        public static final int NEUTRALCOLOR = 2;
        public static final int SEVEN_COLORS = 4;
        public static final int WARMCOLOR = 3;
    }

    public interface DayNightMode {
        public static final int DARK = 2;
        public static final int DARKSTART = 4;
        public static final int DAY = 0;
        public static final int OTHERS = 1;
        public static final int TUNNEL = 3;
    }

    public interface EXLWlcOnOffRequest {
        public static final int MODE1 = 1;
        public static final int MODE10 = 10;
        public static final int MODE2 = 2;
        public static final int MODE3 = 3;
        public static final int MODE4 = 4;
        public static final int MODE5 = 5;
        public static final int MODE6 = 6;
        public static final int MODE7 = 7;
        public static final int MODE8 = 8;
        public static final int MODE9 = 9;
        public static final int OFF = 0;
    }

    public interface ExtLightHeight {
        public static final int HIGH = 5;
        public static final int LOW = 1;
        public static final int MID = 3;
        public static final int MIDHIGH = 4;
        public static final int MIDLOW = 2;
        public static final int NOREQUEST = 0;
    }

    public interface ExtLightMode {
        public static final int AUTO = 3;
        public static final int AUTO_LOW_HIGH = 4;
        public static final int INVALID = 5;
        public static final int LOW_BEAM = 2;
        public static final int OFF = 0;
        public static final int POS = 1;
    }

    public interface FollowMeHomeParams {
        public static final int FMH_NO_COMMAND = 0;
        public static final int LOW_BEAM_AND_REAR_FOG_LAMP = 3;
        public static final int NOT_ACTIVE = 1;
        public static final int ONLY_LOW_BEAM = 2;
    }

    public interface H53AmbLightBrightness {
        public static final int BRIGHTNESS_LEVEL_1 = 1;
        public static final int BRIGHTNESS_LEVEL_10 = 10;
        public static final int BRIGHTNESS_LEVEL_2 = 2;
        public static final int BRIGHTNESS_LEVEL_3 = 3;
        public static final int BRIGHTNESS_LEVEL_4 = 4;
        public static final int BRIGHTNESS_LEVEL_5 = 5;
        public static final int BRIGHTNESS_LEVEL_6 = 6;
        public static final int BRIGHTNESS_LEVEL_7 = 7;
        public static final int BRIGHTNESS_LEVEL_8 = 8;
        public static final int BRIGHTNESS_LEVEL_9 = 9;
    }

    public interface H53FollowMeHomeParams {
        public static final int FLWMEHM_15S = 2;
        public static final int FLWMEHM_30S = 3;
        public static final int FLWMEHM_60S = 4;
        public static final int NOREQUEST = 0;
        public static final int OFF = 1;
    }

    public interface H53ParamsAmbLightMode {
        public static final int MODE_DRIVE_MODE = 2;
        public static final int MODE_DYNAMIC = 1;
        public static final int MODE_GAME = 3;
        public static final int MODE_STATIC = 0;
    }

    public interface LightDetectedState {
        public static final int BRIGHT = 1;
        public static final int DARK = 0;
    }

    public interface LightShowOutLightFRReq {
        public static final int FRONT_LIGHT = 1;
        public static final int FRONT_REAR_LIGHT = 3;
        public static final int NO_REQUEST = 0;
        public static final int REAR_LIGHT = 2;
    }

    public interface LightShowOutLightLRReq {
        public static final int LEFT_LIGHT = 1;
        public static final int LEFT_RIGHT_LIGHT = 3;
        public static final int NO_REQUEST = 0;
        public static final int RIGHT_LIGHT = 2;
    }

    public interface ParamsAmbFortifyNotice {
        public static final int LIGHTING = 0;
        public static final int LIGHTING_AND_TRUMPET = 2;
        public static final int TRUMPET = 1;
    }

    public interface ParamsAmbGameMode {
        public static final int MODE1 = 0;
        public static final int MODE2 = 1;
        public static final int STOP_MODE = 2;
    }

    public interface ParamsAmbLightMode {
        public static final int AMB_LIGHT_COLOR_CHOOSE_MODE = 12;
        public static final int AMB_LIGHT_DRIVER_MODE = 11;
        public static final int AMB_LIGHT_MODE_INVALID = 15;
        public static final int MODE_10 = 10;
        public static final int MODE_5 = 5;
        public static final int MODE_6 = 6;
        public static final int MODE_7 = 7;
        public static final int MODE_8 = 8;
        public static final int MODE_9 = 9;
        public static final int MODE_AUTO_MODE = 3;
        public static final int MODE_CUSTOM = 0;
        public static final int MODE_DRIVE_MODE = 1;
        public static final int MODE_MEDIA = 4;
        public static final int MODE_SPEED = 2;
    }

    public interface ParamsAutoBeamSwitch {
        public static final int ACTIVE = 2;
        public static final int CAMERA_BLOCKED = 4;
        public static final int OFF = 0;
        public static final int PASSIVE = 1;
        public static final int PERMANENT_FAIL = 5;
        public static final int TEMPORARY_FAIL = 3;
    }

    public interface ParamsExtLightFollowMeHomeMode {
        public static final int OFF = 0;
        public static final int SEC_15 = 1;
        public static final int SEC_30 = 2;
        public static final int SEC_60 = 3;
    }

    public interface ParamsExtLightHeadLightMode {
        public static final int AUTO = 3;
        public static final int INVALID = 4;
        public static final int LOW = 2;
        public static final int OFF = 0;
        public static final int POS = 1;
    }

    public interface ParamsTurnSignalStatus {
        public static final int OFF = 0;
        public static final int ON = 1;
        public static final int UNKNOWN = -1;
    }

    public interface ReadingLampLevel {
        public static final int HIGHLEVEL = 2;
        public static final int INVALID = 255;
        public static final int LOWLEVEL = 1;
        public static final int NOREQUEST = 3;
        public static final int OFF = 0;
    }

    public interface TelltaleStatus {
        public static final int TELLTALE_FLASH = 1;
        public static final int TELLTALE_FLASH_RED = 6;
        public static final int TELLTALE_GREEN = 5;
        public static final int TELLTALE_OFF = 0;
        public static final int TELLTALE_ON = 2;
        public static final int TELLTALE_RED = 4;
        public static final int TELLTALE_YELLOW = 3;
    }

    public interface TurnLightSts {
        public static final int OFF = 0;
        public static final int TURN_LEFT = 1;
        public static final int TURN_LEFT_LANE = 2;
        public static final int TURN_RIGHT = 3;
        public static final int TURN_RIGHT_LANE = 4;
    }
}
