package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 4, permission = "mega.car.permission.CAR_DRIVING")
public interface Driving {

    @PropertyDefine(publish = "DrivingInfo/AccPedal/Set", subscribe = "DrivingInfo/AccPedal", type = Float.class)
    public static final int ID_ACC_PEDAL_POS = 67108954;

    @PropertyDefine(publish = "BodyInfo/BrakePedal/Set", subscribe = "BodyInfo/BrakePedal", type = Integer.class)
    public static final int ID_BRAKE_PEDAL_STATUS = 67108871;

    @PropertyDefine(publish = "DrivingInfo/BreakPositon/Set", subscribe = "DrivingInfo/BreakPositon", type = Integer.class)
    public static final int ID_BRAKE_POSITION = 67108960;

    @PropertyDefine(publish = "DrivingInfo/DepartureReminder/Set", subscribe = "DrivingInfo/DepartureReminder", type = Integer.class)
    public static final int ID_DEPARTURE_REMINDER = 67108964;
    public static final int ID_DRIVEMODE_STORAGE = 67108971;
    public static final int ID_DRIVER_INFO_REQ_ACCOUNT_DELETE = 67108895;

    @PropertyDefine(publish = "CDC/AccountId/Set", subscribe = "CDC/AccountId", type = Integer.class)
    public static final int ID_DRIVER_INFO_REQ_ACCOUNT_ID = 67108892;
    public static final int ID_DRIVER_INFO_REQ_MEM_SYS_SAVE_RECALL_COMMAND = 67108894;

    @PropertyDefine(publish = "DrivingInfo/AccumulativeDriveTime/Set", subscribe = "DrivingInfo/AccumulativeDriveTime", type = Integer.class)
    public static final int ID_DRIVER_INFO_STS_ACCUM_MINUTES = 67108890;

    @PropertyDefine(publish = "DrivingInfo/AccumulativeAverageSpeed/Set", subscribe = "DrivingInfo/AccumulativeAverageSpeed", type = Float.class)
    public static final int ID_DRIVER_INFO_STS_ACCUM_SPEED_AVG = 67108900;

    @PropertyDefine(publish = "DrivingInfo/TripDriveRange/Set", subscribe = "DrivingInfo/TripDriveRange", type = Float.class)
    public static final int ID_DRIVER_INFO_STS_CURR_ODOMETER = 67108898;
    public static final int ID_DRIVER_INFO_STS_LOW_BATTERY_VOLT = 67108902;
    public static final int ID_DRIVER_INFO_STS_MEM_SYS_WINDOW = 67108896;

    @PropertyDefine(publish = "DrivingInfo/TripDriveTime/Set", subscribe = "DrivingInfo/TripDriveTime", type = Integer.class)
    public static final int ID_DRIVER_INFO_STS_RUN_MINUTES = 67108897;

    @PropertyDefine(publish = "DrivingInfo/TripAverageSpeed/Set", subscribe = "DrivingInfo/TripAverageSpeed", type = Float.class)
    public static final int ID_DRIVER_INFO_STS_SPEED_AVG = 67108889;

    @PropertyDefine(publish = "DrivingInfo/TotalDriveDistance/Set", subscribe = "DrivingInfo/TotalDriveDistance", type = Float.class)
    public static final int ID_DRIVER_INFO_STS_TOTAL_ODOMETER = 67108883;

    @PropertyDefine(publish = "DrivingInfo/TotalDriveTime/Set", subscribe = "DrivingInfo/TotalDriveTime", type = Integer.class)
    public static final int ID_DRIVER_INFO_STS_TOTAL_TIME = 67108884;
    public static final int ID_DRIVER_INFO_STS_USER_ID = 67108893;

    @PropertyDefine(publish = "DrivingInfo/PowerStatus/Set", subscribe = "DrivingInfo/PowerStatus", type = Integer.class)
    public static final int ID_DRIVER_INFO_STS_VEH_POWER = 67108891;

    @PropertyDefine(publish = "DrivingInfo/ControlLock/Set", subscribe = "DrivingInfo/ControlLock", type = Integer.class)
    public static final int ID_DRIVING_INFO_CONTROL_LOCK = 67108974;

