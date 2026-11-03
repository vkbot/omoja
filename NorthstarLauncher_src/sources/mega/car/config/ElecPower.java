package mega.car.config;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 5, permission = "mega.car.permission.ELEC_POWER")
public interface ElecPower {

    @PropertyDefine(publish = "EnergyInfo/ACChargeCurrentLimit/Set", subscribe = "EnergyInfo/ACChargeCurrentLimit", type = Float.class)
    public static final int ID_AC_CHARGE_CURRENT_LIMIT = 83886099;
    public static final int ID_AC_CHRG_CNCTR_STS = 83886117;

    @PropertyDefine(publish = "EnergyInfo/AverageEnergyConsumption/Set", subscribe = "EnergyInfo/AverageEnergyConsumption", type = Float.class)
    public static final int ID_AVERAGE_ENERGY_CONSUME = 83886155;
    public static final int ID_AVERAGE_ENERGY_CONSUME_10KM = 83886156;
    public static final int ID_AVERAGE_ENERGY_CONSUME_25KM = 83886157;
    public static final int ID_AVERAGE_ENERGY_CONSUME_50KM = 83886158;

    @PropertyDefine(subscribe = "EnergyInfo/BatteryCurrent", type = Float.class)
    public static final int ID_BATTERY_CURRENT = 83886175;

    @PropertyDefine(publish = "EnergyInfo/BatteryHeatingActiveStatus/Set", subscribe = "EnergyInfo/BatteryHeatingActiveStatus", type = Integer.class)
    public static final int ID_BATTERY_HEAT_ACTIVE_STATUS = 83886168;

    @PropertyDefine(publish = "EnergyInfo/BatterySOC/Set", subscribe = "EnergyInfo/BatterySOC", type = Integer.class)
    public static final int ID_BATTERY_SOC = 83886148;

    @PropertyDefine(publish = "EnergyInfo/BatterySOCStatus/Set", subscribe = "EnergyInfo/BatterySOCStatus", type = Integer.class)
    public static final int ID_BATTERY_SOC_STATUS = 83886147;

    @PropertyDefine(publish = "EnergyInfo/BatteryTempratureMin/Set", subscribe = "EnergyInfo/BatteryTempratureMin", type = Float.class)
    public static final int ID_BATTERY_TEMPERATURE_MIN = 83886169;

    @PropertyDefine(publish = "BodyInfo/BatteryHeatingSwitch/Set", subscribe = "BodyInfo/BatteryHeatingSwitch", type = Integer.class)
    public static final int ID_BATT_HEAT = 83886114;

    @PropertyDefine(publish = "Telltale/PowerBatteryHeating/Set", subscribe = "Telltale/PowerBatteryHeating", type = Integer.class)
    public static final int ID_BATT_HEATING_STATUS = 83886139;

    @PropertyDefine(publish = "BodyInfo/BatteryHeatingRemainTime/Set", subscribe = "BodyInfo/BatteryHeatingRemainTime", type = Integer.class)
    public static final int ID_BATT_HEAT_REMAIN_TIME = 83886145;

    @PropertyDefine(publish = "BodyInfo/BatteryHeatingStatus/Set", subscribe = "BodyInfo/BatteryHeatingStatus", type = Integer.class)
    public static final int ID_BATT_HEAT_STATUS = 83886144;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeTime/Set", subscribe = "EnergyInfo/ScheduledChargeTime", type = BookChargeTime.class)
    public static final int ID_BOOK_CHARGE_TIME = 83886171;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeTimeMode/Set", subscribe = "EnergyInfo/ScheduledChargeTimeMode", type = Integer.class)
    public static final int ID_BOOK_CHARGE_TIME_MODE = 83886100;

    @PropertyDefine(publish = "EnergyInfo/ChargeConnectLamp/Set", subscribe = "EnergyInfo/ChargeConnectLamp", type = Integer.class)
    public static final int ID_CHARGE_CONNECT_LAMP = 83886153;
    public static final int ID_CHARGE_HEAT_STATUS = 83886111;
    public static final int ID_CHARGE_HEAT_TIME_CFG = 83886112;

