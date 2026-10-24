.class public Lcom/mega/nexus/media/MegaCarAudioManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaCarAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/media/MegaCarAudioManager$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/media/MegaCarAudioManager;
    .locals 1

    .line 18
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager$Holder;->access$000()Lcom/mega/nexus/media/MegaCarAudioManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentDuckFocusPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 90
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getCurrentDuckFocusPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MegaNexusManager"

    const-string v2, "failed to invoke getCurrentDuckFocusPackages"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurrentFocusPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getCurrentFocusPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MegaNexusManager"

    const-string v2, "failed to invoke getCurrentFocusPackages"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGroupMute(I)Z
    .locals 4
    .param p1, "groupId"    # I

    .line 47
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MegaNexusManager"

    if-nez v0, :cond_0

    .line 48
    const-string v0, "failed to get nexus service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v1

    .line 52
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getGroupMute(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "failed to invoke getGroupMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isOneKeyMute()Z
    .locals 4

    .line 73
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MegaNexusManager"

    if-nez v0, :cond_0

    .line 74
    const-string v0, "failed to get nexus service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 78
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mega/nexus/IMegaNexusManager;->isOneKeyMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "failed to invoke isOneKeyMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setGroupMute(IZ)I
    .locals 4
    .param p1, "groupId"    # I
    .param p2, "mute"    # Z

    .line 34
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "MegaNexusManager"

    if-nez v0, :cond_0

    .line 35
    const-string v0, "failed to get nexus service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v1

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->setGroupMute(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "failed to invoke setGroupMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setOneKeyMute(Z)I
    .locals 4
    .param p1, "mute"    # Z

    .line 60
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "MegaNexusManager"

    if-nez v0, :cond_0

    .line 61
    const-string v0, "failed to get nexus service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/media/MegaCarAudioManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->setOneKeyMute(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "failed to invoke setOneKeyMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method
