.class public interface abstract Lmega/car/config/NorthstarCarAudio;
.super Ljava/lang/Object;
.source "NorthstarCarAudio.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x69
    name = "car_audio"
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final ID_ALARM_PLAY_STATUS:I = 0x69000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Chime/PlayStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_ALTO:I = 0x69000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Alto"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_BALANCE:I = 0x6900000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Balance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_BASS:I = 0x69000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Bass"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_BASS:I = 0x6900001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/EqBass"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_HIGHPITCHED:I = 0x69000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Eq/HighPitched"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_MID:I = 0x6900001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/EqMid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_MIDDLEBASE:I = 0x69000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Eq/MiddleBase"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_SUBWOOFER:I = 0x69000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Eq/Subwoofer"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_EQ_TREBLE:I = 0x6900001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/EqTreble"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_FADER:I = 0x6900000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Fader"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_HIGH_PITCHED:I = 0x6900000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/HighPitched"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_LOUDNESS:I = 0x6900000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Loudness"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_MIDDLE_BASE:I = 0x6900000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/MiddleBass"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_MUTE:I = 0x69000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Mute"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_SUBWOOFER:I = 0x6900000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Subwoofer"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_SVC:I = 0x69000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Svc"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_SETTING_TREBLE:I = 0x69000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/Treble"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_VIRTUALMODE:I = 0x69000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/virtualMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNEL_ESE_SOUND:I = 0x6900001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/EseSound"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNEL_KEY_TONE:I = 0x69000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/KeyTone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_MEDIA:I = 0x69000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/MediaSound"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_NAVIGATION:I = 0x69000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/Navigation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_PHONE:I = 0x69000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/Phone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_TTS:I = 0x69000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/Tts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_VR:I = 0x69000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/VR"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENC_SOUND:I = 0x69000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ENC/Sound"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWITCH_KEY_TONE:I = 0x69000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Switch/KeyTone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_BT_MUSIC:I = 0x69000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/BtMusic"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_DEFAULT:I = 0x6900001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Default"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_ESE_VOL:I = 0x6900001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/EseVol"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_LOUDNESS:I = 0x69000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Loudness"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_MEDIA:I = 0x69000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Media"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_NAVIGATION:I = 0x69000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Navigation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_PHONE:I = 0x69000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Phone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_SMART_VOICE:I = 0x69000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/SmartVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_WARNING:I = 0x69000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/Warning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x69

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"

.field public static final SERVICE_NAME:Ljava/lang/String; = "car_audio"
