package mega.car.config;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 23, permission = KeyInput.PERMISSION)
public interface KeyInput {

    @PropertyDefine(changeMode = 2, subscribe = "KeyInput/Event", type = Entry.class)
    public static final int ID_MAIN_KEY = 385875969;

    @PropertyDefine(changeMode = 2, subscribe = "KeyInput/RotaryEvent", type = Rotary.class)
    public static final int ID_ROTARY_KEY = 385875970;
    public static final int MGR_ID = 23;
    public static final String PERMISSION = "mega.car.permission.KeyInput";
    public static final String SERVICE_NAME = "KeyInput";
    public static final int UNSUPPORTED_CODE = -1;

    public @interface KeyAction {
    }

    public @interface KeyCodeEnum {
        public static final int LEFT_CUSTOM1 = 6;
        public static final int LEFT_CUSTOM2 = 7;
        public static final int LEFT_CUSTOM3 = 22;
        public static final int LEFT_CUSTOM4 = 23;
        public static final int LEFT_CUSTOM5 = 24;
        public static final int LEFT_CUSTOM6 = 25;
        public static final int LEFT_DOWN = 4;
        public static final int LEFT_LEFT = 1;
        public static final int LEFT_RESERVED = 0;
        public static final int LEFT_RIGHT = 2;
        public static final int LEFT_ROTARY = 30;
        public static final int LEFT_SELECT = 5;
        public static final int LEFT_UP = 3;
        public static final int MKD_CUSTOM10_MIX_DOWN = 120;
        public static final int MKD_CUSTOM10_MIX_UP = 119;
        public static final int MKD_CUSTOM1_MIX_DOWN = 102;
        public static final int MKD_CUSTOM1_MIX_UP = 101;
        public static final int MKD_CUSTOM1_ROTARY = 121;
        public static final int MKD_CUSTOM1_ROTARY_CENTER = 122;
        public static final int MKD_CUSTOM2_MIX_DOWN = 104;
        public static final int MKD_CUSTOM2_MIX_UP = 103;
        public static final int MKD_CUSTOM2_ROTARY = 123;
        public static final int MKD_CUSTOM2_ROTARY_CENTER = 124;
        public static final int MKD_CUSTOM3_MIX_DOWN = 106;
        public static final int MKD_CUSTOM3_MIX_UP = 105;
        public static final int MKD_CUSTOM4_MIX_DOWN = 108;
        public static final int MKD_CUSTOM4_MIX_UP = 107;
        public static final int MKD_CUSTOM5_MIX_DOWN = 110;
        public static final int MKD_CUSTOM5_MIX_UP = 109;
        public static final int MKD_CUSTOM6_MIX_DOWN = 112;
        public static final int MKD_CUSTOM6_MIX_UP = 111;
        public static final int MKD_CUSTOM7_MIX_DOWN = 114;
        public static final int MKD_CUSTOM7_MIX_UP = 113;
        public static final int MKD_CUSTOM8_MIX_DOWN = 116;
        public static final int MKD_CUSTOM8_MIX_UP = 115;
        public static final int MKD_CUSTOM9_MIX_DOWN = 118;
        public static final int MKD_CUSTOM9_MIX_UP = 117;
        public static final int RIGHT_CUSTOM1 = 14;
        public static final int RIGHT_CUSTOM2 = 15;
        public static final int RIGHT_CUSTOM3 = 26;
        public static final int RIGHT_CUSTOM4 = 27;
        public static final int RIGHT_CUSTOM5 = 28;
        public static final int RIGHT_CUSTOM6 = 29;
        public static final int RIGHT_DOWN = 12;
        public static final int RIGHT_LEFT = 9;
        public static final int RIGHT_RESERVED = 8;
        public static final int RIGHT_RIGHT = 10;
        public static final int RIGHT_ROTARY = 31;
        public static final int RIGHT_SELECT = 13;
        public static final int RIGHT_UP = 11;
        public static final int TOUCH_CUSTOM1 = 16;
        public static final int TOUCH_CUSTOM2 = 17;
        public static final int TOUCH_CUSTOM3 = 18;
        public static final int TOUCH_CUSTOM4 = 19;
        public static final int TOUCH_CUSTOM5 = 20;
        public static final int TOUCH_CUSTOM6 = 21;
    }

    public interface PressMode {
        public static final int PRESS = 1;
        public static final int RELEASE = 0;
    }

    public @interface RotaryFallbackTypeEnum {
        public static final int TYPE_ROTARY_MEDIA = 2;
        public static final int TYPE_ROTARY_UNSUPPORTED = -1;
        public static final int TYPE_ROTARY_VOLUME = 1;
    }

    public static class Entry implements Parcelable {
        public static final Parcelable.Creator<Entry> CREATOR = new Parcelable.Creator<Entry>() { // from class: mega.car.config.KeyInput.Entry.1
            @Override // android.os.Parcelable.Creator
            public Entry createFromParcel(Parcel parcel) {
                return new Entry(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Entry[] newArray(int i) {
                return new Entry[i];
            }
        };
        public int keyCode;
        public boolean status;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Entry() {
        }

        protected Entry(Parcel parcel) {
            this.keyCode = parcel.readInt();
            this.status = parcel.readByte() != 0;
        }

        public String toString() {
            return "Entry{keyCode=" + this.keyCode + ", status=" + this.status + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.keyCode);
            parcel.writeByte(this.status ? (byte) 1 : (byte) 0);
        }
    }

    public static class Rotary implements Parcelable {
        public static final Parcelable.Creator<Rotary> CREATOR = new Parcelable.Creator<Rotary>() { // from class: mega.car.config.KeyInput.Rotary.1
            @Override // android.os.Parcelable.Creator
            public Rotary createFromParcel(Parcel parcel) {
                return new Rotary(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Rotary[] newArray(int i) {
                return new Rotary[i];
            }
        };
        public int keyCode;
        public int rotaryTimes;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Rotary() {
        }

        protected Rotary(Parcel parcel) {
            this.keyCode = parcel.readInt();
            this.rotaryTimes = parcel.readInt();
        }

        public String toString() {
            return "Rotary{keyCode=" + this.keyCode + ", rotaryTimes=" + this.rotaryTimes + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.keyCode);
            parcel.writeInt(this.rotaryTimes);
        }
    }
}
