package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 12, permission = "mega.car.permission.CAR_WINDOWS")
public interface Windows {

    @PropertyDefine(publish = "VehicleWindow/FrontLeftWindow/Set", subscribe = "VehicleWindow/FrontLeftWindow", type = Integer.class)
    public static final int ID_FRONT_LEFT_WINDOW_STATE = 201326622;

    @PropertyDefine(publish = "VehicleWindow/FrontRightWindow/Set", subscribe = "VehicleWindow/FrontRightWindow", type = Integer.class)
    public static final int ID_FRONT_RIGHT_WINDOW_STATE = 201326623;

    @PropertyDefine(publish = "VehicleWindow/RearLeftWindow/Set", subscribe = "VehicleWindow/RearLeftWindow", type = Integer.class)
    public static final int ID_REAR_LEFT_WINDOW_STATE = 201326624;

    @PropertyDefine(publish = "VehicleWindow/RearRightWindow/Set", subscribe = "VehicleWindow/RearRightWindow", type = Integer.class)
    public static final int ID_REAR_RIGHT_WINDOW_STATE = 201326625;
    public static final int ID_ROOF_REQ_CONTROL = 201326617;

    @PropertyDefine(publish = "VehicleWindow/SunShade/Set", subscribe = "VehicleWindow/SunShade", type = Integer.class)
    public static final int ID_SUNSHADE = 201326594;

    @PropertyDefine(publish = "VehicleWindow/SunShade/Front/Set", subscribe = "VehicleWindow/SunShade/Front", type = Integer.class)
    public static final int ID_SUNSHADE_FRONT = 201326632;

    @PropertyDefine(publish = "VehicleWindow/SunShade/Rear/Set", subscribe = "VehicleWindow/SunShade/Rear", type = Integer.class)
    public static final int ID_SUNSHADE_REAR = 201326633;

    @PropertyDefine(publish = "VehicleWindow/SunShade/Top/Set", subscribe = "VehicleWindow/SunShade/Top", type = Integer.class)
    public static final int ID_SUNSHADE_TOP = 201326634;

    @PropertyDefine(publish = "VehicleWindow/SunRoofPosition/Set", subscribe = "VehicleWindow/SunRoofPosition", type = Integer.class)
    public static final int ID_SUN_ROOF_WINDOW_STATE = 201326626;

    @PropertyDefine(publish = "VehicleWindow/TopWindow/Set", subscribe = "VehicleWindow/TopWindow", type = Integer.class)
    public static final int ID_TOP_WINDOW = 201326621;
    public static final int ID_WASH_WIPER_AUTO_WIPER_CFG = 201326616;
    public static final int ID_WASH_WIPER_FRONT_WASH_EXTRA_MODE = 201326602;

    @PropertyDefine(publish = "BodyInfo/WiperServiceMode/Set", subscribe = "BodyInfo/WiperServiceMode", type = Integer.class)
    public static final int ID_WASH_WIPER_SERVICE_MODE = 201326603;
    public static final int ID_WASH_WIPER_STS_AUTO_FRONT_MODE = 201326605;
    public static final int ID_WASH_WIPER_STS_LIQUID_LACK_STATUS = 201326606;
    public static final int ID_WASH_WIPER_STS_REAR_STATUS = 201326607;
    public static final int ID_WASH_WIPER_WASH_AUTO_REAR_MODE = 201326604;

    @PropertyDefine(publish = "VehicleWindow/Window/Set", subscribe = "VehicleWindow/Window", type = Integer.class)
    public static final int ID_WINDOW = 201326593;

    @PropertyDefine(publish = "VehicleWindow/Window/All/Set", subscribe = "VehicleWindow/Window/All", type = int[].class)
    public static final int ID_WINDOW_ALL = 201326620;

    @PropertyDefine(publish = "VehicleWindow/Window/FrontLeft/Set", subscribe = "VehicleWindow/Window/FrontLeft", type = Integer.class)
    public static final int ID_WINDOW_FRONTLEFT = 201326627;

    @PropertyDefine(publish = "VehicleWindow/Window/FrontRight/Set", subscribe = "VehicleWindow/Window/FrontRight", type = Integer.class)
    public static final int ID_WINDOW_FRONTRIGHT = 201326628;