    @PropertyDefine(publish = "DrivingInfo/WindowLock/Set", subscribe = "DrivingInfo/WindowLock", type = Integer.class)
    public static final int ID_DRIVING_INFO_WINDOW_LOCK = 67108973;
    public static final int ID_DRIVING_STATUS = 67108865;

    @PropertyDefine(publish = "BodyInfo/AccelerationMode/Set", subscribe = "BodyInfo/AccelerationMode", type = Integer.class)
    public static final int ID_DRV_ACC_MODE = 67108867;

    @PropertyDefine(publish = "Driving/DrvAutoConvenient/Set", subscribe = "Driving/DrvAutoConvenient", type = Integer.class)
    public static final int ID_DRV_AUTO_CONVENIENT = 67108907;

    @PropertyDefine(publish = "BodyInfo/BrakeBoosterMode/Set", subscribe = "BodyInfo/BrakeBoosterMode", type = Integer.class)
    public static final int ID_DRV_BRAKE_POWER_MODE = 67108903;

    @PropertyDefine(publish = "EnergyInfo/EnergyRecoveryMode/Set", subscribe = "EnergyInfo/EnergyRecoveryMode", type = Integer.class)
    public static final int ID_DRV_BRK_REGEN_MODE = 67108868;

    @PropertyDefine(publish = "DrivingInfo/ChassisModeset/Set", subscribe = "Driving/ChassisModeset", type = Integer.class)
    public static final int ID_DRV_CHASSIS_MODESET = 67108921;

    @PropertyDefine(publish = "Driving/DrvComfortParking/Set", subscribe = "Driving/DrvComfortParking", type = Integer.class)
    public static final int ID_DRV_COMFORT_PARKING = 67108906;

    @PropertyDefine(publish = "Driving/DrvCoolLiquid/Set", subscribe = "Driving/DrvCoolLiquid", type = Integer.class)
    public static final int ID_DRV_COOL_LIQUID_ADD = 67108911;
    public static final int ID_DRV_DISPLAY_INFO = 67108970;

    @PropertyDefine(publish = "EnergyInfo/EnergyManagementMode/Set", subscribe = "EnergyInfo/EnergyManagementMode", type = Integer.class)
    public static final int ID_DRV_ENERGY_MODE = 67108885;

    @PropertyDefine(publish = "EnergyInfo/EnergyManagementModeMemory/Set", subscribe = "EnergyInfo/EnergyManagementModeMemory", type = Integer.class)
    public static final int ID_DRV_ENERGY_MODE_MEM = 67108913;

    @PropertyDefine(publish = "DrivingInfo/DrvEpsModeset/Set", subscribe = "Driving/DrvEpsModeset", type = Integer.class)
    public static final int ID_DRV_EPS_MODESET = 67108919;

    @PropertyDefine(publish = "Driving/DrvHighWay/Set", subscribe = "Driving/DrvHighWay", type = Integer.class)
    public static final int ID_DRV_HIGHWAY_MODE = 67108905;
    public static final int ID_DRV_INFO_COMFORT_ENABLE = 67108886;

    @PropertyDefine(publish = "DrivingInfo/Gear/Set", subscribe = "DrivingInfo/Gear", type = Integer.class)
    public static final int ID_DRV_INFO_GEAR_POSITION = 67108874;

    @PropertyDefine(publish = "DrivingInfo/DrivingInfoType/Set", subscribe = "DrivingInfo/DrivingInfoType", type = Integer.class)
    public static final int ID_DRV_INFO_ODOMETER_INFO = 67108876;

    @PropertyDefine(publish = "DrivingInfo/TripDistantUnit/Set", subscribe = "DrivingInfo/TripDistantUnit", type = Integer.class)
    public static final int ID_DRV_INFO_ODOMETER_INFO_MODE = 67108873;

    @PropertyDefine(changeMode = 2, publish = "DrivingInfo/Speed/Set", subscribe = "DrivingInfo/Speed", type = Float.class)
    public static final int ID_DRV_INFO_SPEED_INFO = 67108875;

