package mega.car.config;

import android.os.Parcel;
import android.os.Parcelable;
import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 33, permission = "mega.car.permission.NET")
public interface Media {

    @PropertyDefine(publish = "Media/ASESwitch/Set", subscribe = "Media/ASESwitch", type = Integer.class)
    public static final int ID_ASE_SWITCH = 553648135;

    @PropertyDefine(publish = "Media/AssistantVolume/Set", subscribe = "Media/AssistantVolume", type = Integer.class)
    public static final int ID_ASSISTANT_VOLUME = 553648141;

    @PropertyDefine(publish = "Media/BootMusic/Set", subscribe = "Media/BootMusic", type = Integer.class)
    public static final int ID_BOOT_MUSIC = 553648148;

    @PropertyDefine(publish = "Media/BootMusicVolume/Set", subscribe = "Media/BootMusicVolume", type = Integer.class)
    public static final int ID_BOOT_MUSIC_VOLUME = 553648149;

    @PropertyDefine(publish = "Media/BTCallVolume/Set", subscribe = "Media/BTCallVolume", type = Integer.class)
    public static final int ID_BT_CALL_VOLUME = 553648140;

    @PropertyDefine(publish = "music_req/Set", subscribe = "music_req", type = PropertyDefine.JsonString.class)
    public static final int ID_CALL_MUSIC_REQUEST = 553648130;

    @PropertyDefine(publish = "Media/ChimeType/Set", subscribe = "Media/ChimeType", type = Integer.class)
    public static final int ID_CHIME_TYPE = 553648147;

    @PropertyDefine(publish = "Media/ChimeVolume/Set", subscribe = "Media/ChimeVolume", type = Integer.class)
    public static final int ID_CHIME_VOLUME = 553648139;

    @PropertyDefine(publish = "Media/LockAlarmSwitch/Set", subscribe = "Media/LockAlarmSwitch", type = Integer.class)
    public static final int ID_LOCK_ALARM = 553648137;

    @PropertyDefine(publish = "Media/MediaData", subscribe = "Media/MediaData/Set", type = PropertyDefine.JsonString.class)
    public static final int ID_MEDIA_DATA = 553648131;

    @PropertyDefine(publish = "Media/DeviceState/Set", subscribe = "Media/DeviceState", type = Integer.class)
    public static final int ID_MEDIA_DEVICE_STATE = 553648150;

    @PropertyDefine(publish = "Media/Picture", subscribe = "Media/Picture/Set", type = String.class)
    public static final int ID_MEDIA_PICTURE = 553648133;

    @PropertyDefine(publish = "Media/PlaybackState", subscribe = "Media/PlaybackState/Set", type = PropertyDefine.JsonString.class)
    public static final int ID_MEDIA_PLAYBACK_STATE = 553648132;

    @PropertyDefine(publish = "music/Set", subscribe = "music", type = PropertyDefine.JsonString.class)
    public static final int ID_MEDIA_STATE = 553648129;

    @PropertyDefine(publish = "Media/MediaVolume/Set", subscribe = "Media/MediaVolume", type = Integer.class)
    public static final int ID_MEDIA_VOLUME = 553648138;

    @PropertyDefine(publish = "Media/Mute/Set", subscribe = "Media/Mute", type = Integer.class)
    public static final int ID_MUTE = 553648144;

    @PropertyDefine(publish = "Media/NavigationVolume/Set", subscribe = "Media/NavigationVolume", type = Integer.class)
    public static final int ID_NAVIGATION_VOLUME = 553648143;

    @PropertyDefine(publish = "Media/NotificationVolume/Set", subscribe = "Media/NotificationVolume", type = Integer.class)
    public static final int ID_NOTIFICATION_VOLUME = 553648142;

    @PropertyDefine(publish = "Media/ScreenCast/Set", subscribe = "Media/ScreenCast", type = Integer.class)
    public static final int ID_SCREEN_CAST = 553648146;

    @PropertyDefine(publish = "Media/SoundSource/Set", subscribe = "Media/SoundSource", type = Integer.class)
    public static final int ID_SOUND_SOURCE = 553648145;

    @PropertyDefine(publish = "Media/StereoSpeaker/Set", subscribe = "Media/StereoSpeaker", type = Integer.class)
    public static final int ID_STEREO_SPEAKER = 553648134;

    @PropertyDefine(publish = "Media/UnlockAlarmSwitch/Set", subscribe = "Media/UnlockAlarmSwitch", type = Integer.class)
    public static final int ID_UNLOCK_ALARM = 553648136;
    public static final int MGR_ID = 33;

    public interface AlarmType {
        public static final int TYPE_NATIONAL = 1;
        public static final int TYPE_NEW = 3;
        public static final int TYPE_SCIENCE = 2;
    }

    public interface Channel {
        public static final int CHANNEL_1 = 1;
        public static final int CHANNEL_2 = 2;
        public static final int CHANNEL_3 = 3;
        public static final int CHANNEL_4 = 4;
        public static final int CHANNEL_5 = 5;
        public static final int MEDIA = 0;
    }

    public interface DeviceState {
        public static final int DEVICE_IDLE = 200;
        public static final int MEDIA_BT_CONNECTED = 208;
        public static final int MEDIA_BT_DISCONNECTED = 209;
        public static final int MEDIA_USB_MOUNTED = 206;
        public static final int MEDIA_USB_UNMOUNT = 207;
    }

    public interface SoundSource {
        public static final int ALARM = 9;
        public static final int ASSISTANT = 10;
        public static final int BCALL = 3;
        public static final int BTCALL = 4;
        public static final int ECALL = 2;
        public static final int NAVIGATION = 11;
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public static class ScreenCast implements Parcelable {
        public static final Parcelable.Creator<ScreenCast> CREATOR = new Parcelable.Creator<ScreenCast>() { // from class: mega.car.config.Media.ScreenCast.1
            @Override // android.os.Parcelable.Creator
            public ScreenCast createFromParcel(Parcel parcel) {
                return new ScreenCast(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ScreenCast[] newArray(int i) {
                return new ScreenCast[i];
            }
        };
        public boolean fullscreen;
        public boolean playVideo;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ScreenCast() {
            this.fullscreen = false;
            this.playVideo = false;
        }

        protected ScreenCast(Parcel parcel) {
            this.fullscreen = false;
            this.playVideo = false;
            this.fullscreen = parcel.readByte() != 0;
            this.playVideo = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.fullscreen ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.playVideo ? (byte) 1 : (byte) 0);
        }

        public String toString() {
            return "ScreenCast{fullscreen=" + this.fullscreen + ", playVideo=" + this.playVideo + '}';
        }
    }
}
