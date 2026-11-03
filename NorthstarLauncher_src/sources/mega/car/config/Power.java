package mega.car.config;

import android.app.AppGlobals;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 45, permission = "mega.car.permission.CAR_POWER")
public interface Power {

    @PropertyDefine(changeMode = 2, publish = "Power/AndroidStatusReport", type = ReportEntry.class)
    public static final int ANDROID_STATUS_REPORT = 754974721;

    @PropertyDefine(subscribe = "Battery/HotWarning", type = Integer.class)
    public static final int BATTERY_HOTWARNING = 754974729;

    @PropertyDefine(publish = "car_power_str_stage", serializable = false, type = String.class)
    public static final int CAR_POWER_STR_STAGE = 754974732;

    @PropertyDefine(changeMode = 2, publish = "ControlScreen/Control/Req", type = Integer.class)
    public static final int CONTROL_FOR_MODIFY_SCREEN = 754974727;

    @PropertyDefine(changeMode = 2, publish = "Power/EnableSTR", subscribe = "Power/EnableSTR/Set", type = Integer.class)
    public static final int ENABLE_STR = 754974722;

    @PropertyDefine(changeMode = 2, subscribe = "IPC_POWER_VOLTAGE", type = Integer.class)
    public static final int IPC_POWER_VOLTAGE = 754974728;
    public static final int MGR_ID = 45;
    public static final String PERMISSION = "mega.car.permission.CAR_POWER";

    @PropertyDefine(changeMode = 2, subscribe = "Power/EFSM/mode", type = PowerEFSMMode.class)
    public static final int POWER_EFSM_MODE = 754974726;

    @PropertyDefine(changeMode = 2, publish = "ControlScreen/ScreenLight/req", type = ScreenControlEntry.class)
    public static final int SCREEN_CONTROL_REQUEST = 754974724;

    @PropertyDefine(changeMode = 2, subscribe = "ControlScreen/ScreenLight/Set", type = Long.class)
    public static final int SCREEN_CONTROL_SET = 754974725;
    public static final String SERVICE_NAME = "Power";

    @PropertyDefine(changeMode = 2, publish = "Power/STRExpirationDays", type = Integer.class)
    public static final int SET_STR_EXPIRATION_DAYS = 754974723;

    @PropertyDefine(changeMode = 2, publish = "uartrpc_svc/pm/req", serializable = false, type = byte[].class)
    public static final int UART_RPC_SVC_PM_REQ = 754974730;

    @PropertyDefine(changeMode = 2, serializable = false, subscribe = "uartrpc_svc/pm/resp", type = byte[].class)
    public static final int UART_RPC_SVC_PM_RESP = 754974731;

    public interface ParamsPowerVoltage {
        public static final int HIGH_VOLTAGE = 3;
        public static final int LOW_VOLTAGE = 1;
        public static final int LOW_VOLTAGE_SCREEN_OFF = 16;
        public static final int LOW_VOLTAGE_SCREEN_ON = 17;
        public static final int NORMAL = 2;
        public static final int ULTRA_HIGH_VOLTAGE = 4;
        public static final int ULTRA_LOW_VOLTAGE = 0;
    }

    public @interface PowerChangeDirection {
        public static final int REASON_AUTONOMOUS = 0;
        public static final int REASON_FROM_EVENT = 1;
    }

    public @interface PowerChangeReason {
        public static final String AC_CONTROL_TRIGGER = "ac_control_trigger";
        public static final String CAR_PLAY = "car_play";
        public static final String DLNA = "dlna";
        public static final String FROM_QNX = "from_qnx";
        public static final String HI_CAR = "hi_car";
        public static final String NOTIFICATION = "notification";
        public static final String RVC_AVM = "rvc_avm";
        public static final String SCREEN_CHANGE = "screen_change";
        public static final String UNKNOWN = "unknown";
        public static final String VOICE_ASSIST = "voice_assist";
        public static final String VOICE_ASSIST_HARD_KEY = "voice_assist_hard_key";
    }

    public @interface PowerEFSM {
        public static final String ACTIVE = "active";
        public static final String EXCEPTION = "exception";
        public static final String HALF_MODE = "halfMode";
        public static final String RVSM = "RVSM";
        public static final String SCREEN_SAVER = "screenSaver";
        public static final String SOC_POWER_OFF = "SoCPowerOff";
        public static final String STANDBY = "standby";
        public static final String STR = "STR";
    }