    @PropertyDefine(publish = "DrivingInfo/SpeedUnit/Set", subscribe = "DrivingInfo/SpeedUnit", type = Integer.class)
    public static final int ID_DRV_INFO_SPEED_INFO_MODE = 67108872;

    @PropertyDefine(publish = "DrivingInfo/AccumulativeDriveRange/Set", subscribe = "DrivingInfo/AccumulativeDriveRange", type = Float.class)
    public static final int ID_DRV_INFO_TOTAL_TRIP_ODOMETER_INFO = 67108877;
    public static final int ID_DRV_LATCH_STATUS = 67108866;

    @PropertyDefine(publish = "Driving/DrvManualConvenient/Set", subscribe = "Driving/DrvManualConvenient", type = Integer.class)
    public static final int ID_DRV_MANUAL_CONVENIENT = 67108908;

    @PropertyDefine(publish = "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW/Set", subscribe = "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW", type = Integer.class)
    public static final int ID_DRV_MAXFUELCONSUMPTIONMODESW = 67108917;

    @PropertyDefine(publish = "EnergyInfo/MAXFUELCONSUMPTIONSW/Set", subscribe = "EnergyInfo/MAXFUELCONSUMPTIONSW", type = Integer.class)
    public static final int ID_DRV_MAXFUELCONSUMPTIONSW = 67108916;

    @PropertyDefine(publish = "DrivingInfo/DrivingMode/Set", subscribe = "DrivingInfo/DrivingMode", type = Integer.class)
    public static final int ID_DRV_MODE = 67108870;

    @PropertyDefine(changeMode = 2, publish = "DrivingInfo/DrivingModeExchange/Set", subscribe = "DrivingInfo/DrivingModeExchange", type = Integer.class)
    public static final int ID_DRV_MODE_EXCHANGE = 67108979;

    @PropertyDefine(publish = "DrivingInfo/PROPMODESET/Set", subscribe = "Driving/PROPMODESET", type = Integer.class)
    public static final int ID_DRV_PROP_MODESET = 67108920;

    @PropertyDefine(publish = "BodyInfo/CrawlControl/Set", subscribe = "BodyInfo/CrawlControl", type = Integer.class)
    public static final int ID_DRV_SLOW_MODE = 67108904;

    @PropertyDefine(publish = "EnergyInfo/DRVSOCSET/Set", subscribe = "EnergyInfo/DRVSOCSET", type = Integer.class)
    public static final int ID_DRV_SOCSET = 67108918;

    @PropertyDefine(publish = "BodyInfo/EPSMode/Set", subscribe = "BodyInfo/EPSMode", type = Integer.class)
    public static final int ID_DRV_STEERING_MODE = 67108869;

    @PropertyDefine(publish = "Driving/SuspensionAdjustStatus/Set", subscribe = "Driving/SuspensionAdjustStatus", type = Integer.class)
    public static final int ID_DRV_SUSPENSION_ADJUST_STATUS = 67108909;

    @PropertyDefine(publish = "Driving/SuspensionCurrentLevel/Set", subscribe = "Driving/SuspensionCurrentLevel", type = Integer.class)
    public static final int ID_DRV_SUSPENSION_CURRENT_LEVEL = 67108912;

    @PropertyDefine(publish = "Driving/SuspensionMaintain/Set", subscribe = "Driving/SuspensionMaintain", type = Integer.class)
    public static final int ID_DRV_SUSPENSION_MAINTAIN = 67108910;
    public static final int ID_EP_CREEP_MODE = 67108882;
    public static final int ID_EP_CRUISE_STATUS = 67108880;
    public static final int ID_EP_CRUISE_STORED_SPEED = 67108881;

    @PropertyDefine(publish = "DrivingInfo/EVDriveCycleAverageConsumption/Set", subscribe = "DrivingInfo/EVDriveCycleAverageConsumption", type = Float.class)
    public static final int ID_EP_CURR_TRIP_AVG_CONSUMPTION = 67108951;

