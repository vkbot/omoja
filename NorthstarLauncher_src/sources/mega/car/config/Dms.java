package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 15, permission = "mega.car.permission.DMS")
public interface Dms {

    @PropertyDefine(publish = "DMS/BioassayAcReq/Set", subscribe = "DMS/BioassayAcReq", type = Integer.class)
    public static final int ID_BIOASSAY_AC_REQ = 251658283;

    @PropertyDefine(publish = "DMS/BioassayStatus/Set", subscribe = "DMS/BioassayStatus", type = Integer.class)
    public static final int ID_BIOASSAY_STATUS = 251658285;

    @PropertyDefine(publish = "DMS/BioassayWindowReq/Set", subscribe = "DMS/BioassayWindowReq", type = Integer.class)
    public static final int ID_BIOASSAY_WINDOW_REQ = 251658284;

    @PropertyDefine(publish = "DMS/CallingDetectSwitch/Set", subscribe = "DMS/CallingDetectSwitch", type = Integer.class)
    public static final int ID_CALLING_DETECT = 251658270;

    @PropertyDefine(publish = "DMS/CheckLicense/Set", subscribe = "DMS/CheckLicense", type = String.class)
    public static final int ID_CHECK_LICENSE = 251658241;
    public static final int ID_COORDINATE_INFO_FL = 251658265;

    @PropertyDefine(publish = "DMS/DeleteAllFace/Set", subscribe = "DMS/DeleteAllFace", type = Integer.class)
    public static final int ID_DELETE_ALL_FACE = 251658246;

    @PropertyDefine(publish = "DMS/DeleteFaceid/Set", subscribe = "DMS/DeleteFaceid", type = Integer.class)
    public static final int ID_DELETE_FACE_ID = 251658245;

    @PropertyDefine(publish = "DMS/DistractionDetectSwitch/Set", subscribe = "DMS/DistractionDetectSwitch", type = Integer.class)
    public static final int ID_DISTRACT_MONITOR_ONOFF = 251658253;

    @PropertyDefine(changeMode = 2, publish = "DMS/DetectedStatus/Set", subscribe = "DMS/DetectedStatus", type = Integer.class)
    public static final int ID_DMS_DETECT_STATUS = 251658288;

    @PropertyDefine(subscribe = "DMS/WarningToAndroid", type = Integer.class)
    public static final int ID_DMS_WARNING = 251658294;

    @PropertyDefine(publish = "DMS/DrinkingDetectSwitch/Set", subscribe = "DMS/DrinkingDetectSwitch", type = Integer.class)
    public static final int ID_DRINKING_DETECT = 251658269;
    public static final int ID_EXCEPTION_REPORT_RESULT = 251658267;
    public static final int ID_EYE_WAKSLP_SCRE_ONOFF = 251658256;

    @PropertyDefine(publish = "DMS/FaceRecognizeKeyEvent/Set", subscribe = "DMS/FaceRecognizeKeyEvent", type = Integer.class)
    public static final int ID_FACE_RECOGNIZE_KEY_EVENT = 251658277;

    @PropertyDefine(publish = "DMS/FaceDetectSwitch/Set", subscribe = "DMS/FaceDetectSwitch", type = Integer.class)
    public static final int ID_FACE_RECOGNIZE_ONOFF = 251658260;
    public static final int ID_FACE_RECOOPER = 251658290;
    public static final int ID_FACE_RECOOPER_RESPONSE = 251658291;

    @PropertyDefine(publish = "DMS/FaceRegister/Set", subscribe = "DMS/FaceRegister", type = Integer.class)
    public static final int ID_FACE_REGISTER = 251658272;

    @PropertyDefine(publish = "DMS/FaceRegisterChime/Set", subscribe = "DMS/FaceRegisterChime", type = Integer.class)
    public static final int ID_FACE_REGISTER_CHIME = 251658289;

    @PropertyDefine(publish = "DMS/FaceRegisterKeyEvent/Set", subscribe = "DMS/FaceRegisterKeyEvent", type = Integer.class)
    public static final int ID_FACE_REGISTER_KEY_EVENT = 251658276;

    @PropertyDefine(publish = "DMS/FaceRegisterNotice/Set", subscribe = "DMS/FaceRegisterNotice", type = Integer.class)
    public static final int ID_FACE_REGISTER_NOTICE = 251658275;