    @PropertyDefine(publish = "EnergyInfo/ChargekWh/Set", subscribe = "EnergyInfo/ChargekWh", type = Integer.class)
    public static final int ID_CHARGE_RANGE_PLUS_KWH = 83886089;

    @PropertyDefine(publish = "EnergyInfo/ChargeState/Set", subscribe = "EnergyInfo/ChargeState", type = Integer.class)
    public static final int ID_CHARGE_STATE = 83886151;

    @PropertyDefine(publish = "EnergyInfo/ChargeStateLamp/Set", subscribe = "EnergyInfo/ChargeStateLamp", type = Integer.class)
    public static final int ID_CHARGE_STATE_LAMP = 83886152;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTSwitch/Set", subscribe = "VehicleCharge/ChargePileBTSwitch", type = Integer.class)
    public static final int ID_CHRG_PILE_CNCT = 83886119;
    public static final int ID_DC_CHRG_CNCTR_STS = 83886118;

    @PropertyDefine(publish = "EnergyInfo/DischargeStatus/Set", subscribe = "EnergyInfo/DischargeStatus", type = Integer.class)
    public static final int ID_DC_DISCHARGE_STATUS = 83886162;

    @PropertyDefine(publish = "EnergyInfo/DischargeCurrent/Set", subscribe = "EnergyInfo/DischargeCurrent", type = Float.class)
    public static final int ID_DISCHARGE_CURRENT = 83886107;

    @PropertyDefine(publish = "EnergyInfo/DischargePower/Set", subscribe = "EnergyInfo/DischargePower", type = Float.class)
    public static final int ID_DISCHARGE_POWER = 83886163;

    @PropertyDefine(publish = "Telltale/DischargeState/Set", subscribe = "Telltale/DischargeState", type = Integer.class)
    public static final int ID_DISCHARGE_STATUS = 83886108;

    @PropertyDefine(publish = "EnergyInfo/DischargeVoltage/Set", subscribe = "EnergyInfo/DischargeVoltage", type = Float.class)
    public static final int ID_DISCHARGE_VOLTAGE = 83886106;

    @PropertyDefine(publish = "BodyInfo/BatteryAutoHeating/Set", subscribe = "BodyInfo/BatteryAutoHeating", type = Integer.class)
    public static final int ID_DRV_BATT_AUTO_HEAT = 83886113;

    @PropertyDefine(publish = "DrivingInfo/EnginePower/Set", subscribe = "DrivingInfo/EnginePower", type = Integer.class)
    public static final int ID_DRV_EGY_IND = 83886128;

    @PropertyDefine(publish = "EnergyInfo/SocHolding/Set", subscribe = "EnergyInfo/SocHolding", type = Integer.class)
    public static final int ID_DRV_ENERGY_HOLD_SOC = 83886104;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeMode/Set", subscribe = "EnergyInfo/ScheduledChargeMode", type = Integer.class)
    public static final int ID_ELEC_POWER_BOOK_CHARGE_MODE = 83886095;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeStartTime/Set", subscribe = "EnergyInfo/ScheduledChargeStartTime", type = Long.class)
    public static final int ID_ELEC_POWER_BOOK_CHARGE_START_TIME = 83886096;

    @PropertyDefine(publish = "EnergyInfo/ScheduledChargeStopTime/Set", subscribe = "EnergyInfo/ScheduledChargeStopTime", type = Long.class)
    public static final int ID_ELEC_POWER_BOOK_CHARGE_STOP_TIME = 83886097;

    @PropertyDefine(publish = "EnergyInfo/ChargeCurrent/Set", subscribe = "EnergyInfo/ChargeCurrent", type = Float.class)
    public static final int ID_ELEC_POWER_CHG_CURRENT = 83886092;

    @PropertyDefine(publish = "BodyInfo/ChargeAutoUnlock/Set", subscribe = "BodyInfo/ChargeAutoUnlock", type = Integer.class)
    public static final int ID_ELEC_POWER_CHG_PLG_UNLOCK = 83886102;

    @PropertyDefine(publish = "EnergyInfo/ChargePower/Set", subscribe = "EnergyInfo/ChargePower", type = Float[].class)
    public static final int ID_ELEC_POWER_CHG_POWER = 83886093;