    @PropertyDefine(publish = "DrivingInfo/EVTripDriveRange/Set", subscribe = "DrivingInfo/EVTripDriveRange", type = Float.class)
    public static final int ID_EP_CURR_TRIP_ODOMETER = 67108941;

    @PropertyDefine(publish = "DrivingInfo/EVTripBDriveTime/Set", subscribe = "DrivingInfo/EVTripBDriveTime", type = Float.class)
    public static final int ID_EP_CURR_TRIP_TIME = 67108946;
    public static final int ID_EP_FOUR_WHEEL_DRV_MODE = 67108879;

    @PropertyDefine(publish = "DrivingInfo/EVLastChargeAverageConsumption/Set", subscribe = "DrivingInfo/EVLastChargeAverageConsumption", type = Float.class)
    public static final int ID_EP_LAST_RECHARGE_AVG_CONSUMPTION = 67108952;

    @PropertyDefine(publish = "DrivingInfo/EVLastChargeDriveRange/Set", subscribe = "DrivingInfo/EVLastChargeDriveRange", type = Float.class)
    public static final int ID_EP_LAST_RECHARGE_ODOMETER = 67108942;

    @PropertyDefine(publish = "DrivingInfo/EVLastChargeDriveTime/Set", subscribe = "DrivingInfo/EVLastChargeDriveTime", type = Float.class)
    public static final int ID_EP_LAST_RECHARGE_TIME = 67108947;

    @PropertyDefine(publish = "DrivingInfo/EVTotalAverageConsumption/Set", subscribe = "DrivingInfo/EVTotalAverageConsumption", type = Float.class)
    public static final int ID_EP_TOTAL_AVG_CONSUMPTION = 67108948;

    @PropertyDefine(publish = "DrivingInfo/EVTotalDriveRange/Set", subscribe = "DrivingInfo/EVTotalDriveRange", type = Float.class)
    public static final int ID_EP_TOTAL_ODOMETER = 67108938;

    @PropertyDefine(publish = "DrivingInfo/EVTotalDriveTime/Set", subscribe = "DrivingInfo/EVTotalDriveTime", type = Float.class)
    public static final int ID_EP_TOTAL_TIME = 67108943;

    @PropertyDefine(publish = "DrivingInfo/EVTripAAverageConsumption/Set", subscribe = "DrivingInfo/EVTripAAverageConsumption", type = Float.class)
    public static final int ID_EP_TRIP_A_AVG_CONSUMPTION = 67108949;

    @PropertyDefine(publish = "DrivingInfo/EVTripADriveRange/Set", subscribe = "DrivingInfo/EVTripADriveRange", type = Float.class)
    public static final int ID_EP_TRIP_A_ODOMETER = 67108939;

    @PropertyDefine(publish = "DrivingInfo/EVTripDriveTime/Set", subscribe = "DrivingInfo/EVTripDriveTime", type = Float.class)
    public static final int ID_EP_TRIP_A_TIME = 67108944;

    @PropertyDefine(publish = "DrivingInfo/EVTripBAverageConsumption/Set", subscribe = "DrivingInfo/EVTripBAverageConsumption", type = Float.class)
    public static final int ID_EP_TRIP_B_AVG_CONSUMPTION = 67108950;

    @PropertyDefine(publish = "DrivingInfo/EVTripBDriveRange/Set", subscribe = "DrivingInfo/EVTripBDriveRange", type = Float.class)
    public static final int ID_EP_TRIP_B_ODOMETER = 67108940;

    @PropertyDefine(publish = "DrivingInfo/EVTripADriveTime/Set", subscribe = "DrivingInfo/EVTripADriveTime", type = Float.class)
    public static final int ID_EP_TRIP_B_TIME = 67108945;

    @PropertyDefine(publish = "DrivingInfo/FuelDriveCycleAverageConsumption/Set", subscribe = "DrivingInfo/FuelDriveCycleAverageConsumption", type = Float.class)
    public static final int ID_FUEL_CURR_TRIP_AVG_CONSUMPTION = 67108936;

