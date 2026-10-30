.class public Lcom/mega/nexus/os/MegaMediaProjectionManager;
.super Ljava/lang/Object;
.source "MegaMediaProjectionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;ILjava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaProjection"    # Landroid/media/projection/MediaProjection;
    .param p2, "displayId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "dpi"    # I
    .param p7, "flags"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p10, "handler"    # Landroid/os/Handler;

    .line 44
    invoke-static/range {p0 .. p10}, Lcom/mega/nexus/os/MegaMediaProjectionAdapter;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;ILjava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaProjection(Landroid/content/Context;)Landroid/media/projection/MediaProjection;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 21
    .local v2, "uid":I
    const-string v3, "media_projection"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 22
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v4

    .line 23
    .local v4, "service":Landroid/media/projection/IMediaProjectionManager;
    const/4 v5, 0x0

    invoke-interface {v4, v2, v1, v5, v5}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v5

    .line 25
    .local v5, "projection":Landroid/media/projection/IMediaProjection;
    if-nez v5, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/media/projection/IMediaProjection;->setSkipFgServiceCheck(Z)V

    .line 29
    invoke-interface {v5}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 30
    .local v6, "binder":Landroid/os/IBinder;
    new-instance v7, Landroid/media/projection/MediaProjection;

    invoke-static {v6}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 31
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/media/projection/IMediaProjectionManager;
    .end local v5    # "projection":Landroid/media/projection/IMediaProjection;
    .end local v6    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    return-object v0
.end method