    @PropertyDefine(publish = "EnergyInfo/ChargeIncreasedRange/Set", subscribe = "EnergyInfo/ChargeIncreasedRange", type = Integer.class)
    public static final int ID_ELEC_POWER_CHG_RANGE_PLUS_MILEAGE = 83886090;

    @PropertyDefine(publish = "EnergyInfo/ChargeType/Set", subscribe = "EnergyInfo/ChargeType", type = Integer.class)
    public static final int ID_ELEC_POWER_CHG_TYPE = 83886088;

    @PropertyDefine(publish = "EnergyInfo/ChargeVoltage/Set", subscribe = "EnergyInfo/ChargeVoltage", type = Float.class)
    public static final int ID_ELEC_POWER_CHG_VOLTAGE = 83886091;
    public static final int ID_ELEC_POWER_CIRCULAR_BOOK_CHARGE_CFG = 83886098;
    public static final int ID_ELEC_POWER_DISCHARGE_CFG = 83886105;

    @PropertyDefine(publish = "EnergyInfo/DischargeSocThreshold/Set", subscribe = "EnergyInfo/DischargeSocThreshold", type = Integer.class)
    public static final int ID_ELEC_POWER_DISCHARGE_SOC_CFG = 83886103;
    public static final int ID_ELEC_POWER_ECO_PLUS_MODE_CFG = 83886143;
    public static final int ID_ELEC_POWER_STS_DSP_CHG_ST = 83886101;
    public static final int ID_ELEC_POWER_USER_STOP_CHG = 83886115;

    @PropertyDefine(publish = "DrivingInfo/EnergyMode/Set", subscribe = "DrivingInfo/EnergyMode", type = Integer.class)
    public static final int ID_ENERGY_SOURCE = 83886129;

    @PropertyDefine(publish = "EnergyInfo/EngineStatus/Set", subscribe = "EnergyInfo/EngineStatus", type = Integer.class)
    public static final int ID_ENGINE_STATUS = 83886146;

    @PropertyDefine(publish = "EnergyInfo/ResidualEnergyDisplayMode/Set", subscribe = "EnergyInfo/ResidualEnergyDisplayMode", type = Integer.class)
    public static final int ID_ENG_DIST_SW = 83886125;

    @PropertyDefine(publish = "EnergyInfo/ChargeStatus/Set", subscribe = "EnergyInfo/ChargeStatus", type = Integer.class)
    public static final int ID_EP_HV_BATT_CHG_STATUS = 83886085;

    @PropertyDefine(publish = "EnergyInfo/HighVoltBatteryCurrent/Set", subscribe = "EnergyInfo/HighVoltBatteryCurrent", type = Float.class)
    public static final int ID_EP_HV_BATT_CURRENT = 83886082;

    @PropertyDefine(publish = "EnergyInfo/SocResidualRange/Set", subscribe = "EnergyInfo/SocResidualRange", type = Float.class)
    public static final int ID_EP_HV_BATT_REMAIN_RANGE = 83886110;

    @PropertyDefine(publish = "EnergyInfo/HighVoltBatteryVoltage/Set", subscribe = "EnergyInfo/HighVoltBatteryVoltage", type = Float.class)
    public static final int ID_EP_HV_BATT_VOL = 83886081;
    public static final int ID_EP_LV_BATT_CHG_STATUS = 83886086;

    @PropertyDefine(publish = "EnergyInfo/LowVoltBatteryCurrent/Set", subscribe = "EnergyInfo/LowVoltBatteryCurrent", type = Float.class)
    public static final int ID_EP_LV_BATT_CURRENT = 83886084;

    @PropertyDefine(publish = "EnergyInfo/LowVoltBatteryVoltage/Set", subscribe = "EnergyInfo/LowVoltBatteryVoltage", type = Float.class)
    public static final int ID_EP_LV_BATT_VOL = 83886083;

    @PropertyDefine(publish = "DrivingInfo/MotorSpeed/Set", subscribe = "DrivingInfo/MotorSpeed", type = Integer.class)
    public static final int ID_EP_MOTOR_SPEED = 83886140;