    @PropertyDefine(publish = "DrivingInfo/FuelTripDriveRange/Set", subscribe = "DrivingInfo/FuelTripDriveRange", type = Float.class)
    public static final int ID_FUEL_CURR_TRIP_ODOMETER = 67108926;

    @PropertyDefine(publish = "DrivingInfo/FuelTripDriveTime/Set", subscribe = "DrivingInfo/FuelTripDriveTime", type = Float.class)
    public static final int ID_FUEL_CURR_TRIP_TIME = 67108931;

    @PropertyDefine(publish = "DrivingInfo/FuelLastRefuelAverageConsumption/Set", subscribe = "DrivingInfo/FuelLastRefuelAverageConsumption", type = Float.class)
    public static final int ID_FUEL_LAST_REFUEL_AVG_CONSUMPTION = 67108937;

    @PropertyDefine(publish = "DrivingInfo/FuelLastRefuelDriveRange/Set", subscribe = "DrivingInfo/FuelLastRefuelDriveRange", type = Float.class)
    public static final int ID_FUEL_LAST_REFUEL_ODOMETER = 67108927;

    @PropertyDefine(publish = "DrivingInfo/FuelLastRefuelDriveTime/Set", subscribe = "DrivingInfo/FuelLastRefuelDriveTime", type = Float.class)
    public static final int ID_FUEL_LAST_REFUEL_TIME = 67108932;

    @PropertyDefine(publish = "DrivingInfo/FuelTotalAverageConsumption/Set", subscribe = "DrivingInfo/FuelTotalAverageConsumption", type = Float.class)
    public static final int ID_FUEL_TOTAL_AVG_CONSUMPTION = 67108933;

    @PropertyDefine(publish = "DrivingInfo/FuelTotalDriveRange/Set", subscribe = "DrivingInfo/FuelTotalDriveRange", type = Float.class)
    public static final int ID_FUEL_TOTAL_ODOMETER = 67108923;

    @PropertyDefine(publish = "DrivingInfo/FuelTotalDriveTime/Set", subscribe = "DrivingInfo/FuelTotalDriveTime", type = Float.class)
    public static final int ID_FUEL_TOTAL_TIME = 67108928;

    @PropertyDefine(publish = "DrivingInfo/FuelTripAAverageConsumption/Set", subscribe = "DrivingInfo/FuelTripAAverageConsumption", type = Float.class)
    public static final int ID_FUEL_TRIP_A_AVG_CONSUMPTION = 67108934;

    @PropertyDefine(publish = "DrivingInfo/FuelTripADriveRange/Set", subscribe = "DrivingInfo/FuelTripADriveRange", type = Float.class)
    public static final int ID_FUEL_TRIP_A_ODOMETER = 67108924;

    @PropertyDefine(publish = "DrivingInfo/FuelTripADriveTime/Set", subscribe = "DrivingInfo/FuelTripADriveTime", type = Float.class)
    public static final int ID_FUEL_TRIP_A_TIME = 67108929;

    @PropertyDefine(publish = "DrivingInfo/FuelTripBAverageConsumption/Set", subscribe = "DrivingInfo/FuelTripBAverageConsumption", type = Float.class)
    public static final int ID_FUEL_TRIP_B_AVG_CONSUMPTION = 67108935;

    @PropertyDefine(publish = "DrivingInfo/FuelTripBDriveRange/Set", subscribe = "DrivingInfo/FuelTripBDriveRange", type = Float.class)
    public static final int ID_FUEL_TRIP_B_ODOMETER = 67108925;

    @PropertyDefine(publish = "DrivingInfo/FuelTripBDriveTime/Set", subscribe = "DrivingInfo/FuelTripBDriveTime", type = Float.class)
    public static final int ID_FUEL_TRIP_B_TIME = 67108930;

    @PropertyDefine(publish = "EnergyInfo/PowerConsumption/Set", subscribe = "EnergyInfo/PowerConsumption", type = Float.class)
    public static final int ID_INSTANT_POWER_CONSUMPTION = 67108878;

