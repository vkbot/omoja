package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 10, permission = "mega.car.permission.VEHICLE_MOTION")
public interface VehicleMotion {

    @PropertyDefine(publish = "BodyInfo/LowSpeedPedestrianAlarm/Set", subscribe = "BodyInfo/LowSpeedPedestrianAlarm", type = Integer.class)
    public static final int ID_ACOUSTIC_VEH_ALERT = 167772167;

    @PropertyDefine(publish = "BodyInfo/CtrlHillDescent/Set", subscribe = "BodyInfo/CtrlHillDescent", type = Integer.class)
    public static final int ID_BRAKE_CTRL_HILL_DESCENT = 167772166;

    @PropertyDefine(publish = "BodyInfo/EPB/Set", subscribe = "BodyInfo/EPB", type = Integer.class)
    public static final int ID_PARKING_BRAKE_EPB = 167772161;

    @PropertyDefine(publish = "BodyInfo/EPBState/Set", subscribe = "BodyInfo/EPBState", type = Integer.class)
    public static final int ID_PARKING_BRAKE_EPB_ON_AVA = 167772163;
    public static final int ID_PARKING_BRAKE_TOW_MODE = 167772162;

    @PropertyDefine(publish = "BodyInfo/TrailerMode/Set", subscribe = "BodyInfo/TrailerMode", type = Integer.class)
    public static final int ID_PARKING_BRAKE_TOW_ON_AVA = 167772164;

    @PropertyDefine(publish = "BodyInfo/LowSpeedPedestrianAlarmType/Set", subscribe = "BodyInfo/LowSpeedPedestrianAlarmType", type = Integer.class)
    public static final int ID_SAFE_AVA_TONE_TYPE_CONFIG = 167772169;
    public static final int ID_SAFE_CHARGE_TONE_CONFIG = 167772170;

    @PropertyDefine(publish = "BodyInfo/ESC/Set", subscribe = "BodyInfo/ESC", type = Integer.class)
    public static final int ID_SAFE_ESP_ENABLE = 167772168;

    @PropertyDefine(publish = "Fault/ESC/Set", subscribe = "Fault/ESC", type = Integer.class)
    public static final int ID_SAFE_ESP_FAULT = 167772173;

    @PropertyDefine(publish = "Telltale/ESC/Status/Set", subscribe = "Telltale/ESC/Status", type = Integer.class)
    public static final int ID_SAFE_ESP_STATE = 167772172;
    public static final int ID_SAFE_WELCOME_TONE_CONFIG = 167772171;
    public static final int MGR_ID = 10;

    public interface HillDescentControlStatus {
        public static final int OFF = 0;
        public static final int ON = 1;
        public static final int ON_ACTIVE_BRAKING = 3;
        public static final int ON_NOT_ACTIVE_BRAKING = 2;
    }

    public interface ParamsEspStatus {
        public static final int IDLE = 0;
        public static final int WORKING = 1;
    }

    public interface ToneMode {
        public static final int LING_DONG = 2;
        public static final int PEND_PAI = 3;
        public static final int SHU_HUAN = 1;
    }
}
