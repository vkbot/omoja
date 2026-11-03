package mega.car.config;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 11, permission = "mega.car.permission.CAR_WARNING")
public interface Warnings {

    @PropertyDefine(changeMode = 2, publish = "Power/Abnormal/ShutdownTimer/Set", subscribe = "Power/Abnormal/ShutdownTimer", type = ShutdownTimer.class)
    public static final int ID_ABNORMAL_SHUTDOWN_TIMER = 184549410;

    @PropertyDefine(publish = "Warning/PoorAirQuality/Set", subscribe = "Warning/PoorAirQuality", type = Integer.class)
    public static final int ID_AQS = 184549398;

    @PropertyDefine(publish = "GW_1E5/BcuTextDispReq/Set", subscribe = "GW_1E5/BcuTextDispReq", type = Integer.class)
    public static final int ID_CHARGING_INPUT_ERROR = 184549412;

    @PropertyDefine(publish = "GW_1E5/BcuDcTextDispReq/Set", subscribe = "GW_1E5/BcuDcTextDispReq", type = Integer.class)
    public static final int ID_DC_CHARGING_INPUT_ERROR = 184549415;

    @PropertyDefine(publish = "Info/Discharge/Set", subscribe = "Info/Discharge", type = Integer.class)
    public static final int ID_DISCHARGE_ERROR = 184549399;

    @PropertyDefine(publish = "Warning/DriverFatigue/Set", subscribe = "Warning/DriverFatigue", type = Integer.class)
    public static final int ID_DMS_STATUS = 184549397;

    @PropertyDefine(publish = "Warning/DoorOpen/Set", subscribe = "Warning/DoorOpen", type = Integer.class)
    public static final int ID_DRIVER_INFO_STS_DOOR_AJAR_WARN = 184549394;

    @PropertyDefine(publish = "Telltale/FaultQuantityIndicator/Set", subscribe = "Telltale/FaultQuantityIndicator", type = Integer.class)
    public static final int ID_FAULT_AMOUNT = 184549413;

    @PropertyDefine(changeMode = 2, publish = "List/FaultIndication/Set", subscribe = "List/FaultIndication", type = Integer.class)
    public static final int ID_FAULT_INDICATION = 184549414;

    @PropertyDefine(publish = "FuelBar/Notice/Set", subscribe = "FuelBar/Notice", type = Integer.class)
    public static final int ID_FUEL_BAR_NOTICE = 184549416;

    @PropertyDefine(publish = "Warning/ScreenHighTemperature/1/Set", subscribe = "Warning/ScreenHighTemperature/1", type = Integer.class)
    public static final int ID_INSTRUMENT_SCREEN_HIGHTEMPERATURE = 184549406;

    @PropertyDefine(publish = "Fault/LowVoltBattery/Set", subscribe = "Fault/LowVoltBattery", type = Integer.class)
    public static final int ID_LOW_VOLTAGE_BATTERY_ERROR = 184549405;

    @PropertyDefine(publish = "Warning/ScreenHighTemperature/2/Set", subscribe = "Warning/ScreenHighTemperature/2", type = Integer.class)
    public static final int ID_MAIN_SCREEN_HIGHTEMPERATURE = 184549407;

    @PropertyDefine(publish = "Warning/ScreenHighTemperature/3/Set", subscribe = "Warning/ScreenHighTemperature/3", type = Integer.class)
    public static final int ID_PASSENGER_SCREEN_HIGHTEMPERATURE = 184549408;

    @PropertyDefine(publish = "Warning/PowerBatteryLow/Set", subscribe = "Warning/PowerBatteryLow", type = Integer.class)
    public static final int ID_POWER_BATTERY_LOW = 184549395;

    @PropertyDefine(publish = "Warning/PowerBatteryLowVoice/Set", subscribe = "Warning/PowerBatteryLowVoice", type = Integer.class)
    public static final int ID_POWER_BATTERY_LOW_VOICE = 184549402;