    @PropertyDefine(publish = "DrivingInfo/IntelligentAvoidance/Set", subscribe = "DrivingInfo/IntelligentAvoidance", type = Integer.class)
    public static final int ID_INTELLIGENT_AVOIDANCE = 67108968;

    @PropertyDefine(publish = "DrivingInfo/IntelligentSpeedControl/Set", subscribe = "DrivingInfo/IntelligentSpeedControl", type = Integer.class)
    public static final int ID_INTELLIGENT_SPEED_CONTROL = 67108965;

    @PropertyDefine(publish = "DrivingInfo/LaneAssistIntervention/Set", subscribe = "DrivingInfo/LaneAssistIntervention", type = Integer.class)
    public static final int ID_LANE_ASSIST_INTERVENTION = 67108961;

    @PropertyDefine(publish = "DrivingInfo/LaneAssistWarning/Set", subscribe = "DrivingInfo/LaneAssistWarning", type = Integer.class)
    public static final int ID_LANE_ASSIST_WARNING = 67108969;

    @PropertyDefine(publish = "DrivingInfo/Language/Set", subscribe = "DrivingInfo/Language", type = Integer.class)
    public static final int ID_LANGUAGE_SETTINGS = 67108956;

    @PropertyDefine(publish = "Media/MediaInfo/Set", subscribe = "Media/MediaInfo", type = PropertyDefine.JsonString.class)
    public static final int ID_MEDIA_MEDIA_INFO_SET = 67108976;

    @PropertyDefine(publish = "Media/MediaState/Set", subscribe = "Media/MediaState", type = Integer.class)
    public static final int ID_MEDIA_MEDIA_STATE_SET = 67108977;

    @PropertyDefine(publish = "DrivingInfo/DrivingModeOut/Set", subscribe = "DrivingInfo/DrivingModeOut", type = Integer.class)
    public static final int ID_OUT_DRV_MODE = 67108978;
    public static final int ID_PROPMODE_STORAGE = 67108972;

    @PropertyDefine(publish = "DrivingInfo/RearApproachWarning/Set", subscribe = "DrivingInfo/RearApproachWarning", type = Integer.class)
    public static final int ID_REAR_APPROACH_WARNING = 67108962;

    @PropertyDefine(publish = "DrivingInfo/RearCrossCollisionWarning/Set", subscribe = "DrivingInfo/RearCrossCollisionWarning", type = Integer.class)
    public static final int ID_REAR_CROSS_COLLISION_WARNING = 67108963;

    @PropertyDefine(publish = "DrivingInfo/ResetTotalDrivingInfo/Set", subscribe = "DrivingInfo/ResetTotalDrivingInfo", type = Integer.class)
    public static final int ID_RESET_TOTAL_DRIVING_INFO = 67108957;

    @PropertyDefine(publish = "DrivingInfo/ResetTripA/Set", subscribe = "DrivingInfo/ResetTripA", type = Integer.class)
    public static final int ID_RESET_TRIP_A = 67108958;

    @PropertyDefine(publish = "DrivingInfo/ResetTripB/Set", subscribe = "DrivingInfo/ResetTripB", type = Integer.class)
    public static final int ID_RESET_TRIP_B = 67108959;
    public static final int ID_SEATBELT_LOCK_STATUS = 67108955;

    @PropertyDefine(publish = "DrivingInfo/SteeringWheelAngle/Set", subscribe = "DrivingInfo/SteeringWheelAngle", type = Float.class)
    public static final int ID_STEERING_ANGLE = 67108887;

    @PropertyDefine(publish = "BodyInfo/SteeringModeSwitch/Set", subscribe = "BodyInfo/SteeringModeSwitch", type = Integer.class)
    public static final int ID_STEERING_MODE_SWITCH = 67108975;

    @PropertyDefine(publish = "DrivingInfo/TrafficSignalRecognition/Set", subscribe = "DrivingInfo/TrafficSignalRecognition", type = Integer.class)
    public static final int ID_TRAFFIC_SIGNAL_RECOGNITION = 67108967;

    @PropertyDefine(publish = "DrivingInfo/TrafficSignRecognition/Set", subscribe = "DrivingInfo/TrafficSignRecognition", type = Integer.class)
    public static final int ID_TRAFFIC_SIGN_RECOGNITION = 67108966;

