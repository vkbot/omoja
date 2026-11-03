package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 7, permission = "mega.car.permission.INFOTAINMENT")
public interface Infotainment {
    public static final int ID_AMP_DYNAMICAUDIO_MODE = 117440540;
    public static final int ID_AMP_FRONTREAR_BALANCE = 117440535;
    public static final int ID_AMP_LEFTRIGHT_BALANCE = 117440536;
    public static final int ID_AMP_LOUDNESSCOMP_ONOFF = 117440541;

    @PropertyDefine(publish = "AMP/MuteStatus/Set", subscribe = "AMP/MuteStatus", type = Integer.class)
    public static final int ID_AMP_MUTE_STATUS = 117440563;

    @PropertyDefine(publish = "Media/SoundField/Set", subscribe = "Media/SoundField", type = Integer.class)
    public static final int ID_AMP_SOUND_FIELD = 117440537;
    public static final int ID_AMP_VEHICLESPEEDCOMP_MODEENABLE = 117440542;
    public static final int ID_AMP_VOLUME = 117440539;
    public static final int ID_AMP_WEIGHTLOWFRE_VOLUME = 117440538;
    public static final int ID_ASE_MODE = 117440550;
    public static final int ID_AUDIO_AMP_AUDIO_MAIN_SRC = 117440515;
    public static final int ID_AUDIO_AMP_ECALL_CONFIG = 117440520;

    @PropertyDefine(publish = "Media/SoundEqualizer/Set", subscribe = "Media/SoundEqualizer", type = Integer.class)
    public static final int ID_AUDIO_AMP_EQ = 117440516;

    @PropertyDefine(publish = "Media/SoundEqualizerEffectHigh/Set", subscribe = "Media/SoundEqualizerEffectHigh", type = Integer.class)
    public static final int ID_AUDIO_AMP_HIGH_FREQ_CONFIG = 117440523;

    @PropertyDefine(publish = "Media/SoundEqualizerEffectLow/Set", subscribe = "Media/SoundEqualizerEffectLow", type = Integer.class)
    public static final int ID_AUDIO_AMP_LOW_FREQ_CONFIG = 117440525;
    public static final int ID_AUDIO_AMP_MAIN_VOL = 117440519;

    @PropertyDefine(publish = "Media/SoundFieldLeftRight/Set", subscribe = "Media/SoundFieldLeftRight", type = Integer.class)
    public static final int ID_AUDIO_AMP_MEDIA_BALANCE = 117440517;

    @PropertyDefine(publish = "Media/SoundFieldFrontRear/Set", subscribe = "Media/SoundFieldFrontRear", type = Integer.class)
    public static final int ID_AUDIO_AMP_MEDIA_FADE = 117440518;

    @PropertyDefine(publish = "Media/SoundEqualizerEffectMiddle/Set", subscribe = "Media/SoundEqualizerEffectMiddle", type = Integer.class)
    public static final int ID_AUDIO_AMP_MIDDLE_FREQ_CONFIG = 117440524;

    @PropertyDefine(publish = "Media/AudioAmplifierMode/Set", subscribe = "Media/AudioAmplifierMode", type = Integer.class)
    public static final int ID_AUDIO_AMP_MODE = 117440514;
    public static final int ID_AUDIO_AMP_MUTE_CONFIG = 117440521;

    @PropertyDefine(publish = "BodyInfo/VolumeWithSpeed/Set", subscribe = "BodyInfo/VolumeWithSpeed", type = Integer.class)
    public static final int ID_AUDIO_AMP_VEHICLE_SPEED_MODE_CONFIG = 117440522;
    public static final int ID_AUDIO_CTRL_SPEED_DEPENDENT_VOL = 117440513;
    public static final int ID_CALLING_SOUND = 117440546;
    public static final int ID_CALLING_TYPE = 117440547;
    public static final int ID_CAMPING_MODE = 117440549;

    @PropertyDefine(publish = "Chime/AVASPreview/Set", subscribe = "Chime/AVASPreview", type = Integer.class)
    public static final int ID_CHIME_AVAS_PREVIEW = 117440562;