    @PropertyDefine(publish = "DMS/FaceRegisterStatus/Set", subscribe = "DMS/FaceRegisterStatus", type = Integer.class)
    public static final int ID_FACE_REGISTER_STATUS = 251658274;

    @PropertyDefine(publish = "DMS/FatigueDetectDuration/Set", subscribe = "DMS/FatigueDetectDuration", type = Integer.class)
    public static final int ID_FATIGUE_MONITOR_DURATION = 251658292;

    @PropertyDefine(publish = "DMS/FatigueDetectSwitch/Set", subscribe = "DMS/FatigueDetectSwitch", type = Integer.class)
    public static final int ID_FATIGUE_MONITOR_SET = 251658252;
    public static final int ID_FEATURE_FL = 251658261;
    public static final int ID_FEATURE_FR = 251658262;
    public static final int ID_FEATURE_REAR = 251658263;
    public static final int ID_FRONT_PERSON_STS = 251658282;

    @PropertyDefine(publish = "DMS/GestureDetectSwitch/Set", subscribe = "DMS/GestureDetectSwitch", type = Integer.class)
    public static final int ID_GESTURE_RECOG_ONOFF = 251658258;

    @PropertyDefine(changeMode = 2, publish = "DMS/GestureDetected/Set", subscribe = "DMS/GestureDetected", type = Integer.class)
    public static final int ID_GESTURE_RECOG_STS = 251658259;

    @PropertyDefine(changeMode = 2, publish = "DMS/GestureStudy/Set", subscribe = "DMS/GestureStudy", type = Integer.class)
    public static final int ID_GESTURE_STUDY = 251658268;

    @PropertyDefine(publish = "DMS/GetFaceidNum/Set", subscribe = "DMS/GetFaceidNum", type = Integer.class)
    public static final int ID_GET_FACE_ID_NUM = 251658247;

    @PropertyDefine(publish = "DMS/KeyEvent/Set", subscribe = "DMS/KeyEvent", type = Integer.class)
    public static final int ID_KEY_EVENT = 251658273;

    @PropertyDefine(publish = "DMS/LiveDetectSwitch/Set", subscribe = "DMS/LiveDetectSwitch", type = Integer.class)
    public static final int ID_LIFEFORGREMIND_ONOFF = 251658254;

    @PropertyDefine(publish = "DMS/LiveDetectActive/Set", subscribe = "DMS/LiveDetectActive", type = Integer.class)
    public static final int ID_LIVE_DETECT_ACTIVE = 251658286;

    @PropertyDefine(changeMode = 2, publish = "DMS/LiveDetectedStatus/Set", subscribe = "DMS/LiveDetectedStatus", type = Integer.class)
    public static final int ID_LIVE_DETECT_STATUS = 251658287;

    @PropertyDefine(publish = "DMS/MatchFaceid/Set", subscribe = "DMS/MatchFaceid", type = Integer.class)
    public static final int ID_MATCH_FACE_ID = 251658244;

    @PropertyDefine(publish = "DMS/FatigueDetectDurationOut/Set", subscribe = "DMS/FatigueDetectDurationOut", type = Integer.class)
    public static final int ID_OUT_FATIGUE_MONITOR_DURATION = 251658293;

    @PropertyDefine(changeMode = 2, publish = "DMS/QnxReply/Set", subscribe = "DMS/QnxReply", type = String.class)
    public static final int ID_QNX_REPLY = 251658251;
    public static final int ID_REARMONITOR_ONOFF = 251658255;
    public static final int ID_REARPERSON_STS = 251658264;

    @PropertyDefine(publish = "DMS/RegisterFaceid/Set", subscribe = "DMS/RegisterFaceid", type = Integer.class)
    public static final int ID_REGISTER_FACE_ID = 251658243;

    @PropertyDefine(publish = "DMS/ReplyLicense/Set", subscribe = "DMS/ReplyLicense", type = String.class)
    public static final int ID_REPLY_LICENSE = 251658242;
    public static final int ID_SCREOFF_WAITING_TIME = 251658257;
    public static final int ID_SHELTER_STATUS = 251658266;

    @PropertyDefine(publish = "DMS/SmokeModeAcoustWarn/Set", subscribe = "DMS/SmokeModeAcoustWarn", type = Integer.class)
    public static final int ID_SMOKE_MODE_ACOUST_WARN = 251658280;