    @PropertyDefine(publish = "EnergyInfo/ChargeRemainTime/Set", subscribe = "EnergyInfo/ChargeRemainTime", type = Integer.class)
    public static final int ID_EP_REMAIN_CHARGE_TIME = 83886094;
    public static final int ID_EP_WINTER_LONG_TRIP_CFG = 83886142;

    @PropertyDefine(publish = "EnergyInfo/FuelLevel/Set", subscribe = "EnergyInfo/FuelLevel", type = Float.class)
    public static final int ID_FUEL_LEVEL = 83886170;

    @PropertyDefine(publish = "EnergyInfo/FuelPercent/Set", subscribe = "EnergyInfo/FuelPercent", type = Float.class)
    public static final int ID_FUEL_PERCENT = 83886130;

    @PropertyDefine(publish = "EnergyInfo/FuelResidualRange/Set", subscribe = "EnergyInfo/FuelResidualRange", type = Float.class)
    public static final int ID_FUEL_REMAIN_RANGE = 83886131;

    @PropertyDefine(publish = "EnergyInfo/ChargeSocThreshold/Set", subscribe = "EnergyInfo/ChargeSocThreshold", type = Integer.class)
    public static final int ID_HV_CHARGE_TARGET = 83886087;

    @PropertyDefine(publish = "EnergyInfo/SocPercent/Set", subscribe = "EnergyInfo/SocPercent", type = Integer.class)
    public static final int ID_HV_PERCENT = 83886109;

    @PropertyDefine(publish = "EnergyInfo/HydrogenPercent/Set", subscribe = "EnergyInfo/HydrogenPercent", type = Integer.class)
    public static final int ID_HYDROGEN_PERCENT = 83886132;

    @PropertyDefine(publish = "EnergyInfo/HydrogenRemainRange/Set", subscribe = "EnergyInfo/HydrogenRemainRange", type = Integer.class)
    public static final int ID_HYDROGEN_REMAIN_RANGE = 83886133;

    @PropertyDefine(publish = "EnergyInfo/KeyBatteryLevel/Set", subscribe = "EnergyInfo/KeyBatteryLevel", type = Integer.class)
    public static final int ID_KEY_BATT_LEVEL = 83886134;
    public static final int ID_MOMENT_ENERGY_CONSUME_10KM = 83886159;
    public static final int ID_MOMENT_ENERGY_CONSUME_25KM = 83886160;
    public static final int ID_MOMENT_ENERGY_CONSUME_50KM = 83886161;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTConnectRequest/Set", subscribe = "VehicleCharge/ChargePileBTConnectRequest", type = Integer.class)
    public static final int ID_PILE_BLE_CNCT_REQ = 83886122;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTDeletePairRequest/Set", subscribe = "VehicleCharge/ChargePileBTDeletePairRequest", type = Integer.class)
    public static final int ID_PILE_BLE_DELETE_REQ = 83886120;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTCurrentId/Set", subscribe = "VehicleCharge/ChargePileBTCurrentId", type = Integer.class)
    public static final int ID_PILE_BLE_ID = 83886123;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTDisconnectRequest/Set", subscribe = "VehicleCharge/ChargePileBTDisconnectRequest", type = Integer.class)
    public static final int ID_PILE_BLE_OFF_REQ = 83886121;

    @PropertyDefine(publish = "VehicleCharge/ChargePileBTConnectStatus/Set", subscribe = "VehicleCharge/ChargePileBTConnectStatus", type = Integer.class)
    public static final int ID_PILE_CNCT_STS_ID = 83886124;

    @PropertyDefine(publish = "EnergyInfo/PowerBatteryWorkingMode/Set", subscribe = "EnergyInfo/PowerBatteryWorkingMode", type = Integer.class)
    public static final int ID_POWER_BATTERY_WORK_MODE = 83886167;

    @PropertyDefine(publish = "EnergyInfo/RemainingMileage/Set", subscribe = "EnergyInfo/RemainingMileage", type = Float.class)
    public static final int ID_REMAINING_MILEAGE_REAL = 83886164;

    @PropertyDefine(publish = "EnergyInfo/RemainingMileageStandard/Set", subscribe = "EnergyInfo/RemainingMileageStandard", type = Float.class)
    public static final int ID_REMAINING_MILEAGE_STANDARD = 83886165;