    public @interface PowerStatusEnum {
        public static final String ABANDONED = "ABANDONED";
        public static final String BOOT_ANIMATION = "BOOT_ANIMATION";
        public static final String CRASH_MODE = "CRASH_MODE";
        public static final String DYNO_MODE = "DYNO_MODE";
        public static final String FACTORY_MODE = "FACTORY_MODE";
        public static final String FACTORY_PAUSED_MODE = "FACTORY_PAUSED_MODE";
        public static final String HIGH_TEMPERATURE = "HIGH_TEMPERATURE";
        public static final String LOW_VOLTAGE = "LOW_VOLTAGE";
        public static final String ON = "ON";
        public static final String OTA = "OTA";
        public static final String OVER_VOLTAGE = "OVER_VOLTAGE";
        public static final String REMOTE_BOOT = "REMOTE_BOOT";
        public static final String SCREENSAVER = "SCREENSAVER";
        public static final String SHUTDOWN_PREPARE = "SHUTDOWN_PREPARE";
        public static final String SHUTDOWN_PREPARED = "SHUTDOWN_PREPARED";
        public static final String STAND_BY = "STAND_BY";
        public static final String TEMPORARY_WORKING = "TEMPORARY_WORKING";
        public static final String TRANSPORT_MODE = "TRANSPORT_MODE";
        public static final String TRANSPORT_PAUSED_MODE = "TRANSPORT_PAUSED_MODE";
        public static final String WAIT_FOR_COMMAND = "WAIT_FOR_COMMAND";
        public static final String WAIT_FOR_FINISH = "WAIT_FOR_FINISH";
    }

    public @interface ScreenControlMode {
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public @interface ScreenControlReason {
        public static final String APA_WIDGET = "apa-widget";
        public static final String AVM_START = "avm-start";
        public static final String BRAKE_PEDAL_STATUS = "ID_BRAKE_PEDAL_STATUS";
        public static final String CALL_RINGING = "call-ringing";
        public static final String CAMP_MODE = "camp-mode";
        public static final String CAR_POWER = "car_power";
        public static final String CHARGE_PLUGGED = "charge_plugged";
        public static final String DOOR = "ID_DOOR";
        public static final String DRIVER_INFO_STS_VEH_POWER = "ID_DRIVER_INFO_STS_VEH_POWER";
        public static final String HV_PERCENT = "ID_HV_PERCENT";
        public static final String POWER_TO_EXCEPTION = "power-to-exception";
        public static final String POWER_TO_ON = "power-to-on";
        public static final String POWER_TO_STANDBY = "power-to-standby";
        public static final String REMOTE_DISPLAY = "ID_REMOTE_DISPLAY";
        public static final String SCENE_MODE = "scene-mode";
        public static final String SCREEN_ON_OFF_ACOUST = "ID_SCREEN_ON_OFF_ACOUST";
        public static final String SCREEN_ON_OFF_EVENT = "ID_SCREEN_ON_OFF_EVENT";
        public static final String SEAT_OCCUPIED = "ID_SEAT_OCCUPIED";
        public static final String TEMPERATURE_QUIT_WHEN_SOC_TEN = "temperature_quit_when_soc_ten";
        public static final String TOUCH_WAKEUP = "touch-wakeup";
        public static final String UNKNOWN = "unknown";
        public static final String USB_MOUNT = "usb-mount";
    }

    public @interface ScreenControlType {
        public static final int ALL_SCREENS = 0;
        public static final int CEILING = 7;
        public static final int HUD = 5;
        public static final int INSTRUMENT = 1;
        public static final int LEFT_REAR = 8;
        public static final int MAIN_CONTROL = 2;
        public static final int MID_REAR = 10;
        public static final int PASSENGER = 3;
        public static final int RIGHT_REAR = 9;
        public static final int VEHICLE_CONTROL = 4;
        public static final int VPA = 6;
    }

    public interface UartOpcode {
        public static final byte COMMAND_SET_STR_DAYS = 14;
        public static final byte COMMAND_SET_STR_MODE = 13;
        public static final byte COMMAND_SET_STR_MODE_GET_CURRENT = 2;
        public static final byte OP_POWER_CONTROL = 6;
        public static final byte OP_POWER_CONTROL_FAIL = -122;
    }