    @PropertyDefine(changeMode = 2, publish = "DrivingInfo/TripAAverageSpeed/Set", subscribe = "DrivingInfo/TripAAverageSpeed", type = Float.class)
    public static final int ID_TRIP_ACERAGE_SPEED_A = 67108980;

    @PropertyDefine(changeMode = 2, publish = "DrivingInfo/TripBAverageSpeed/Set", subscribe = "DrivingInfo/TripBAverageSpeed", type = Float.class)
    public static final int ID_TRIP_ACERAGE_SPEED_B = 67108981;

    @PropertyDefine(publish = "DrivingInfo/TripConsumptionUnit/Set", subscribe = "DrivingInfo/TripConsumptionUnit", type = Integer.class)
    public static final int ID_TRIP_CONSUMPTION_UNIT = 67108922;

    @PropertyDefine(publish = "DrivingInfo/TripElectricUnit/Set", subscribe = "DrivingInfo/TripElectricUnit", type = Integer.class)
    public static final int ID_TRIP_ELECTRIC_UNIT = 67108982;
    public static final int MGR_ID = 4;

    public interface BrakePedalSts {
        public static final int INVALID = 255;
        public static final int NOT_PRESSED = 0;
        public static final int PRESSED = 1;
    }

    public interface DrivingInfoType {
        public static final int AFTER_REPLENISH = 2;
        public static final int CYCLE_TIME = 1;
        public static final int LONG_TIME = 0;
        public static final int TRIP_A = 3;
        public static final int TRIP_B = 4;
    }

    public interface DrivingModeExchange {
        public static final int CHANGE_DOWN = 2;
        public static final int CHANGE_UP = 1;
    }

    public interface ParamsChassisModeSet {
        public static final int ALLROAD = 4;
        public static final int COMFORT = 1;
        public static final int NOREQUEST = 0;
        public static final int NORMAL = 2;
        public static final int SPORT = 3;
    }

    public interface ParamsDrivingStatus {
        public static final int DRIVER_PRESENT = 1;
        public static final int DRIVING = 2;
        public static final int INVALID = 15;
        public static final int PARK = 0;
        public static final int RESERVED = 4;
        public static final int SOFTWARE_UPDATE = 3;
        public static final int UNKNOWN = -1;
    }

    public interface ParamsDrvAccMode {
        public static final int INVALID = 7;
        public static final int NORMAL = 0;
        public static final int SPORT = 1;
    }

    public interface ParamsDrvBrkRegenMode {
        public static final int INVALID = 7;
        public static final int LOW_LEVEL = 1;
        public static final int NORMAL = 0;
        public static final int OFF = 6;
        public static final int STRONG = 2;
    }

    public interface ParamsDrvEnergyMode {
        public static final int FULLELEC = 0;
        public static final int HYBIRD = 1;
        public static final int MODE_INVALID = 7;
        public static final int PWRRETEN = 2;
    }

    public interface ParamsDrvInfoComfortEnable {
        public static final int DISABLE = 0;
        public static final int ENABLE = 1;
    }

    public interface ParamsDrvInfoGearPosition {
        public static final int DRIVING = 3;
        public static final int INVALID = 9;
        public static final int NEUTRAL = 2;
        public static final int PARKING = 0;
        public static final int REVERSE = 1;
        public static final int SPORT = 4;
    }

    public interface ParamsDrvInfoOdometerInfoMode {
        public static final int KILOMETER = 0;
        public static final int MILES = 1;
    }

    public interface ParamsDrvInfoSpeedInfoMode {
        public static final int KILOMETER_PER_HOUR = 0;
        public static final int MILES_PER_HOUR = 1;
    }

    public interface ParamsDrvLatchStatus {
        public static final int EXIT = 0;
        public static final int INVALID = 3;
        public static final int LATCH_DP = 1;
        public static final int RESERVED = 2;
        public static final int UNKNOWN = -1;
    }

