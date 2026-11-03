package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 3, permission = "mega.car.permission.COMFORTS_SETTINGS")
public interface Comforts {

    @PropertyDefine(publish = "RainLightInfo/AMB_BRIGHTNESS/Set", subscribe = "RainLightInfo/AMB_BRIGHTNESS", type = Integer.class)
    public static final int ID_AMB_BRIGHTNESS = 50331722;
    public static final int ID_CAMP_MOD_STS = 50331686;

    @PropertyDefine(publish = "BodyInfo/ControlDimmerLevel/Set", subscribe = "BodyInfo/ControlDimmerLevel", type = Integer.class)
    public static final int ID_DISPLAY_CONTROL_BACK_LIGHT = 50331730;

    @PropertyDefine(publish = "HUD/HUD/Set", subscribe = "HUD/HUD", type = Integer.class)
    public static final int ID_DISPLAY_HUD = 50331661;

    @PropertyDefine(publish = "HUD/HUDBrightnessAutoAdjustment/Set", subscribe = "HUD/HUDBrightnessAutoAdjustment", type = Integer.class)
    public static final int ID_DISPLAY_HUD_AUTO_DIM = 50331664;

    @PropertyDefine(publish = "HUD/HUDBrightness/Set", subscribe = "HUD/HUDBrightness", type = Integer.class)
    public static final int ID_DISPLAY_HUD_BACK_LIGHT = 50331662;

    @PropertyDefine(publish = "HUD/HUDDisplayMode/Set", subscribe = "HUD/HUDDisplayMode", type = Integer.class)
    public static final int ID_DISPLAY_HUD_MODE = 50331692;

    @PropertyDefine(publish = "HUD/HUDHeight/Set", subscribe = "HUD/HUDHeight", type = Integer.class)
    public static final int ID_DISPLAY_HUD_POS = 50331663;

    @PropertyDefine(publish = "HUD/HUDTheme/Set", subscribe = "HUD/HUDTheme", type = Integer.class)
    public static final int ID_DISPLAY_HUD_THEME = 50331691;

    @PropertyDefine(publish = "HUD/HUDVideo/Set", subscribe = "HUD/HUDVideo", type = Integer.class)
    public static final int ID_DISPLAY_HUD_VIDEO_MODE = 50331693;
    public static final int ID_DISPLAY_ICD_AUTO_DIM = 50331665;

    @PropertyDefine(publish = "BodyInfo/DimmerLevel/Set", subscribe = "BodyInfo/DimmerLevel", type = Integer.class)
    public static final int ID_DISPLAY_ICD_BACK_LIGHT = 50331666;
    public static final int ID_DRV_SEAT_STR_COLUMN_EASY_ENTRY = 50331650;

    @PropertyDefine(publish = "Fragrance/Cct/Set", subscribe = "Fragrance/Cct", type = Integer.class)
    public static final int ID_FRAGRANCE_CCT = 50331701;

    @PropertyDefine(publish = "AC/Fragrance/CeconsistenceLevel/Set", subscribe = "AC/Fragrance/CeconsistenceLevel", type = Integer.class)
    public static final int ID_FRAGRANCE_CECONSISTENCE_LEVEL = 50331715;

    @PropertyDefine(publish = "AC/Fragrance/Displaysts/Set", subscribe = "AC/Fragrance/Displaysts", type = Integer.class)
    public static final int ID_FRAGRANCE_DISPLAY_STS = 50331713;

    @PropertyDefine(publish = "Fragrance/Status/Set", subscribe = "Fragrance/Status", type = Integer.class)
    public static final int ID_FRAGRANCE_MODE = 50331696;

    @PropertyDefine(publish = "Fragrance/Name/Set", subscribe = "Fragrance/Name", type = PropertyDefine.JsonString.class)
    public static final int ID_FRAGRANCE_NAME = 50331720;

    @PropertyDefine(publish = "AC/Fragrance/Pos1TypesSts/Set", subscribe = "AC/Fragrance/Pos1TypesSts", type = Integer.class)
    public static final int ID_FRAGRANCE_POS1_TYPES_STS = 50331709;

