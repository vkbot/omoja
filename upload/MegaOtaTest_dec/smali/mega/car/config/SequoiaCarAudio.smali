.class public interface abstract Lmega/car/config/SequoiaCarAudio;
.super Ljava/lang/Object;
.source "SequoiaCarAudio.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x69
    name = "sequoia"
    permission = "mega.car.permission.SEQUOIA"
.end annotation


# static fields
.field public static final ID_ALARM_PLAY_STATUS:I = 0x69000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Chime/PlayStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ALARM_VOLUME_FEEDBACK:I = 0x69000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Alarm/Feedback/Set"
        subscribe = "Alarm/Feedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_NOTIFY_RESET:I = 0x6900001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AudioSetting/NotifyReset"
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

.field public static final ID_BOOT_MUSIC_VOLUME_OUT:I = 0x6900001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/BootMusicVolumeExt/Set"
        subscribe = "Media/BootMusicVolumeExt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOT_VOLUME_FEEDBACK:I = 0x69000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BootMusic/Feedback/Set"
        subscribe = "BootMusic/Feedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHANNL_MEDIA:I = 0x69000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Channel/Media"
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

.field public static final ID_CHIME_VOLUME_OUT:I = 0x6900001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/ChimeVolumeExt/Set"
        subscribe = "Media/ChimeVolumeExt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DUCK_MEDIA:I = 0x6900002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Duck/Media/Set"
        subscribe = "Duck/Media"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_ALTO:I = 0x69000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/Alto/Set"
        subscribe = "AudioSettting/Eq/Alto"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_BASS:I = 0x69000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/Bass/Set"
        subscribe = "AudioSettting/Eq/Bass"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_EFFECT:I = 0x69000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/AdvanceVolumeEffect/Set"
        subscribe = "T1CF1/AdvanceVolumeEffect"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_HIGHPITCHED:I = 0x69000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/HighPitched/Set"
        subscribe = "AudioSettting/Eq/HighPitched"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_MIDDLEBASE:I = 0x69000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/MiddleBase/Set"
        subscribe = "AudioSettting/Eq/MiddleBase"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_SUBWOOFER:I = 0x69000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/Subwoofer/Set"
        subscribe = "AudioSettting/Eq/Subwoofer"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EQ_OUT_TREBLE:I = 0x69000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSettting/Eq/Treble/Set"
        subscribe = "AudioSettting/Eq/Treble"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEAD_VOLUME_TYPE:I = 0x69000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/HeadVolume/Set"
        subscribe = "Volume/HeadVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOW_SPEED_VOLUME:I = 0x6900001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/LowSpeedVolume/Set"
        subscribe = "Volume/LowSpeedVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_BALANCE:I = 0x6900002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSetting/Balance/Set"
        subscribe = "AudioSetting/Balance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_FADER:I = 0x6900002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "SystemSetting/SoundFieldFader/Set"
        subscribe = "SystemSetting/SoundFieldFader"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_SOUND_FILED:I = 0x6900002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/effect/soundFiled/Set"
        subscribe = "Volume/effect/soundFiled"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PLAY_OUT_SIDE:I = 0x6900002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AudioSetting/PlayOutSide/Set"
        subscribe = "AudioSetting/PlayOutSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWITCH_KEY_TONE:I = 0x69000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Switch/KeyTone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_ASD:I = 0x69000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ASDInfo/Set"
        subscribe = "BodyInfo/ASDInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_BT_MUSIC:I = 0x69000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Volume/BtMusic"
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

.field public static final ID_VOLUME_SURROUND_MODE:I = 0x6900001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/surroundMode/Set"
        subscribe = "Volume/surroundMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOLUME_VIRTUAL_MODE:I = 0x6900001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/virtualMode/Set"
        subscribe = "Volume/virtualMode"
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

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.SEQUOIA"

.field public static final SERVICE_NAME:Ljava/lang/String; = "sequoia"