    @PropertyDefine(publish = "EnergyInfo/ResidualRangeBy10km/Set", subscribe = "EnergyInfo/ResidualRangeBy10km", type = Float.class)
    public static final int ID_REMAIN_RANGE_BY_10KM = 83886136;

    @PropertyDefine(publish = "EnergyInfo/ResidualRangeBy25km/Set", subscribe = "EnergyInfo/ResidualRangeBy25km", type = Float.class)
    public static final int ID_REMAIN_RANGE_BY_25KM = 83886137;

    @PropertyDefine(publish = "EnergyInfo/ResidualRangeBy50km/Set", subscribe = "EnergyInfo/ResidualRangeBy50km", type = Float.class)
    public static final int ID_REMAIN_RANGE_BY_50KM = 83886138;

    @PropertyDefine(publish = "EnergyInfo/ResidualRange/Set", subscribe = "EnergyInfo/ResidualRange", type = Integer.class)
    public static final int ID_REMAIN_RANGE_BY_INSTANT_SPEED = 83886135;

    @PropertyDefine(publish = "EnergyInfo/RemoteStartReq/Set", subscribe = "EnergyInfo/RemoteStartReq", type = Integer.class)
    public static final int ID_REMOTE_START_REQ = 83886149;
    public static final int ID_RESI_MILG_IN_10KM = 83886172;
    public static final int ID_RESI_MILG_IN_25KM = 83886173;
    public static final int ID_RESI_MILG_IN_50KM = 83886174;

    @PropertyDefine(publish = "EnergyInfo/SmartEnergyManager/Set", subscribe = "EnergyInfo/SmartEnergyManager", type = Integer.class)
    public static final int ID_SMART_ENERGY_MANAGER = 83886154;

    @PropertyDefine(publish = "EnergyInfo/PowerFlowDirection/Set", subscribe = "EnergyInfo/PowerFlowDirection", type = Integer.class)
    public static final int ID_SYS_EGY_FLOW_DIRECTION = 83886127;

    @PropertyDefine(publish = "EnergyInfo/UseCarBook/Set", subscribe = "EnergyInfo/UseCarBook", type = String.class)
    public static final int ID_USE_CAR_BOOK = 83886150;

    @PropertyDefine(publish = "EnergyInfo/EnergyConsumptionModel/Set", subscribe = "EnergyInfo/EnergyConsumptionModel", type = Integer.class)
    public static final int ID_VEH_EGY_CNSE_SELECT = 83886126;
    public static final int MGR_ID = 5;

    public interface BattHeatStatus {
        public static final int BATTERY_FAILURE = 4;
        public static final int BATTERY_HEATING = 1;
        public static final int BATTERY_NO_NEED = 3;
        public static final int LOW_BATTERY = 2;
        public static final int NO_REQUEST = 0;
        public static final int POWER_DRIVE_COOLING = 5;
        public static final int RESERVE = 6;
    }

    public interface BookChargeTimeMode {
        public static final int END = 2;
        public static final int START = 1;
        public static final int START_END = 0;
    }

    public interface ChargeMode {
        public static final int BOOKING_CHARGE = 1;
        public static final int CHARGE_IMMEDIATELY = 0;
    }

    public interface ChargeState {
        public static final int CSD_CHARGEERR = 3;
        public static final int CSD_CHARGEFINISH = 1;
        public static final int CSD_CHARGEHEATING = 4;
        public static final int CSD_CHARGEPILEERROR = 5;
        public static final int CSD_CHARGING = 0;
        public static final int CSD_GRIDWITHOUTPWRSUPLY = 2;
        public static final int CSD_TIMERCHARGEWAIT = 6;
    }

    public interface ChargeType {
        public static final int TYPE_AC_DC_CONFLICT = 7;
        public static final int TYPE_AC_ERROR = 9;
        public static final int TYPE_AC_PILE_16 = 3;
        public static final int TYPE_AC_PILE_32 = 4;
        public static final int TYPE_AC_PILE_63 = 5;
        public static final int TYPE_AC_PLUG_HALF_CONNECT = 8;
        public static final int TYPE_CABLE_CONTROL_BOX_10 = 2;
        public static final int TYPE_DC = 6;
        public static final int TYPE_DC_ERROR = 10;
        public static final int TYPE_HOUSEHOLD_AC_10 = 1;
        public static final int TYPE_NO = 0;
    }