    @PropertyDefine(publish = "Chime/Preview/Set", subscribe = "Chime/Preview", type = Integer.class)
    public static final int ID_CHIME_PREVIEW = 117440559;

    @PropertyDefine(publish = "BodyInfo/CueTone/Set", subscribe = "BodyInfo/CueTone", type = Integer.class)
    public static final int ID_CUE_TONE = 117440544;

    @PropertyDefine(publish = "Media/CurrentVolume/Set", subscribe = "Media/CurrentVolume", type = Integer.class)
    public static final int ID_CURRENT_VOLUME = 117440552;

    @PropertyDefine(publish = "GeneralSts/Android/Set", subscribe = "GeneralSts/Android", type = String.class)
    public static final int ID_GENERAL_STS_ANDROID = 117440561;

    @PropertyDefine(publish = "Media/HeadrestSpeakerBalance/Set", subscribe = "Media/HeadrestSpeakerBalance", type = Integer.class)
    public static final int ID_HEADREST_SPEAKER_BALANCE = 117440554;

    @PropertyDefine(publish = "Media/HeadrestSpeakerBluetooth/Set", subscribe = "Media/HeadrestSpeakerBluetooth", type = Integer.class)
    public static final int ID_HEADREST_SPEAKER_BLUETOOTH = 117440556;

    @PropertyDefine(publish = "Media/HeadrestSpeakerChannel/Set", subscribe = "Media/HeadrestSpeakerChannel", type = Integer.class)
    public static final int ID_HEADREST_SPEAKER_CHANNEL = 117440553;

    @PropertyDefine(publish = "Media/HeadrestSpeakerNavigation/Set", subscribe = "Media/HeadrestSpeakerNavigation", type = Integer.class)
    public static final int ID_HEADREST_SPEAKER_NAVIGATION = 117440555;

    @PropertyDefine(publish = "Infotainment/KeyCustom/Set", subscribe = "Infotainment/KeyCustom", type = Integer.class)
    public static final int ID_INFO_KEY_CUSTOM = 117440529;

    @PropertyDefine(publish = "Media/DRIVEMODE/Set", subscribe = "Media/DRIVEMODE", type = Integer.class)
    public static final int ID_INFO_KEY_DRIVEMODE = 117440557;

    @PropertyDefine(publish = "Infotainment/KeyInfo/Set", subscribe = "Infotainment/KeyInfo", type = Integer.class)
    public static final int ID_INFO_KEY_INFO = 117440533;

    @PropertyDefine(publish = "Infotainment/KeyNext/Set", subscribe = "Infotainment/KeyNext", type = Integer.class)
    public static final int ID_INFO_KEY_NEXT = 117440531;

    @PropertyDefine(publish = "Infotainment/KeyPhone/Set", subscribe = "Infotainment/KeyPhone", type = Integer.class)
    public static final int ID_INFO_KEY_PHONE = 117440528;

    @PropertyDefine(publish = "Infotainment/KeyPlay/Set", subscribe = "Infotainment/KeyPlay", type = Integer.class)
    public static final int ID_INFO_KEY_PLAY = 117440534;

    @PropertyDefine(publish = "Infotainment/KeyPrevious/Set", subscribe = "Infotainment/KeyPrevious", type = Integer.class)
    public static final int ID_INFO_KEY_PREVIOUS = 117440530;

    @PropertyDefine(publish = "Infotainment/KeyVoice/Set", subscribe = "Infotainment/KeyVoice", type = Integer.class)
    public static final int ID_INFO_KEY_VOICE = 117440532;

    @PropertyDefine(publish = "Infotainment/VolumeUp/Set", subscribe = "Infotainment/VolumeUp", type = Integer.class)
    public static final int ID_INFO_KEY_VOLUME_ADD = 117440526;

    @PropertyDefine(publish = "Infotainment/VolumeDown/Set", subscribe = "Infotainment/VolumeDown", type = Integer.class)
    public static final int ID_INFO_KEY_VOLUME_DOWN = 117440527;

    @PropertyDefine(publish = "Chime/PetMode/Set", subscribe = "Chime/PetMode", type = Integer.class)
    public static final int ID_PET_MODE = 117440560;