    @PropertyDefine(publish = "AC/Fragrance/Pos2TypesSts/Set", subscribe = "AC/Fragrance/Pos2TypesSts", type = Integer.class)
    public static final int ID_FRAGRANCE_POS2_TYPES_STS = 50331710;

    @PropertyDefine(publish = "AC/Fragrance/Pos3TypesSts/Set", subscribe = "AC/Fragrance/Pos3TypesSts", type = Integer.class)
    public static final int ID_FRAGRANCE_POS3_TYPES_STS = 50331711;

    @PropertyDefine(publish = "AC/Fragrance/FragrancePosition/Set", subscribe = "AC/Fragrance/FragrancePosition", type = Integer.class)
    public static final int ID_FRAGRANCE_POSITION = 50331717;

    @PropertyDefine(publish = "AC/Fragrance/ShortageWarning/Set", subscribe = "AC/Fragrance/ShortageWarning", type = Integer.class)
    public static final int ID_FRAGRANCE_SHORT_WARN = 50331708;

    @PropertyDefine(publish = "AC/Fragrance/FragranceSW/Set", subscribe = "AC/Fragrance/FragranceSW", type = Integer.class)
    public static final int ID_FRAGRANCE_SW = 50331718;

    @PropertyDefine(publish = "Fragrance/Tat/Set", subscribe = "Fragrance/Tat", type = Integer.class)
    public static final int ID_FRAGRANCE_TAT = 50331700;

    @PropertyDefine(publish = "AC/Fragrance/WorkStatus1/Set", subscribe = "AC/Fragrance/WorkStatus1", type = Integer.class)
    public static final int ID_FRAGRANCE_WORK_STS1 = 50331736;

    @PropertyDefine(publish = "AC/Fragrance/WorkStatus2/Set", subscribe = "AC/Fragrance/WorkStatus2", type = Integer.class)
    public static final int ID_FRAGRANCE_WORK_STS2 = 50331737;

    @PropertyDefine(publish = "AC/Fragrance/WorkStatus3/Set", subscribe = "AC/Fragrance/WorkStatus3", type = Integer.class)
    public static final int ID_FRAGRANCE_WORK_STS3 = 50331738;

    @PropertyDefine(publish = "RainLightInfo/FW_BRIGHTNESS/Set", subscribe = "RainLightInfo/FW_BRIGHTNESS", type = Integer.class)
    public static final int ID_FW_BRIGHTNESS = 50331723;

    @PropertyDefine(publish = "HUD/ADASDisplay/Set", subscribe = "HUD/ADASDisplay", type = Integer.class)
    public static final int ID_HUD_ADAS_DISPLAY = 50331732;

    @PropertyDefine(publish = "HUD/BluetoothDisplay/Set", subscribe = "HUD/BluetoothDisplay", type = Integer.class)
    public static final int ID_HUD_BLUETOOTH_DISPLAY = 50331734;

    @PropertyDefine(publish = "RainLightInfo/HUD_BRIGHTNESS/Set", subscribe = "RainLightInfo/HUD_BRIGHTNESS", type = Integer.class)
    public static final int ID_HUD_BRIGHTNESS = 50331721;

    @PropertyDefine(publish = "HUD/NavigationDisplay/Set", subscribe = "HUD/NavigationDisplay", type = Integer.class)
    public static final int ID_HUD_NAVIGATION_DISPLAY = 50331733;

    @PropertyDefine(publish = "HUD/HUDSteerpan/Set", subscribe = "HUD/HUDSteerpan", type = Integer.class)
    public static final int ID_HUD_STEERPAN = 50331735;

    @PropertyDefine(publish = "DrivingInfo/Theme/Set", subscribe = "DrivingInfo/Theme", type = Integer.class)
    public static final int ID_INSTRUMENT_THEME = 50331703;