    @PropertyDefine(publish = "DMS/SmokeModeAirClean/Set", subscribe = "DMS/SmokeModeAirClean", type = Integer.class)
    public static final int ID_SMOKE_MODE_AIR_CLEAN = 251658281;

    @PropertyDefine(publish = "DMS/SmokeMode/Set", subscribe = "DMS/SmokeMode", type = Integer.class)
    public static final int ID_SMOKE_MODE_SWITCH = 251658278;

    @PropertyDefine(publish = "DMS/SmokeModeWindowDown/Set", subscribe = "DMS/SmokeModeWindowDown", type = Integer.class)
    public static final int ID_SMOKE_MODE_WINDOW_DOWN = 251658279;

    @PropertyDefine(publish = "DMS/SmokingDetectSwitch/Set", subscribe = "DMS/SmokingDetectSwitch", type = Integer.class)
    public static final int ID_SMOKING_DETECT = 251658271;

    @PropertyDefine(publish = "DMS/Stop/Set", subscribe = "DMS/Stop", type = Integer.class)
    public static final int ID_STOP = 251658248;

    @PropertyDefine(publish = "DMS/Test/Set", subscribe = "DMS/Test", type = Integer.class)
    public static final int ID_TEST = 251658249;

    @PropertyDefine(publish = "DMS/UiSetting/Set", subscribe = "DMS/UiSetting", type = Boolean.class)
    public static final int ID_UI_SETTING = 251658250;
    public static final int MGR_ID = 15;

    public interface BioassayState {
        public static final int CHECKING = 1;
        public static final int DETECTED = 2;
        public static final int INACTIVE = 0;
    }

    public interface CameraShelter {
        public static final int CAMERASHELTER_DEFAULT = 0;
        public static final int CAMERASHELTER_INVALID = 255;
        public static final int CAMERASHELTER_NORMAL = 1;
        public static final int CAMERASHELTER_SHELTER = 2;
    }

    public interface DriverMotionStatus {
        public static final int CALLING = 4;
        public static final int DISTRACTION = 3;
        public static final int FATIGUE = 2;
        public static final int INACTIVE = 0;
        public static final int NO_DETECT = 1;
        public static final int SMOKING = 5;
    }

    public interface DynaGestureRecogSts {
        public static final int DYNAGESTSTS_DEFAULT = 0;
        public static final int DYNAGESTSTS_DOUFIGCLOSE = 11;
        public static final int DYNAGESTSTS_DOUFIGFRONT = 12;
        public static final int DYNAGESTSTS_DOUFIGOPEN = 10;
        public static final int DYNAGESTSTS_DOUFIGREAR = 13;
        public static final int DYNAGESTSTS_DRAWCIRCANITCLOCKWI = 3;
        public static final int DYNAGESTSTS_DRAWCIRCCLOCKWI = 2;
        public static final int DYNAGESTSTS_DURINGGESTRECOG = 1;
        public static final int DYNAGESTSTS_INVALID = 255;
        public static final int DYNAGESTSTS_PALMDOWN = 9;
        public static final int DYNAGESTSTS_PALMFRONT = 4;
        public static final int DYNAGESTSTS_PALMLEFT = 6;
        public static final int DYNAGESTSTS_PALMREAR = 5;
        public static final int DYNAGESTSTS_PALMRIGHT = 7;
        public static final int DYNAGESTSTS_PALMUP = 8;
        public static final int DYNAGESTSTS_WAVE = 14;
    }

    public interface ExceptReport {
        public static final int EXCEPTREPORT_AUTHORIZEABNORMAL = 7;
        public static final int EXCEPTREPORT_BASALGOLIBABNORMAL = 4;
        public static final int EXCEPTREPORT_DEFAULT = 0;
        public static final int EXCEPTREPORT_DMSABNORMAL = 3;
        public static final int EXCEPTREPORT_FACEIDABNORMAL = 2;
        public static final int EXCEPTREPORT_INVALID = 255;
        public static final int EXCEPTREPORT_NORMAL = 1;
        public static final int EXCEPTREPORT_QNXAPPCAMACCABNO = 6;
        public static final int EXCEPTREPORT_QNXAPPCOMABNORMAL = 5;
        public static final int EXCEPTREPORT_UPDATEABNOMAL = 8;
    }

    public interface FaceIDRegResult {
        public static final int FACEIDREGRESULT_DEFAULT = 0;
        public static final int FACEIDREGRESULT_FAIL = 2;
        public static final int FACEIDREGRESULT_INVALID = 255;
        public static final int FACEIDREGRESULT_START = 1;
        public static final int FACEIDREGRESULT_SUCCESS = 3;
        public static final int FACEIDREGRESULT_TIMEOUT = 4;
    }