    @PropertyDefine(publish = "Media/RESPITE_MODE/Set", subscribe = "Media/RESPITE_MODE", type = Integer.class)
    public static final int ID_RESPITE_MODE = 117440548;
    public static final int ID_RESPITE_MODE_SEAT_SAVE = 117440551;

    @PropertyDefine(publish = "BodyInfo/SayHiSound/Set", subscribe = "BodyInfo/SayHiSound", type = Integer.class)
    public static final int ID_SAY_HI_SOUND = 117440543;

    @PropertyDefine(publish = "Media/SoundEqualizerSony/Set", subscribe = "Media/SoundEqualizerSony", type = Integer.class)
    public static final int ID_SOUND_EQUALIZE_SONY = 117440558;

    @PropertyDefine(publish = "Media/WarningVolume/Set", subscribe = "Media/WarningVolume", type = Integer.class)
    public static final int ID_WARNING_VOLUME = 117440545;
    public static final int MGR_ID = 7;

    public interface AudioMode {
        public static final int CUSTOM = 4;
        public static final int DYNAMIC_MODE = 1;
        public static final int ORIGINAL_SOUND_MODE = 0;
        public static final int SOFT_MODE = 2;
        public static final int SPEECH_MODE = 3;
    }

    public interface ESEONOFFSts {
        public static final int ESEONOFFSTS_DEFAULT = 0;
        public static final int ESEONOFFSTS_INVALID = 255;
        public static final int ESEONOFFSTS_OFF = 1;
        public static final int ESEONOFFSTS_SOUNDEFFECT1 = 2;
        public static final int ESEONOFFSTS_SOUNDEFFECT2 = 3;
    }

    public interface HeadrestChannel {
        public static final int HEADREST_ASSIT = 2;
        public static final int HEADREST_OFF = 0;
        public static final int HEADREST_ON = 1;
    }

    public interface ParamsAmpMainSrc {
        public static final int ANIMATION = 7;
        public static final int BTCALL = 10;
        public static final int BT_MUSIC = 2;
        public static final int ECALL = 8;
        public static final int INITIALIZATION = 0;
        public static final int INTERNET_MEDIA = 6;
        public static final int INVALID = 15;
        public static final int MEDIA = 11;
        public static final int MEGACALL = 9;
        public static final int RADIO_AM = 3;
        public static final int RADIO_FM = 4;
        public static final int RESERVED_0 = 12;
        public static final int RESERVED_1 = 13;
        public static final int RESERVED_2 = 14;
        public static final int USB_MUSIC = 1;
        public static final int VIDEO = 5;
    }

    public interface ParamsAmpMode {
        public static final int ALL_VEHICLE = 0;
        public static final int COMFORT = 5;
        public static final int DRIVER_SEAT = 2;
        public static final int FRONT_SEAT = 1;
        public static final int INVALID = 7;
        public static final int RESERVED = 6;
        public static final int SIMULATED_SURROUND = 3;
        public static final int THEATRE = 4;
    }

    public interface ParamsAmpMute {
        public static final int AMP_MUTE_MUTE = 1;
        public static final int AMP_MUTE_UNMUTE = 0;
    }

    public interface ParamsVSCModeReq {
        public static final int HIGH = 2;
        public static final int LOW = 0;
        public static final int MID = 1;
        public static final int OFF = 3;
    }

    public interface SoundEqualizer {
        public static final int EQ_MODE_BALLAD = 4;
        public static final int EQ_MODE_CLASSIC = 7;
        public static final int EQ_MODE_DANCE = 5;
        public static final int EQ_MODE_HUMAN = 6;
        public static final int EQ_MODE_INTELLIGENT = 0;
        public static final int EQ_MODE_JAZZ = 8;
        public static final int EQ_MODE_POPULAR = 3;
        public static final int EQ_MODE_ROCK = 2;
        public static final int EQ_MODE_SMOOTH = 1;
    }

    public interface SoundField {
        public static final int ALL_PASSENGER = 0;
        public static final int BACKROW_PASSENGER = 3;
        public static final int CUSTOM = 4;
        public static final int DRIVER = 1;
        public static final int FRONT_PASSENGER = 2;
        public static final int SURROUND = 5;
    }
}