    @PropertyDefine(publish = "VehicleWindow/WindowLock/Set", subscribe = "VehicleWindow/WindowLock", type = Integer.class)
    public static final int ID_WINDOW_LOCK = 201326595;

    @PropertyDefine(publish = "VehicleWindow/WindowLock/FrontLeft/Set", subscribe = "VehicleWindow/WindowLock/FrontLeft", type = Integer.class)
    public static final int ID_WINDOW_LOCK_FRONTLEFT = 201326635;

    @PropertyDefine(publish = "VehicleWindow/WindowLock/FrontRight/Set", subscribe = "VehicleWindow/WindowLock/FrontRight", type = Integer.class)
    public static final int ID_WINDOW_LOCK_FRONTRIGHT = 201326636;

    @PropertyDefine(publish = "VehicleWindow/WindowLock/RearLeft/Set", subscribe = "VehicleWindow/WindowLock/RearLeft", type = Integer.class)
    public static final int ID_WINDOW_LOCK_REARLEFT = 201326637;

    @PropertyDefine(publish = "VehicleWindow/WindowLock/RearRight/Set", subscribe = "VehicleWindow/WindowLock/RearRight", type = Integer.class)
    public static final int ID_WINDOW_LOCK_REARRIGHT = 201326638;
    public static final int ID_WINDOW_MODE = 201326601;

    @PropertyDefine(publish = "VehicleWindow/Window/RearLeft/Set", subscribe = "VehicleWindow/Window/RearLeft", type = Integer.class)
    public static final int ID_WINDOW_REARLEFT = 201326629;

    @PropertyDefine(publish = "VehicleWindow/Window/RearRight/Set", subscribe = "VehicleWindow/Window/RearRight", type = Integer.class)
    public static final int ID_WINDOW_REARRIGHT = 201326630;

    @PropertyDefine(publish = "VehicleWindow/RlsClose/Set", subscribe = "VehicleWindow/RlsClose", type = Integer.class)
    public static final int ID_WINDOW_RLS_CLOSE = 201326619;

    @PropertyDefine(publish = "VehicleWindow/SetLookup/Set", subscribe = "VehicleWindow/SetLookup", type = Integer.class)
    public static final int ID_WINDOW_SET_LOKUP = 201326618;

    @PropertyDefine(publish = "VehicleWindow/Window/Top/Set", subscribe = "VehicleWindow/Window/Top", type = Integer.class)
    public static final int ID_WINDOW_TOP = 201326631;
    public static final int MGR_ID = 12;

    public interface InputSunRoof {
        public static final int CLOSE = 2;
        public static final int CLOSING = 5;
        public static final int OPEN = 6;
        public static final int OPENING = 3;
        public static final int STOP = 4;
        public static final int TILT = 1;
    }

    public interface OutSunRoof {
        public static final int CLOSE = 2;
        public static final int OPEN = 1;
        public static final int TILT = 3;
    }

    public interface ParamsOpenClose {
        public static final int CLOSE = 1;
        public static final int OPEN = 0;
    }

    public interface ParamsSunRoofShadeButtonStatus {
        public static final int CLOSING = 2;
        public static final int NORMAL = 0;
        public static final int OPENING = 1;
        public static final int UNCONTROLLABLE = 3;
    }

    public interface ParamsSunShadeState {
        public static final int CLOSE = 1;
        public static final int CLOSING = 4;
        public static final int HALF_OPEN = 6;
        public static final int OPEN = 5;
        public static final int OPENING = 2;
        public static final int RESERVED = 7;
        public static final int STARTUP = 0;
        public static final int STOP = 3;
    }

    public interface ParamsSunroofOpenReminderStatus {
        public static final int INVALID = 3;
        public static final int NO_REMINDER = 0;
        public static final int REMINDER = 1;
        public static final int RESERVED = 2;
    }

    public interface ParamsSunroofStatus {
        public static final int ANTI_PINCH_IN_PARTIALLY_SLIDE = 4;
        public static final int ANTI_PINCH_IN_VENT = 2;
        public static final int FULLY_CLOSE = 3;
        public static final int FULLY_OPEN = 6;
        public static final int PARTIALLY_SLIDE = 5;
        public static final int TILT_UP = 0;
        public static final int UNINITIALIZED = 7;
        public static final int VENT_AREA = 1;
    }