    public interface DCDischargeStatus {
        public static final int DISCHARGE_END = 4;
        public static final int DISCHARGE_PREPARING = 1;
        public static final int DISCHARGE_READY = 2;
        public static final int DISCHARGING = 3;
        public static final int OFF = 0;
    }

    public interface DischargeStatus {
        public static final int DISCHARGING = 2;
        public static final int ERROR = 3;
        public static final int OFF = 0;
        public static final int STARTING = 1;
    }

    public interface EngineStatus {
        public static final int CRANK = 1;
        public static final int RESERVED = 3;
        public static final int RUNNING = 2;
        public static final int STOP = 0;
    }

    public interface HeatingStatus {
        public static final int ACTIVE = 1;
        public static final int ERROR = 2;
        public static final int INACTIVE = 0;
    }

    public interface OnOff {
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public interface ParamsBattChargeStatus {
        public static final int CHARGING_COMPLETE = 3;
        public static final int CHARGING_FULL = 2;
        public static final int CHARGING_PROCESS = 1;
        public static final int HV_BATT_CHG_INVALID = 7;
        public static final int NO_CHARGING = 0;
        public static final int STATION_CHARGING_ERROR = 5;
        public static final int VEHICLE_CHARGING_ERROR = 4;
    }

    public interface ParamsIdEpCruiseStatus {
        public static final int CRUISE_ACTIVE = 3;
        public static final int CRUISE_FAULT = 0;
        public static final int CRUISE_INVALID = 15;
        public static final int CRUISE_OFF = 1;
        public static final int CRUISE_OVERRIDE = 4;
        public static final int CRUISE_STANDBY = 2;
    }

    public interface ParamsIdEpFourWheelDrvMode {
        public static final int FOUR_WHEEL_DRIVEN = 2;
        public static final int FRONT_WHEEL_DRIVEN = 0;
        public static final int NO_WHEEL_DRIVEN = 3;
        public static final int REAR_WHEEL_DRIVEN = 1;
    }

    public interface ParamsLowVolLoadShedLevel {
        public static final int INVALID = 15;
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int LEVEL_4 = 4;
        public static final int LEVEL_5 = 5;
        public static final int LEVEL_6 = 6;
        public static final int NORMAL = 0;
    }

    public interface PowerBatteryState {
        public static final int FAILURE = 5;
        public static final int HV_ACTIVE = 3;
        public static final int INITIALIZING = 0;
        public static final int POWER_DOWN = 4;
        public static final int PRE_CHARGE = 2;
        public static final int READY_TO_SLEEP = 7;
        public static final int STANDBY = 1;
    }

    public static class TimeInfo {
        public int date;
        public int time;
    }

    public static class BookChargeTime implements Parcelable {
        public static final Parcelable.Creator<BookChargeTime> CREATOR = new Parcelable.Creator<BookChargeTime>() { // from class: mega.car.config.ElecPower.BookChargeTime.1
            @Override // android.os.Parcelable.Creator
            public BookChargeTime createFromParcel(Parcel parcel) {
                return new BookChargeTime(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public BookChargeTime[] newArray(int i) {
                return new BookChargeTime[i];
            }
        };
        public int chargeMode;
        public long end;
        public int mode;
        public long start;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public BookChargeTime() {
            this.chargeMode = 1;
            this.start = -1L;
            this.end = -1L;
            this.mode = -1;
        }

        public BookChargeTime(int i, long j, long j2, int i2) {
            this.chargeMode = i;
            this.start = j;
            this.end = j2;
            this.mode = i2;
        }

        public String toString() {
            return "BookChargeTime{chargeMode=" + this.chargeMode + ", start=" + this.start + ", end=" + this.end + ", mode=" + this.mode + '}';
        }

        protected BookChargeTime(Parcel parcel) {
            this.chargeMode = parcel.readInt();
            this.start = parcel.readLong();
            this.end = parcel.readLong();
            this.mode = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.chargeMode);
            parcel.writeLong(this.start);
            parcel.writeLong(this.end);
            parcel.writeInt(this.mode);
        }
    }
}