    @PropertyDefine(publish = "RainLightInfo/IR_BRIGHTNESS/Set", subscribe = "RainLightInfo/IR_BRIGHTNESS", type = Integer.class)
    public static final int ID_IR_BRIGHTNESS = 50331724;

    @PropertyDefine(publish = "VehicleSeat/PhoneLeaveAlert/Set", subscribe = "VehicleSeat/PhoneLeaveAlert", type = Integer.class)
    public static final int ID_PHONE_LEAVE_ALERT = 50331719;
    public static final int ID_PSG_SEAT_EASY_ENTRY = 50331651;
    public static final int ID_PSG_SEAT_FOLD_RESTORE = 50331652;

    @PropertyDefine(publish = "RainLightInfo/RAIN_INTENSITY/Set", subscribe = "RainLightInfo/RAIN_INTENSITY", type = Integer.class)
    public static final int ID_RAIN_INTENSITY = 50331725;
    public static final int ID_RESPITE_MOD_STS = 50331685;
    public static final int ID_SAFE_BOX_ALERT = 50331671;
    public static final int ID_SAFE_BOX_AUTH_RES = 50331668;
    public static final int ID_SAFE_BOX_LOCK_UNLOCK_STATE = 50331670;
    public static final int ID_SAFE_BOX_MODE = 50331667;
    public static final int ID_SAFE_BOX_OPEN_CLOSE_STATE = 50331669;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/Set", subscribe = "VehicleSeat/SeatBack", type = Integer.class)
    public static final int ID_SEAT_BACK = 50331688;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/FrontLeft/Set", subscribe = "VehicleSeat/SeatBack/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_BACK_FRONTLEFT = 50331745;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/FrontRight/Set", subscribe = "VehicleSeat/SeatBack/FrontRight", type = Integer.class)
    public static final int ID_SEAT_BACK_FRONTRIGHT = 50331746;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/RearLeft/Set", subscribe = "VehicleSeat/SeatBack/RearLeft", type = Integer.class)
    public static final int ID_SEAT_BACK_REARLEFT = 50331747;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/RearMiddle/Set", subscribe = "VehicleSeat/SeatBack/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_BACK_REARMIDDLE = 50331748;

    @PropertyDefine(publish = "VehicleSeat/SeatBack/RearRight/Set", subscribe = "VehicleSeat/SeatBack/RearRight", type = Integer.class)
    public static final int ID_SEAT_BACK_REARRIGHT = 50331749;

    @PropertyDefine(publish = "VehicleSeat/SeatBeltCheck/Set", subscribe = "VehicleSeat/SeatBeltCheck", type = Integer.class)
    public static final int ID_SEAT_BELT_CHECK = 50331706;

    @PropertyDefine(publish = "VehicleSeat/SeatBeltCheck/Front/Set", subscribe = "VehicleSeat/SeatBeltCheck/Front", type = Integer.class)
    public static final int ID_SEAT_BELT_CHECK_FRONT = 50331767;

    @PropertyDefine(publish = "VehicleSeat/SeatBeltCheck/Rear/Set", subscribe = "VehicleSeat/SeatBeltCheck/Rear", type = Integer.class)
    public static final int ID_SEAT_BELT_CHECK_REAR = 50331768;

    @PropertyDefine(publish = "VehicleSeat/SeatBelt/Warning/Set", subscribe = "VehicleSeat/SeatBelt/Warning", type = Integer.class)
    public static final int ID_SEAT_BELT_WARNING = 50331731;

    @PropertyDefine(publish = "VehicleSeat/SeatCtrlWelomeMode/Set", subscribe = "VehicleSeat/SeatCtrlWelomeMode", type = Integer.class)
    public static final int ID_SEAT_CTRL_WELCOME_MODE_SETTING = 50331680;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/Set", subscribe = "VehicleSeat/SeatCushion", type = Integer.class)
    public static final int ID_SEAT_CUSHION = 50331689;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/FrontLeft/Set", subscribe = "VehicleSeat/SeatCushion/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_CUSHION_FRONTLEFT = 50331750;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/FrontRight/Set", subscribe = "VehicleSeat/SeatCushion/FrontRight", type = Integer.class)
    public static final int ID_SEAT_CUSHION_FRONTRIGHT = 50331751;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/RearLeft/Set", subscribe = "VehicleSeat/SeatCushion/RearLeft", type = Integer.class)
    public static final int ID_SEAT_CUSHION_REARLEFT = 50331752;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/RearMiddle/Set", subscribe = "VehicleSeat/SeatCushion/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_CUSHION_REARMIDDLE = 50331753;