    public static class ReportEntry implements Parcelable {
        public static final Parcelable.Creator<ReportEntry> CREATOR = new Parcelable.Creator<ReportEntry>() { // from class: mega.car.config.Power.ReportEntry.1
            @Override // android.os.Parcelable.Creator
            public ReportEntry createFromParcel(Parcel parcel) {
                return new ReportEntry(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ReportEntry[] newArray(int i) {
                return new ReportEntry[i];
            }
        };
        public String reason;
        public String status;
        public int sync_direction;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ReportEntry() {
        }

        public ReportEntry(String str, int i, String str2) {
            this.status = str;
            this.sync_direction = i;
            this.reason = str2;
        }

        protected ReportEntry(Parcel parcel) {
            this.status = parcel.readString();
            this.sync_direction = parcel.readInt();
            this.reason = parcel.readString();
        }

        public String toString() {
            return "ReportEntry{status='" + this.status + "', sync_direction=" + this.sync_direction + "', reason=" + this.reason + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.status);
            parcel.writeInt(this.sync_direction);
            parcel.writeString(this.reason);
        }
    }

    public static class ScreenControlEntry implements Parcelable {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final Parcelable.Creator<ScreenControlEntry> CREATOR = new Parcelable.Creator<ScreenControlEntry>() { // from class: mega.car.config.Power.ScreenControlEntry.1
            @Override // android.os.Parcelable.Creator
            public ScreenControlEntry createFromParcel(Parcel parcel) {
                return new ScreenControlEntry(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ScreenControlEntry[] newArray(int i) {
                return new ScreenControlEntry[i];
            }
        };
        private static final String REASON_PREFIX = "android:screen_req:";
        private int mode;
        private int priority;
        private String reason;
        private int type;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getMode() {
            return this.mode;
        }

        public int getPriority() {
            return this.priority;
        }

        public String getReason() {
            return this.reason;
        }

        public int getType() {
            return this.type;
        }

        public void setMode(int i) {
            this.mode = i;
        }

        public void setPriority(int i) {
            this.priority = i;
        }

        public void setType(int i) {
            this.type = i;
        }

        private ScreenControlEntry() {
        }

        public void setReason(String str) {
            this.reason = REASON_PREFIX + str;
            assertReason();
        }

        public ScreenControlEntry(int i, int i2, String str) {
            this.type = i;
            this.mode = i2;
            this.priority = 0;
            this.reason = REASON_PREFIX + str;
            assertReason();
        }

        public ScreenControlEntry(int i, int i2, int i3, String str) {
            this(i, i2, str);
            this.priority = i3;
        }

        private void assertReason() {
            String packageName = AppGlobals.getInitialApplication().getPackageName();
            String str = "invalid ScreenControlEntry reason " + this.reason + ", by pkg " + packageName;
            if (!TextUtils.isEmpty(this.reason)) {
                this.reason.startsWith(REASON_PREFIX);
            }
            if (this.reason.contains(ScreenControlReason.CAR_POWER)) {
                packageName.equals("com.android.car");
            }
            this.reason += ":" + packageName;
        }

        protected ScreenControlEntry(Parcel parcel) {
            this.type = parcel.readInt();
            this.mode = parcel.readInt();
            this.priority = parcel.readInt();
            this.reason = parcel.readString();
        }

        public String toString() {
            return "ScreenControlEntry{type=" + this.type + ", mode=" + this.mode + ", priority=" + this.priority + ", reason='" + this.reason + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.type);
            parcel.writeInt(this.mode);
            parcel.writeInt(this.priority);
            parcel.writeString(this.reason);
        }
    }

    public static class PowerEFSMMode implements Parcelable {
        public static final Parcelable.Creator<PowerEFSMMode> CREATOR = new Parcelable.Creator<PowerEFSMMode>() { // from class: mega.car.config.Power.PowerEFSMMode.1
            @Override // android.os.Parcelable.Creator
            public PowerEFSMMode createFromParcel(Parcel parcel) {
                return new PowerEFSMMode(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public PowerEFSMMode[] newArray(int i) {
                return new PowerEFSMMode[i];
            }
        };
        public String mode;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public PowerEFSMMode() {
        }

        protected PowerEFSMMode(Parcel parcel) {
            this.mode = parcel.readString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mode);
        }
    }
}