    @PropertyDefine(publish = "Warning/FuelTankLow/Set", subscribe = "Warning/FuelTankLow", type = Integer.class)
    public static final int ID_POWER_FUEL_LOW = 184549396;

    @PropertyDefine(publish = "icdriving/ResetIvi/Set", subscribe = "icdriving/ResetIvi", type = Integer.class)
    public static final int ID_RESET_IVI = 184549411;

    @PropertyDefine(publish = "Warning/SeriouslyCrash/Set", subscribe = "Warning/SeriouslyCrash", type = Integer.class)
    public static final int ID_SERIOUSLY_CRASH = 184549403;
    public static final int ID_TPMS_STS_HIGH_PRESSURE_WARN = 184549393;
    public static final int ID_TPMS_STS_LOW_PRESSURE_WARN = 184549392;

    @PropertyDefine(publish = "Warning/ScreenHighTemperature/4/Set", subscribe = "Warning/ScreenHighTemperature/4", type = Integer.class)
    public static final int ID_VEHICLE_CONTROL_SCREEN_HIGHTEMPERATURE = 184549409;

    @PropertyDefine(publish = "ictelltale/VehicleFaultInfo/Set", subscribe = "ictelltale/VehicleFaultInfo", type = Integer.class)
    public static final int ID_VEHICLE_FAULT_INFO = 184549404;

    @PropertyDefine(publish = "Fault/VehicleBreakdown/Set", subscribe = "Fault/VehicleBreakdown", type = Integer.class)
    public static final int ID_VEHICLE_SERIOUS_BREAKDOWN = 184549401;

    @PropertyDefine(publish = "Fault/VehicleSerious/Set", subscribe = "Fault/VehicleSerious", type = Integer.class)
    public static final int ID_VEHICLE_SERIOUS_ERROR = 184549400;
    public static final int ID_WARN_MSG_DRIVER_INFO_STS_ODOMETER_DIFF_MORE_10KM = 184549379;
    public static final int ID_WARN_MSG_DRIVER_INFO_STS_ODOMETER_OVERFLOW = 184549378;
    public static final int ID_WARN_MSG_DRIVER_INFO_STS_SNOW_FLAKE = 184549380;
    public static final int ID_WARN_MSG_ELEC_POWER_STS_AC_CHARGER_NEED_REMOVED = 184549385;
    public static final int ID_WARN_MSG_ELEC_POWER_STS_BRAKE_NEEDED = 184549384;
    public static final int ID_WARN_MSG_ELEC_POWER_STS_HV_BATT_OVER_TEMPERATURE = 184549381;
    public static final int ID_WARN_MSG_ELEC_POWER_STS_IMMEDIATELY_STOP_DRIVING = 184549383;
    public static final int ID_WARN_MSG_ELEC_POWER_STS_MOTOR_OVER_SPEED = 184549382;
    public static final int ID_WARN_MSG_REAR_CLOSURE_STS_POWER_LIFT_GATE_FAIL = 184549386;
    public static final int ID_WARN_MSG_REAR_CLOSURE_STS_POWER_LIFT_GATE_WARNING = 184549387;
    public static final int ID_WARN_MSG_SEAT_CTL_PASS_LONG_SLIDE = 184549388;
    public static final int ID_WARN_MSG_VEH_STATE_STS_DRIVER_NOT_PRESENT = 184549377;
    public static final int ID_WARN_MSG_VEH_STATE_STS_SWITCH_POWER = 184549390;
    public static final int ID_WARN_MSG_WARN_MSG_VEH_STATE_STS_DRIVER_SEAT_SENSOR = 184549389;
    public static final int MGR_ID = 11;

    public interface ChargeInputError {
        public static final int CHARGE_COMPLETE = 3;
        public static final int CHARGE_EXTENSION = 2;
        public static final int CHARGE_REPLACED = 4;
        public static final int CHARGE_STOP = 1;
        public static final int NO_ERROR = 0;
    }

