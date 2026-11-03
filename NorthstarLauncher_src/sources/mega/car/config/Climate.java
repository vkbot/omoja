package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 2, permission = "mega.car.permission.CLIMATE")
public interface Climate {

    @PropertyDefine(publish = "AC/Setting/ACModeCustom/Set", subscribe = "AC/Setting/ACModeCustom", type = Integer.class)
    public static final int ID_ACMODE_CUSTOM = 33554530;

    @PropertyDefine(publish = "AC/Display/Set", subscribe = "AC/Display", type = Integer.class)
    public static final int ID_AC_DISPLAY = 33554536;

    @PropertyDefine(publish = "AC/FastHeat/Set", subscribe = "AC/FastHeat", type = Integer.class)
    public static final int ID_AC_FAST_HEAT = 33554521;
    public static final int ID_AC_RUN_REQ = 33554498;

    @PropertyDefine(publish = "AC/SystemError/Set", subscribe = "AC/SystemError", type = Integer.class)
    public static final int ID_AC_SYSTEM_ERROR = 33554520;

    @PropertyDefine(publish = "AC/MaxAC/Set", subscribe = "AC/MaxAC", type = Integer.class)
    public static final int ID_AIR_CD_AC_MAX_MODE = 33554439;

    @PropertyDefine(publish = "AC/ACMode/Set", subscribe = "AC/ACMode", type = Integer.class)
    public static final int ID_AIR_CD_AC_MODE = 33554438;

    @PropertyDefine(publish = "AC/ACMode/Front/Set", subscribe = "AC/ACMode/Front", type = Integer.class)
    public static final int ID_AIR_CD_AC_MODE_FRONT = 33554549;

    @PropertyDefine(publish = "AC/ACMode/Rear/Set", subscribe = "AC/ACMode/Rear", type = Integer.class)
    public static final int ID_AIR_CD_AC_MODE_REAR = 33554550;

    @PropertyDefine(publish = "AC/AutoDefOnOffSts/Set", subscribe = "AC/AutoDefOnOffSts", type = Integer.class)
    public static final int ID_AIR_CD_DEFROST_AUTO_MODE = 33554441;
    public static final int ID_AIR_CD_DEFROST_MAX_MODE = 33554440;
    public static final int ID_AIR_CD_ECONOMY_MODE = 33554437;

    @PropertyDefine(publish = "AC/SyncMode/Set", subscribe = "AC/SyncMode", type = Integer.class)
    public static final int ID_AIR_CD_SYNC_DRV_SETTING_MODE = 33554436;

    @PropertyDefine(publish = "AC/SyncMode/All/Set", subscribe = "AC/SyncMode/All", type = Integer.class)
    public static final int ID_AIR_CD_SYNC_DRV_SETTING_MODE_ALL = 33554548;

    @PropertyDefine(publish = "AC/SyncMode/Front/Set", subscribe = "AC/SyncMode/Front", type = Integer.class)
    public static final int ID_AIR_CD_SYNC_DRV_SETTING_MODE_FRONT = 33554546;

    @PropertyDefine(publish = "AC/SyncMode/Rear/Set", subscribe = "AC/SyncMode/Rear", type = Integer.class)
    public static final int ID_AIR_CD_SYNC_DRV_SETTING_MODE_REAR = 33554547;

    @PropertyDefine(publish = "AC/Setting/AirCleanAutoRun/Set", subscribe = "AC/Setting/AirCleanAutoRun", type = Integer.class)
    public static final int ID_AIR_CLEAN_AUTO_RUN = 33554531;
    public static final int ID_AIR_DISTRIBUTION_AUTO_LAMP = 33554462;

    @PropertyDefine(publish = "AC/AirClean/Set", subscribe = "AC/AirClean", type = Integer.class)
    public static final int ID_AQS_IONIZER = 33554461;
    public static final int ID_AQS_SENSITIVITY_CONFIG = 33554472;

