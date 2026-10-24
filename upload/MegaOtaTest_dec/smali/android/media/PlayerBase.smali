.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;
    }
.end annotation


# instance fields
.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field protected mLeftVolume:F

.field protected mRightVolume:F


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 2
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 21
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method basePause()V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected baseRegisterPlayer()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseRelease()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseSetPan(F)V
    .locals 2
    .param p1, "pan"    # F

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseSetStartDelayMs(I)V
    .locals 2
    .param p1, "delayMs"    # I

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseSetVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseStart()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseStop()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCurrentOpPackageName()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getStartDelayMs()I
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isRestricted_sync()Z
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract playerPause()V
.end method

.method abstract playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract playerSetVolume(ZFF)V
.end method

.method abstract playerStart()V
.end method

.method abstract playerStop()V
.end method

.method public setStartDelayMs(I)V
    .locals 0
    .param p1, "delayMs"    # I

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 117
    return-void
.end method

.method setVolumeMultiplier(F)V
    .locals 2
    .param p1, "vol"    # F

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateAppOpsPlayAudio_sync(Z)V
    .locals 2
    .param p1, "attributesChanged"    # Z

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
