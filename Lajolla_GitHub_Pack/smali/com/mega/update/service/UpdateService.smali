.class public Lcom/mega/update/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field private static final OTA_UPDATE_SERVICE:Ljava/lang/String; = "mega.ota.update"

.field private static final TAG:Ljava/lang/String; = "UpdateService"


# instance fields
.field private mipcReceiver:Lcom/mega/update/service/MipcReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcom/mega/update/service/MipcReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/mega/update/service/MipcReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/update/service/UpdateService;->mipcReceiver:Lcom/mega/update/service/MipcReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind, intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateService"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    const-string v0, "UpdateService"

    const-string v1, "onCreate!!!~~~"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/service/UpdateBinder;->init()V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 35
    const-string v0, "UpdateService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 41
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v0

    const-string v1, "mega.ota.update"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