    public interface ParamsDrvMode {
        public static final int ALL_ROAD = 11;
        public static final int AUTO = 0;
        public static final int COMFORT = 2;
        public static final int DRIVING = 6;
        public static final int ECO = 1;
        public static final int ECO_PLUS = 4;
        public static final int INDIVIDUAL = 10;
        public static final int INVALID = 7;
        public static final int IPEDAL_OFF = 9;
        public static final int IPEDAL_ON = 8;
        public static final int NORMAL = 5;
        public static final int SNOW = 12;
        public static final int SPORT = 3;
    }

    public interface ParamsDrvSteeringMode {
        public static final int HEAVY = 2;
        public static final int INVALID = 7;
        public static final int LIGHT = 0;
        public static final int MEDIUM = 1;
    }

    public interface ParamsEpsModeSet {
        public static final int COMFORT = 1;
        public static final int INVALID = 3;
        public static final int NO_REQUEST = 0;
        public static final int SPORT = 2;
    }

    public interface ParamsLanguageSet {
        public static final int ENGLISH = 1;
        public static final int SIMPLIFIED_CHINESE = 0;
    }

    public interface ParamsMaxFuelConsumptionModeSW {
        public static final int MFCMS_HIGHSPEED = 1;
        public static final int MFCMS_INVALID = 3;
        public static final int MFCMS_LOWSPEED = 2;
        public static final int MFCMS_NO_COMMAND = 0;
    }

    public interface ParamsMaxFuelConsumptionModeSts {
        public static final int FMCSM_CATALYST_HEATING = 3;
        public static final int FMCSM_HIGH_SPEED = 1;
        public static final int FMCSM_LOW_SPEED = 2;
        public static final int FMCSM_OFF = 0;
    }

    public interface ParamsMemSysCmd {
        public static final int MEM_SYS_CMD_INVALID = 0;
        public static final int MEM_SYS_CMD_NOT_USED = 3;
        public static final int MEM_SYS_CMD_RECALL = 2;
        public static final int MEM_SYS_CMD_SAVE = 1;
    }

    public interface ParamsPropModeSet {
        public static final int PMS_ECO = 1;
        public static final int PMS_NOREQUEST = 0;
        public static final int PMS_SNOW = 4;
        public static final int PMS_SPORT = 3;
        public static final int PMS_STANDARD = 2;
    }

    public interface ParamsSOCSet {
        public static final int EV_MODE = 1;
        public static final int REV_MODE = 2;
        public static final int SMART_MODE = 0;
    }

    public interface ParamsTripConsumptionUnit {
        public static final int KILOMETERS_PER_LITER = 1;
        public static final int LITER_PER_HUNDRED_KILOMETERS = 0;
        public static final int MILES_PER_GALLON_UK = 3;
        public static final int MILES_PER_GALLON_US = 2;
    }

    public interface ParamsVehPowerStatusSts {
        public static final int ACC_ON = 1;
        public static final int IGN_OFF = 0;
        public static final int IGN_ON = 2;
        public static final int START = 3;
    }

    public interface RemainingMileageMode {
        public static final int REAL = 1;
        public static final int STANDARD = 0;
    }

    public interface SuspensionAdjustStatus {
        public static final int ISCSYSSTS_AXISHOLDING = 3;
        public static final int ISCSYSSTS_AXISLIFTING = 1;
        public static final int ISCSYSSTS_AXISLOWERING = 2;
        public static final int ISCSYSSTS_FUNCTION_SHUTDOWN = 4;
        public static final int ISCSYSSTS_INVALID = 0;
    }

    public interface SuspensionLevel {
        public static final int SCL_BETWEENHIGHANDNORMALLEVEL = 2;
        public static final int SCL_BETWEENLOWANDVERYLOWLEVEL = 6;
        public static final int SCL_BETWEENNORMALANDLOWLEVEL = 4;
        public static final int SCL_HIGHLEVE = 1;
        public static final int SCL_INVALID = 0;
        public static final int SCL_LOWLEVEL = 5;
        public static final int SCL_NORMALLEVEL = 3;
        public static final int VERYLOWLEVEL = 7;
    }
}
