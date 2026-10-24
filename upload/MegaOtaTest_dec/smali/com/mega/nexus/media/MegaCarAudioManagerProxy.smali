.class public Lcom/mega/nexus/media/MegaCarAudioManagerProxy;
.super Ljava/lang/Object;
.source "MegaCarAudioManagerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupMaxVolume(Landroid/car/media/CarAudioManager;I)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "groupId"    # I

    .line 24
    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getGroupMaxVolume(Landroid/car/media/CarAudioManager;II)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "zoneId"    # I
    .param p3, "groupId"    # I

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(II)I

    move-result v0

    return v0
.end method

.method public getGroupMinVolume(Landroid/car/media/CarAudioManager;I)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "groupId"    # I

    .line 32
    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(I)I

    move-result v0

    return v0
.end method

.method public getGroupMinVolume(Landroid/car/media/CarAudioManager;II)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "zoneId"    # I
    .param p3, "groupId"    # I

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(II)I

    move-result v0

    return v0
.end method

.method public getGroupVolume(Landroid/car/media/CarAudioManager;I)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "groupId"    # I

    .line 16
    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->getGroupVolume(I)I

    move-result v0

    return v0
.end method

.method public getGroupVolume(Landroid/car/media/CarAudioManager;II)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "zoneId"    # I
    .param p3, "groupId"    # I

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/car/media/CarAudioManager;->getGroupVolume(II)I

    move-result v0

    return v0
.end method

.method public isOneKeyMute(Landroid/car/media/CarAudioManager;)Z
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;

    .line 44
    invoke-virtual {p1}, Landroid/car/media/CarAudioManager;->isOneKeyMute()Z

    move-result v0

    return v0
.end method

.method public setGroupVolume(Landroid/car/media/CarAudioManager;III)V
    .locals 0
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "groupId"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 7
    invoke-virtual {p1, p2, p3, p4}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V

    .line 8
    return-void
.end method

.method public setGroupVolume(Landroid/car/media/CarAudioManager;IIII)V
    .locals 0
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "zoneId"    # I
    .param p3, "groupId"    # I
    .param p4, "index"    # I
    .param p5, "flags"    # I

    .line 12
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/car/media/CarAudioManager;->setGroupVolume(IIII)V

    .line 13
    return-void
.end method

.method public setOneKeyMute(Landroid/car/media/CarAudioManager;Z)I
    .locals 1
    .param p1, "manager"    # Landroid/car/media/CarAudioManager;
    .param p2, "mute"    # Z

    .line 40
    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->setOneKeyMute(Z)I

    move-result v0

    return v0
.end method