    public interface ParamsSunshadeStatus {
        public static final int FIRST_HALF_OF_SLIDE = 1;
        public static final int FULLY_CLOSE = 3;
        public static final int FULLY_OPEN = 6;
        public static final int HALF_OPEN = 4;
        public static final int RESERVED_0 = 0;
        public static final int RESERVED_5 = 5;
        public static final int SECOND_HALF_OF_SLIDE = 2;
        public static final int UNINITIALIZED = 7;
    }

    public interface ParamsTopWindowPosition {
        public static final int NOT_ACTIVE = 0;
        public static final int POSITION_0 = 1;
        public static final int POSITION_10 = 2;
        public static final int POSITION_100 = 11;
        public static final int POSITION_20 = 3;
        public static final int POSITION_30 = 4;
        public static final int POSITION_40 = 5;
        public static final int POSITION_50 = 6;
        public static final int POSITION_60 = 7;
        public static final int POSITION_70 = 8;
        public static final int POSITION_80 = 9;
        public static final int POSITION_90 = 10;
        public static final int TILT = 12;
    }

    public interface ParamsWindowControl {
        public static final int ALL_WINDOWS_CLOSE = 14;
        public static final int ALL_WINDOWS_COMFORT = 15;
        public static final int ALL_WINDOWS_OPEN = 13;
        public static final int FLWINDOW_CLOSE = 2;
        public static final int FLWINDOW_OPEN = 1;
        public static final int FRONT_WINDOWS_CLOSE = 10;
        public static final int FRONT_WINDOWS_OPEN = 9;
        public static final int FRWINDOW_CLOSE = 4;
        public static final int FRWINDOW_OPEN = 3;
        public static final int NOT_ACTIVE = 0;
        public static final int REAR_WINDOWS_CLOSE = 12;
        public static final int REAR_WINDOWS_OPEN = 11;
        public static final int RLWINDOW_CLOSE = 6;
        public static final int RLWINDOW_OPEN = 5;
        public static final int RRWINDOW_CLOSE = 8;
        public static final int RRWINDOW_OPEN = 7;
    }

    public interface ParamsWindowMode {
        public static final int MODE_ALL_CLOSE = 1;
        public static final int MODE_BREATH = 3;
        public static final int MODE_INVALID = 7;
        public static final int MODE_NO_ACTION = 0;
        public static final int MODE_VENT = 2;
    }

    public interface ParamsWindowPos {
        public static final int POS_10_PERCENT_OPEN = 10;
        public static final int POS_20_PERCENT_OPEN = 20;
        public static final int POS_30_PERCENT_OPEN = 30;
        public static final int POS_40_PERCENT_OPEN = 40;
        public static final int POS_50_PERCENT_OPEN = 50;
        public static final int POS_60_PERCENT_OPEN = 60;
        public static final int POS_70_PERCENT_OPEN = 70;
        public static final int POS_80_PERCENT_OPEN = 80;
        public static final int POS_90_PERCENT_OPEN = 90;
        public static final int POS_FULL_CLOSED = 0;
        public static final int POS_FULL_OPEN = 100;
        public static final int POS_INVALID = 201;
        public static final int POS_NO_ACTION = 200;
    }

    public interface ParamsWindowState {
        public static final int CLOSE = 2;
        public static final int CLOSING = 5;
        public static final int COMFORT = 1;
        public static final int OPEN = 3;
        public static final int OPENING = 6;
        public static final int RESERVED = 7;
        public static final int STARTUP = 0;
        public static final int STOP = 4;
    }

    public interface RoofControlReqParams {
        public static final int CHANGE_CLOSE = 13;
        public static final int CHANGE_OPEN = 12;
        public static final int NOT_USED = 14;
        public static final int NO_COMMAND = 0;
        public static final int ROOF_100_OPEN = 11;
        public static final int ROOF_20_OPEN = 7;
        public static final int ROOF_40_OPEN = 8;
        public static final int ROOF_60_OPEN = 9;
        public static final int ROOF_80_OPEN = 10;
        public static final int ROOF_FULLY_CLOSE = 3;
        public static final int ROOF_FULLY_OPEN = 2;
        public static final int SHADE_CLOSE = 6;
        public static final int SHADE_OPEN = 5;
        public static final int STOP = 1;
        public static final int TILT_UP = 4;
    }

    public interface WipeWashMode {
        public static final int INVALID = -1;
        public static final int OFF = 0;
        public static final int ON = 1;
    }
}