    public interface CrashOutputStatus {
        public static final int CRASHSTS_BPT_CRASH = 1;
        public static final int CRASHSTS_FRONT_BPT = 3;
        public static final int CRASHSTS_FRONT_CRASH = 2;
        public static final int CRASHSTS_NO_CRASH = 0;
        public static final int CRASHSTS_REAR_BPT = 9;
        public static final int CRASHSTS_REAR_CRASH = 8;
        public static final int CRASHSTS_REAR_FRONT = 10;
        public static final int CRASHSTS_REAR_FRONT_BPT = 11;
        public static final int CRASHSTS_REAR_SIDE = 12;
        public static final int CRASHSTS_REAR_SIDE_BPT = 13;
        public static final int CRASHSTS_REAR_SIDE_FRONT = 14;
        public static final int CRASHSTS_REAR_SIDE_FRONT_BPT = 15;
        public static final int CRASHSTS_RESERVED = 16;
        public static final int CRASHSTS_SIDEF_RONT_BPT = 7;
        public static final int CRASHSTS_SIDE_BPT = 5;
        public static final int CRASHSTS_SIDE_CRASH = 4;
        public static final int CRASHSTS_SIDE_FRONT = 6;
    }

    public interface DCChargeInputError {
        public static final int DC_CHARGE_COMPLETE = 2;
        public static final int DC_CHARGE_EXTEND = 3;
        public static final int DC_CHARGE_REPLACED = 4;
        public static final int DC_CHARGE_STOP = 1;
        public static final int NO_ERROR = 0;
    }

    public interface DischargeError {
        public static final int AC_CONNECT_ERROR = 6;
        public static final int BATTERY_LOW_POWER = 2;
        public static final int BATTERY_POWER_LIMITED = 1;
        public static final int DC_CONNECTED = 3;
        public static final int EPB_NOT_APPLY = 5;
        public static final int NO_ERROR = 0;
        public static final int SYSTEM_ERROR = 4;
    }

    public interface ParamsDMSStatus {
        public static final int DRIVER_FATIGUE = 1;
        public static final int DRIVER_SMOKING = 2;
        public static final int NO_REQUEST = 0;
    }

    public interface ScreenHighTemperature {
        public static final int LEVEL1 = 1;
        public static final int LEVEL2 = 2;
        public static final int LEVEL3 = 3;
        public static final int NORMAL = 0;
    }

    public interface SeriousError {
        public static final int NO_ERROR = 0;
        public static final int PULL_OVER_SAFELY = 1;
        public static final int STAY_AWAY = 2;
    }

    public interface WarnDriverSeat {
        public static final int SENSOR_BEING_OK = 0;
        public static final int SENSOR_BROKEN = 1;
        public static final int SENSOR_FAULTY = 2;
    }

    public interface WarnSwitchPower {
        public static final int BEING_OK = 0;
        public static final int FAIL_ON_DRIVER_PRESENT = 1;
        public static final int FAIL_ON_DRIVING = 2;
    }

    public static class ShutdownTimer implements Parcelable {
        public static final Parcelable.Creator<ShutdownTimer> CREATOR = new Parcelable.Creator<ShutdownTimer>() { // from class: mega.car.config.Warnings.ShutdownTimer.1
            @Override // android.os.Parcelable.Creator
            public ShutdownTimer createFromParcel(Parcel parcel) {
                return new ShutdownTimer(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ShutdownTimer[] newArray(int i) {
                return new ShutdownTimer[i];
            }
        };
        public int countdown_seconds;
        public int mode;
        public String type;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ShutdownTimer(String str, int i, int i2) {
            this.type = str;
            this.mode = i;
            this.countdown_seconds = i2;
        }

        protected ShutdownTimer(Parcel parcel) {
            this.type = parcel.readString();
            this.countdown_seconds = parcel.readInt();
            this.mode = parcel.readInt();
        }

        public String toString() {
            return "ShutdownTimer{type=" + this.type + ", mode=" + this.mode + ", countdown_seconds=" + this.countdown_seconds + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.type);
            parcel.writeInt(this.countdown_seconds);
            parcel.writeInt(this.mode);
        }
    }
}
