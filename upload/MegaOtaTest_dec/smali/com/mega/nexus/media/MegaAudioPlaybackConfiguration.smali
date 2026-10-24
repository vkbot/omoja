.class public Lcom/mega/nexus/media/MegaAudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "MegaAudioPlaybackConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 1
    .param p0, "configuration"    # Landroid/media/AudioPlaybackConfiguration;

    .line 13
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    return v0
.end method