    public interface FaceIDResult {
        public static final int FACEIDRESULT_DEFAULT = 0;
        public static final int FACEIDRESULT_DRIVER1 = 1;
        public static final int FACEIDRESULT_DRIVER10 = 10;
        public static final int FACEIDRESULT_DRIVER2 = 2;
        public static final int FACEIDRESULT_DRIVER3 = 3;
        public static final int FACEIDRESULT_DRIVER4 = 4;
        public static final int FACEIDRESULT_DRIVER5 = 5;
        public static final int FACEIDRESULT_DRIVER6 = 6;
        public static final int FACEIDRESULT_DRIVER7 = 7;
        public static final int FACEIDRESULT_DRIVER8 = 8;
        public static final int FACEIDRESULT_DRIVER9 = 9;
        public static final int FACEIDRESULT_INVALID = 255;
        public static final int FACEIDRESULT_RECOGNIZETIMEOUT = 12;
        public static final int FACEIDRESULT_UNKOWN = 11;
    }

    public interface FaceRecoOperReq {
        public static final int DELETE = 2;
        public static final int NOREQ = 0;
        public static final int REGISTER = 1;
    }

    public interface FaceRecognizeKeyCode {
        public static final int NO = 2;
        public static final int NO_REQ = 0;
        public static final int YES = 1;
    }

    public interface FaceRegisterKeyCode {
        public static final int EXIT = 3;
        public static final int NO_REQ = 0;
        public static final int OK = 1;
        public static final int RETRY = 2;
    }

    public interface FatigueMonitorDuration {
        public static final int HOUR_1 = 0;
        public static final int HOUR_1_5 = 1;
        public static final int HOUR_2 = 2;
        public static final int HOUR_2_5 = 3;
        public static final int HOUR_3 = 4;
        public static final int HOUR_3_5 = 5;
        public static final int HOUR_4 = 6;
    }

    public interface FatigueMonitorReq {
        public static final int NOREQUEST = 0;
        public static final int NORMAL = 2;
        public static final int OFF = 1;
        public static final int SENSITIVE = 3;
    }

    public interface GestureStudySts {
        public static final int STS_1 = 4;
        public static final int STS_DEFAULT = 0;
        public static final int STS_FIST = 6;
        public static final int STS_FIVEFINGER = 3;
        public static final int STS_GOOD = 9;
        public static final int STS_INVALID = 255;
        public static final int STS_OK = 5;
        public static final int STS_ROCK = 7;
        public static final int STS_SIX = 8;
        public static final int STS_V = 2;
    }

    public interface LiveDetectState {
        public static final int EMPTY = 0;
        public static final int INVALID = 255;
        public static final int PEOPLE = 1;
        public static final int PEOPLE_PET = 3;
        public static final int PET = 2;
    }

    public interface STABNORMALRM {
        public static final int ST_ABNORM_ALRM_ASLEEP = 6;
        public static final int ST_ABNORM_ALRM_BLOCKED = 8;
        public static final int ST_ABNORM_ALRM_DISTRACTED = 1;
        public static final int ST_ABNORM_ALRM_DROWSYCTED = 4;
        public static final int ST_ABNORM_ALRM_LONG_DISTRACTED = 2;
        public static final int ST_ABNORM_ALRM_MICROSLEEP = 5;
        public static final int ST_ABNORM_ALRM_NOT_ACTIVE = 0;
        public static final int ST_ABNORM_ALRM_NO_DISPLAY = 255;
        public static final int ST_ABNORM_ALRM_SERIOUSLY_DISTRACTED = 3;
        public static final int ST_ABNORM_ALRM_UNRESPONSIVE = 7;
    }

    public interface StaticGestureRecogSts {
        public static final int STS_1 = 4;
        public static final int STS_DEFAULT = 0;
        public static final int STS_DURINGGESTRECOG = 1;
        public static final int STS_FIST = 6;
        public static final int STS_FIVEFINGER = 3;
        public static final int STS_GOOD = 9;
        public static final int STS_INVALID = 255;
        public static final int STS_OK = 5;
        public static final int STS_ROCK = 7;
        public static final int STS_SIX = 8;
        public static final int STS_V = 2;
    }
}
