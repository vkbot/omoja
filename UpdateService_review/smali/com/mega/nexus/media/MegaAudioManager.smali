.class public Lcom/mega/nexus/media/MegaAudioManager;
.super Ljava/lang/Object;
.source "MegaAudioManager.java"


# static fields
.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final STREAM_ASSISTANT:I = 0xb

.field public static final STREAM_BLUETOOTH:I = 0xc

.field public static final STREAM_BLUETOOTH_MUSIC:I = 0xd

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_MARS:I = 0x9

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_TTS:I = 0x9

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastAudibleStreamVolume(Landroid/media/AudioManager;I)I
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 50
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static getRingerModeInternal(Landroid/media/AudioManager;)I
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;

    .line 42
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public static isMasterMute(Landroid/media/AudioManager;)Z
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;

    .line 54
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    return v0
.end method

.method public static isStreamAffectedByRingerMode(Landroid/media/AudioManager;I)Z
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 46
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    return v0
.end method

.method public static setMasterMute(Landroid/media/AudioManager;ZI)V
    .locals 0
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "mute"    # Z
    .param p2, "flag"    # I

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 59
    return-void
.end method

.method public static setRingerModeInternal(Landroid/media/AudioManager;I)V
    .locals 0
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "ringerMode"    # I

    .line 38
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 39
    return-void
.end method