    @PropertyDefine(publish = "VehicleSeat/SeatCushion/RearRight/Set", subscribe = "VehicleSeat/SeatCushion/RearRight", type = Integer.class)
    public static final int ID_SEAT_CUSHION_REARRIGHT = 50331754;
    public static final int ID_SEAT_DRV_MASSAGE = 50331674;
    public static final int ID_SEAT_EASY_FRONT_LEFT_CUSH_MOTOR = 50331660;
    public static final int ID_SEAT_EASY_FRONT_LEFT_LEG_MOTOR = 50331659;
    public static final int ID_SEAT_EASY_FRONT_LEFT_SLD_MOTOR = 50331657;
    public static final int ID_SEAT_EASY_FRONT_LEFT_TILT_MOTOR = 50331658;

    @PropertyDefine(publish = "VehicleSeat/SeatLumbarSupport/Set", subscribe = "VehicleSeat/SeatLumbarSupport", type = Integer.class)
    public static final int ID_SEAT_LUMBAR_SUPPORT = 50331698;

    @PropertyDefine(publish = "VehicleSeat/SeatLumbarSupport/FrontLeft/Set", subscribe = "VehicleSeat/SeatLumbarSupport/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_LUMBAR_SUPPORT_FRONTLEFT = 50331763;

    @PropertyDefine(publish = "VehicleSeat/SeatLumbarSupport/FrontRight/Set", subscribe = "VehicleSeat/SeatLumbarSupport/FrontRight", type = Integer.class)
    public static final int ID_SEAT_LUMBAR_SUPPORT_FRONTRIGHT = 50331769;

    @PropertyDefine(publish = "VehicleSeat/SeatMassage/Set", subscribe = "VehicleSeat/SeatMassage", type = Integer.class)
    public static final int ID_SEAT_MASSAGE = 50331694;

    @PropertyDefine(publish = "VehicleSeat/SeatMassage/FrontLeft/Set", subscribe = "VehicleSeat/SeatMassage/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_FRONTLEFT = 50331755;

    @PropertyDefine(publish = "VehicleSeat/SeatMassage/FrontRight/Set", subscribe = "VehicleSeat/SeatMassage/FrontRight", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_FRONTRIGHT = 50331756;

    @PropertyDefine(publish = "VehicleSeat/SeatMassageMode/Set", subscribe = "VehicleSeat/SeatMassageMode", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE = 50331695;

    @PropertyDefine(publish = "VehicleSeat/SeatMassageMode/FrontLeft/Set", subscribe = "VehicleSeat/SeatMassageMode/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE_FRONTLEFT = 50331759;

    @PropertyDefine(publish = "VehicleSeat/SeatMassageMode/FrontRight/Set", subscribe = "VehicleSeat/SeatMassageMode/FrontRight", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE_FRONTRIGHT = 50331760;

    @PropertyDefine(publish = "VehicleSeat/SeatMassageMode/RearLeft/Set", subscribe = "VehicleSeat/SeatMassageMode/RearLeft", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE_REARLEFT = 50331761;

    @PropertyDefine(publish = "VehicleSeat/SeatMassageMode/RearRight/Set", subscribe = "VehicleSeat/SeatMassageMode/RearRight", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_MODE_REARRIGHT = 50331762;

    @PropertyDefine(publish = "VehicleSeat/SeatMassage/RearLeft/Set", subscribe = "VehicleSeat/SeatMassage/RearLeft", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_REARLEFT = 50331757;

    @PropertyDefine(publish = "VehicleSeat/SeatMassage/RearRight/Set", subscribe = "VehicleSeat/SeatMassage/RearRight", type = Integer.class)
    public static final int ID_SEAT_MASSAGE_REARRIGHT = 50331758;

    @PropertyDefine(publish = "VehicleSeat/SeatMemory/Set", subscribe = "VehicleSeat/SeatMemory", type = Integer.class)
    public static final int ID_SEAT_MEMORY = 50331690;

    @PropertyDefine(publish = "VehicleSeat/SeatMemoryName/Set", subscribe = "VehicleSeat/SeatMemoryName", type = PropertyDefine.JsonString.class)
    public static final int ID_SEAT_MEMORY_NAME = 50331704;

    @PropertyDefine(publish = "VehicleSeat/SeatMemoryPos/Set", subscribe = "VehicleSeat/SeatMemoryPos", type = String.class)
    public static final int ID_SEAT_MEMORY_POS = 50331707;

    @PropertyDefine(publish = "VehicleSeat/SeatMemoryRead/Set", subscribe = "VehicleSeat/SeatMemoryRead", type = Integer.class)
    public static final int ID_SEAT_MEMORY_READ = 50331697;

    @PropertyDefine(publish = "VehicleSeat/MemoryResult/Set", subscribe = "VehicleSeat/MemoryResult", type = int[].class)
    public static final int ID_SEAT_MEMORY_RESULT = 50331705;
    public static final int ID_SEAT_NORMAL_FRONT_LEFT_CUSH_MOTOR = 50331656;

    @PropertyDefine(publish = "VehicleSeat/SeatLeg/Set", subscribe = "VehicleSeat/SeatLeg", type = Integer.class)
    public static final int ID_SEAT_NORMAL_FRONT_LEFT_LEG_MOTOR = 50331655;

    @PropertyDefine(publish = "VehicleSeat/SeatLeg/RearRight/Set", subscribe = "VehicleSeat/SeatLeg/RearRight", type = Integer.class)
    public static final int ID_SEAT_NORMAL_FRONT_LEFT_LEG_MOTOR_REARRIGHT = 50331739;
    public static final int ID_SEAT_NORMAL_FRONT_LEFT_SLD_MOTOR = 50331653;
    public static final int ID_SEAT_NORMAL_FRONT_LEFT_TILT_MOTOR = 50331654;

    @PropertyDefine(publish = "VehicleSeat/SeatOnekeyReset/Set", subscribe = "VehicleSeat/SeatOnekeyReset", type = Integer.class)
    public static final int ID_SEAT_ONEKEY_RESET = 50331699;

    @PropertyDefine(publish = "VehicleSeat/SeatOnekeyReset/FrontRight/Set", subscribe = "VehicleSeat/SeatOnekeyReset/FrontRight", type = Integer.class)
    public static final int ID_SEAT_ONEKEY_RESET_FRONTRIGHT = 50331764;

    @PropertyDefine(publish = "VehicleSeat/SeatOnekeyReset/RearLeft/Set", subscribe = "VehicleSeat/SeatOnekeyReset/RearLeft", type = Integer.class)
    public static final int ID_SEAT_ONEKEY_RESET_REARLEFT = 50331765;

    @PropertyDefine(publish = "VehicleSeat/SeatOnekeyReset/RearRight/Set", subscribe = "VehicleSeat/SeatOnekeyReset/RearRight", type = Integer.class)
    public static final int ID_SEAT_ONEKEY_RESET_REARRIGHT = 50331766;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/Set", subscribe = "VehicleSeat/SeatPosition", type = Integer.class)
    public static final int ID_SEAT_POSITION = 50331687;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/FrontLeft/Set", subscribe = "VehicleSeat/SeatPosition/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_POSITION_FRONTLEFT = 50331740;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/FrontRight/Set", subscribe = "VehicleSeat/SeatPosition/FrontRight", type = Integer.class)
    public static final int ID_SEAT_POSITION_FRONTRIGHT = 50331741;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/RearLeft/Set", subscribe = "VehicleSeat/SeatPosition/RearLeft", type = Integer.class)
    public static final int ID_SEAT_POSITION_REARLEFT = 50331742;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/RearMiddle/Set", subscribe = "VehicleSeat/SeatPosition/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_POSITION_REARMIDDLE = 50331743;

    @PropertyDefine(publish = "VehicleSeat/SeatPosition/RearRight/Set", subscribe = "VehicleSeat/SeatPosition/RearRight", type = Integer.class)
    public static final int ID_SEAT_POSITION_REARRIGHT = 50331744;
    public static final int ID_SEAT_PSG_MASSAGE = 50331675;
    public static final int ID_SEAT_SYNC_CLOUDDATA = 50331702;

    @PropertyDefine(publish = "AC/SteeringWheelHeating/Set", subscribe = "AC/SteeringWheelHeating", type = Integer.class)
    public static final int ID_STEERING_WHEEL_HEATING = 50331649;
    public static final int ID_STEER_CTRL_EASY_TELESCOPE_ANGLE = 50331679;
    public static final int ID_STEER_CTRL_EASY_TILT_ANGLE = 50331678;
    public static final int ID_STEER_CTRL_NORMAL_TELESCOPE_ANGLE = 50331677;
    public static final int ID_STEER_CTRL_NORMAL_TILT_ANGLE = 50331676;

    @PropertyDefine(publish = "VehicleSeat/CopilotHeat/Set", subscribe = "VehicleSeat/CopilotHeat", type = Integer.class)
    public static final int ID_VEHICLE_SEAT_COPILOT_HEAT = 50331729;

    @PropertyDefine(publish = "VehicleSeat/CopilotVentilation/Set", subscribe = "VehicleSeat/CopilotVentilation", type = Integer.class)
    public static final int ID_VEHICLE_SEAT_COPILOT_VENTILATION = 50331728;

    @PropertyDefine(publish = "VehicleSeat/MainDriverHeat/Set", subscribe = "VehicleSeat/MainDriverHeat", type = Integer.class)
    public static final int ID_VEHICLE_SEAT_MAIN_HEAT = 50331727;

    @PropertyDefine(publish = "VehicleSeat/MainDriverVentilation/Set", subscribe = "VehicleSeat/MainDriverVentilation", type = Integer.class)
    public static final int ID_VEHICLE_SEAT_MAIN_VENTILATION = 50331726;
    public static final int ID_WIRELESS_CHARGING_CONTROL_RESULT = 50331683;

    @PropertyDefine(publish = "BodyInfo/WirelessCharge/Status/Set", subscribe = "BodyInfo/WirelessCharge/Status", type = Integer.class)
    public static final int ID_WIRELESS_CHARGING_STATUS = 50331673;
    public static final int ID_WIRELESS_CHARGING_WARN_STS = 50331684;
    public static final int MGR_ID = 3;

    public interface FragranceCct {
        public static final int FCMCCTREQ_HI = 3;
        public static final int FCMCCTREQ_LO = 1;
        public static final int FCMCCTREQ_MID = 2;
        public static final int FCMCCTREQ_NOREQUEST = 0;
    }

    public interface FragrancePosition {
        public static final int POS1 = 1;
        public static final int POS2 = 2;
        public static final int POS3 = 3;
        public static final int UNACTIVE = 0;
    }

    public interface FragranceTat {
        public static final int FCMTATREQ_NOREQUEST = 0;
        public static final int FCMTATREQ_TASTE_1 = 1;
        public static final int FCMTATREQ_TASTE_2 = 2;
        public static final int FCMTATREQ_TASTE_3 = 3;
    }

    public interface FragranceType {
        public static final int NATURE = 1;
        public static final int PASSION = 3;
        public static final int SOFT = 2;
        public static final int UNACTIVE = 0;
    }

    public interface InstrumentTheme {
        public static final int CLASSIC = 1;
        public static final int SIMPLE = 2;
        public static final int SPORT = 0;
    }

    public interface ParamsFrontLeftSeatCtrl {
        public static final int BACK_BACKWARD = 9;
        public static final int BACK_FORWARD = 8;
        public static final int CUSHION_DOWN = 7;
        public static final int CUSHION_RISE = 6;
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int NO_REQUEST_OR_NO_RESPONSE = 0;
        public static final int SLIDE_BACKWARD = 5;
        public static final int SLIDE_FORWARD = 4;
        public static final int STOP = 12;
        public static final int TITLE_DOWN = 11;
        public static final int TITLE_RISE = 10;
    }

    public interface ParamsPsgSeatFoldRestore {
        public static final int FOLD_AVAILABLE = 0;
        public static final int FOLD_UNAVAILABLE_LONG_SLIDE_WARN = 2;
        public static final int FOLD_UNAVAILABLE_PASSENGER_INSIDE_WARN = 1;
        public static final int RESTORE_AVAILABLE = 3;
        public static final int RESTORE_UNAVAILABLE = 4;
    }

    public interface ParamsSafeBoxAlert {
        public static final int ALERT = 1;
        public static final int NO_ALERT = 0;
    }

    public interface ParamsSafeBoxAuthRes {
        public static final int NONE_PWD_AUTH_SUCCESS = 0;
        public static final int PWD_AUTH_SUCCESS = 1;
    }

    public interface ParamsSafeBoxMode {
        public static final int INITIALIZATION = 0;
        public static final int NORMAL = 1;
        public static final int SAFE = 2;
    }

    public interface ParamsSeatMassageLevel {
        public static final int NOREQUEST = 0;
        public static final int OFF = 1;
        public static final int SEATMASSGINTEN1 = 2;
        public static final int SEATMASSGINTEN2 = 3;
        public static final int SEATMASSGINTEN3 = 4;
    }

    public interface ParamsSeatMassageMode {
        public static final int ROLL = 1;
        public static final int WAVE = 0;
    }

    public interface ParamsSeatMessage {
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int OFF = 0;
    }

    public interface ParamsWirelessChargingControlResult {
        public static final int WCM_DISABLED_BY_PEPS = 1;
        public static final int WCM_ENABLED = 0;
        public static final int WCM_SHUTDOWN_BY_SWITCH = 2;
    }

    public interface ParamsWirelessChargingFailureStatus {
        public static final int WCM_INTERNAL_FAILURE = 5;
        public static final int WCM_NFC_CARD_DETECTED = 8;
        public static final int WCM_NO_FAILURE = 0;
        public static final int WCM_OFOD = 7;
        public static final int WCM_OVER_POWER_PROTECTED = 4;
        public static final int WCM_OVER_TEMPERATURE = 1;
        public static final int WCM_RFOD = 2;
        public static final int WCM_SMART_PHONE_NO_RESPONSE = 6;
        public static final int WCM_VOLTAGE_PROTECTED = 3;
    }

    public interface ParamsWirelessChargingStatus {
        public static final int COMPLETELY_CHARGED = 8;
        public static final int DEVICE_BEING_CHARGED = 2;
        public static final int ERROR = 15;
        public static final int FOREIGN_OBJECT_EXISTING = 3;
        public static final int INTERNAL_ERROR_RESTARTING_NOW = 6;
        public static final int SMARTPHONE_NO_RESPONSE_OR_ERROR = 10;
        public static final int WLC_DEVICE_DETECTED = 9;
        public static final int WLC_NO_DEVICE_DETECTED = 1;
        public static final int WLC_OFF = 0;
        public static final int WLC_OVER_POWER_PROTECTED = 5;
        public static final int WLC_OVER_TEMPERATURE = 7;
        public static final int WLC_VOLTAGE_PROTECTED = 4;
    }

    public interface RainIntensity {
        public static final int LEVEL1 = 1;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int RESERVED = 6;
        public static final int UNDEFINED = 0;
    }

    public interface SeatMemoryResult {
        public static final int ACTIVE = 1;
        public static final int INACTIVE = 2;
        public static final int INVALID = 0;
    }
}
