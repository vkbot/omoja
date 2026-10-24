.class public interface abstract Lmega/car/config/Media;
.super Ljava/lang/Object;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Media$ScreenCast;,
        Lmega/car/config/Media$DeviceState;,
        Lmega/car/config/Media$AlarmType;,
        Lmega/car/config/Media$SoundSource;,
        Lmega/car/config/Media$Channel;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x21
    permission = "mega.car.permission.NET"
.end annotation


# static fields
.field public static final ID_ASE_SWITCH:I = 0x21000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/ASESwitch/Set"
        subscribe = "Media/ASESwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASSISTANT_VOLUME:I = 0x2100000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/AssistantVolume/Set"
        subscribe = "Media/AssistantVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOT_MUSIC:I = 0x21000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/BootMusic/Set"
        subscribe = "Media/BootMusic"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOT_MUSIC_VOLUME:I = 0x21000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/BootMusicVolume/Set"
        subscribe = "Media/BootMusicVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BT_CALL_VOLUME:I = 0x2100000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/BTCallVolume/Set"
        subscribe = "Media/BTCallVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALL_MUSIC_REQUEST:I = 0x21000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "music_req/Set"
        subscribe = "music_req"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_CHIME_TYPE:I = 0x21000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/ChimeType/Set"
        subscribe = "Media/ChimeType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHIME_VOLUME:I = 0x2100000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/ChimeVolume/Set"
        subscribe = "Media/ChimeVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCK_ALARM:I = 0x21000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/LockAlarmSwitch/Set"
        subscribe = "Media/LockAlarmSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEDIA_DATA:I = 0x21000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/MediaData"
        subscribe = "Media/MediaData/Set"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MEDIA_DEVICE_STATE:I = 0x21000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/DeviceState/Set"
        subscribe = "Media/DeviceState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEDIA_PICTURE:I = 0x21000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/Picture"
        subscribe = "Media/Picture/Set"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MEDIA_PLAYBACK_STATE:I = 0x21000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/PlaybackState"
        subscribe = "Media/PlaybackState/Set"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MEDIA_STATE:I = 0x21000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "music/Set"
        subscribe = "music"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MEDIA_VOLUME:I = 0x2100000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/MediaVolume/Set"
        subscribe = "Media/MediaVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUTE:I = 0x21000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/Mute/Set"
        subscribe = "Media/Mute"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_VOLUME:I = 0x2100000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/NavigationVolume/Set"
        subscribe = "Media/NavigationVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NOTIFICATION_VOLUME:I = 0x2100000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/NotificationVolume/Set"
        subscribe = "Media/NotificationVolume"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_CAST:I = 0x21000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/ScreenCast/Set"
        subscribe = "Media/ScreenCast"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SOUND_SOURCE:I = 0x21000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/SoundSource/Set"
        subscribe = "Media/SoundSource"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEREO_SPEAKER:I = 0x21000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/StereoSpeaker/Set"
        subscribe = "Media/StereoSpeaker"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_UNLOCK_ALARM:I = 0x21000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/UnlockAlarmSwitch/Set"
        subscribe = "Media/UnlockAlarmSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x21
