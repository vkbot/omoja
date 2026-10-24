.class public Lcom/mega/nexus/app/MegaNexusUtil;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaNexusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    return-void
.end method

.method public static disableFivePointerGesture(Z)V
    .locals 2
    .param p0, "disable"    # Z

    .line 23
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    const-string v0, "MegaNexusManager"

    const-string v1, "disableFivePointerGesture in ReflectionVersion is no Implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mega/nexus/IMegaNexusManager;->disableFivePointerGesture(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 31
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static disableFivePointerGestureByDisplay(ZI)V
    .locals 2
    .param p0, "disable"    # Z
    .param p1, "displayId"    # I

    .line 47
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "MegaNexusManager"

    const-string v1, "disableFivePointerGestureByDisplay not Implemented for reflection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mega/nexus/IMegaNexusManager;->disableFivePointerGestureByDisplay(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static disableSystemUIGesture(Z)V
    .locals 2
    .param p0, "disable"    # Z

    .line 11
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    const-string v0, "MegaNexusManager"

    const-string v1, "disableSystemUIGesture in ReflectionVersion is no Implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mega/nexus/IMegaNexusManager;->disableSystemUIGesture(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    goto :goto_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static disableSystemUIGestureByDisplay(ZI)V
    .locals 2
    .param p0, "disable"    # Z
    .param p1, "displayId"    # I

    .line 35
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "MegaNexusManager"

    const-string v1, "disableSystemUIGestureByDisplay not Implemented for reflection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaNexusUtil;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mega/nexus/IMegaNexusManager;->disableSystemUIGestureByDisplay(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
