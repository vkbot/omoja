package mega.car.config;

import mega.car.annotation.DomainDefine;
import mega.car.annotation.PropertyDefine;

/* JADX INFO: loaded from: classes2.dex */
@DomainDefine(domainId = 105, name = NorthstarCarAudio.SERVICE_NAME, permission = "mega.car.permission.VEHICLE_CONTROL")
public interface NorthstarCarAudio {

    @PropertyDefine(topic = "Chime/PlayStatus", type = Integer.class)
    public static final int ID_ALARM_PLAY_STATUS = 1761607704;

    @PropertyDefine(topic = "AudioSetting/Alto", type = Integer.class)
    public static final int ID_AUDIO_SETTING_ALTO = 1761607688;

    @PropertyDefine(topic = "AudioSetting/Balance", type = Integer.class)
    public static final int ID_AUDIO_SETTING_BALANCE = 1761607693;

    @PropertyDefine(topic = "AudioSetting/Bass", type = Integer.class)
    public static final int ID_AUDIO_SETTING_BASS = 1761607687;

    @PropertyDefine(topic = "AudioSetting/EqBass", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_BASS = 1761607709;

    @PropertyDefine(topic = "AudioSetting/Eq/HighPitched", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_HIGHPITCHED = 1761607715;

    @PropertyDefine(topic = "AudioSetting/EqMid", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_MID = 1761607710;

    @PropertyDefine(topic = "AudioSetting/Eq/MiddleBase", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_MIDDLEBASE = 1761607714;

    @PropertyDefine(topic = "AudioSetting/Eq/Subwoofer", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_SUBWOOFER = 1761607713;

    @PropertyDefine(topic = "AudioSetting/EqTreble", type = Integer.class)
    public static final int ID_AUDIO_SETTING_EQ_TREBLE = 1761607711;

    @PropertyDefine(topic = "AudioSetting/Fader", type = Integer.class)
    public static final int ID_AUDIO_SETTING_FADER = 1761607694;

    @PropertyDefine(topic = "AudioSetting/HighPitched", type = Integer.class)
    public static final int ID_AUDIO_SETTING_HIGH_PITCHED = 1761607690;

    @PropertyDefine(topic = "AudioSetting/Loudness", type = Integer.class)
    public static final int ID_AUDIO_SETTING_LOUDNESS = 1761607695;

    @PropertyDefine(topic = "AudioSetting/MiddleBass", type = Integer.class)
    public static final int ID_AUDIO_SETTING_MIDDLE_BASE = 1761607691;

    @PropertyDefine(topic = "AudioSetting/Mute", type = Integer.class)
    public static final int ID_AUDIO_SETTING_MUTE = 1761607697;

    @PropertyDefine(topic = "AudioSetting/Subwoofer", type = Integer.class)
    public static final int ID_AUDIO_SETTING_SUBWOOFER = 1761607692;

    @PropertyDefine(topic = "AudioSetting/Svc", type = Integer.class)
    public static final int ID_AUDIO_SETTING_SVC = 1761607696;

    @PropertyDefine(topic = "AudioSetting/Treble", type = Integer.class)
    public static final int ID_AUDIO_SETTING_TREBLE = 1761607689;

    @PropertyDefine(topic = "Volume/virtualMode", type = Integer.class)
    public static final int ID_AUDIO_VIRTUALMODE = 1761607716;

    @PropertyDefine(topic = "Channel/EseSound", type = Integer.class)
    public static final int ID_CHANNEL_ESE_SOUND = 1761607708;

    @PropertyDefine(topic = "Channel/KeyTone", type = Integer.class)
    public static final int ID_CHANNEL_KEY_TONE = 1761607712;

    @PropertyDefine(topic = "Channel/MediaSound", type = Integer.class)
    public static final int ID_CHANNL_MEDIA = 1761607701;

    @PropertyDefine(topic = "Channel/Navigation", type = Integer.class)
    public static final int ID_CHANNL_NAVIGATION = 1761607698;

    @PropertyDefine(topic = "Channel/Phone", type = Integer.class)
    public static final int ID_CHANNL_PHONE = 1761607702;

    @PropertyDefine(topic = "Channel/Tts", type = Integer.class)
    public static final int ID_CHANNL_TTS = 1761607700;

    @PropertyDefine(topic = "Channel/VR", type = Integer.class)
    public static final int ID_CHANNL_VR = 1761607699;

    @PropertyDefine(topic = "ENC/Sound", type = Integer.class)
    public static final int ID_ENC_SOUND = 1761607717;

    @PropertyDefine(topic = "Switch/KeyTone", type = Integer.class)
    public static final int ID_SWITCH_KEY_TONE = 1761607683;

    @PropertyDefine(topic = "Volume/BtMusic", type = Integer.class)
    public static final int ID_VOLUME_BT_MUSIC = 1761607703;

    @PropertyDefine(topic = "Volume/Default", type = Integer.class)
    public static final int ID_VOLUME_DEFAULT = 1761607707;

    @PropertyDefine(topic = "Volume/EseVol", type = Integer.class)
    public static final int ID_VOLUME_ESE_VOL = 1761607706;

    @PropertyDefine(topic = "Volume/Loudness", type = Integer.class)
    public static final int ID_VOLUME_LOUDNESS = 1761607705;

    @PropertyDefine(topic = "Volume/Media", type = Integer.class)
    public static final int ID_VOLUME_MEDIA = 1761607684;

    @PropertyDefine(topic = "Volume/Navigation", type = Integer.class)
    public static final int ID_VOLUME_NAVIGATION = 1761607681;

    @PropertyDefine(topic = "Volume/Phone", type = Integer.class)
    public static final int ID_VOLUME_PHONE = 1761607685;

    @PropertyDefine(topic = "Volume/SmartVoice", type = Integer.class)
    public static final int ID_VOLUME_SMART_VOICE = 1761607682;

    @PropertyDefine(topic = "Volume/Warning", type = Integer.class)
    public static final int ID_VOLUME_WARNING = 1761607686;
    public static final int MGR_ID = 105;
    public static final String PERMISSION = "mega.car.permission.VEHICLE_CONTROL";
    public static final String SERVICE_NAME = "car_audio";
}
