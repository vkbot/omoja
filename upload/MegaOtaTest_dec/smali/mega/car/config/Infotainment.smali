.class public interface abstract Lmega/car/config/Infotainment;
.super Ljava/lang/Object;
.source "Infotainment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Infotainment$ESEONOFFSts;,
        Lmega/car/config/Infotainment$HeadrestChannel;,
        Lmega/car/config/Infotainment$SoundEqualizer;,
        Lmega/car/config/Infotainment$AudioMode;,
        Lmega/car/config/Infotainment$SoundField;,
        Lmega/car/config/Infotainment$ParamsAmpMainSrc;,
        Lmega/car/config/Infotainment$ParamsAmpMode;,
        Lmega/car/config/Infotainment$ParamsAmpMute;,
        Lmega/car/config/Infotainment$ParamsVSCModeReq;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x7
    permission = "mega.car.permission.INFOTAINMENT"
.end annotation


# static fields
.field public static final ID_AMP_DYNAMICAUDIO_MODE:I = 0x700001c

.field public static final ID_AMP_FRONTREAR_BALANCE:I = 0x7000017

.field public static final ID_AMP_LEFTRIGHT_BALANCE:I = 0x7000018

.field public static final ID_AMP_LOUDNESSCOMP_ONOFF:I = 0x700001d

.field public static final ID_AMP_MUTE_STATUS:I = 0x7000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AMP/MuteStatus/Set"
        subscribe = "AMP/MuteStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMP_SOUND_FIELD:I = 0x7000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundField/Set"
        subscribe = "Media/SoundField"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMP_VEHICLESPEEDCOMP_MODEENABLE:I = 0x700001e

.field public static final ID_AMP_VOLUME:I = 0x700001b

.field public static final ID_AMP_WEIGHTLOWFRE_VOLUME:I = 0x700001a

.field public static final ID_ASE_MODE:I = 0x7000026

.field public static final ID_AUDIO_AMP_AUDIO_MAIN_SRC:I = 0x7000003

.field public static final ID_AUDIO_AMP_ECALL_CONFIG:I = 0x7000008

.field public static final ID_AUDIO_AMP_EQ:I = 0x7000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundEqualizer/Set"
        subscribe = "Media/SoundEqualizer"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_HIGH_FREQ_CONFIG:I = 0x700000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundEqualizerEffectHigh/Set"
        subscribe = "Media/SoundEqualizerEffectHigh"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_LOW_FREQ_CONFIG:I = 0x700000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundEqualizerEffectLow/Set"
        subscribe = "Media/SoundEqualizerEffectLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_MAIN_VOL:I = 0x7000007

.field public static final ID_AUDIO_AMP_MEDIA_BALANCE:I = 0x7000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundFieldLeftRight/Set"
        subscribe = "Media/SoundFieldLeftRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_MEDIA_FADE:I = 0x7000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundFieldFrontRear/Set"
        subscribe = "Media/SoundFieldFrontRear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_MIDDLE_FREQ_CONFIG:I = 0x700000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundEqualizerEffectMiddle/Set"
        subscribe = "Media/SoundEqualizerEffectMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_MODE:I = 0x7000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/AudioAmplifierMode/Set"
        subscribe = "Media/AudioAmplifierMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_AMP_MUTE_CONFIG:I = 0x7000009

.field public static final ID_AUDIO_AMP_VEHICLE_SPEED_MODE_CONFIG:I = 0x700000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/VolumeWithSpeed/Set"
        subscribe = "BodyInfo/VolumeWithSpeed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUDIO_CTRL_SPEED_DEPENDENT_VOL:I = 0x7000001

.field public static final ID_CALLING_SOUND:I = 0x7000022

.field public static final ID_CALLING_TYPE:I = 0x7000023

.field public static final ID_CAMPING_MODE:I = 0x7000025

.field public static final ID_CHIME_AVAS_PREVIEW:I = 0x7000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Chime/AVASPreview/Set"
        subscribe = "Chime/AVASPreview"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHIME_PREVIEW:I = 0x700002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Chime/Preview/Set"
        subscribe = "Chime/Preview"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CUE_TONE:I = 0x7000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/CueTone/Set"
        subscribe = "BodyInfo/CueTone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CURRENT_VOLUME:I = 0x7000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/CurrentVolume/Set"
        subscribe = "Media/CurrentVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GENERAL_STS_ANDROID:I = 0x7000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "GeneralSts/Android/Set"
        subscribe = "GeneralSts/Android"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_HEADREST_SPEAKER_BALANCE:I = 0x700002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/HeadrestSpeakerBalance/Set"
        subscribe = "Media/HeadrestSpeakerBalance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEADREST_SPEAKER_BLUETOOTH:I = 0x700002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/HeadrestSpeakerBluetooth/Set"
        subscribe = "Media/HeadrestSpeakerBluetooth"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEADREST_SPEAKER_CHANNEL:I = 0x7000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/HeadrestSpeakerChannel/Set"
        subscribe = "Media/HeadrestSpeakerChannel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEADREST_SPEAKER_NAVIGATION:I = 0x700002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/HeadrestSpeakerNavigation/Set"
        subscribe = "Media/HeadrestSpeakerNavigation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_CUSTOM:I = 0x7000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyCustom/Set"
        subscribe = "Infotainment/KeyCustom"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_DRIVEMODE:I = 0x700002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/DRIVEMODE/Set"
        subscribe = "Media/DRIVEMODE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_INFO:I = 0x7000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyInfo/Set"
        subscribe = "Infotainment/KeyInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_NEXT:I = 0x7000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyNext/Set"
        subscribe = "Infotainment/KeyNext"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_PHONE:I = 0x7000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyPhone/Set"
        subscribe = "Infotainment/KeyPhone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_PLAY:I = 0x7000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyPlay/Set"
        subscribe = "Infotainment/KeyPlay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_PREVIOUS:I = 0x7000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyPrevious/Set"
        subscribe = "Infotainment/KeyPrevious"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_VOICE:I = 0x7000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/KeyVoice/Set"
        subscribe = "Infotainment/KeyVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_VOLUME_ADD:I = 0x700000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/VolumeUp/Set"
        subscribe = "Infotainment/VolumeUp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_KEY_VOLUME_DOWN:I = 0x700000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Infotainment/VolumeDown/Set"
        subscribe = "Infotainment/VolumeDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PET_MODE:I = 0x7000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Chime/PetMode/Set"
        subscribe = "Chime/PetMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESPITE_MODE:I = 0x7000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/RESPITE_MODE/Set"
        subscribe = "Media/RESPITE_MODE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESPITE_MODE_SEAT_SAVE:I = 0x7000027

.field public static final ID_SAY_HI_SOUND:I = 0x700001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SayHiSound/Set"
        subscribe = "BodyInfo/SayHiSound"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOUND_EQUALIZE_SONY:I = 0x700002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundEqualizerSony/Set"
        subscribe = "Media/SoundEqualizerSony"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WARNING_VOLUME:I = 0x7000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/WarningVolume/Set"
        subscribe = "Media/WarningVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x7