    @PropertyDefine(publish = "AC/AutoMode/Set", subscribe = "AC/AutoMode", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE = 33554435;

    @PropertyDefine(publish = "AC/AutoMode/Front/Set", subscribe = "AC/AutoMode/Front", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_FRONT = 33554540;

    @PropertyDefine(publish = "AC/AutoMode/FrontLeft/Set", subscribe = "AC/AutoMode/FrontLeft", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_FRONTLEFT = 33554542;

    @PropertyDefine(publish = "AC/AutoMode/FrontRight/Set", subscribe = "AC/AutoMode/FrontRight", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_FRONTRIGHT = 33554543;

    @PropertyDefine(publish = "AC/AutoMode/Rear/Set", subscribe = "AC/AutoMode/Rear", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_REAR = 33554541;

    @PropertyDefine(publish = "AC/AutoMode/RearLeft/Set", subscribe = "AC/AutoMode/RearLeft", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_REARLEFT = 33554544;

    @PropertyDefine(publish = "AC/AutoMode/RearRight/Set", subscribe = "AC/AutoMode/RearRight", type = Integer.class)
    public static final int ID_AUTO_AIR_CD_MODE_REARRIGHT = 33554545;
    public static final int ID_AUTO_AIR_CIRCULATION_ON_AUTO = 33554466;

    @PropertyDefine(publish = "AC/AutoDefrostDefog/Set", subscribe = "AC/AutoDefrostDefog", type = Integer.class)
    public static final int ID_AUTO_DEFROST_DEFOG = 33554512;

    @PropertyDefine(publish = "AC/AutoDefrostDefogTip/Set", subscribe = "AC/AutoDefrostDefogTip", type = Integer.class)
    public static final int ID_AUTO_DEFROST_DEFOG_TIP = 33554537;

    @PropertyDefine(publish = "AC/AutoNegAniOnOffSts/Set", subscribe = "AC/AutoNegAniOnOffSts", type = Integer.class)
    public static final int ID_AUTO_ION_MODE = 33554519;

    @PropertyDefine(publish = "AC/AutoWindDrying/Set", subscribe = "AC/AutoWindDrying", type = Integer.class)
    public static final int ID_AUTO_WIND_DRYING = 33554510;

    @PropertyDefine(publish = "BodyInfo/KeyLongPressAutoWind/Set", subscribe = "BodyInfo/KeyLongPressAutoWind", type = Integer.class)
    public static final int ID_AUTO_WIND_LONG_PRESS = 33554509;

    @PropertyDefine(publish = "AC/VentilationTimer/Set", subscribe = "AC/VentilationTimer", type = Integer.class)
    public static final int ID_AUTO_WIND_TIMER = 33554511;

    @PropertyDefine(publish = "BodyInfo/KeyUnlockAutoWind/Set", subscribe = "BodyInfo/KeyUnlockAutoWind", type = Integer.class)
    public static final int ID_AUTO_WIND_UNLOCK = 33554508;

    @PropertyDefine(publish = "AC/WindSweepMode/Set", subscribe = "AC/WindSweepMode", type = Integer.class)
    public static final int ID_BLOWER_AUTO_MODE = 33554463;

    @PropertyDefine(publish = "AC/WindSweepMode/Front/Set", subscribe = "AC/WindSweepMode/Front", type = Integer.class)
    public static final int ID_BLOWER_AUTO_MODE_FRONT = 33554582;

    @PropertyDefine(publish = "AC/WindSweepMode/Rear/Set", subscribe = "AC/WindSweepMode/Rear", type = Integer.class)
    public static final int ID_BLOWER_AUTO_MODE_REAR = 33554583;

    @PropertyDefine(publish = "AC/WindSweepMode/RearLeft/Set", subscribe = "AC/WindSweepMode/RearLeft", type = Integer.class)
    public static final int ID_BLOWER_AUTO_MODE_REARLEFT = 33554584;

    @PropertyDefine(publish = "AC/WindSweepMode/RearRight/Set", subscribe = "AC/WindSweepMode/RearRight", type = Integer.class)
    public static final int ID_BLOWER_AUTO_MODE_REARRIGHT = 33554585;

    @PropertyDefine(publish = "AC/WindMode/Set", subscribe = "AC/WindMode", type = Integer.class)
    public static final int ID_BLW_DIRECT = 33554449;

    @PropertyDefine(publish = "AC/WindMode/Front/Set", subscribe = "AC/WindMode/Front", type = Integer.class)
    public static final int ID_BLW_DIRECT_FRONT = 33554564;

    @PropertyDefine(publish = "AC/WindMode/FrontLeft/Set", subscribe = "AC/WindMode/FrontLeft", type = Integer.class)
    public static final int ID_BLW_DIRECT_FRONTLEFT = 33554562;

    @PropertyDefine(publish = "AC/WindMode/FrontRight/Set", subscribe = "AC/WindMode/FrontRight", type = Integer.class)
    public static final int ID_BLW_DIRECT_FRONTRIGHT = 33554563;

    @PropertyDefine(publish = "AC/WindMode/Rear/Set", subscribe = "AC/WindMode/Rear", type = Integer.class)
    public static final int ID_BLW_DIRECT_REAR = 33554565;

    @PropertyDefine(publish = "AC/WindMode/RearLeft/Set", subscribe = "AC/WindMode/RearLeft", type = Integer.class)
    public static final int ID_BLW_DIRECT_REARLEFT = 33554566;

    @PropertyDefine(publish = "AC/WindMode/RearRight/Set", subscribe = "AC/WindMode/RearRight", type = Integer.class)
    public static final int ID_BLW_DIRECT_REARRIGHT = 33554567;

    @PropertyDefine(publish = "AC/WindLevel/Set", subscribe = "AC/WindLevel", type = Integer.class)
    public static final int ID_BLW_LEVEL = 33554448;

    @PropertyDefine(publish = "AC/WindLevel/Front/Set", subscribe = "AC/WindLevel/Front", type = Integer.class)
    public static final int ID_BLW_LEVEL_FRONT = 33554558;

    @PropertyDefine(publish = "AC/WindLevel/FrontLeft/Set", subscribe = "AC/WindLevel/FrontLeft", type = Integer.class)
    public static final int ID_BLW_LEVEL_FRONTLEFT = 33554556;

    @PropertyDefine(publish = "AC/WindLevel/FrontRight/Set", subscribe = "AC/WindLevel/FrontRight", type = Integer.class)
    public static final int ID_BLW_LEVEL_FRONTRIGHT = 33554557;

    @PropertyDefine(publish = "AC/WindLevel/Rear/Set", subscribe = "AC/WindLevel/Rear", type = Integer.class)
    public static final int ID_BLW_LEVEL_REAR = 33554559;

    @PropertyDefine(publish = "AC/WindLevel/RearLeft/Set", subscribe = "AC/WindLevel/RearLeft", type = Integer.class)
    public static final int ID_BLW_LEVEL_REARLEFT = 33554560;

    @PropertyDefine(publish = "AC/WindLevel/RearRight/Set", subscribe = "AC/WindLevel/RearRight", type = Integer.class)
    public static final int ID_BLW_LEVEL_REARRIGHT = 33554561;

    @PropertyDefine(publish = "AC/Setting/CabinAutoClean/Set", subscribe = "AC/Setting/CabinAutoClean", type = Integer.class)
    public static final int ID_CABIN_AUTO_CLEAN = 33554529;

    @PropertyDefine(publish = "AC/Setting/CabinAutomaticVentilation/Set", subscribe = "AC/Setting/CabinAutomaticVentilation", type = Integer.class)
    public static final int ID_CABIN_AUTO_MATICVENTILATION = 33554528;

    @PropertyDefine(publish = "AC/ComfortConfig/Set", subscribe = "AC/ComfortConfig", type = Integer.class)
    public static final int ID_COMFORT_CONFIG = 33554471;

    @PropertyDefine(publish = "AC/CoolantFillingSts/Set", subscribe = "AC/CoolantFillingSts", type = Integer.class)
    public static final int ID_COOLANT_FILL = 33554522;

    @PropertyDefine(publish = "AC/ElectricTemperature/Set", subscribe = "AC/ElectricTemperature", type = Integer.class)
    public static final int ID_ELECTRIC_TEMPERATURE = 33554535;
    public static final int ID_FAN_SPEED_MODE_ON_AUTO = 33554470;

    @PropertyDefine(publish = "AC/Setting/FragranceRefreshFunction/Set", subscribe = "AC/Setting/FragranceRefreshFunction", type = Integer.class)
    public static final int ID_FRAGRANCE_REFRESH_FUNCTION = 33554533;

    @PropertyDefine(publish = "AC/Setting/FragranceWelcomeFunction/Set", subscribe = "AC/Setting/FragranceWelcomeFunction", type = Integer.class)
    public static final int ID_FRAGRANCE_WELCOME_FUNCTION = 33554532;

    @PropertyDefine(publish = "AC/HeatingColdMode/Set", subscribe = "AC/HeatingColdMode", type = Integer.class)
    public static final int ID_HOT_COLD_MODE = 33554494;

    @PropertyDefine(publish = "Sensor/AirQualityAutoNotification/Set", subscribe = "Sensor/AirQualityAutoNotification", type = Integer.class)
    public static final int ID_INSIDE_AIR_QUALITY_AUTO_NOTIFICATION = 33554526;

    @PropertyDefine(publish = "Sensor/AirQualityNotification/Set", subscribe = "Sensor/AirQualityNotification", type = Integer.class)
    public static final int ID_INSIDE_AIR_QUALITY_NOTIFICATION = 33554525;

    @PropertyDefine(publish = "Sensor/InsideTemperature/Set", subscribe = "Sensor/InsideTemperature", type = Float.class)
    public static final int ID_INSIDE_TEMPERATURE = 33554497;

    @PropertyDefine(publish = "Sensor/InsideAirQuality/Set", subscribe = "Sensor/InsideAirQuality", type = Float.class)
    public static final int ID_IN_CABIN_PM25_DENSITY = 33554447;

    @PropertyDefine(publish = "Sensor/InsideAirLevel/Set", subscribe = "Sensor/InsideAirLevel", type = Integer.class)
    public static final int ID_IN_CABIN_PM25_LEVEL = 33554516;

    @PropertyDefine(publish = "AC/RearViewMirrorHeating/Set", subscribe = "AC/RearViewMirrorHeating", type = Integer.class)
    public static final int ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT = 33554460;

    @PropertyDefine(publish = "AC/RearViewMirrorHeating/Left/Set", subscribe = "AC/RearViewMirrorHeating/Left", type = Integer.class)
    public static final int ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT_LEFT = 33554578;

    @PropertyDefine(publish = "AC/RearViewMirrorHeating/Right/Set", subscribe = "AC/RearViewMirrorHeating/Right", type = Integer.class)
    public static final int ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT_RIGHT = 33554579;

    @PropertyDefine(publish = "Sensor/OutsideTemperature/Set", subscribe = "Sensor/OutsideTemperature", type = Float.class)
    public static final int ID_OUTSIDE_TEMPERATURE = 33554496;

    @PropertyDefine(publish = "Sensor/LightIntensity/Set", subscribe = "Sensor/LightIntensity", type = Integer.class)
    public static final int ID_OUT_CABIN_LIGHT_INTENSITY = 33554445;

    @PropertyDefine(publish = "Sensor/OutsideAirQuality/Set", subscribe = "Sensor/OutsideAirQuality", type = Float.class)
    public static final int ID_OUT_CABIN_PM25_DENSITY = 33554444;

    @PropertyDefine(publish = "Sensor/OutsideAirLevel/Set", subscribe = "Sensor/OutsideAirLevel", type = Integer.class)
    public static final int ID_OUT_CABIN_PM25_LEVEL = 33554515;
    public static final int ID_PM25_CLEANER_MODE = 33554452;

    @PropertyDefine(publish = "AC/RearDefrost/Set", subscribe = "AC/RearDefrost", type = Integer.class)
    public static final int ID_REAR_DEFROST = 33554459;

    @PropertyDefine(publish = "AC/RearLock/Set", subscribe = "AC/RearLock", type = Integer.class)
    public static final int ID_REAR_LOCK = 33554513;

    @PropertyDefine(publish = "AC/CycleMode/Set", subscribe = "AC/CycleMode", type = Integer.class)
    public static final int ID_RECYCLE_DOOR_MODE = 33554451;

    @PropertyDefine(publish = "AC/RemoteAcControl/Set", subscribe = "AC/RemoteAcControl", type = Integer.class)
    public static final int ID_REMOTE_AC_CONTROL = 33554517;

    @PropertyDefine(publish = "AC/RemoteFrontDefrost/Set", subscribe = "AC/RemoteFrontDefrost", type = Integer.class)
    public static final int ID_REMOTE_FRONT_DEFROST = 33554518;
    public static final int ID_REQ_DUAL_TEMP_BY_VR = 33554481;
    public static final int ID_REQ_DUAL_TEMP_DELTA_VALUE_BY_VR = 33554479;

    @PropertyDefine(publish = "AC/FrontDefrost/Set", subscribe = "AC/FrontDefrost", type = Integer.class)
    public static final int ID_REQ_FRONT_DEFROST = 33554486;
    public static final int ID_REQ_HVAC_ON_OFF_VR = 33554489;

    @PropertyDefine(publish = "AC/Plasma/Set", subscribe = "AC/Plasma", type = Integer.class)
    public static final int ID_REQ_ION_MODE = 33554488;
    public static final int ID_REQ_WIND_SPEED_DELTA_VALUE_BY_VR = 33554484;
    public static final int ID_SEAT_AUTO_HEATING_VENT = 33554468;

    @PropertyDefine(publish = "AC/SeatHeating/Set", subscribe = "AC/SeatHeating", type = Integer.class)
    public static final int ID_SEAT_HEAT = 33554453;

    @PropertyDefine(publish = "AC/SeatHeating/FrontLeft/Set", subscribe = "AC/SeatHeating/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_HEAT_FRONTLEFT = 33554568;

    @PropertyDefine(publish = "AC/SeatHeating/FrontRight/Set", subscribe = "AC/SeatHeating/FrontRight", type = Integer.class)
    public static final int ID_SEAT_HEAT_FRONTRIGHT = 33554569;

    @PropertyDefine(publish = "AC/SeatHeating/RearLeft/Set", subscribe = "AC/SeatHeating/RearLeft", type = Integer.class)
    public static final int ID_SEAT_HEAT_REARLEFT = 33554570;

    @PropertyDefine(publish = "AC/SeatHeating/RearMiddle/Set", subscribe = "AC/SeatHeating/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_HEAT_REARMIDDLE = 33554571;

    @PropertyDefine(publish = "AC/SeatHeating/RearRight/Set", subscribe = "AC/SeatHeating/RearRight", type = Integer.class)
    public static final int ID_SEAT_HEAT_REARRIGHT = 33554572;

    @PropertyDefine(publish = "AC/SeatVentilation/Set", subscribe = "AC/SeatVentilation", type = Integer.class)
    public static final int ID_SEAT_VENT = 33554454;

    @PropertyDefine(publish = "AC/SeatVentilation/FrontLeft/Set", subscribe = "AC/SeatVentilation/FrontLeft", type = Integer.class)
    public static final int ID_SEAT_VENT_FRONTLEFT = 33554573;

    @PropertyDefine(publish = "AC/SeatVentilation/FrontRight/Set", subscribe = "AC/SeatVentilation/FrontRight", type = Integer.class)
    public static final int ID_SEAT_VENT_FRONTRIGHT = 33554574;

    @PropertyDefine(publish = "AC/SeatVentilation/RearLeft/Set", subscribe = "AC/SeatVentilation/RearLeft", type = Integer.class)
    public static final int ID_SEAT_VENT_REARLEFT = 33554575;

    @PropertyDefine(publish = "AC/SeatVentilation/RearMiddle/Set", subscribe = "AC/SeatVentilation/RearMiddle", type = Integer.class)
    public static final int ID_SEAT_VENT_REARMIDDLE = 33554576;

    @PropertyDefine(publish = "AC/SeatVentilation/RearRight/Set", subscribe = "AC/SeatVentilation/RearRight", type = Integer.class)
    public static final int ID_SEAT_VENT_REARRIGHT = 33554577;
    public static final int ID_STS_AIR_QUALITY_SNS_SUPPORTED = 33554467;
    public static final int ID_STS_ION_SUPPORTED = 33554465;

    @PropertyDefine(publish = "AC/ElectricAirOutletSwitch/Set", subscribe = "AC/ElectricAirOutletSwitch", type = Integer.class)
    public static final int ID_SWT = 33554500;
    public static final int ID_SWT_AUTO = 33554503;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/Set", subscribe = "AC/ElectricAirOutletDirection", type = Integer.class)
    public static final int ID_SWT_DIRECTION = 33554514;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/FrontLeft/Set", subscribe = "AC/ElectricAirOutletDirection/FrontLeft", type = Integer.class)
    public static final int ID_SWT_DIRECTION_FRONTLEFT = 33554603;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/FrontLeftMiddle/Set", subscribe = "AC/ElectricAirOutletDirection/FrontLeftMiddle", type = Integer.class)
    public static final int ID_SWT_DIRECTION_FRONTLEFTMIDDLE = 33554604;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/FrontRight/Set", subscribe = "AC/ElectricAirOutletDirection/FrontRight", type = Integer.class)
    public static final int ID_SWT_DIRECTION_FRONTRIGHT = 33554605;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/FrontRightMiddle/Set", subscribe = "AC/ElectricAirOutletDirection/FrontRightMiddle", type = Integer.class)
    public static final int ID_SWT_DIRECTION_FRONTRIGHTMIDDLE = 33554606;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/RearLeft/Set", subscribe = "AC/ElectricAirOutletDirection/RearLeft", type = Integer.class)
    public static final int ID_SWT_DIRECTION_REARLEFT = 33554607;

    @PropertyDefine(publish = "AC/ElectricAirOutletDirection/RearRight/Set", subscribe = "AC/ElectricAirOutletDirection/RearRight", type = Integer.class)
    public static final int ID_SWT_DIRECTION_REARRIGHT = 33554608;

    @PropertyDefine(publish = "AC/ElectricAirOutletSwitch/FrontLeft/Set", subscribe = "AC/ElectricAirOutletSwitch/FrontLeft", type = Integer.class)
    public static final int ID_SWT_FRONTLEFT = 33554591;

    @PropertyDefine(publish = "AC/ElectricAirOutletSwitch/FrontLeftMiddle/Set", subscribe = "AC/ElectricAirOutletSwitch/FrontLeftMiddle", type = Integer.class)
    public static final int ID_SWT_FRONTLEFTMIDDLE = 33554592;

    @PropertyDefine(publish = "AC/ElectricAirOutletSwitch/FrontRight/Set", subscribe = "AC/ElectricAirOutletSwitch/FrontRight", type = Integer.class)
    public static final int ID_SWT_FRONTRIGHT = 33554593;

    @PropertyDefine(publish = "AC/ElectricAirOutletSwitch/FrontRightMiddle/Set", subscribe = "AC/ElectricAirOutletSwitch/FrontRightMiddle", type = Integer.class)
    public static final int ID_SWT_FRONTRIGHTMIDDLE = 33554594;

    @PropertyDefine(publish = "AC/ElectricAirOutletHorizontal/Set", subscribe = "AC/ElectricAirOutletHorizontal", type = Integer.class)
    public static final int ID_SWT_HORIZONTAL = 33554501;
    public static final int ID_SWT_HORIZONTAL_AUTO = 33554504;

    @PropertyDefine(publish = "AC/ElectricAirOutletHorizontal/FrontLeft/Set", subscribe = "AC/ElectricAirOutletHorizontal/FrontLeft", type = Integer.class)
    public static final int ID_SWT_HORIZONTAL_FRONTLEFT = 33554595;

    @PropertyDefine(publish = "AC/ElectricAirOutletHorizontal/FrontLeftMiddle/Set", subscribe = "AC/ElectricAirOutletHorizontal/FrontLeftMiddle", type = Integer.class)
    public static final int ID_SWT_HORIZONTAL_FRONTLEFTMIDDLE = 33554596;

    @PropertyDefine(publish = "AC/ElectricAirOutletHorizontal/FrontRight/Set", subscribe = "AC/ElectricAirOutletHorizontal/FrontRight", type = Integer.class)
    public static final int ID_SWT_HORIZONTAL_FRONTRIGHT = 33554597;

    @PropertyDefine(publish = "AC/ElectricAirOutletHorizontal/FrontRightMiddle/Set", subscribe = "AC/ElectricAirOutletHorizontal/FrontRightMiddle", type = Integer.class)
    public static final int ID_SWT_HORIZONTAL_FRONTRIGHTMIDDLE = 33554598;

    @PropertyDefine(publish = "AC/ElectricAirOutletVertical/Set", subscribe = "AC/ElectricAirOutletVertical", type = Integer.class)
    public static final int ID_SWT_VERTICAL = 33554502;
    public static final int ID_SWT_VERTICAL_AUTO = 33554505;

    @PropertyDefine(publish = "AC/ElectricAirOutletVertical/FrontLeft/Set", subscribe = "AC/ElectricAirOutletVertical/FrontLeft", type = Integer.class)
    public static final int ID_SWT_VERTICAL_FRONTLEFT = 33554599;

    @PropertyDefine(publish = "AC/ElectricAirOutletVertical/FrontLeftMiddle/Set", subscribe = "AC/ElectricAirOutletVertical/FrontLeftMiddle", type = Integer.class)
    public static final int ID_SWT_VERTICAL_FRONTLEFTMIDDLE = 33554600;

    @PropertyDefine(publish = "AC/ElectricAirOutletVertical/FrontRight/Set", subscribe = "AC/ElectricAirOutletVertical/FrontRight", type = Integer.class)
    public static final int ID_SWT_VERTICAL_FRONTRIGHT = 33554601;

    @PropertyDefine(publish = "AC/ElectricAirOutletVertical/FrontRightMiddle/Set", subscribe = "AC/ElectricAirOutletVertical/FrontRightMiddle", type = Integer.class)
    public static final int ID_SWT_VERTICAL_FRONTRIGHTMIDDLE = 33554602;

    @PropertyDefine(publish = "AC/Temperature/Set", subscribe = "AC/Temperature", type = Float.class)
    public static final int ID_TEMPERATURE = 33554442;

    @PropertyDefine(publish = "AC/Temperature/FrontLeft/Set", subscribe = "AC/Temperature/FrontLeft", type = Float.class)
    public static final int ID_TEMPERATURE_FRONTLEFT = 33554551;

    @PropertyDefine(publish = "AC/Temperature/FrontRight/Set", subscribe = "AC/Temperature/FrontRight", type = Float.class)
    public static final int ID_TEMPERATURE_FRONTRIGHT = 33554552;

    @PropertyDefine(publish = "AC/Temperature/Rear/Set", subscribe = "AC/Temperature/Rear", type = Float.class)
    public static final int ID_TEMPERATURE_REAR = 33554555;

    @PropertyDefine(publish = "AC/Temperature/RearLeft/Set", subscribe = "AC/Temperature/RearLeft", type = Float.class)
    public static final int ID_TEMPERATURE_REARLEFT = 33554553;

    @PropertyDefine(publish = "AC/Temperature/RearRight/Set", subscribe = "AC/Temperature/RearRight", type = Float.class)
    public static final int ID_TEMPERATURE_REARRIGHT = 33554554;

    @PropertyDefine(publish = "AC/TemperatureUnit/Set", subscribe = "AC/TemperatureUnit", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT = 33554495;

    @PropertyDefine(publish = "AC/TemperatureUnit/FrontLeft/Set", subscribe = "AC/TemperatureUnit/FrontLeft", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT_FRONTLEFT = 33554586;

    @PropertyDefine(publish = "AC/TemperatureUnit/FrontRight/Set", subscribe = "AC/TemperatureUnit/FrontRight", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT_FRONTRIGHT = 33554587;

    @PropertyDefine(publish = "AC/TemperatureUnit/Rear/Set", subscribe = "AC/TemperatureUnit/Rear", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT_REAR = 33554590;

    @PropertyDefine(publish = "AC/TemperatureUnit/RearLeft/Set", subscribe = "AC/TemperatureUnit/RearLeft", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT_REARLEFT = 33554588;

    @PropertyDefine(publish = "AC/TemperatureUnit/RearRight/Set", subscribe = "AC/TemperatureUnit/RearRight", type = Integer.class)
    public static final int ID_TEMPERATURE_UNIT_REARRIGHT = 33554589;

    @PropertyDefine(publish = "VehicleBody/VehicleMaintenance/ACFilterChangeTips/Set", subscribe = "VehicleBody/VehicleMaintenance/ACFilterChangeTips", type = Integer.class)
    public static final int ID_VEHICLE_AC_FILTER_CHANGE_TIPS = 33554527;

    @PropertyDefine(publish = "AC/Status/Set", subscribe = "AC/Status", type = Integer.class)
    public static final int ID_WHOLE_CABIN_AIR_CD = 33554433;

    @PropertyDefine(publish = "AC/Status/Front/Set", subscribe = "AC/Status/Front", type = Integer.class)
    public static final int ID_WHOLE_CABIN_AIR_CD_FRONT = 33554538;

    @PropertyDefine(publish = "AC/Status/Rear/Set", subscribe = "AC/Status/Rear", type = Integer.class)
    public static final int ID_WHOLE_CABIN_AIR_CD_REAR = 33554539;
    public static final int MGR_ID = 2;

    public interface AirQualityLevel {
        public static final int CRITICAL = 5;
        public static final int EXCELLENT = 0;
        public static final int GOOD = 1;
        public static final int INVALID = 7;
        public static final int MILD = 2;
        public static final int MODERATE = 3;
        public static final int SEVERE = 4;
    }

    public interface ParamsAirCdComfortConfig {
        public static final int FAST = 3;
        public static final int INVALID = 0;
        public static final int NORMAL = 2;
        public static final int SOFT = 1;
    }

    public interface ParamsAqsSensitivity {
        public static final int HIGH = 1;
        public static final int INVALID = 0;
        public static final int LOW = 3;
        public static final int NORMAL = 2;
    }

    public interface ParamsBlowMode {
        public static final int FREE = 1;
        public static final int MANUAL = 0;
        public static final int SMART = 3;
        public static final int SWEEP = 2;
    }

    public interface ParamsBlowModeH53 {
        public static final int AIRAUTO = 4;
        public static final int AIRMANUAL = 1;
        public static final int AIRNOVENT = 3;
        public static final int AIROFF = 5;
        public static final int AIRTOVENT = 2;
        public static final int NOREQUEST = 0;
    }

    public interface ParamsDrvInfoTemperatureShowMode {
        public static final int CELSIUS = 0;
        public static final int FAHRENHEIT = 1;
    }

    public interface ParamsFanSpeedModeInAuto {
        public static final int HIGH = 3;
        public static final int INVALID = 0;
        public static final int LOW = 1;
        public static final int NORMAL = 2;
    }

    public interface ParamsFrontBlwDirect {
        public static final int ALL = 7;
        public static final int DEFROST = 4;
        public static final int FACE = 1;
        public static final int FACE_DEFROST = 8;
        public static final int FACE_FLOOR = 3;
        public static final int FLOOR = 2;
        public static final int FLOOR_DEFROST = 6;
        public static final int NONE = 0;
    }

    public interface ParamsFrontBlwLevel {
        public static final int LEVEL1 = 1;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int LEVEL6 = 6;
        public static final int LEVEL7 = 7;
        public static final int LEVEL8 = 8;
        public static final int OFF = 0;
    }

    public interface ParamsHotCold {
        public static final int AUTO = 4;
        public static final int COLD = 1;
        public static final int HOT = 2;
        public static final int INVALID = 0;
        public static final int VENT = 3;
    }

    public interface ParamsPm25CleanerMode {
        public static final int AUTO = 2;
        public static final int LOW = 1;
        public static final int OFF = 0;
    }

    public interface ParamsPressedReq {
        public static final int NOT_PRESSED = 0;
        public static final int PRESSED = 1;
    }

    public interface ParamsRearBlwLevel {
        public static final int INVALID = 15;
        public static final int LEVEL1 = 1;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int LEVEL4 = 4;
        public static final int LEVEL5 = 5;
        public static final int LEVEL6 = 6;
        public static final int NO_DISPLAY = 0;
        public static final int OFF = 7;
    }

    public interface ParamsRecycleDoorMode {
        public static final int LOOP_AUTO = 2;
        public static final int LOOP_DEFAULT = 3;
        public static final int LOOP_INNER = 1;
        public static final int LOOP_INVALID = 4;
        public static final int LOOP_OUTSIDE = 0;
    }

    public interface ParamsSeatHeatVent {
        public static final int FAILED = 4;
        public static final int HIGH = 3;
        public static final int LOW = 1;
        public static final int MID = 2;
        public static final int OFF = 0;
        public static final int TIMEOUT = 5;
    }
}
